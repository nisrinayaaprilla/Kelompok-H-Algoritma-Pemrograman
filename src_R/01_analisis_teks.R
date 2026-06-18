#Program 1 - Menghitung jumlah kalimat dan jumlah kata dari sebuah teks

#Menerima input teks dari pengguna dan menyimpannya ke variabel
teks <- readline("Masukkan teks: ")

# #Menerima input teks dari pengguna dan menyimpannya ke variabel
teks <- trimws(teks)                               

#Menghapus semua karakter selain titik (.), lalu menghitung jumlah titik yang tersisa sebagai jumlah kalimat
jumlah_kalimat <- nchar(gsub("[^.]", "", teks))

#Memisahkan teks menjadi kata-kata berdasarkan spasi, kemudian menghitung jumlah katanya
jumlah_kata <- length(strsplit(teks, "\\s+")[[1]])

#Menampilkan hasil jumlah kalimat dan jumlah kata
cat(sprintf("Teks tersebut memuat %d kalimat dan %d kata.\n", jumlah_kalimat, jumlah_kata))
