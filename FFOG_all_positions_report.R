rm(list = ls())
install.packages("tidyverse")
library("tidyverse")
install.packages("readxl")
library("readxl")
getwd()

# File from Holly's email 2433-03-15 ------
all_pos <- read_excel('_All_Positions_Report.xlsx', sheet = "Index")
names(all_pos) <- tolower(all_pos[1,])
all_pos <- all_pos[-c(1:2,57),c(1,3)]
all_pos$salary_cut = "Assets over $2.39B"

# CEO/President ----
d_01 <- read_excel('_All_Positions_Report.xlsx', sheet = "1")
header <- c("position","base comp 25th perc","base comp 50th perc",
            "base comp 75th perc", "total comp (base + ic) 25th perc",
            "total comp (base + ic) 50th perc", "total comp (base + ic) 75th perc")
c_01 <- data.frame(d_01[7,3], # position
                   d_01[17,3], # base 25
                   d_01[18,3], # base 50
                   d_01[19,3], # base 75
                   d_01[17,11], # total 25
                   d_01[18,11], # total 50
                   d_01[19,11]) # total 75 

names(c_01) <- header

# COO ---------
d_02 <- read_excel('_All_Positions_Report.xlsx', sheet = "2")
c_02 <- data.frame(d_02[7,3], # position
                   d_02[17,3], # base 25
                   d_02[18,3], # base 50
                   d_02[19,3], # base 75
                   d_02[17,11], # total 25
                   d_02[18,11], # total 50
                   d_02[19,11]) # total 75 

names(c_02) <- header
z <- rbind(c_01,c_02)

# Tab 03 ---------
d_03 <- read_excel('_All_Positions_Report.xlsx', sheet = "3")
c_03 <- data.frame(d_03[7,3], # position
                   d_03[17,3], # base 25
                   d_03[18,3], # base 50
                   d_03[19,3], # base 75
                   d_03[17,11], # total 25
                   d_03[18,11], # total 50
                   d_03[19,11]) # total 75 

names(c_03) <- header
z <- rbind(z,c_03)

# Tab 04 ---------
d_04 <- read_excel('_All_Positions_Report.xlsx', sheet = "4")
c_04 <- data.frame(d_04[7,3], # position
                   d_04[17,3], # base 25
                   d_04[18,3], # base 50
                   d_04[19,3], # base 75
                   d_04[17,11], # total 25
                   d_04[18,11], # total 50
                   d_04[19,11]) # total 75 

names(c_04) <- header
z <- rbind(z,c_04)

# Tab 5 ---------
d_05 <- read_excel('_All_Positions_Report.xlsx', sheet = "5")
c_05 <- data.frame(d_05[7,3], # position
                   d_05[17,3], # base 25
                   d_05[18,3], # base 50
                   d_05[19,3], # base 75
                   d_05[17,11], # total 25
                   d_05[18,11], # total 50
                   d_05[19,11]) # total 75 

names(c_05) <- header
z <- rbind(z,c_05)

# Tab 06 ---------
d_06 <- read_excel('_All_Positions_Report.xlsx', sheet = "6")
c_06 <- data.frame(d_06[7,3], # position
                   d_06[17,3], # base 25
                   d_06[18,3], # base 50
                   d_06[19,3], # base 75
                   d_06[17,11], # total 25
                   d_06[18,11], # total 50
                   d_06[19,11]) # total 75 

names(c_06) <- header
z <- rbind(z,c_06)

# Tab 07 ---------
d_07 <- read_excel('_All_Positions_Report.xlsx', sheet = "7")
c_07 <- data.frame(d_07[7,3], # position
                   d_07[17,3], # base 25
                   d_07[18,3], # base 50
                   d_07[19,3], # base 75
                   d_07[17,11], # total 25
                   d_07[18,11], # total 50
                   d_07[19,11]) # total 75 

names(c_07) <- header
z <- rbind(z,c_07)

# Tab 08 ---------
d_08 <- read_excel('_All_Positions_Report.xlsx', sheet = "8")
c_08 <- data.frame(d_08[7,3], # position
                   d_08[17,3], # base 25
                   d_08[18,3], # base 50
                   d_08[19,3], # base 75
                   d_08[17,11], # total 25
                   d_08[18,11], # total 50
                   d_08[19,11]) # total 75 

names(c_08) <- header
z <- rbind(z,c_08)

# Tab 09 ---------
d_09 <- read_excel('_All_Positions_Report.xlsx', sheet = "9")
c_09 <- data.frame(d_09[7,3], # position
                   d_09[17,3], # base 25
                   d_09[18,3], # base 50
                   d_09[19,3], # base 75
                   d_09[17,11], # total 25
                   d_09[18,11], # total 50
                   d_09[19,11]) # total 75 

names(c_09) <- header
z <- rbind(z,c_09)

# Tab 10 ---------
d_10 <- read_excel('_All_Positions_Report.xlsx', sheet = "10")
c_10 <- data.frame(d_10[7,3], # position
                   d_10[17,3], # base 25
                   d_10[18,3], # base 50
                   d_10[19,3], # base 75
                   d_10[17,11], # total 25
                   d_10[18,11], # total 50
                   d_10[19,11]) # total 75 

names(c_10) <- header
z <- rbind(z,c_10)

# Tab 11 ---------
d_11 <- read_excel('_All_Positions_Report.xlsx', sheet = "11")
c_11 <- data.frame(d_11[7,3], # position
                   d_11[17,3], # base 25
                   d_11[18,3], # base 50
                   d_11[19,3], # base 75
                   d_11[17,11], # total 25
                   d_11[18,11], # total 50
                   d_11[19,11]) # total 75 

names(c_11) <- header
z <- rbind(z,c_11)

# Tab 12 ---------
d_12 <- read_excel('_All_Positions_Report.xlsx', sheet = "12")
c_12 <- data.frame(d_12[7,3], # position
                   d_12[17,3], # base 25
                   d_12[18,3], # base 50
                   d_12[19,3], # base 75
                   d_12[17,11], # total 25
                   d_12[18,11], # total 50
                   d_12[19,11]) # total 75 

names(c_12) <- header
z <- rbind(z,c_12)

# Tab 13 ---------
d_13 <- read_excel('_All_Positions_Report.xlsx', sheet = "13")
c_13 <- data.frame(d_13[7,3], # position
                   d_13[17,3], # base 25
                   d_13[18,3], # base 50
                   d_13[19,3], # base 75
                   d_13[17,11], # total 25
                   d_13[18,11], # total 50
                   d_13[19,11]) # total 75 

names(c_13) <- header
z <- rbind(z,c_13)

# Tab 14 ---------
d_14 <- read_excel('_All_Positions_Report.xlsx', sheet = "14")
c_14 <- data.frame(d_14[7,3], # position
                   d_14[17,3], # base 25
                   d_14[18,3], # base 50
                   d_14[19,3], # base 75
                   d_14[17,11], # total 25
                   d_14[18,11], # total 50
                   d_14[19,11]) # total 75 

names(c_14) <- header
z <- rbind(z,c_14)

# Tab 15 ---------
d_15 <- read_excel('_All_Positions_Report.xlsx', sheet = "15")
c_15 <- data.frame(d_15[7,3], # position
                   d_15[17,3], # base 25
                   d_15[18,3], # base 50
                   d_15[19,3], # base 75
                   d_15[17,11], # total 25
                   d_15[18,11], # total 50
                   d_15[19,11]) # total 75 

names(c_15) <- header
z <- rbind(z,c_15)

# Tab 16 ---------
d_16 <- read_excel('_All_Positions_Report.xlsx', sheet = "16")
c_16 <- data.frame(d_16[7,3], # position
                   d_16[17,3], # base 25
                   d_16[18,3], # base 50
                   d_16[19,3], # base 75
                   d_16[17,11], # total 25
                   d_16[18,11], # total 50
                   d_16[19,11]) # total 75 

names(c_16) <- header
z <- rbind(z,c_16)

# Tab 17 ---------
d_17 <- read_excel('_All_Positions_Report.xlsx', sheet = "17")
c_17 <- data.frame(d_17[7,3], # position
                   d_17[17,3], # base 25
                   d_17[18,3], # base 50
                   d_17[19,3], # base 75
                   d_17[17,11], # total 25
                   d_17[18,11], # total 50
                   d_17[19,11]) # total 75 

names(c_17) <- header
z <- rbind(z,c_17)

# Tab 18 ---------
d_18 <- read_excel('_All_Positions_Report.xlsx', sheet = "18")
c_18 <- data.frame(d_18[7,3], # position
                   d_18[17,3], # base 25
                   d_18[18,3], # base 50
                   d_18[19,3], # base 75
                   d_18[17,11], # total 25
                   d_18[18,11], # total 50
                   d_18[19,11]) # total 75 

names(c_18) <- header
z <- rbind(z,c_18)

# Tab 19 ---------
d_19 <- read_excel('_All_Positions_Report.xlsx', sheet = "19")
c_19 <- data.frame(d_19[7,3], # position
                   d_19[17,3], # base 25
                   d_19[18,3], # base 50
                   d_19[19,3], # base 75
                   d_19[17,11], # total 25
                   d_19[18,11], # total 50
                   d_19[19,11]) # total 75 

names(c_19) <- header
z <- rbind(z,c_19)

# Tab 20 ---------
d_20 <- read_excel('_All_Positions_Report.xlsx', sheet = "20")
c_20 <- data.frame(d_20[7,3], # position
                   d_20[17,3], # base 25
                   d_20[18,3], # base 50
                   d_20[19,3], # base 75
                   d_20[17,11], # total 25
                   d_20[18,11], # total 50
                   d_20[19,11]) # total 75 

names(c_20) <- header
z <- rbind(z,c_20)

# Tab 21 ---------
d_21 <- read_excel('_All_Positions_Report.xlsx', sheet = "21")
c_21 <- data.frame(d_21[7,3], # position
                   d_21[17,3], # base 25
                   d_21[18,3], # base 50
                   d_21[19,3], # base 75
                   d_21[17,11], # total 25
                   d_21[18,11], # total 50
                   d_21[19,11]) # total 75 

names(c_21) <- header
z <- rbind(z,c_21)

# Tab 22 ---------
d_22 <- read_excel('_All_Positions_Report.xlsx', sheet = "22")
c_22 <- data.frame(d_22[7,3], # position
                   d_22[17,3], # base 25
                   d_22[18,3], # base 50
                   d_22[19,3], # base 75
                   d_22[17,11], # total 25
                   d_22[18,11], # total 50
                   d_22[19,11]) # total 75 

names(c_22) <- header
z <- rbind(z,c_22)

# Tab 23 ---------
d_23 <- read_excel('_All_Positions_Report.xlsx', sheet = "23")
c_23 <- data.frame(d_23[7,3], # position
                   d_23[17,3], # base 25
                   d_23[18,3], # base 50
                   d_23[19,3], # base 75
                   d_23[17,11], # total 25
                   d_23[18,11], # total 50
                   d_23[19,11]) # total 75 

names(c_23) <- header
z <- rbind(z,c_23)

# Tab 24 ---------
d_24 <- read_excel('_All_Positions_Report.xlsx', sheet = "24")
c_24 <- data.frame(d_24[7,3], # position
                   d_24[17,3], # base 25
                   d_24[18,3], # base 50
                   d_24[19,3], # base 75
                   d_24[17,11], # total 25
                   d_24[18,11], # total 50
                   d_24[19,11]) # total 75 

names(c_24) <- header
z <- rbind(z,c_24)

# Tab 25 ---------
d_25 <- read_excel('_All_Positions_Report.xlsx', sheet = "25")
c_25 <- data.frame(d_25[7,3], # position
                   d_25[17,3], # base 25
                   d_25[18,3], # base 50
                   d_25[19,3], # base 75
                   d_25[17,11], # total 25
                   d_25[18,11], # total 50
                   d_25[19,11]) # total 75 

names(c_25) <- header
z <- rbind(z,c_25)

# Tab 26 ---------
d_26 <- read_excel('_All_Positions_Report.xlsx', sheet = "26")
c_26 <- data.frame(d_26[7,3], # position
                   d_26[17,3], # base 25
                   d_26[18,3], # base 50
                   d_26[19,3], # base 75
                   d_26[17,11], # total 25
                   d_26[18,11], # total 50
                   d_26[19,11]) # total 75 

names(c_26) <- header
z <- rbind(z,c_26)

# Tab 27 ---------
d_27 <- read_excel('_All_Positions_Report.xlsx', sheet = "27")
c_27 <- data.frame(d_27[7,3], # position
                   d_27[17,3], # base 25
                   d_27[18,3], # base 50
                   d_27[19,3], # base 75
                   d_27[17,11], # total 25
                   d_27[18,11], # total 50
                   d_27[19,11]) # total 75 

names(c_27) <- header
z <- rbind(z,c_27)

# Tab 28 ---------
d_28 <- read_excel('_All_Positions_Report.xlsx', sheet = "28")
c_28 <- data.frame(d_28[7,3], # position
                   d_28[17,3], # base 25
                   d_28[18,3], # base 50
                   d_28[19,3], # base 75
                   d_28[17,11], # total 25
                   d_28[18,11], # total 50
                   d_28[19,11]) # total 75 

names(c_28) <- header
z <- rbind(z,c_28)

# Tab 29 ---------
d_29 <- read_excel('_All_Positions_Report.xlsx', sheet = "29")
c_29 <- data.frame(d_29[7,3], # position
                   d_29[17,3], # base 25
                   d_29[18,3], # base 50
                   d_29[19,3], # base 75
                   d_29[17,11], # total 25
                   d_29[18,11], # total 50
                   d_29[19,11]) # total 75 

names(c_29) <- header
z <- rbind(z,c_29)

# Tab 30 ---------
d_30 <- read_excel('_All_Positions_Report.xlsx', sheet = "30")
c_30 <- data.frame(d_30[7,3], # position
                   d_30[17,3], # base 25
                   d_30[18,3], # base 50
                   d_30[19,3], # base 75
                   d_30[17,11], # total 25
                   d_30[18,11], # total 50
                   d_30[19,11]) # total 75 

names(c_30) <- header
z <- rbind(z,c_30)

# Tab 31 ---------
d_31 <- read_excel('_All_Positions_Report.xlsx', sheet = "31")
c_31 <- data.frame(d_31[7,3], # position
                   d_31[17,3], # base 25
                   d_31[18,3], # base 50
                   d_31[19,3], # base 75
                   d_31[17,11], # total 25
                   d_31[18,11], # total 50
                   d_31[19,11]) # total 75 

names(c_31) <- header
z <- rbind(z,c_31)

# Tab 32 ---------
d_32 <- read_excel('_All_Positions_Report.xlsx', sheet = "32")
c_32 <- data.frame(d_32[7,3], # position
                   d_32[17,3], # base 25
                   d_32[18,3], # base 50
                   d_32[19,3], # base 75
                   d_32[17,11], # total 25
                   d_32[18,11], # total 50
                   d_32[19,11]) # total 75 

names(c_32) <- header
z <- rbind(z,c_32)

# Tab 33 ---------
d_33 <- read_excel('_All_Positions_Report.xlsx', sheet = "33")
c_33 <- data.frame(d_33[7,3], # position
                   d_33[17,3], # base 25
                   d_33[18,3], # base 50
                   d_33[19,3], # base 75
                   d_33[17,11], # total 25
                   d_33[18,11], # total 50
                   d_33[19,11]) # total 75 

names(c_33) <- header
z <- rbind(z,c_33)

# Tab 34 ---------
d_34 <- read_excel('_All_Positions_Report.xlsx', sheet = "34")
c_34 <- data.frame(d_34[7,3], # position
                   d_34[17,3], # base 25
                   d_34[18,3], # base 50
                   d_34[19,3], # base 75
                   d_34[17,11], # total 25
                   d_34[18,11], # total 50
                   d_34[19,11]) # total 75 

names(c_34) <- header
z <- rbind(z,c_34)

# Tab 35 ---------
d_35 <- read_excel('_All_Positions_Report.xlsx', sheet = "35")
c_35 <- data.frame(d_35[7,3], # position
                   d_35[17,3], # base 25
                   d_35[18,3], # base 50
                   d_35[19,3], # base 75
                   d_35[17,11], # total 25
                   d_35[18,11], # total 50
                   d_35[19,11]) # total 75 

names(c_35) <- header
z <- rbind(z,c_35)

# Tab 36 ---------
d_36 <- read_excel('_All_Positions_Report.xlsx', sheet = "36")
c_36 <- data.frame(d_36[7,3], # position
                   d_36[17,3], # base 25
                   d_36[18,3], # base 50
                   d_36[19,3], # base 75
                   d_36[17,11], # total 25
                   d_36[18,11], # total 50
                   d_36[19,11]) # total 75 

names(c_36) <- header
z <- rbind(z,c_36)

# Tab 37 ---------
d_37 <- read_excel('_All_Positions_Report.xlsx', sheet = "37")
c_37 <- data.frame(d_37[7,3], # position
                   d_37[17,3], # base 25
                   d_37[18,3], # base 50
                   d_37[19,3], # base 75
                   d_37[17,11], # total 25
                   d_37[18,11], # total 50
                   d_37[19,11]) # total 75 

names(c_37) <- header
z <- rbind(z,c_37)

# Tab 38 ---------
d_38 <- read_excel('_All_Positions_Report.xlsx', sheet = "38")
c_38 <- data.frame(d_38[7,3], # position
                   d_38[17,3], # base 25
                   d_38[18,3], # base 50
                   d_38[19,3], # base 75
                   d_38[17,11], # total 25
                   d_38[18,11], # total 50
                   d_38[19,11]) # total 75 

names(c_38) <- header
z <- rbind(z,c_38)

# Tab 39 ---------
d_39 <- read_excel('_All_Positions_Report.xlsx', sheet = "39")
c_39 <- data.frame(d_39[7,3], # position
                   d_39[17,3], # base 25
                   d_39[18,3], # base 50
                   d_39[19,3], # base 75
                   d_39[17,11], # total 25
                   d_39[18,11], # total 50
                   d_39[19,11]) # total 75 

names(c_39) <- header
z <- rbind(z,c_39)
