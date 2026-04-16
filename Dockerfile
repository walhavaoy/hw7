ARG BASE_IMAGE=node:22-slim

FROM ${BASE_IMAGE} AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY tsconfig.json ./
COPY src/ src/
COPY public/ public/
RUN npm run build

FROM ${BASE_IMAGE} AS runtime
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY --from=build /app/dist/ dist/
COPY --from=build /app/public/ public/
ENV NODE_ENV=production
USER node
EXPOSE 3000
CMD ["node", "dist/index.js"]
