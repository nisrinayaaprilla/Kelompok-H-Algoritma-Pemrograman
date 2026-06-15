cat("===== PROGRAM MENCARI AKAR PERSAMAAN KUADRAT =====\n")

a <- 1
b <- -5
c <- 6

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