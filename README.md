# Kodano zadanie rekrutacyjne

Podstawowa struktura powstała w oparciu o pakiet symfony-docker polecany w oficjalnej
dokumentacji Symfony (https://github.com/dunglas/symfony-docker)

## Przygotowanie

1. Zainstaluj Docker Desktop i Docker Compose. Upewnij się, że Docker Desktop jest uruchomiony.
2. Otwórz terminal i przejdź do głównego folderu projektu
3. Uruchom `docker compose build --pull --no-cache` aby przygotować środowisko
4. Uruchom `docker compose up --wait` aby uruchomić środowisko
5. Używając ulubionego narzędzia przywróć kopię struktury i przykładowych danych bazy danych z folderu example (uwaga, port TCP bazy danych jest losowy, zobacz go w Docker Dekstop w szczegółach kontenera)
6. Otwórz `https://localhost/api` w przeglądarce i zaakceptuj błąd lokalnego certyfikatu SSL
7. Aby zatrzymać kontenery uruchom `docker compose down --remove-orphans`

## Komentarz do rozwiązania

Jestem umiarkowanie zadowolony z rozwiązania - przez ostatnie lata programowałem
w wewnętrznym frameworku powstałym na potrzeby firmy i nie ukrywam, że dopiero 
uczę się Symfony. Większość założeń udało mi się zaimplementować, starałem się
używać gotowych szkieletów tworzonych przez Symfony Console, przez co samo stworzenie
struktury danych okazało się zaskakująco proste.

Miałem problemy wydajnościowe: z nieokreślonych przyczyn operacja cache:clear wykonywała
się około 2 minut, podejrzewam że to problem lokalnie u mnie.

Logi przez wbudowany w Symfony PSR Logger, nie wiedzieć dlaczego nie zapisują się
u mnie poprawnie, niekiedy widzę je w konsoli Dockera, dlatego zdecydowałem się
na użycie file_put_contents - nieeleganckie, do tego zapisuje w public/logs co
w produkcyjnej sytuacji nie mogło by się zdarzyć.

Wysyłanie maili wymaga skonfigurowania zmiennej środowiskowej MAILER_DSN i np. serwera
SMTP. Nie zdążyłem tego przetestować.

Nie napisałem testów w PHPUnit - nie robiłem tego dotychczas i zabrakło mi czasu.

Zależało mi, żeby dowieźć rozwiązanie na czas, który okazał się krótszy niż myślałem,
dlatego nie jest ono idealne.
