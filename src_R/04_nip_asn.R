#Uji Pertama
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
  namaBulan <- "Bulan Tidak Valid"
}

# Output
print(paste("Tanggal Lahir ASN :", Tanggal, namaBulan, Tahun))


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


