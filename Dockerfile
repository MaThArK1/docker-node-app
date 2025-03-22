ARG NODE_VERSION=22.14.0

FROM node:${NODE_VERSION}-alpine

ENV PORT 3001

WORKDIR /app

RUN --mount=type=bind,source=package.json,target=package.json \
    --mount=type=bind,source=package-lock.json,target=package-lock.json \
    npm install

COPY . .

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
    CMD [ "curl", "-f", "http://localhost:3001" ]

EXPOSE 3001

RUN chown -R node:node /app

USER node

CMD [ "node", "--env-file=.env", "index.js" ]