# Kodano zadanie rekrutacyjne

Podstawowa struktura powstała w oparciu o pakiet symfony-docker polecany w oficjalnej
dokumentacji Smfony (https://github.com/dunglas/symfony-docker)

## Przygotowanie

1. Zainstaluj Docker Desktop i Docker Compose
2. Uruchom `docker compose build --pull --no-cache` aby przygotować środowisko
3. Uruchom `docker compose up --wait` aby uruchomić środowisko
4. Otwórz `https://localhost/api` w przeglądarce i zaakceptuj błąd lokalnego certyfikatu SSL
5. Aby zatrzymać kontenery uruchom `docker compose down --remove-orphans`


