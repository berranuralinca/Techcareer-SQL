USE OnlineAliþveriþDb
GO

---------------------------------
--C. Veri Sorgulama ve Raporlama
---------------------------------

-------Temel Sorgular------------

-- En çok sipariþ veren 5 müþteri.
SELECT TOP 5 
    m.ID, m.Ad, m.Soyad, COUNT(s.ID) AS SiparisSayisi
FROM Musteri m
INNER JOIN Siparis s ON m.ID = s.Musteri_ID
GROUP BY m.ID, m.Ad, m.Soyad
ORDER BY SiparisSayisi DESC;

-- En çok satýlan ürünler.
SELECT TOP 5
    u.ID,u.Ad,sum(sd.adet) as ToplamUrun
FROM Urun U
INNER JOIN SiparisDetay sd ON U.ID=SD.Urun_ID
GROUP BY U.ID,U.Ad
ORDER BY ToplamUrun DESC;

-- En yüksek cirosu olan satýcýlar.
SELECT TOP 5
    s.ID,s.Ad, sum(sd.Adet*sd.Fiyat) as Ciro
FROM Satici s
--urun tablosundan urun idsini satýcýya göre aldým
INNER JOIN Urun U ON U.Satici_ID=s.ID
INNER JOIN SiparisDetay sd ON sd.Urun_ID=U.ID
GROUP BY S.ID,S.Ad
ORDER BY Ciro DESC;

------------------------------------
------Aggregate & Group By----------

-- Þehirlere göre müþteri sayýsý.
SELECT m.Sehir, Count(m.Sehir) as MüsteriSayisi
FROM Musteri m
GROUP BY m.Sehir
ORDER BY MüsteriSayisi DESC;

--Kategori bazlý toplam satýþlar.
--kategori.id =ürün.kategori_id
--urun.id=sd.urun_id
SELECT 
    k.Ad,COUNT(sd.adet) as ToplamSatis
FROM Kategori k
INNER JOIN Urun u ON u.Kategori_ID=k.ID
INNER JOIN SiparisDetay sd ON sd.Urun_ID=u.ID
GROUP BY K.Ad
ORDER BY ToplamSatis DESC;

--Aylara göre sipariþ sayýsý.
SELECT 
    YEAR(s.Tarih) AS Yil,
    MONTH(s.Tarih) AS Ay,
    COUNT(*) AS SiparisSayisi
FROM Siparis s
GROUP BY YEAR(s.Tarih), MONTH(s.Tarih)
ORDER BY Yil, Ay;

---------------------------------------
-------------JOIN’ler------------------

-- Sipariþlerde müþteri bilgisi + ürün bilgisi + satýcý bilgisi.

SELECT 
    m.ID AS MusteriID,
    m.Ad AS MusteriAd,
    m.Soyad AS MusteriSoyad,
    STRING_AGG(u.Ad, ', ')  AS Urunler, -- o müsteriye ait urunler
    STRING_AGG(sa.Ad, ', ') AS Saticilar,
    STRING_AGG(k.Ad, ', ') AS Kategoriler
FROM SiparisDetay sd
INNER JOIN Siparis s ON s.ID = sd.Siparis_ID
INNER JOIN Musteri m ON s.Musteri_ID = m.ID
INNER JOIN Urun u ON u.ID = sd.Urun_ID
INNER JOIN Satici sa ON sa.ID = u.Satici_ID
INNER JOIN Kategori k ON k.ID = u.Kategori_ID
GROUP BY m.ID, m.Ad, m.Soyad;

-- Hiç satýlmamýþ ürünler.

SELECT u.ID, u.Ad, u.Fiyat, u.Stok
FROM Urun u
LEFT JOIN SiparisDetay sd ON u.ID = sd.Urun_ID --tüm ürünleri getirir
WHERE sd.Urun_ID IS NULL; --bos olanlari getir

-- Hiç sipariþ vermemiþ müþteriler.

SELECT m.ID,m.Ad,m.Soyad
FROM Musteri m
LEFT JOIN Siparis s ON m.ID = s.Musteri_ID 
WHERE s.Musteri_ID IS NULL; 