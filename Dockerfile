FROM node:lts

WORKDIR /foundryvtt

RUN apt-get update && apt-get install -y unzip curl && rm -rf /var/lib/apt/lists/*

# Make sure your file starts with FoundryVTT
COPY FoundryVTT-*.zip /tmp/foundry.zip

RUN unzip /tmp/foundry.zip -d /foundryvtt && rm /tmp/foundry.zip

EXPOSE 30000

CMD ["node", "main.mjs"]