library(dplyr)
library(ggplot2)

midwest <- as.data.frame(ggplot2::midwest)

head(midwest)
tail(midwest)
View(midwest)
dim(midwest)
str(midwest)
summary(midwest)

new_midwest <- midwest

new_midwest <- rename(new_midwest, total=poptotal)
new_midwest <- rename(new_midwest, asian=popasian)

new_midwest$asiantotal <- ((new_midwest$asian/new_midwest$total)*100)

hist(new_midwest$asiantotal)

mean(new_midwest$asiantotal)
new_midwest$lasm <- ifelse(new_midwest$asiantotal>0.4872462, "large", "small")

table(new_midwest$lasm)
qplot(new_midwest$lasm)

new_midwest <- rename(new_midwest, black=popblack)
new_midwest <- rename(new_midwest, white=popwhite)

new_midwest$blacktotal <- ((new_midwest$black/new_midwest$total)*100)
hist(new_midwest$balcktotal)
View(new_midwest)