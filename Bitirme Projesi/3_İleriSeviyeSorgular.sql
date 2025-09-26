----------D. Ýleri Seviye Görevler (Opsiyonel)-----------
--- En çok kazanç saðlayan ilk 3 kategori.
SELECT TOP 3
	k.ID,k.Ad,SUM(sd.Adet*sd.Fiyat) AS Kazanc
FROM SiparisDetay sd
INNER JOIN Urun u ON u.ID = sd.Urun_ID       
INNER JOIN Kategori k ON k.ID = u.Kategori_ID 
GROUP BY k.ID,k.Ad
ORDER BY Kazanc DESC;
--- Ortalama sipariþ tutarýný geçen sipariþleri bul.
SELECT 
    ID, Toplam_Tutar
FROM Siparis
WHERE Toplam_Tutar >= (SELECT AVG(Toplam_Tutar) FROM Siparis);
--- En az bir kez elektronik ürün satýn alan müþteriler.
SELECT 
    m.Ad,m.Soyad,u.Ad
FROM SiparisDetay sd 
INNER JOIN Siparis s ON s.ID=sd.Siparis_ID
INNER JOIN Musteri m ON m.ID=s.Musteri_ID
INNER JOIN Urun u ON u.ID=sd.Urun_ID
WHERE u.Kategori_ID=1;