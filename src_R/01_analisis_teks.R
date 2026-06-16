#Program 1 - Menghitung jumlah kata dan jumlah kalimat dari sebuah teks

teks <- readline("Masukkan teks: ")

#Menghilangkan spasi di awal/akhir
teks <- trimws(teks)

#Menghitung jumlah kalimat berdasarkan titik
jumlah_kalimat <- nchar(gsub("[^.]", "", teks))

#Menghitung jumlah kata
jumlah_kata <- length(strsplit(teks, "\\s+")[[1]])

cat(sprintf("Teks tersebut memuat %d kalimat dan %d kata.\n", jumlah_kalimat, jumlah_kata))
