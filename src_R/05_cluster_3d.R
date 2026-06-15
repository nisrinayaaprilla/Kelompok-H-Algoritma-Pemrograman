#Input untuk memberi nilai pada cluster a,b, dan c
a <- c(2, 1, 3)                                             #Menyimpan koordinat pusat cluster a.
b <- c(1, -4, 6)                                            #Menyimpan koordinat pusat cluster b.
c <- c(-2, 3, -2)                                           #Menyimpan koordinat pusat cluster c.
hitung_jarak <- function(x,y) {                             #Mendefinisikan fungsi bernama hitung_jarak dengan parameter x dan y.
  sqrt( (x[1] - y[1])^2 + (x[2] - y[2])^2 + (x[3] - y[3])^2)#Rumus untuk menghitung jarak Euclidean 3 dimensi.
}

x1 <- as.numeric(readline("Masukkan x1: "))                  #Membaca input x1 dari pengguna lalu mengubahnya menjadi numerik.
x2 <- as.numeric(readline("Masukkan x2: "))                  #Membaca input x2 dari pengguna lalu mengubahnya menjadi numerik.
x3 <- as.numeric(readline("Masukkan x3: "))                  #Membaca input x3 dari pengguna lalu mengubahnya menjadi numerik.


if (is.na(x1) || is.na(x2) || is.na(x3)) {                   #Fungsi cabang untuk memeriksa jika input yang dimasukkan bukan angka
  cat("Error: Input harus berupa angka.\n")                  #Menampilkan "error : input harus berupa angka"
  
} else {
  titik_u <- c(x1, x2, x3)                                   #Menggabungkan ketiga koordinat menjadi sebuah vektor yang mewakili titik u.
  jarak_a <- hitung_jarak(titik_u, a)                        #Input untuk menetapkan nilai jarak u ke a
  jarak_b <- hitung_jarak(titik_u, b)                        #Input untuk menetapkan nilai jarak u ke b
  jarak_c <- hitung_jarak(titik_u, c)                        #Input untuk menetapkan nilai jarak u ke c
  
  if(jarak_a < jarak_b && jarak_a < jarak_c){                #Memeriksa apakah jarak ke cluster a paling kecil dibandingkan cluster lainnya.
    cluster <- "A"                                           #Menetapkan hasil klasifikasi sebagai cluster a.
  } else if(jarak_b < jarak_a && jarak_b < jarak_c){         #Memeriksa apakah jarak ke cluster b paling kecil dibandingkan cluster lainnya.
    cluster <- "B"                                           #Menetapkan hasil klasifikasi sebagai cluster b.
  } else {                                                   #Kemungkinan kondisi selain dua kondisi sebelumnya.
    cluster <- "C"                                           #Menetapkan hasil klasifikasi sebagai cluster c.
  }
  cat(sprintf("Jarak ke A = %.3f\n", jarak_a))               #Menampilkan panjang jarak u ke cluster a,dibatasi 3 digit di belakang koma.
  cat(sprintf("Jarak ke B = %.3f\n", jarak_b))               #Menampilkan panjang jarak u ke cluster b,dibatasi 3 digit di belakang koma.
  cat(sprintf("Jarak ke C = %.3f\n", jarak_c))               #Menampilkan panjang jarak u ke cluster c,dibatasi 3 digit di belakang koma.
  cat("Titik U termasuk Cluster", cluster, "\n")             #Menampilkan hasil akhir klasifikasi cluster berdasarkan jarak terkecil.
