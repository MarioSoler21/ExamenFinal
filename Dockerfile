# ============================================================
# Dockerfile CORREGIDO - Examen 2, Actividad 1 Parte A
# Errores corregidos:
# 1. node:18 -> node:18-alpine  (imagen mas liviana y segura)
# 2. npm install --production -> npm ci --omit=dev  (--production deprecado; npm ci es reproducible)
# 3. Agregado USER node  (no correr como root: buena practica de seguridad)
# 4. Agregado COPY con --chown  (el usuario correcto debe ser dueno de los archivos)
# ============================================================

FROM node:18-alpine

WORKDIR /app

COPY --chown=node:node package*.json ./
RUN npm ci --omit=dev

COPY --chown=node:node . .

EXPOSE 3000

USER node

CMD ["node", "index.js"]
