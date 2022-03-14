# Definindo a imagem base
FROM node:lts-stretch

ENV MONGO_URL=mongodb://dirsal_mdb001:<*w22<IKb^.JxCX@cluster1.db.dirsal.com:27017/?authSource=dirsal_artistData&authMechanism=SCRAM-SHA-256&directConnection=true&ssl=false

COPY . /app

WORKDIR /app

RUN npm install

# HEALTHCHECK --interval=10s CMD curl --fail http://localhost:4321 || exit 1


ENTRYPOINT ["sh","/app/entrypoint.sh"]