#Input untuk memberi nilai pada cluster a,b, dan c
a <- c(2, 1, 3)
b <- c(1, -4, 6)
c <- c(-2, 3, -2)
#Fungsi untuk menghitung jarak antar titik dengan menggunakan rumus panjang vektor
hitung_jarak <- function(x,y) {
  sqrt( (x[1] - y[1])^2 + (x[2] - y[2])^2 + (x[3] - y[3])^2)
}

x1 <- as.numeric(readline("Masukkan x1: "))                  #Input untuk memasukkan nilai x1
x2 <- as.numeric(readline("Masukkan x2: "))                  #Input untuk memasukkan nilai x2
x3 <- as.numeric(readline("Masukkan x3: "))                  #Input untuk memasukkan nilai x3


if (is.na(x1) || is.na(x2) || is.na(x3)) {                   #Fungsi cabang untuk memeriksa jika input yang dimasukkan bukan angka
  cat("Error: Input harus berupa angka.\n")                  #Menampilkan "error : input harus berupa angka"
  
} else {
  titik_u <- c(x1, x2, x3)                                   #Menetapkan nilai koordinat untuk titik u

  jarak_a <- hitung_jarak(titik_u, a)                        #Input untuk menetapkan nilai jarak u ke a
  jarak_b <- hitung_jarak(titik_u, b)                        #Input untuk menetapkan nilai jarak u ke b
  jarak_c <- hitung_jarak(titik_u, c)                        #Input untuk menetapkan nilai jarak u ke c
  
  if(jarak_a < jarak_b && jarak_a < jarak_c){                #Fungsi cabang jika jarak u ke a merupakan yang terdekat
    cluster <- "A"                         
  } else if(jarak_b < jarak_a && jarak_b < jarak_c){         #Fungsi cabang jika jarak u ke b merupakan yang terdekat
    cluster <- "B" 
  } else {
    cluster <- "C"                                           #Fungsi cabang jika jarak u ke c merupakan yang terdekat
  }
  cat(sprintf("Jarak ke A = %.3f\n", jarak_a))               #Menampilkan panjang jarak u ke a,dibatasi 3 digit di belakang koma
  cat(sprintf("Jarak ke B = %.3f\n", jarak_b))               #Menampilkan panjang jarak u ke b,dibatasi 3 digit di belakang koma
  cat(sprintf("Jarak ke C = %.3f\n", jarak_c))               #Menampilkan panjang jarak u ke c,dibatasi 3 digit di belakang koma
  cat("Titik U termasuk Cluster", cluster, "\n")             #Menampilkan titik U termasuk cluster A, B atau C (tergantung pada cluster mana yang memiliki jarak paling dekat dengan titik u)

  
