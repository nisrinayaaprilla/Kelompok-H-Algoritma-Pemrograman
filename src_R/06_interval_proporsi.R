#Program 6 - Interval proporsi
#Uji 1
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

#Membaca input angka
baca_angka <- function(prompt_text) {
  input_teks <- readline(prompt_text)
  input_teks <- gsub(",", ".", input_teks)
  return(suppressWarnings(as.numeric(input_teks)))
}

#Program utama
phat <- 0.9
alpha <- 0.10
n <- 400

hasil <- hitung_interval_konfidensi(phat, n, alpha)

if (!is.null(hasil)) {
  cat("\nHASIL PERHITUNGAN\n")
  cat("Proporsi sampel (phat) :", hasil$phat, "\n")
  cat("Ukuran sampel (n)      :", hasil$n, "\n")
  cat("Nilai z                :", hasil$z, "\n")
  cat("Tingkat kepercayaan    :", hasil$confidence_level, "%\n")
  cat(sprintf("Batas bawah            : %.4f\n", hasil$lower_bound))
  cat(sprintf("Batas atas             : %.4f\n", hasil$upper_bound))
  cat(sprintf("Interval Konfidensi    : (%.4f, %.4f)\n",
              hasil$lower_bound, hasil$upper_bound))
} else {
  cat("\nProgram dihentikan karena input tidak valid.\n")
}

#Uji 2
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

#Membaca input angka
baca_angka <- function(prompt_text) {
  input_teks <- readline(prompt_text)
  input_teks <- gsub(",", ".", input_teks)
  return(suppressWarnings(as.numeric(input_teks)))
}

#Program utama
phat <- 1.6
alpha <- 0.05
n <- 3000

hasil <- hitung_interval_konfidensi(phat, n, alpha)

if (!is.null(hasil)) {
  cat("\nHASIL PERHITUNGAN\n")
  cat("Proporsi sampel (phat) :", hasil$phat, "\n")
  cat("Ukuran sampel (n)      :", hasil$n, "\n")
  cat("Nilai z                :", hasil$z, "\n")
  cat("Tingkat kepercayaan    :", hasil$confidence_level, "%\n")
  cat(sprintf("Batas bawah            : %.4f\n", hasil$lower_bound))
  cat(sprintf("Batas atas             : %.4f\n", hasil$upper_bound))
  cat(sprintf("Interval Konfidensi    : (%.4f, %.4f)\n",
              hasil$lower_bound, hasil$upper_bound))
} else {
  cat("\nProgram dihentikan karena input tidak valid.\n")
}

#Uji 3
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

#Membaca input angka
baca_angka <- function(prompt_text) {
  input_teks <- readline(prompt_text)
  input_teks <- gsub(",", ".", input_teks)
  return(suppressWarnings(as.numeric(input_teks)))
}

#Program utama
phat <- 0.7
alpha <- 0.03
n <- 500

hasil <- hitung_interval_konfidensi(phat, n, alpha)

if (!is.null(hasil)) {
  cat("\nHASIL PERHITUNGAN\n")
  cat("Proporsi sampel (phat) :", hasil$phat, "\n")
  cat("Ukuran sampel (n)      :", hasil$n, "\n")
  cat("Nilai z                :", hasil$z, "\n")
  cat("Tingkat kepercayaan    :", hasil$confidence_level, "%\n")
  cat(sprintf("Batas bawah            : %.4f\n", hasil$lower_bound))
  cat(sprintf("Batas atas             : %.4f\n", hasil$upper_bound))
  cat(sprintf("Interval Konfidensi    : (%.4f, %.4f)\n",
              hasil$lower_bound, hasil$upper_bound))
} else {
  cat("\nProgram dihentikan karena input tidak valid.\n")
}