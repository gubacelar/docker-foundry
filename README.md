# 🧙 Foundry VTT - Node Edition (Dockerized)

This repository provides a ready-to-use Docker environment to run **Foundry Virtual Tabletop** (Node.js version) using the latest Node LTS.

> ⚠️ You must **own a valid license** for Foundry VTT to use this image.  
> This repository does **not** include Foundry VTT — you must supply your own `.zip` file.

---

## 📁 Project Structure

```
.
├── Dockerfile
├── docker-compose.yml
├── .gitignore
└── README.md
```

---

## 🔧 Installation

### 1. 📥 Download Foundry VTT (Node.js version)

- Go to https://foundryvtt.com/
- Download the **Node.js version** of Foundry VTT (`FoundryVTT-Node-XX.zip`)
- Do **not** extract it — just copy the `.zip` into this folder.

### 2. 🚫 Add `.zip` and `data/` to `.gitignore`

Example:

```gitignore
data/
FoundryVTT-Node-*.zip
```

### 3. 🏗️ Build and run

```bash
docker-compose build
docker-compose up
```

Then access:

👉 http://localhost:30000

---

## 📂 Data Persistence

User data (worlds, modules, configs, etc.) is stored in:

```
./data/
```

This is mapped into the container at:

```
/root/.local/share/FoundryVTT
```

If you delete the container, your data is safe unless you delete the `data/` folder.

---

## 🐳 Docker Summary

- Uses latest Node LTS image
- Accepts `.zip` file from official Foundry website
- Launches server at port `30000`
- Stores persistent data outside the container

---

## 🛠️ Troubleshooting

- If you see `Cannot find module 'main.js'`, double-check the name of the `.zip` and update the `Dockerfile` accordingly.
- If the server starts but doesn't persist data, ensure `./data/` is writable and correctly mapped.

---

## 📜 License

This project does not include Foundry VTT itself.  
You must obtain a license at [https://foundryvtt.com](https://foundryvtt.com).
