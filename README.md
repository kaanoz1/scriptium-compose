# Scriptium Compose
 Repository of Docker compose for [Scriptium](https://github.com/scriptium-project). Universal Theology Library.
 
This repository consists of predefined docker-compose files and orchestration commands to manage the entire Scriptium ecosystem.

📋 Prerequisites

Before starting, ensure you have the following installed:

- Docker & Docker Compose (Latest version)
- Node.js v24+ & npm (To initialize the frontend/Prisma)
- GNU Make (To run the shorthand commands)
- Git

Initialize **this repository only**:

```bash
git clone github.com/kaanoz/scriptium-compose.git
cd scriptium-compose
```

For other parts of scriptium check out our [Frontend](https://github.com/kaanoz1/scriptium-frontend) and [Backend](https://github.com/kaanoz1/scriptium-backend).

For all in one go with **Docker**. Execute this command:


```bash
# Clone all projects.
mkdir scriptium
cd scriptium

git clone github.com/kaanoz/scriptium-compose.git
git clone github.com/kaanoz/scriptium-backend.git
git clone github.com/kaanoz/scriptium-frontend.git

# Initialize Frontend
cd scriptium-frontend 
npm install && npx prisma generate && npx prisma db push
cd ..

# Configuration
cd scriptium-compose
cd envs
cp .env.example .env.preproduction
cp .env.example .env.production
```

Fill .env* files.

Build and run the whole project:

```bash
make build-pre && make up-pre
```

## Repository Links:

- [Frontend (Nextjs/React)](https://github.com/kaanoz1/scriptium-frontend)
- [Backend (.NET 10)](https://github.com/kaanoz1/scriptium-backend)


## 📄 License

This project is licensed under the [MIT License](LICENCE) on behalf of Scriptium.




