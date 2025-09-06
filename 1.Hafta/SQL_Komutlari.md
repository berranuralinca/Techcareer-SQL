# 📚 SQL Veri Tabanı ve Temel Komutlar

**SQL (Structured Query Language)**, veritabanı yönetiminde kullanılan standart bir dildir.  

Veri tabanı üzerinde şu işlemler SQL ile yapılabilir:  

## 1. Veri Tabanı Oluşturma
Yeni bir veritabanı oluşturmak için `CREATE DATABASE` komutu kullanılır.

```sql
CREATE DATABASE EMPLOYEES;
```

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

- ad, soyad: NVARCHAR(50) tipinde, yani en fazla 50 karakter uzunluğunda metin alanıdır.

- yas: INT tipinde bir sayı alanıdır.
