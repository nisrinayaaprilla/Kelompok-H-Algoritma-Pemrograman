#Uji Pertama
# Input NIP ASN
NIP <- readline(prompt = "Masukkan NIP ASN: ")                       #Menerima input
if (is.na(as.numeric(NIP))) {
  stop("Error: NIP Harus Berupa Angka")                              #Memunculkan error jika NIP yang diinput bukan berupa angka
}

# Mengambil tahun, bulan, dan tanggal
Tahun <- substr(NIP, 1, 4)                                           #Mengambil digit pertama hingga keempat sebagai tahun lahir ASN
Bulan <- substr(NIP, 5, 6)                                            #Mengambil digit ke 5 dan 6 dari NIP sebagai bulan lahir ASN
Tanggal <- substr(NIP, 7, 8)                                         #Mengambil digit ke 7 dan ke 8 dari NIP sebagai tanggal lahir ASN

# Percabangan nama bulan
if (Bulan == "01") {                                                 #Memeriksa kondisi pertama apakah bulan adalah 01
  namaBulan <- "Januari"                                             #Menunjukkan bahwa jika bulan 01 maka nama bulan adalah Januari
} else if (Bulan == "02") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Februari"                                            #Menunjukkan bahwa jika bulan 02 maka nama bulan Februari
} else if (Bulan == "03") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Maret"                                               #Menunjukkan bahwa nama bulan adalah Maret jika bulan 03
} else if (Bulan == "04") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "April"                                               #Menunjukkan bahwa nama bulan adalah April jika bulan 04
} else if (Bulan == "05") {                                          #Memeriksa kondisi selanjutnya jika kondisi sebelumnya salah
  namaBulan <- "Mei"                                                 #Menunjukkan bahwa nama bulan adalah Mei jika bulan 05
} else if (Bulan == "06") {                                          #Memeriksa kondisi selanjutnya jika kondisi sebelumnya salah
  namaBulan <- "Juni"                                                #Menunjukkan bahwa nama bulan adalah Juni jika bulan 06
} else if (Bulan == "07") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Juli"                                                #Menunjukkan bahwa nama bulan adalah Juli jika bulan -7
} else if (Bulan == "08") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Agustus"                                             #Menunjukkan bahwa nama bulan adalah Agustus jika bulan 08
} else if (Bulan == "09") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "September"                                           #Menunjukkan bahwa nama bulan adalah September jika bulan 09
} else if (Bulan == "10") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Oktober"                                             #Menunjukan bahwa nama bulan adalah Oktober jika bulan 10
} else if (Bulan == "11") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "November"                                            #Menunjukkan bahwa nama bulan adalah November jika bulan 11
} else if (Bulan == "12") {                                          #Memeriksa kondisi berikutnya jika kondisi sebelumnya salah
  namaBulan <- "Desember"                                            #Menunjukkan bahwa nama bulan adalah Desember jika bulan 12
} else {                                                             #Menjalankan perintah jika semua kondisi salah
  namaBulan <- "Bulan Tidak Valid"                                   #Menunjukkan bahwa bulan tidak valid jika semua kondisi salah
}

# Output
print(paste("Tanggal Lahir ASN :", Tanggal, namaBulan, Tahun))       #Menampilkan tanggal lahir ASN yang terdiri dari tanggal, nama bulan, dan tahun


#Uji Kedua
# Input NIP ASN
NIP <- readline(prompt = "Masukkan NIP ASN: ")
if (is.na(as.numeric(NIP))) {
  stop("Error: NIP Harus Berupa Angka")
}

# Mengambil tahun, bulan, dan tanggal
Tahun <- substr(NIP, 1, 4)
Bulan <- substr(NIP, 5, 6)
Tanggal <- substr(NIP, 7, 8)

# Percabangan nama bulan
if (Bulan == "01") {
  namaBulan <- "Januari"
} else if (Bulan == "02") {
  namaBulan <- "Februari"
} else if (Bulan == "03") {
  namaBulan <- "Maret"
} else if (Bulan == "04") {
  namaBulan <- "April"
} else if (Bulan == "05") {
  namaBulan <- "Mei"
} else if (Bulan == "06") {
  namaBulan <- "Juni"
} else if (Bulan == "07") {
  namaBulan <- "Juli"
} else if (Bulan == "08") {
  namaBulan <- "Agustus"
} else if (Bulan == "09") {
  namaBulan <- "September"
} else if (Bulan == "10") {
  namaBulan <- "Oktober"
} else if (Bulan == "11") {
  namaBulan <- "November"
} else if (Bulan == "12") {
  namaBulan <- "Desember"
} else {
  stop("Bulan tidak valid")
}

# Output
print(paste("Tanggal Lahir ASN :", Tanggal, namaBulan, Tahun))


#Uji Ketiga
# Input NIP ASN
NIP <- readline(prompt = "Masukkan NIP ASN: ")
if (is.na(as.numeric(NIP))) {
  stop("Error: NIP Harus Berupa Angka")
}

# Mengambil tahun, bulan, dan tanggal
Tahun <- substr(NIP, 1, 4)
Bulan <- substr(NIP, 5, 6)
Tanggal <- substr(NIP, 7, 8)

# Percabangan nama bulan
if (Bulan == "01") {
  namaBulan <- "Januari"
} else if (Bulan == "02") {
  namaBulan <- "Februari"
} else if (Bulan == "03") {
  namaBulan <- "Maret"
} else if (Bulan == "04") {
  namaBulan <- "April"
} else if (Bulan == "05") {
  namaBulan <- "Mei"
} else if (Bulan == "06") {
  namaBulan <- "Juni"
} else if (Bulan == "07") {
  namaBulan <- "Juli"
} else if (Bulan == "08") {
  namaBulan <- "Agustus"
} else if (Bulan == "09") {
  namaBulan <- "September"
} else if (Bulan == "10") {
  namaBulan <- "Oktober"
} else if (Bulan == "11") {
  namaBulan <- "November"
} else if (Bulan == "12") {
  namaBulan <- "Desember"
} else {
  stop("Bulan tidak valid")
}

# Output
print(paste("Tanggal Lahir ASN :", Tanggal, namaBulan, Tahun))


