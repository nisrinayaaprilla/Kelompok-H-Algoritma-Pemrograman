#Program 6 - Interval proporsi
#Menghitung interval konfidensi proporsi
hitung_interval_konfidensi <- function(phat, n, alpha) {                #Mendefinisikan fungsi bernama hitung_interval_konfidensi yang menerima tiga parameter yaitu proporsi sampel (phat), ukuran sampel (n), dan tingkat signifikansi (alpha).
  
  #Validasi input
  if (is.na(phat) || is.na(n) || is.na(alpha)) {                           #is.na() adalah fungsi bawaan di R yang digunakan untuk mengecek apakah suatu nilai adalah NA (Not Available) atau tidak.
    cat("ERROR: Input harus berupa angka.\n")                             #Menampilkan pesan kesalahan jika input tidak valid.
    return(NULL)                                                           #Menghentikan fungsi dan mengembalikan nilai kosong sebagai tanda terjadi kesalahan.
  }
  
  if (phat < 0 || phat > 1) {
    cat("ERROR: Proporsi sampel (phat) harus antara 0 dan 1.\n")            #Menampilkan pesan kesalahan jika proporsi di luar rentang yang diperbolehkan.
    return(NULL)                                                            #Menghentikan fungsi karena data tidak memenuhi syarat.
  }
  
  if (n <= 0 || n != round(n)) {
    cat("ERROR: Ukuran sampel (n) harus bilangan bulat positif.\n")          #Menampilkan pesan kesalahan jika ukuran sampel tidak valid.
    return(NULL)                                                              #Mengakhiri fungsi ketika ukuran sampel salah.
  }
  
  if (alpha == 0.10) {                                                         #Memeriksa apakah tingkat signifikansi yang dipilih adalah 10%.
    z <- 1.645                                                                  #Menetapkan nilai Z sebesar 1,645 untuk tingkat kepercayaan 90%.
  } else if (alpha == 0.05) {                                                  #Memeriksa apakah tingkat signifikansi yang dipilih adalah 5%.
    z <- 1.96                                                                  #Menetapkan nilai Z sebesar 1,96 untuk tingkat kepercayaan 95%.
  } else {                                                                      #Menjalankan blok ini jika nilai alpha tidak sesuai ketentuan
    cat("ERROR: Alpha hanya boleh 0.05 atau 0.10.\n")                            #Menampilkan pesan kesalahan jika alpha selain 0,05 atau 0,10.
    return(NULL)                                                                #Menghentikan fungsi karena alpha tidak valid.
  }
  
  #Perhitungan
  margin_error <- z * sqrt(phat * (1 - phat) / n)                                #Menghitung margin of error menggunakan rumus interval kepercayaan proporsi.
  lower <- phat - margin_error                                                    #Menghitung batas bawah interval kepercayaan.
  upper <- phat + margin_error                                                     #Menghitung batas atas interval kepercayaan.
  
  return(list(                                                                     #Mengembalikan hasil perhitungan dalam bentuk list agar dapat digunakan di program utama.
    phat = phat,                                                                    #Menyimpan nilai proporsi sampel ke dalam hasil keluaran.
    n = n,                                                                          #Menyimpan ukuran sampel ke dalam hasil keluaran.
    alpha = alpha,                                                                    #Menyimpan nilai alpha yang digunakan.
    confidence_level = (1 - alpha) * 100,                                              #Menghitung tingkat kepercayaan dalam bentuk persen.
    z = z,                                                                              #Menyimpan nilai Z yang digunakan dalam perhitungan.
    lower_bound = lower,                                                                  #Menyimpan batas bawah interval kepercayaan.
    upper_bound = upper                                                                  #Menyimpan batas atas interval kepercayaan.
  ))
}

#Program utama
phat <- as.numeric(readline("Masukkan proporsi sampel (0 - 1): "))                           #Membaca input proporsi sampel dari pengguna dan mengubahnya menjadi tipe numerik.
n <- as.numeric(readline("Masukkan ukuran sampel (n): "))                                    #Membaca ukuran sampel dari pengguna dan mengubahnya menjadi numerik.
alpha <- as.numeric(readline("Masukkan alpha (0.05 atau 0.10): "))                            #Membaca nilai alpha dari pengguna dan mengubahnya menjadi numerik.

hasil <- hitung_interval_konfidensi(phat, n, alpha)                                            #Memanggil fungsi perhitungan interval kepercayaan menggunakan input yang diberikan pengguna.

if (!is.null(hasil)) {                                                                        #Memeriksa apakah fungsi berhasil menghasilkan output.
  cat(sprintf("Interval Konfidensi    : (%.4f, %.4f)\n",                                      #Menampilkan hasil interval kepercayaan dengan format empat angka di belakang koma.
              hasil$lower_bound, hasil$upper_bound))
} else {                                                                                      #Menjalankan bagian ini jika fungsi mengembalikan nilai NULL.
  cat("\nProgram dihentikan karena input tidak valid.\n")                                     #Menampilkan pesan bahwa program tidak dapat melanjutkan karena terdapat kesalahan input.
}
