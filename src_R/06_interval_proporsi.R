#Program 6 - Interval proporsi
#Menghitung interval konfidensi proporsi
hitung_interval_konfidensi <- function(phat, n, alpha) {
  
  #Validasi input
  if (is.na(phat) || is.na(n) || is.na(alpha)) {
    cat("ERROR: Input harus berupa angka.\n")
    return(NULL)
  }
  
  if (phat < 0 || phat > 1) {
    cat("ERROR: Proporsi sampel (phat) harus antara 0 dan 1.\n")
    return(NULL)
  }
  
  if (n <= 0 || n != round(n)) {
    cat("ERROR: Ukuran sampel (n) harus bilangan bulat positif.\n")
    return(NULL)
  }
  
  if (alpha == 0.10) {
    z <- 1.645
  } else if (alpha == 0.05) {
    z <- 1.96
  } else {
    cat("ERROR: Alpha hanya boleh 0.05 atau 0.10.\n")
    return(NULL)
  }
  
  #Perhitungan
  margin_error <- z * sqrt(phat * (1 - phat) / n)
  lower <- phat - margin_error
  upper <- phat + margin_error
  
  return(list(
    phat = phat,
    n = n,
    alpha = alpha,
    confidence_level = (1 - alpha) * 100,
    z = z,
    lower_bound = lower,
    upper_bound = upper
  ))
}

hasil <- hitung_interval_konfidensi(phat, n, alpha)

#Program utama
phat <- as.numeric(readline("Masukkan proporsi sampel (0 - 1): "))
n <- as.numeric(readline("Masukkan ukuran sampel (n): "))
alpha <- as.numeric(readline("Masukkan alpha (0.05 atau 0.10): "))

if (!is.null(hasil)) {
  cat(sprintf("Interval Konfidensi    : (%.4f, %.4f)\n",
              hasil$lower_bound, hasil$upper_bound))
}
