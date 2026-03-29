# Examen 2 - Sistemas Operativos I
**Mario Soler | CEUTEC San Pedro Sula**

## Evidencia de Deployment

> Screenshot del deployment exitoso en la pestana Actions de GitHub:

<!-- INSTRUCCION: Reemplaza este comentario con tu screenshot despues del primer push exitoso -->
- [Ver workflows en Actions](https://github.com/MarioSoler21/ExamenFinal/actions)

## Estructura del Proyecto

```
.
├── .github/
│   └── workflows/
│       ├── ci.yml          # Actividad 2: Pipeline CI (lint, test, coverage)
│       └── cd.yml          # Actividad 3: Pipeline CD (deploy a Docker Hub)
├── Dockerfile              # Actividad 1A: Dockerfile corregido
├── Dockerfile_broken_Act1A.txt  # Actividad 1A: Dockerfile original con errores
├── docker-compose.yml      # Actividad 1B: Compose con web + db
├── index.js                # Aplicacion Node.js
├── package.json            # Dependencias y scripts
├── snippet1_fixed.yml      # Actividad 4: Troubleshooting - Snippet 1
├── snippet2_fixed.yml      # Actividad 4: Troubleshooting - Snippet 2
├── snippet3_fixed.yml      # Actividad 4: Troubleshooting - Snippet 3
└── respuestas_actividad5.md # Actividad 5: Preguntas conceptuales
```

## Actividad 1A - Errores corregidos en Dockerfile

| # | Error | Correccion |
|---|-------|------------|
| 1 | `FROM node:18` | `FROM node:18-alpine` — imagen mas liviana y segura |
| 2 | `npm install --production` | `npm ci --omit=dev` — flag deprecado; `npm ci` garantiza builds reproducibles |
| 3 | Sin `USER node` | `USER node` — no ejecutar el contenedor como root |
| 4 | `COPY . .` sin `--chown` | `COPY --chown=node:node . .` — el usuario correcto debe ser dueno de los archivos |

## Actividad 4 - Errores corregidos en snippets

**Snippet 1** — Error de sintaxis en triggers: faltaban los `:` y la indentacion YAML correcta.

**Snippet 2** — Referencia incorrecta a secrets: `secrets.VERCEL_TOKEN` debe ser `${{ secrets.VERCEL_TOKEN }}`.

**Snippet 3** — Matrix invalida: `node-version: 18` debe ser una lista `[16.x, 18.x]`.
