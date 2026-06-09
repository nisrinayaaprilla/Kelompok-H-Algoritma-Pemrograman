#Program 1 - Menghitung jumlah kata dan jumlah kalimat dari sebuah teks

teks <- readline(prompt = "Masukkan teks: ")
teks <- Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif.

#Menghilangkan spasi di awal/akhir
teks <- trimws(teks)

#Menghitung jumlah kalimat berdasarkan titik
jumlah_kalimat <- nchar(gsub("[^.]", "", teks))

#Menghitung jumlah kata
jumlah_kata <- length(strsplit(teks, "\\s+")[[1]])

cat(sprintf("Teks tersebut memuat %d kalimat dan %d kata.\n", jumlah_kalimat, jumlah_kata))
