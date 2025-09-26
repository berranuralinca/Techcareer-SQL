-----A. Veri Taban� Tasar�m�------

-- veritaban� olu�turmak
CREATE DATABASE OnlineAli�veri�Db;

--se�ili veritaban�n� kullanmak
USE OnlineAli�veri�Db
GO

--tablo olu�turmak
-- Musteri (id, ad, soyad, email, sehir, kayit_tarihi)
CREATE TABLE Musteri(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad NVARCHAR(50) NOT NULL,
	Soyad NVARCHAR(50) NOT NULL,
	Email NVARCHAR(100) UNIQUE NOT NULL,
	Sehir NVARCHAR(20),
	Kay�t_Tarihi DATETIME DEFAULT GETDATE()
);

-- Kategori (id, ad)
CREATE TABLE Kategori(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100) NOT NULL
);

-- Satici (id, ad, adres)
CREATE TABLE Satici (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100) NOT NULL,
    Adres NVARCHAR(255)
);

--- Urun (id, ad, fiyat, stok, kategori_id, satici_id)
CREATE TABLE Urun(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	Ad NVARCHAR(50) NOT NULL,
	Fiyat DECIMAL(10,2) NOT NULL,
	Stok INT NOT NULL,
	Kategori_ID INT,
	Satici_ID INT,
    -- Bir �r�n�n bir kategorisi vard�r.
    FOREIGN KEY (Kategori_ID) REFERENCES Kategori(ID),
    -- Bir �r�n bir sat�c�ya aittir.
    FOREIGN KEY (Satici_ID) REFERENCES Satici(ID)
);

-- Siparis (id, musteri_id, tarih, toplam_tutar, odeme_turu)
CREATE TABLE Siparis(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Musteri_ID INT NOT NULL,
    Tarih DATETIME DEFAULT GETDATE(),
    Toplam_Tutar DECIMAL(12,2),
    Odeme NVARCHAR(50),
    --- Bir m��teri birden fazla sipari� verebilir.
    FOREIGN KEY (Musteri_ID) REFERENCES Musteri(ID)
);

-- Siparis_Detay (id, siparis_id, urun_id, adet, fiyat)
CREATE TABLE SiparisDetay (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Siparis_ID INT NOT NULL,
    Urun_ID INT NOT NULL,
    Adet INT NOT NULL,
    Fiyat DECIMAL(10,2) NOT NULL,
    -- Bir sipari� birden fazla �r�n i�erebilir.
    FOREIGN KEY (Urun_ID) REFERENCES Urun(ID),
    FOREIGN KEY (Siparis_ID) REFERENCES Siparis(ID),
);
