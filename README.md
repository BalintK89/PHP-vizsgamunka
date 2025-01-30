Követelményspecifikáció: Blogrendszer PHP és MySQL alapokon

1. Általános leírás

    A projekt célja egy dinamikus blogrendszer fejlesztése, amely lehetőséget biztosít posztok létrehozására, kategorizálására, valamint interaktív felhasználói aktivitásra, mint kommentelés és lájkolás. A rendszer adminisztratív felületén keresztül monitorozható és kezelhető a tartalom és a felhasználók.

2. Funkcionális követelmények

2.1. Publikus funkciók

    Posztok megtekintése: A felhasználók böngészhetik a blogbejegyzéseket, amelyek tartalmaznak címet, leírást, képeket és kategóriákat.

    Kategória alapú szűrés: Posztok keresése és szűrése a megadott kategória alapján.

    Felhasználói aktivitás:

    Kommentelés: Regisztrált felhasználók hozzászólásokat fűzhetnek a posztokhoz.

    Lájkolás: Posztok tetszés szerint lájkolhatók regisztrált felhasználók által.

2.2. Felhasználókezelés

    Regisztráció és bejelentkezés:

    Felhasználók regisztrálhatnak, majd bejelentkezhetnek a rendszerbe.

    Jelszótitkosítás és alapvető biztonsági funkciók megvalósítása.

    Profilkezelés:

    Felhasználói adatok módosítása.

    Profilkép feltöltése.

2.3. Adminisztrációs funkciók

    Posztkezelés:

    Posztok létrehozása, szerkesztése, törlése.

    Képek és leírások kezelése.

    Kategóriák hozzáadása, szerkesztése és törlése.

    Felhasználókezelés:

    Regisztrált felhasználók listázása.

    Felhasználók jogosultságainak kezelése.

    Felhasználók törlése vagy letiltása.

    Kommentárkezelés:

    Kommentek monitorozása, moderálása vagy törlése.

3. Nem-funkcionális követelmények

    Teljesítés:

    Az alkalmazás gyors válaszidővel működjön.

    Skalázható legyen nagyobb felhasználószám esetén.

    Biztonság:

    SQL injekció és XSS elleni védelem.

    Jelszavak biztonságos tárolása (pl. bcrypt).

    Felhasználói felület:

    Reszponzív dizájn asztali és mobil eszközökön egyaránt.

    Felhasználóbarát navigáció.

4. Adatbázismodell

    Táblák:

    Users: felhasználói adatok.

    Posts: blogposztok adatai (cím, leírás, kép, kategória, lájkok száma).

    Comments: kommentek adatai (felhasználó azonosító, hozzászólás tartalma, időpont).

    Categories: kategóriák listája.

    Likes: lájkok rögzítése.

5. Technikai specifikáció

    Backend: PHP

    Adatbázis: MySQL

    Frontend: HTML, CSS, JavaScript

    Middleware: REST API a backend és frontend között.

    Webszerver: Apache (mod_rewrite támogatással .htaccess fájlokhoz).

6. Fejlesztési követelmények

    Verzókövetés: Git

    Dokumentáció: Kódkommentek és felhasználói útmutató.

    Tesztelés: Egység- és integrációs tes


