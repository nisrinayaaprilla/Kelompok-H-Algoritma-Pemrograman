a <- c(2, 1, 3)
b <- c(1, -4, 6)
c <- c(-2, 3, -2)
hitung_jarak <- function(x,y) {
  sqrt( (x[1] - y[1])^2 + (x[2] - y[2])^2 + (x[3] - y[3])^2
  )
}

x1 <- as.numeric(readline("Masukkan x1: "))
x2 <- as.numeric(readline("Masukkan x2: "))
x3 <- as.numeric(readline("Masukkan x3: "))

if (is.na(x1) || is.na(x2) || is.na(x3)) {
  
  cat("Error: Input harus berupa angka.\n")
  
} else {
  
  titik_u <- c(x1, x2, x3)
  
  jarak_a <- hitung_jarak(titik_u, a)
  jarak_b <- hitung_jarak(titik_u, b)
  jarak_c <- hitung_jarak(titik_u, c)
  
  if(jarak_a < jarak_b && jarak_a < jarak_c){
    cluster <- "A"
  } else if(jarak_b < jarak_a && jarak_b < jarak_c){
    cluster <- "B"
  } else {
    cluster <- "C"
  }
  
  cat(sprintf("Jarak ke A = %.3f\n", jarak_a))
  cat(sprintf("Jarak ke B = %.3f\n", jarak_b))
  cat(sprintf("Jarak ke C = %.3f\n", jarak_c))
  cat("Titik U termasuk Cluster", cluster, "\n")
}
