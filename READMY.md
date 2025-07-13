2# 🐧 linux_cli – víceúčelový bash nástroj s Docker podporou

Tento projekt obsahuje Bash skript `linux_cli.sh`, který umožňuje:

- výpis systémových informací
- práci s adresáři a procesy
- příkazy pro Docker (výpis kontejnerů, image, mazání apod.)

Použití je možné:
- přímo lokálně
- nebo pomocí Docker containeru (produkční/testovací)

---

## 📦 Build a spuštění přes Docker Compose

```bash
docker compose up --build

