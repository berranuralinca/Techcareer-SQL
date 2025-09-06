#  SQL Veri Tabanı ve Temel Komutlar

**SQL (Structured Query Language)**, veritabanı yönetiminde kullanılan standart bir dildir.  

Veri tabanı üzerinde şu işlemler SQL ile yapılabilir:  

## 1. Veri Tabanı Oluşturma
Yeni bir veritabanı oluşturmak için `CREATE DATABASE` komutu kullanılır.

```sql
CREATE DATABASE EMPLOYEES;
```
- EMPLOYEES adında bir veritabanı oluşturur.


## 2.Tablo Oluşturma
CREATE TABLE komutu ile veritabanında yeni bir tablo tanımlanır.

```sql
CREATE TABLE USERS (
  id INT IDENTITY(1,1) PRIMARY KEY,  
  user_name NVARCHAR(50),  
  user_lastname NVARCHAR(50),  
  age INT
);;
```
- id: INT tipinde, otomatik artan (IDENTITY) ve birincil anahtar (PRIMARY KEY) özelliğine sahip bir sütundur.

- user_name, user_lastname: NVARCHAR(50) tipinde, yani en fazla 50 karakter uzunluğunda metin alanıdır.

- age: INT tipinde bir sayı alanıdır.


## 3.Veri Ekleme
Tabloya veri eklemek için INSERT INTO kullanılır

```sql
INSERT INTO USERS (user_name, user_lastname, age) 
VALUES ('Ali','Ozturk',32);
```
Burada Ali Öztürk, 32 yaşında bir kullanıcı olarak eklenir.

## 4.Veri Güncelleme
Mevcut veriyi değiştirmek için UPDATE kullanılır.

```sql
UPDATE USERS
SET age = 25
WHERE user_name = 'Ali';
```
Adı Ali olan kullanıcının yaşı 25 olarak güncellenir.

## 5.Veri Silme
Tablodan veri silmek için DELETE FROM kullanılır.
```sql
DELETE FROM USERS
WHERE id = 1;
```
id değeri 1 olan kullanıcı silinir.

## 6.Veri Listeleme
Tablodaki verileri görmek için SELECT kullanılır.
```sql
-- Tüm sütunları getir
SELECT * FROM USERS;

-- Sadece user_name sütununu getir
SELECT user_name FROM USERS;

-- user_name ve user_lastname sütunlarını getir
SELECT user_name, user_lastname FROM USERS;
```
## 7.Tekrarlayan Verileri Engelleme
Aynı verilerden yalnızca birini listelemek için DISTINCT kullanılır.
```sql
SELECT DISTINCT user_name
FROM USERS;
```

## 8.Belirli Sayıda Veri Getirme
Tablodan sadece ilk birkaç kaydı görmek için TOP kullanılır.
```sql
SELECT TOP 2 user_name
FROM USERS;
```
