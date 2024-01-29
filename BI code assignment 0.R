library(tidyverse)
setwd("/Users/sambradley/downloads")
loan_data <- read_csv("loan_default_data_set.csv")

#size of data
size <- dim(loan_data)
print(size)
"Rows: 20000 Columns: 21 "                                                                                        

#names of columns
names <- names(loan_data)
print(names)
#[1] "tot_balance"                     "avg_bal_cards"                  
#[3] "credit_age"                      "credit_age_good_account"        
#[5] "credit_card_age"                 "num_acc_30d_past_due_12_months" 
#[7] "num_acc_30d_past_due_6_months"   "num_mortgage_currently_past_due"
#[9] "tot_amount_currently_past_due"   "num_inq_12_month"               
#[11] "num_card_inq_24_month"           "num_card_12_month"              
#[13] "num_auto_ 36_month"              "uti_open_card"     
#[15] "pct_over_50_uti"                 "uti_max_credit_line"            
#[17] "pct_card_over_50_uti"            "ind_XYZ"                        
#[19] "rep_income"                      "rep_education"                  
#[21] "Def_ind"                       


#You could use tidyverse , and ggplot to analyze the data


#amount of data we can delete
"you could filter out data that doesent make sense / shouldnt be true "



#histogram of data
ggplot(loan_data, aes(x = tot_balance)) +
  geom_histogram(fill = "skyblue", color = "black", bins = 30) +
  ggtitle("Histogram of Your Data") +
  xlab("Total Balance") +
  ylab("Dollars")


#summary statistics 
summary(loan_data[c("tot_balance", "avg_bal_cards")])

"tot_balance     avg_bal_cards  
Min.   :     0   Min.   :    0  
1st Qu.: 92213   1st Qu.:10151  
Median :107711   Median :12239  
Mean   :107439   Mean   :12231  
3rd Qu.:122751   3rd Qu.:14286  
Max.   :200000   Max.   :25000  "

