ARG BASE_IMAGE=docker.io/library/node:20-alpine

FROM ${BASE_IMAGE} AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY tsconfig.json ./
COPY src/ src/
RUN npm run build

FROM ${BASE_IMAGE} AS runtime
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY --from=build /app/dist/ dist/
COPY public/ public/
EXPOSE 3000
CMD ["node", "dist/index.js"]
