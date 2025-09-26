USE OnlineAli�veri�Db
GO

-------------------------------------------------
--B. Veri Ekleme ve G�ncelleme
-- �rnek m��teri, �r�n ve sipari� verileri ekle.
-------------------------------------------------

INSERT INTO Musteri (Ad, Soyad, Email, Sehir)
VALUES 
('Ali', 'Cem', 'alicem@gmail.com', '�stanbul'),
('Kaan', 'Akt�rk', 'kaanakturk1@gmail.com', 'Ankara'),
('Ay�e', 'Bayar', 'bayarayse@gmail.com', '�zmir'),
('Hakan', 'Ata�', 'hakanatass@gmail.com', '�stanbul'),
('Meyra', 'G�ne�', 'meygunes@gmail.com', '�stanbul'),
('Deniz', 'Kurt', 'denizkurt@gmail.com', 'Bursa'),
('Elif', '�elik', 'elifcelik@gmail.com', 'Antalya'),
('Burak', 'Y�ld�r�m', 'burakyildirim@gmail.com', 'Ankara'),
('Selin', 'Ko�', 'selinkoc@gmail.com', '�zmir'),
('Can', 'Demir', 'candemir@gmail.com', '�stanbul'),
('Zeynep', '�ahin', 'zeynepsahin@gmail.com', 'Eski�ehir'),
('Efe', 'Polat', 'efepolat@gmail.com', 'Ankara'),
('Asl�', 'Erdo�an', 'aslierdogan@gmail.com', '�stanbul'),
('Mert', 'Uslu', 'mertuslu@gmail.com', 'Bursa'),
('Gamze', 'Acar', 'gamzeacar@gmail.com', '�zmir'),
('Tolga', 'Sevin�', 'tolgasevinc@gmail.com', 'Antalya'),
('Ceren', '��nar', 'cerencinar@gmail.com', '�stanbul'),
('Emre', 'Arslan', 'emrearslan@gmail.com', 'Ankara'),
('�rem', 'Yal��n', 'iremyalcin@gmail.com', 'Bolu'),
('Baran', 'Turan', 'baranturan@gmail.com', '�stanbul');


INSERT INTO Kategori (Ad)
VALUES
('Elektronik'),
('Giyim'),
('Mobilya'),
('Ki�isel Bak�m'),
('Ayakkab�'),
('Kitap & K�rtasiye'),
('Spor & Outdoor'),
('Oyuncak & Hobi'),
('Bah�e & Yap� Market'),
('Pet Shop'),
('Bebek �r�nleri');

INSERT INTO Satici (Ad, Adres)
VALUES
('Teknologia', '�stanbul - Kad�k�y'),  -- Elektronik
('Trendyy', 'Ankara - �ankaya'),                  -- Giyim
('HomeDes', '�zmir - Kar��yaka'),                  -- Mobilya
('Gratis', 'Antalya - Muratpa�a'),              -- Ki�isel Bak�m
('Nike', 'Bursa'),                   -- Ayakkab�
('KitapKurdu', '�stanbul - Beyo�lu'),               -- Kitap & K�rtasiye
('Adidas', 'Ankara - Etimesgut'),                -- Spor & Outdoor
('Zen', 'Gaziantep'),              -- M�cevher & Aksesuar
('Lego', 'Konya - Sel�uklu'),             -- Oyuncak & Hobi
('Yap�mar', 'Kayseri - Melikgazi'),             -- Bah�e & Yap� Market
('Petpet', 'Adana - Seyhan'),                      -- Pet Shop
('Bebegam', 'Samsun'),                 -- Bebek �r�nleri
('Grahamm', '�stanbul - �i�li'),                -- Elektronik
('Terzi', '�zmir - Bornova'),                   -- Giyim
('�ekyat', 'Ankara - Yenimahalle'),               -- Mobilya
('Parfumery', 'Antalya - Kepez'),                    -- Ki�isel Bak�m
('Zincir', 'Bursa - Osmangazi');                 -- Ayakkab�


INSERT INTO Urun (Ad, Fiyat, Stok, Kategori_ID, Satici_ID)
VALUES
('Laptop', 18500.00, 15, 1, 1),
('Ak�ll� Telefon', 14500.00, 25, 1, 13),
('Tablet', 7500.00, 30, 1, 1),
('Kulakl�k', 1200.00, 50, 1, 13),
('Ak�ll� Saat', 3200.00, 40, 1, 1),
('Bluetooth Hoparl�r', 1500.00, 60, 1, 13),
('Kot Pantolon', 750.00, 40, 2, 2),
('Ti��rt', 250.00, 80, 2, 14),
('Ceket', 950.00, 20, 2, 2),
('Etek', 400.00, 30, 2, 14),
('Sweatshirt', 550.00, 25, 2, 2),
('Koltuk Tak�m�', 18000.00, 5, 3, 3),
('Yatak', 9500.00, 10, 3, 15),
('Masa', 3500.00, 15, 3, 3),
('Sandalye', 850.00, 50, 3, 15),
('Kitapl�k', 2200.00, 12, 3, 3),
('�ampuan', 150.00, 100, 4, 4),
('Parf�m', 600.00, 40, 4, 16),
('Cilt Bak�m Kremi', 300.00, 60, 4, 4),
('Di� Macunu', 75.00, 120, 4, 16),
('Sa� Kurutma Makinesi', 950.00, 25, 4, 4),
('Spor Ayakkab�', 2200.00, 35, 5, 5),
('Bot', 3500.00, 15, 5, 17),
('Topuklu Ayakkab�', 1800.00, 18, 5, 5),
('Sneaker', 2700.00, 40, 5, 17),
('Roman Kitap', 120.00, 100, 6, 6),
('Defter', 35.00, 200, 6, 6),
('Kalem Seti', 80.00, 150, 6, 6),
('Ansiklopedi', 950.00, 20, 6, 6),
('Futbol Topu', 500.00, 60, 7, 7),
('Ko�u Band�', 12500.00, 8, 7, 7),
('Damb�l Seti', 2500.00, 20, 7, 7),
('Kamp �ad�r�', 4500.00, 12, 7, 7),
('Lego Seti', 850.00, 25, 8, 9),
('Puzzle', 200.00, 45, 8, 9),
('Oyuncak Araba', 150.00, 70, 8, 9),
('Satran� Tak�m�', 450.00, 30, 8, 9),
('Matkap', 1800.00, 30, 9, 10),
('Bah�e Sandalyesi', 650.00, 20, 9, 10),
('�im Bi�me Makinesi', 4200.00, 8, 9, 10),
('Sulama Hortumu', 250.00, 50, 9, 10),
('K�pek Mamas�', 400.00, 60, 10, 11),
('Kedi Oyunca��', 120.00, 100, 10, 11),
('Ku� Kafesi', 750.00, 15, 10, 11),
('Bal�k Yemi', 90.00, 80, 10, 11),
('Bebek Arabas�', 3500.00, 12, 11, 12),
('Bebek Bezi', 450.00, 90, 11, 12),
('Biberon', 120.00, 150, 11, 12),
('Mama Sandalyesi', 850.00, 25, 11, 12);


INSERT INTO Siparis (Musteri_ID, Toplam_Tutar, Odeme)
VALUES
(1, NULL, 'Kredi Kart�'),
(2, NULL, 'Kap�da'),
(3, NULL, 'Havale'),
(4, NULL, 'Kredi Kart�'),
(5, NULL, 'Kredi Kart�'),
(6, NULL, 'Havale'),
(7, NULL, 'Kredi Kart�'),
(8, NULL, 'Kap�da'),
(9, NULL, 'Kredi Kart�'),
(10, NULL, 'Havale'),
(11, NULL, 'Kredi Kart�'),
(12, NULL, 'Kap�da'),
(13, NULL, 'Kredi Kart�'),
(14, NULL, 'Havale'),
(15, NULL, 'Kredi Kart�'),
(16, NULL, 'Kap�da'),
(17, NULL, 'Kredi Kart�'),
(18, NULL, 'Havale'),
(19, NULL, 'Kredi Kart�'),
(20, NULL, 'Kap�da');


INSERT INTO SiparisDetay (Siparis_ID, Urun_ID, Adet, Fiyat)
VALUES
(1, 82, 1, 18500.00), 
(1, 112, 1, 120.00), 
(1, 127, 1, 850.00),
(2, 87, 1, 3200.00),
(2, 89, 1, 750.00),
(3, 92, 2, 400.00),
(3, 93, 1, 550.00),
(4, 83, 2, 250.00), 
(4, 84, 1, 950.00), 
(4, 85, 1, 300.00),
(5, 103, 1, 3500.00), 
(5, 104, 2, 450.00),
(6, 86, 1, 1200.00), 
(6, 87, 1, 3200.00),
(7, 90, 1, 850.00), 
(7, 91, 1, 2200.00),
(8, 94, 2, 300.00), 
(8, 95, 1, 600.00),
(9, 96, 1, 75.00), 
(9, 97, 1, 950.00),
(10, 100, 1, 1800.00), 
(10, 101, 1, 650.00),
(11, 105, 1, 4500.00), 
(11, 108, 1, 500.00),
(12, 109, 1, 12500.00), 
(12, 110, 1, 2500.00),
(13, 111, 1, 850.00), 
(13, 112, 1, 200.00),
(14, 113, 1, 150.00), 
(14, 114, 1, 450.00),
(15, 115, 1, 3500.00), 
(15, 116, 1, 450.00),
(16, 117, 1, 120.00), 
(16, 118, 1, 850.00),
(17, 119, 1, 1800.00), 
(17, 120, 1, 2700.00),
(18, 121, 1, 120.00), 
(18, 122, 1, 450.00),
(19, 123, 1, 4200.00), 
(19, 124, 1, 250.00),
(20, 125, 1, 400.00), 
(20, 126, 1, 120.00), 
(20, 127, 1, 750.00), 
(20, 128, 1, 90.00), 
(20, 129, 1, 3500.00), 
(20, 130, 1, 450.00), 
(20, 111, 1, 500.00), 
(20, 100, 2, 300.00);

-------------------------------------------------
--sipari� id'sine g�re toplam fiyat� g�r�nt�leme
SELECT Siparis_ID, SUM(Adet * Fiyat) AS Toplam
FROM SiparisDetay
GROUP BY Siparis_ID;
--toplam tutar
UPDATE s
SET s.Toplam_Tutar = sd.Toplam --Toplam_Tutar alan�n� sorgudan gelenle g�ncelliyor
FROM Siparis s
INNER JOIN ( -- alt sorgu:sipari� id ye g�re gruplar ve her sipari� i�in toplam tutar hesaplar
    SELECT Siparis_ID, SUM(Adet * Fiyat) AS Toplam
    FROM SiparisDetay
    GROUP BY Siparis_ID
) sd ON s.ID = sd.Siparis_ID; -- id ye g�re
-------------------------------------------------



-------------------------------------------------
--stok g�ncelleme
-- SD.Siparis_ID = 1 den sonra g�ncelleme
UPDATE U
SET U.Stok = U.Stok - SD.Adet
FROM Urun U
INNER JOIN SiparisDetay SD ON U.ID = SD.Urun_ID
WHERE SD.Siparis_ID = 1;  

UPDATE U
SET U.Stok = U.Stok - SD.Adet
FROM Urun U
INNER JOIN SiparisDetay SD ON U.ID = SD.Urun_ID
WHERE SD.Siparis_ID = 2;  

--t�m sto�u g�ncelleme
UPDATE U
SET U.Stok = U.Stok - SD.Adet
FROM Urun U
INNER JOIN SiparisDetay SD ON U.ID = SD.Urun_ID;

-------------------------------------------------

-------------------------------------------------
--------------------DELETE-----------------------
--burada hata ald�m
--The DELETE statement conflicted with the REFERENCE constraint "FK__SiparisDe__Sipar__59FA5E80". The conflict occurred in database "OnlineAli�veri�Db", table "dbo.SiparisDetay", column 'Siparis_ID'.
DELETE FROM Siparis
WHERE ID = 2;

--foreign key ile ili�kili oldu�undan ilk ili�kili k�sm� sildim
DELETE FROM SiparisDetay
WHERE Siparis_ID = 2;

-- sonra sipari�i sildim
DELETE FROM Siparis
WHERE ID = 2;

------TRUNCATE TABLE----------------------------------
-- Siparis tablosunu temizlemek TRUNCATE TABLE Siparis;

