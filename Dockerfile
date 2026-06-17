FROM node:22-alpine AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

# --- deps ---
FROM base AS deps
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile --ignore-scripts && pnpm rebuild esbuild

# --- build ---
FROM deps AS build
COPY . .
RUN pnpm build

# --- runtime ---
FROM base AS runtime
WORKDIR /app
COPY --from=build /app/dist ./dist
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json ./

ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321

CMD ["node", "dist/server/entry.mjs"]
