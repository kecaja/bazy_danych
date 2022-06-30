create view as ile select nrcz, count(*) as ile from wypozyczenia group by nrcz order bby count desc;
create view as ile_wyp select nrcz, count(*) as ile from wypozyczenia group by nrcz order by count desc;
create view as ile_wyp select nrcz, count(*) from wypozyczenia group by nrcz order by count desc;
create view ile_wyp as select nrcz, count(*) from wypozyczenia group by nrcz order by count desc;
\d
select * from ile wyp;
select * from ile_wyp;
select imie, nazwisko from ile_wyp left join on ile_wyp.nrcz=czytelnicy.nrcz where ile_wyp.count=max(count);
select imie, nazwisko from ile_wyp left join on ile_wyp.nrcz=czytelnicy.nrcz;
select * from czytelnicy;
select imie, nazwisko from ile_wyp left join  on nrcz=nrcz;
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz;
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz where count=max(count);
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz where ile_wyp.count=max(ile_wyp.count);
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz where ile_wyp.count=4;
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz where ile_wyp.count=(select max(count) from ile_wyp;
)
;
select imie, nazwisko from ile_wyp left join czytelnicy on ile_wyp.nrcz=czytelnicy.nrcz where ile_wyp.count=(select max(count) from ile_wyp);
select * from wypozyczenia;
create view ten_rok as select nrcz, count(*) as ile from wypozyczenia where extract(year from data_wyp)=extract(year from current_date) group by nrcz;
\d
select * from ten_rok;
[200~CREATE VIEW Ten_Rok AS
SELECT nrcz,COUNT(*) AS ile
FROM Wypozyczenia
WHERE EXTRACT(year FROM data_wyp) = EXTRACT(year FROM current_date) 
GROUP BY nrcz;~
CREATE VIEW Ten_Rok AS
SELECT nrcz,COUNT(*) AS ile
FROM Wypozyczenia
WHERE EXTRACT(year FROM data_wyp) = EXTRACT(year FROM current_date) 
GROUP BY nrcz;~
CREATE VIEW Ten_Rok AS
SELECT nrcz,COUNT(*) AS ile
FROM Wypozyczenia
WHERE EXTRACT(year FROM data_wyp) = EXTRACT(year FROM current_date) 
GROUP BY nrcz;
CREATE VIEW Ten_Rok2 AS
SELECT nrcz,COUNT(*) AS ile
FROM Wypozyczenia
WHERE EXTRACT(year FROM data_wyp) = EXTRACT(year FROM current_date) 
GROUP BY nrcz;
\d
select*from ten_rok2;
create view ten_rok_3 as select nrcz,count(*) as ile from wypozyczenia where extract(year from data_wyp)=2020 group by nrcz;
select * from ten_rok_3
;
select Czytelnicy.nrcz, imie, nazwisko from ten_rok_3 join czytelnicy on ten_rok_3.nrcz = czytelnicy.nrcz where ile = (select max(ile) from ten_rok_3);
select Czytelnicy.nrcz, imie, nazwisko, ile from ten_rok_3 join czytelnicy on ten_rok_3.nrcz = czytelnicy.nrcz where ile = (select max(ile) from ten_rok_3);
select * from wypozyczenia;
select data_zwr-data_wyp from wypozyczenia;
current date
;
current_data;
select data_zwr-data_wyp from wypozyczenia;
\d
select * from czytelnicy;
select * from ksiazki;
select * from wypozyczenia;
coda
;
select * from ksiazki;
select * from ksiazki;
\d
\d ksiazki;
select nrk from ksiazki where rok_wyd<1989
;
select nrk from ksiazki where rok_wyd<1989;
select nrk,cena from ksiazki where rok_wyd<1989;
select nrk,cena from ksiazki where rok_wyd<1989;
create view cena_ksiazek as select nrk, cena from ksiazki where rok_wyd<1989;
select * from cena_ksiazek
;
;
select * from cena_ksizek where cena=(select max(cena) from cena_ksiazek);
select * from cena_ksiazek where cena=(select max(cena) from cena_ksiazek);
create view cena_ksiazek_2 as select nrk, cena from ksiazki where rok_wyd<1989 and cena = (select max(cena) from ksiazki where rok_wyd<1989) ;
select * from cena_ksiazek_2
;
\d
\d
\d czytelnicy
select imie, nazwisko from cena_ksiazek_2 left join czytelnicy on cena_ksiazek_2.nrcz=czytelnicy.nrcz;
\d cena_ksiazek_2
select * from wypozyczenia;
select * from wypozyczenia where nrk = (select nrk from cena_ksizek_2);
select * from wypozyczenia where nrk = 11;
select * from wypozyczenia where nrk = (select max(nrk) from cena_ksiazek);
select * from wypozyczenia where nrk = (select nrk from cena_ksiazek);
select * from wypozyczenia where nrk = (select max(nrk) from cena_ksiazek);
create view drodzy_czytelnicy as select * from wypozyczenia where nrk=(select max(nrk) from cena_ksiazek);
select * from drodzy_czytelnicy;
select imie, nazwisko from drodzy_czytelnicy left join czytelnicy;
select imie, nazwisko from drodzy_czytelnicy left join czytelnicy on drodzy_czytelnicy.nrcz=czytelnicy.nrcz;
\d
drop database db_name create database db_name;
\d
drio cena_ksiazek
;
drop cena_ksiazek;
drop table cena_ksiazek;
drop view cena_ksiazek;
drop view cena_ksiazek cascade;
\d
drop table cena_ksiazek_2
;
drop view cena_ksiazek_2;
drop table czytelnicy, ksiazki, wypozyczenia;
drop table czytelnicy, ksiazki, wypozyczenia cascade;
\d
drop table foo cascade;
\i zoo.sql
\d
begin work;
set transaction ilosolation level serializable;
set transaction isolation level serializable;
end
end;
;
commit
;
begin transaction;
set transaction isolation level serializable;
select * from gatunki where kontynent='Europa';
insert into gatunki values('krowa', 'nie', 'Europa', 'siano');
select * from gatunki where kontynent='Europa';
commit
;
begin work;
set transaction isolation level serializable;
delete from gatunki where kontynent='Europa';
delete from gatunki where nazwa='krowa';
;
end
;
select * from gatunki;
begin work;
set transaction isolation level serializable;
insert into gatunki values ('kot', 'nie', 'Europa', 'mysz');
select * from zwierzaki where kontynent='Europa';
select * from zwierzaki;
commit
;
select * from gatunki where kontynent='Europa';
delete from gatunki where nazwa='kret';
select * from gatunki where kontynent='Europa';
begin work;
set transaction isolation level read committed;
insert into gatunki values('pies', 'nie', 'Europa', 'kot');
commit;
\d
begin transaction
select * from gatunki where kontynent='Europa';
;
begin transaction;
select * from gatunki where kontynent='Europa';
select * from gatunki where kontynent='Europa';
rollback
;
begin work;
rollback
;
begin work;
set transaction isolation level serializable;
select * from gatunki limit 3;
insert into gatunki values ('kret', 'nie', 'Europa', 'jablko');
select * from gatunki where kontynent='Europa';
commit;
set transaction isolation level read committed;
begin work;
set transaction isolation level read committed;
insert int gatunki values('kret', 'nie', 'Europa', 'jablka');
insert into gatunki values('kret', 'nie', 'Europa', 'jablka');
rollback
;
begin transaction;
set transaction isolation level read committed;
insert into gatunki values('kret', 'nie', 'Europa', 'jablka');
commit;
select * from gatunki where kontynent='Europa';
\d
\i
\i new_zoo.sql
\d
select * from gatunki;
\d
drop table gatunki;
drop table gatunki opieka zwierzaki;
drop table gatunki, opieka, zwierzaki;
\d
drop table zwierzaki;
\i Desktop/biblioteka.sql 
\d
select * from czytelnicy;
select * from ksiazki;
select * from wypozyczenia;
select data_wyp - data_zwr form wypozyczenia;
select data_wyp - data_zwr from wypozyczenia;
select data_zwr - data_wyp from wypozyczenia;
select 1;
select 1 from wypozyczenia;
select 1 from wypozyczenia where nrk%2=0;
select 1 from wypozyczenia where nrk%2=0 and select 0 from wypozyczenia where nrk%201
;
select 1 from wypozyczenia where nrk%2=0 or select 0 from wypozyczenia where nrk%201
;
select ksiazki.nrk, tytul, 100 * (sum(coalesce(data_zwr - data_wyp, CURRENT_DATE - data_wyp);
)
)
;
select ksiazki.nrk, tytul, 100 * (sum(coalesce(data_zwr - data_wyp, CURRENT_DATE - data_wyp));
);
select ksiazki.nrk, tytul, 100 * (sum(coalesce(data_zwr - data_wyp, CURRENT_DATE - data_wyp)));
select ksiazki.nrk, tytul, 100 * (sum(coalesce(data_zwr - data_wyp, CURRENT_DATE - data_wyp))) from ksiazki join wypozyczenia on ksizaki.nrk=wypozyczenia.nrk;
SELECT Ksiazki.nrk,tytul,
       100 * (SUM(COALESCE(data_zwr - data_wyp, CURRENT_DATE - data_wyp))) / 
       (CURRENT_DATE - MIN(data_wyp)) || '%' AS "Poza"
FROM Ksiazki JOIN Wypozyczenia ON Ksiazki.nrk = Wypozyczenia.nrk
GROUP BY Ksiazki.nrk,tytul;
CREATE VIEW Ile_Wypozyczen AS
SELECT nrk,COUNT(*) AS ile
FROM Wypozyczenia
GROUP BY nrk;
SELECT tytul,Ksiazki.nrk
FROM Ile_Wypozyczen JOIN Ksiazki ON Ile_Wypozyczen.nrk = Ksiazki.nrk
WHERE ile in (SELECT ile
              FROM Ile_Wypozyczen
              ORDER BY ile DESC LIMIT 5);
select "hello world";
select 'Hello';
\d gatunki;
select nazwa, ' z kontynentu ', kontynent from gatunki;
select zwierzaki.imie, zwierzaki.gatunek, gatunki.kontynent from zwierzaki, gatunki where zwierzaki.gatunek=gatunki.nazwa;
select zwierzaki.imie, zwierzaki.gatunek, gatunki.kontynent from zwierzaki, gatunki where zwierzaki.gatunek=gatunki.nazwa;
select zwierzaki.imie, zwierzaki.gatunek, gatunki.kontynent from zwierzaki zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa;
select * from zwierzaki;
select * from gatunki;
select imie from zwierzaki left join gatunki on zwierzaki.imie = gatunki.nazwa;
select imie from zwierzaki left join gatunki on zwierzaki.imie = gatunki.nazwa where przysmak='siano';
select * from zwierzaki left join gatunki on zwierzaki.imie = gatunki.nazwa;
select * from zwierzaki join gatunki on zwierzaki.imie = gatunki.nazwa;
select * from zwierzaki left join gatunki on zwierzaki.imie = gatunki.nazwa;
select * from zwierzaki left join gatunki on zwierzaki.gatunek = gatunki.nazwa;
select * from zwierzaki left join gatunki on zwierzaki.gatunek = gatunki.nazwa where przysmak = 'siano';
select imie from zwierzaki left join gatunki on zwierzaki.gatunek = gatunki.nazwa;
select imie from zwierzaki left join gatunki on zwierzaki.gatunek = gatunki.nazwa where przysmak = 'siano';
select imie from zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa where koktynent = 'Europa';
select imie from zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa where kontynent = 'Europa';
select imie from zwierzaki where waga = max(waga);
select imie from zwierzaki where waga = (select max(waga) from zwierzaki);
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.imie=B.imie left join gatunki on A.gatunek = gatunki.nazwa;
;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.imie=B.imie where A.gatunek=B.gatunek;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.gatunek=B.gatunek;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.gatunek=B.gatunek and A.imie != B.imie;
select * from zwierzaki;
;
select * from zwierzaki order by nazwa;
select * from zwierzaki order by imie;
select * from zwierzaki order by imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.gatunek = B.gatunek and A.imie != B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.gatunek = B.gatunek and A.imie < B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.gatunek = B.gatunek and A.imie != B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where and A.imie < B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.imie < B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = gatunki.nazwa where A.imie < B.imie;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = gatunki.nazwa where A.imie < B.imie and plec != plec;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = gatunki.nazwa where A.imie < B.imie and A.plec != B.plec;
select A.imie , B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = gatunki.nazwa where A.imie < B.imie and A.plec != B.plec and przysmak = 'siano';
select imie from zwierzaki left join gatunki on gatunek = nazwa group by przysmak;
\d zwierzaki;
select imie, gatunek, kontynent from zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa where kontynent='Afryka' and przysmak = 'siano';
select imie, gatunek, kontynent, przysmak from zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa where kontynent='Afryka' and przysmak = 'siano';
select imie, przysmak from zwierzaki left join gatunki on zwierzaki.gatunek=gatunki.nazwa;
select imie, (select przysmak from gatunki where nazwa = gatunek) as lubi from zwierzaki;
;
select imie from zwierzaki left join gatunki on gatunek=nazwa where kontynent='Europa';
select imie from zwierzaki where waga = (select max(waga) from zwierzaki);
select * fromz zwierzaki where imie = 'Mala';
select * from zwierzaki where imie = 'Mala';
select A.imie, B.imie from zwierzaki left join zwierzaki on A.gatunek=B.gatunek;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.imie<B.imie;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.imie<B.imie;
;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek where A.imie<B.imie;
;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = nazwa where A.imie<B.imie and A.plec != B.plec and przysmak = 'siano;
'
;
select A.imie, B.imie from zwierzaki as A left join zwierzaki as B on A.gatunek=B.gatunek left join gatunki on A.gatunek = nazwa where A.imie<B.imie and A.plec != B.plec and przysmak = 'siano';
SELECT z1.imie, z2.imie
    FROM Zwierzaki z1 JOIN Zwierzaki z2 ON z1.gatunek = z2.gatunek
         JOIN Gatunki ON z1.gatunek = nazwa
    WHERE z1.plec < z2.plec AND przysmak = 'siano';
select * from zwierzaki where waga > (select waga from zwierzaki where imie = 'Kropka';
;)
;
select * from zwierzaki where waga > (select waga from zwierzaki where imie = 'Kropka');
select * from zwierzaki where imie='Kropka';
select * from zwierzaki order by imie;
;
select * from zwierzaki where waga > (select waga from zwierzaki where imie = 'Kropeczka');
select zwierzaki.* from zwierzaki, (select waga from zwierzaki where imie='Kropeczka') as K where zwierzaki.waga > k.waga;
select zwierzaki.* from zwierzaki, (select waga from zwierzaki where imie>'Kropeczka') as K where zwierzaki.waga > k.waga;
select * from gatunki where kontynent in ('Europa', 'Azja');
select * from gatunki where nazwa in (Select gatunek from zwierzaki where waga > 190);
select * from gatunki where nazwa not in (select gatunek from zwierzaki);
select * from zwierzaki where wiek >= All (select wiek from zwierzaki where wiek is not null);
select imie, (select kontynent from gatunki where nazwa = gatunek) as kontynent from zwierzaki;
select imie, (select przysmak from gatunki where nazwa = gatunek) as przysmak from zwierzaki where przysmak = 'siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as przysmak from zwierzaki where przysmak = 'siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki where przysmak = 'siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki where P.przysmak = 'siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki where P = 'siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki;
;
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki where p='siano';
select imie, (select przysmak from gatunki where nazwa = gatunek) as P from zwierzaki where P='siano';
select imie from zwierzaki where gatunek=(select nazwa from gatunki where przysmak = 'siano');
select imie from zwierzaki where gatunek in (select nazwa from gatunki where przysmak='siano');
select imie from zwierzaki where gatunek in (select nazwa from gatunki where przysmak='siano' and kontynent='Afryka');
select imie, (select przysmak from gatunki where gatunek = 'nazwa') from zwierzaki;
select imie, (select przysmak from gatunki where gatunek = nazwa) from zwierzaki;
;
select imie, (select przysmak from gatunki where gatunek = nazwa) as lubi from zwierzaki;
select kontynent from gatunki where nazwa not in (select gatunek from zwierzaki);
select kontynent from gatunki where nazwa not in (select gatunek from zwierzaki);
SELECT kontynent FROM Gatunki
    WHERE kontynent NOT IN
          (SELECT kontynent FROM Gatunki Join Zwierzaki ON nazwa = gatunek);
select * from zwierzaki;
select gatunek, kontynent from zwierzaki left join gatunki on gatunek=nazwa;
;
SELECT kontynent FROM Gatunki
    WHERE kontynent NOT IN
          (SELECT kontynent FROM Gatunki Join Zwierzaki ON nazwa = gatunek);
select gatunek, kontynent from zwierzaki left join gatunki on gatunek=nazwa;
select kontynent from gatunki where nazwa not in (select gatunek from zwierzaki);
select gatunek from zwierzaki;
select kontynent from gatunki where nazwa not in (select gatunek from zwierzaki);
select kontynent from gatunki where nazwa not in (select gatunek from zwierzaki);
select gatunek, count(*) as ile from zwierzaki groub by gatunek order by gatunek;
select gatunek, count(*) as ile from zwierzaki group by gatunek order by gatunek;
select avg(waga), max(wiek) from zwierzaki;
select gatunek, avg(waga), max(wiek) from zwierzaki;
select gatunek, avg(waga), max(wiek) from zwierzaki group by gatunek;
select gatunek, avg(waga), max(wiek) from zwierzaki where gatunek is not null;
select gatunek, avg(waga), max(wiek) from zwierzaki where gatunek is not null order by gatunek;
\d zwierzaki
select gatunek, avg(waga), max(wiek) from zwierzaki where gatunek is not null order by gatunek;
select gatunek, avg(waga), max(wiek) from zwierzaki where gatunek is not null group by gatunek;
SELECT COUNT(*), gatunek, MIN(waga), MAX(waga) FROM Zwierzaki
WHERE gatunek IS NOT NULL
GROUP BY gatunek
HAVING COUNT(*) > 3 ORDER BY gatunek
;
select coutn(*), gatunek, min(waga), max(waga) from zwierzaki where gatunek is not null group by gatunek having count(*) > 2 order by gatunek;
select count(*), gatunek, min(waga), max(waga) from zwierzaki where gatunek is not null group by gatunek having count(*) > 2 order by gatunek;
select gatunek, count(*), avg(waga) from zwierzaki where gatunek is not null group by gatunek;
select gatunek, count(*), avg(waga) from zwierzaki where gatunek group by gatunek;
select gatunek, count(*), avg(waga) from zwierzaki group by gatunek;
select gatunek, count(*), avg(waga) from zwierzaki where gatunek group by gatunek;
select gatunek, count(*), avg(waga) from zwierzaki where gatunek is not null group by gatunek;
select gatunek, count(*) from zwierzaki where waga > 20 group by gatunek;
select gatunek, max(waga) where waga>20 group by gatunek having count(*)>1;
select gatunek, max(waga) from zwierzaki where waga>20 group by gatunek having count(*)>1;
select gatunek, max(waga), count(*) from zwierzaki where waga>20 group by gatunek having count(*)>1;
select gatunek from zwierzaki where waga is not null group by gatunek having max(waga)-min(waga)>20;
select count(*) from zwierzaki where gatunek is null;
select * from zwierzaki;
select count(*) as "Nieznane" from Zwierzaki
   where gatunek is null;
\opieka
\d opieka
select * from opieka;
select miasto, adres from opieka group by miasto, adres
;
select miasto, adres, count(*) from opieka group by miasto, adres
;
select * from zwierzaki where waga = (select max(waga) from zwierzaki);
select A.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga;
select A.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga;
select A.*, B.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga;
select A.*, B.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga where B.id is null;
select A.*, B.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga where B.id is null and waga is not null;
select A.*, B.* from zwierzaki as A left join Zwierzaki as B on A.waga<B.waga where B.id is null and A.waga is not null;
select * from zwierzaki as A where not Exists (select * from zwierzaki as B where B.waga>A.waga);
select * from zwierzaki as A where not Exists (select * from zwierzaki as B where B.waga>A.waga) and waga is not null;
select imie from zwierzaki order by waga desc limit 7;
select imie from zwierzaki where waga >= (select waga from zwierzaki order by waga desc limit 7;
);
select imie from zwierzaki where waga >= (select waga from zwierzaki order by waga desc limit 7)
;
select imie from zwierzaki where waga >= (select waga from zwierzaki order by waga desc limit 7);
select imie from zwierzaki where waga >= min(select waga from zwierzaki order by waga desc limit 7);
select imie from zwierzaki where waga > min(select waga from zwierzaki order by waga desc limit 7);
select imie from zwierzaki where waga > max(select waga from zwierzaki order by waga desc limit 7);
select imie from zwierzaki where waga > min(select waga from zwierzaki);
select imie from zwierzaki where waga > min(waga);
select imie from zwierzaki;
select imie from zwierzaki where waga = 10;
select imie from zwierzaki where waga = min(waga);
select imie from zwierzaki where waga = select min(waga) from zwierzaki;
select imie from zwierzaki where waga = (select min(waga) from zwierzaki);
select imie from zwierzaki where waga >= (select min(waga) from zwierzaki order by waga desc limit 7);
select imie from zwierzaki where waga >= (select min(waga) from zwierzaki order by imie desc limit 7);
select imie from zwierzaki where waga >= (select min(waga) from zwierzaki);
select imie from zwierzaki where waga >= (select min(waga) from zwierzaki limit 7);
select imie from zwierzaki where waga >= (select min(waga) from zwierzaki order by waga);
select imie from zwierzaki where waga >= (select min(waga), waga from zwierzaki order by waga);
select imie from zwierzaki where waga >= (select waga from zwierzaki order by waga);
select imie from zwierzaki where waga >= (select waga from zwierzaki order by waga limit 7);
select imie from zwierzaki where waga in (select waga from zwierzaki where waga is not null orderd by waga desc limit 7)
;
select imie from zwierzaki where waga in (select waga from zwierzaki where waga is not null orderd by waga desc limit 7);
select imie from zwierzaki where waga in (select waga from zwierzaki where waga is not null order by waga desc limit 7);
\i sql/lekarze.sql;
\d
drop table lekarze;
\d
\i sql/lekrze.sql
\i sql/lekarze.sql
\d
drop table opieka;
drop table gatunki;
drop table gatunki, opieka, zwierzaki cascade;
\d
drop table czytelnicy, ile_wypozyczen, ksiazki, pokarmy, wypozyczenia cascade;
drop table czytelnicy, ksiazki, pokarmy, wypozyczenia cascade;
\d
dro view foo;
drop view foo;
drop table foo;
\d
\d
\d lekarze
\d zabiegi
select imie, nazwisko, count(*) from lekarze left join zabiegi on numer=lekarz;
select imie, nazwisko, count(*) from lekarze left join zabiegi on numer=lekarz group by lekarz
;
select imie, nazwisko, count(*) from lekarze left join zabiegi on numer=lekarz group by lekarz;
\d lekarze
insert into lekarze (nazwiskom imie, miasto) values ('Abacki', 'Andrzej', 'Warszawa');
insert into lekarze (nazwisko, imie, miasto) values ('Abacki', 'Andrzej', 'Warszawa');
insert into lekarze  values (1, 'Abacki', 'Andrzej', 'Warszawa');
[200~Insert into Lekarze values (‘Abacki’, ‘Andrzej’, ‘Warszawa’);
Insert into Lekarze values (2, ‘Babacki’, ‘Jan’, ‘Kraków’);
Insert into Lekarze values (3, ‘Cabacki’, ‘Kazimierz’);
Insert into Lekarze values (4,‘Dabacki’, ‘Andrzej’, ‘Kraków’);
Insert into Lekarze values (5,‘Ebacki’, ‘Andrzej’, ‘Gdansk);
Insert into Lekarze values (6,‘Fabacki’, ‘Jakub’, ‘Zakopane);~
insert into lekarze values (2, 'Babacki', 'Jan', 'Krakow');
'
insert into lekarze values (2, 'Babacki', 'Jan', 'Krakow');
;'
;
insert into lekarze values (2, 'Babacki', 'Jan', 'Krakow');
insert into lekarze values (3, 'Cabacki', 'Jan', 'Warszawa');
\d zabiegi;
\
\d
\d pacjenci
insert into pacjenci ('87452353123', 'Gabacki', 'Jan', 5);
insert into pacjenci ('12345678901', 'Gabacki', 'Jan', 5);
insert into pacjenci values ('12345678901', 'Gabacki', 'Jan', 5);
insert inot pacjenci values ('12345667890', 'Kabacki', 'Andrzej', 3);
insert into pacjenci values ('12345667890', 'Kabacki', 'Andrzej', 3);
\d zabiegi;
select * from lekarze;
select * from pacjenci
;
);
insert ino zabiegi values ('12345678901', 1, '2022-01-01', 2, 'tak');
insert into zabiegi values ('12345678901', 1, '2022-01-01', 2, 'tak');
insert into zabiegi values ('12345678901', 1, '2022-03-01', 1, 'tak');
insert into zabiegi values ('12345678901', 2, '2022-03-02', 1, 'tak');
insert into zabiegi values ('12345678901', 3, '2022-03-02', 1, 'nie');
insert into zabiegi values ('12345667890', 3, '2022-03-02', 1, 'nie');
insert into zabiegi values ('12345667890', 1, '2021-03-02', 1, 'nie');
insert into zabiegi values ('12345667890', 1, '2021-06-02', 1, 'nie');
insert into zabiegi values ('12345667890', 2, '2021-06-02', 1, 'tak');
insert into zabiegi values ('12345667890', 2, '2021-08-02', 1, 'tak');
select * from zabiegi;
\d lekarze;
create view liczba_zabiegow as select lekarz, count(*) from zabiegi group by leakrz;
create view liczba_zabiegow as select lekarz, count(*) from zabiegi group by zabiegi.leakrz;
create view liczba_zabiegow as select zabiegi.lekarz, count(*) from zabiegi group by zabiegi.leakrz;
create view liczba_zabiegow as select zabiegi.lekarz, count(*) from zabiegi group by zabiegi.lekarz;
\d
select * from liczba_zabiegow;
select imie, nazwisko, count from lekarze left join zabiegi on lekarz;
\d lekarze
select imie, nazwisko, count from lekarze left join zabiegi on lekarz=numer;
select imie, nazwisko, count from lekarze left join liczba_zabiegow on lekarz=numer;
select imie, nazwisko, count from lekarze left join liczba_zabiegow on lekarz=numer where count = (select max(count) from liczba_zabiegow;
);
select imie, nazwisko, count from lekarze left join liczba_zabiegow on lekarz=numer where count = (select max(count) from liczba_zabiegow);
select * from zabiegi;
select pacjent, sum(koszt), from zabiegi group by pacjent
;
select pacjent, sum(koszt) from zabiegi group by pacjent;
insert into zabiegi values ('12345678901', 1, '2020-01-04', 3, 'tak');
select pacjent, sum(koszt) from zabiegi group by pacjent;
create view as koszt_zabiegow as select pacjent, sum(koszt) from zabiegi group by pacjent;
create view koszt_zabiegow as select pacjent, sum(koszt) from zabiegi group by pacjent;
select * from koszt_zabiegow;
\pacjenci
\d
\d pacjenci
select * from koszt_zabiegow;
select imie, nazwisko from pacjenci left join koszt_zabiegow on pacjent=pesel where sum is not null and sum>limit;
select imie, nazwisko from pacjenci left join koszt_zabiegow on pacjent=pesel where sum is not null and sum>limit1;
select * from pacjeni
;
select * from pacjenci;
update table pacjenci set limit1 = 10 where imie='Andrzej';
update pacjenci set limit1 = 10 where imie='Andrzej';
select * from pacjenci;
select imie, nazwisko from pacjenci left join koszt_zabiegow on pacjent=pesel where sum is not null and sum>limit1;
\d zabiegi
\d lekarze
\pacjenci
\d pacjenci
select * from zabiegi
;
select lekarz, count(*) from zabiegi group by lekarz;
select lekarz, count(*), miasto from zabiegi group by lekarz left join lekarze on lekarz=numer;
select miasto, count(*), sum(koszt) from zabiegi left join lekarze on lekarz = numer group by miasto;
create view koszt_miasto as select miasto, sum(koszt) from zabiegi left join lekarze on lekarz = numer group by miasto;
select * from koszt_miasto;
select miasto from koszt_miasto where sum = min(sum);
select miasto from koszt_miasto where sum = (select min(sum) from koszt_miasto);
select * from zabiegi;
select A.lekarz, A.Data, B.Data from lekarze left join lekarze;
select A.lekarz, A.Data, B.Data from lekarze left join lekarze on A.lekarz, B.lekarz;
select A.lekarz, A.Data, B.Data from lekarze as A left join lekarze as B on A.lekarz, B.lekarz;
select A.lekarz, A.Data, B.Data from zabiegi as A left join zabiegi as B on A.lekarz, B.lekarz;
select A.lekarz, A.Data, B.Data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz;
select A.lekarz, A.Data, B.Data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data;
select * from zabiegi
;
select A.lekarz, A.Data, B.Data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data and A.lekarz = B.lekarz;
select A.lekarz, A.Data, B.Data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data;
;
select * from zabiegi;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.Data< B.Data;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz order by A.lekarz;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz order by A.lekarz and A.data<B.data;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.data<B.data;
select A.*, B.* from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.pacjent<B.pacjent;
select A.lekarz, A.data, B.data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.pacjent<B.pacjent;
create view daty as select A.lekarz, A.data, B.data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.pacjent<B.pacjent;
select A.lekarz, A.data, B.data from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.pacjent<B.pacjent;
create view daty as select A.lekarz, A.data as dataA, B.data as dataB from zabiegi as A left join zabiegi as B on A.lekarz= B.lekarz where A.lekarz = B.lekarz and A.pacjent<B.pacjent;
select * from daty;
select dataa - datab from daty;
select abs(dataa - datab) from daty;
select * from zabiegi;
select lekarz, abs(dataa - datab) from daty;
select lekarz, abs(dataa - datab) from daty;
select lekarz, maks(abs(dataa - datab)) from daty;
select lekarz, abs(dataa - datab) from daty;
create view daty2 as lekarz, abs(dataa - datab) from daty left join lekarze on lekarz=numer;
select lekarz, abs(dataa - datab) from daty left join lekarze on lekarz=numer;
select lekarz, abs(dataa - datab), lekarze.* from daty left join lekarze on lekarz=numer;
create view data2 as select lekarz, abs(dataa - datab), lekarze.* from daty left join lekarze on lekarz=numer;
select imie, nazwisko from data2 where abs = (select max(abs) from data2);
\d
\d
logout
'
;
;
'
;
logout;
\d
\d
\d
\d
select * from zwierzaki
;
drop table data2
;
select * from data2
;
\s
