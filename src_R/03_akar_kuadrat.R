cat("===== PROGRAM MENCARI AKAR PERSAMAAN KUADRAT =====\n")                                                      #Menampilkan judul program pada layar. \n digunakan untuk pindah ke baris baru.

a <- 1                                                                                                           #Menyimpan nilai 1 ke dalam variabel a sebagai koefisien x².
b <- -5                                                                                                          #Menyimpan nilai -5 ke dalam variabel b sebagai koefisien x.
c <- 6                                                                                                           #Menyimpan nilai 6 ke dalam variabel c sebagai konstanta persamaan.

diskriminan <- b^2 - 4*a*c                                                                                       #Menghitung nilai diskriminan menggunakan rumus D = b² − 4ac.

if (a == 0) {                                                                                                    #Memeriksa apakah nilai a sama dengan 0. Jika ya, persamaan bukan persamaan kuadrat.
  
  cat("Error: Nilai a tidak boleh 0.\n")                                                                         #Menampilkan pesan kesalahan karena nilai a tidak boleh 0.
  
} else if (diskriminan < 0) {                                                                                    #Memeriksa apakah diskriminan bernilai negatif.
  
  cat("Persamaan memiliki akar imajiner.\n")                                                                     #Menampilkan pesan bahwa persamaan memiliki akar imajiner (tidak memiliki akar real).
  
} else {                                                                                                         #Menjalankan blok perintah jika nilai a valid dan diskriminan tidak negatif.
  
  x1 <- (-b + sqrt(diskriminan)) / (2*a)                                                                         #Menghitung akar pertama persamaan kuadrat menggunakan rumus kuadrat.
  x2 <- (-b - sqrt(diskriminan)) / (2*a)                                                                         #Menghitung akar kedua persamaan kuadrat menggunakan rumus kuadrat.
  
  cat("Koefisien a =", a, "\n")                                                                                  #Menampilkan nilai koefisien a.
  cat("Koefisien b =", b, "\n")                                                                                  #Menampilkan nilai koefisien b.
  cat("Koefisien c =", c, "\n")                                                                                  #Menampilkan nilai koefisien c.
  cat("Diskriminan =", diskriminan, "\n")                                                                        #Menampilkan nilai diskriminan yang telah dihitung.
  cat("Akar pertama =", x1, "\n")                                                                                #Menampilkan hasil akar pertama persamaan kuadrat.
  cat("Akar kedua =", x2, "\n")                                                                                  #Menampilkan hasil akar kedua persamaan kuadrat.
}                                                                                                                #Menandai akhir dari blok percabangan if-else.


a<-2
b<--2
c<-4
diskriminan <- b^2 - 4*a*c

if (a == 0) {
  
  cat("Error: Nilai a tidak boleh 0.\n")
  
} else if (diskriminan < 0) {
  
  cat("Persamaan memiliki akar imajiner.\n")
  
} else {
  
  x1 <- (-b + sqrt(diskriminan)) / (2*a)
  x2 <- (-b - sqrt(diskriminan)) / (2*a)
  
  cat("Koefisien a =", a, "\n")
  cat("Koefisien b =", b, "\n")
  cat("Koefisien c =", c, "\n")
  cat("Diskriminan =", diskriminan, "\n")
  cat("Akar pertama =", x1, "\n")
  cat("Akar kedua =", x2, "\n")
}


a<-0
b<-3
c<--2
diskriminan <- b^2 - 4*a*c

if (a == 0) {
  
  cat("Error: Nilai a tidak boleh 0.\n")
  
} else if (diskriminan < 0) {
  
  cat("Persamaan memiliki akar imajiner.\n")
  
} else {
  
  x1 <- (-b + sqrt(diskriminan)) / (2*a)
  x2 <- (-b - sqrt(diskriminan)) / (2*a)
  
  cat("Koefisien a =", a, "\n")
  cat("Koefisien b =", b, "\n")
  cat("Koefisien c =", c, "\n")
  cat("Diskriminan =", diskriminan, "\n")
  cat("Akar pertama =", x1, "\n")
  cat("Akar kedua =", x2, "\n")
}
