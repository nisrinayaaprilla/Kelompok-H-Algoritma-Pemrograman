#Input untuk memberi nilai pada cluster a,b, dan c
a <- c(2, 1, 3)
b <- c(1, -4, 6)
c <- c(-2, 3, -2)
#Fungsi untuk menghitung jarak antar titik dengan menggunakan rumus panjang vektor
hitung_jarak <- function(x,y) {
  sqrt( (x[1] - y[1])^2 + (x[2] - y[2])^2 + (x[3] - y[3])^2)
}
#Input untuk memberi nilai pada titik-titik U
x1 <- as.numeric(readline("Masukkan x1: "))
x2 <- as.numeric(readline("Masukkan x2: "))
x3 <- as.numeric(readline("Masukkan x3: "))

#Fungsi cabang jika input yang dimasukkan bukan angka
if (is.na(x1) || is.na(x2) || is.na(x3)) {
  cat("Error: Input harus berupa angka.\n")
  
} else {
  #Menetapkan nilai koordinat titik u
  titik_u <- c(x1, x2, x3)

  jarak_a <- hitung_jarak(titik_u, a) #Input untuk menetapkan nilai jarak u ke a
  jarak_b <- hitung_jarak(titik_u, b) #Input untuk menetapkan nilai jarak u ke b
  jarak_c <- hitung_jarak(titik_u, c) #Input untuk menetapkan nilai jarak u ke c
  
  if(jarak_a < jarak_b && jarak_a < jarak_c){
    cluster <- "A" #Fungsi cabang jika jarak u ke a merupakan yang terdekat
  } else if(jarak_b < jarak_a && jarak_b < jarak_c){
    cluster <- "B" #Fungsi cabang jika jarak u ke b merupakan yang terdekat
  } else {
    cluster <- "C" #Fungsi cabang jika jarak u ke c merupakan yang terdekat
  }
  cat(sprintf("Jarak ke A = %.3f\n", jarak_a)) #Output untuk menampilkan panjang jarak u ke a
  cat(sprintf("Jarak ke B = %.3f\n", jarak_b)) #Output untuk menampilkan panjang jarak u ke b
  cat(sprintf("Jarak ke C = %.3f\n", jarak_c)) #Output untuk menampilkan panjang jarak u ke c
  cat("Titik U termasuk Cluster", cluster, "\n") #Output untuk menampilkabahwa titik u termasuk cluster a,b, atau c
}
