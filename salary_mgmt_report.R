rm(list = ls())
install.packages("tidyverse")
library("tidyverse")

# Exported from Workday 2023-02-16 ====
raw_report <- read.csv("Salary_Report_with_Management_Job_Levels_-_Compensation.csv")
names(raw_report) <- tolower(raw_report[3,]) # Rename columns
raw_report <- raw_report[-(1:3),] # Remove filler rows
names(raw_report)

# Clean for the columns of interest =====
div_cost_lead <- raw_report %>% # Rename variables for easy reference
  mutate(company = as.factor(company),
         division = as.factor(division),
         cost_center = as.factor(`cost center`),
         lead = as.factor(`management chain - level 04`), 
         emp_id = `employee id`) %>% 
  arrange(lead, emp_id) %>%
  select(emp_id, name, company, lead,division, cost_center)
# management chain level 4 reports to Mark or another CEO
levels(as.factor(raw_report$`management chain - level 04`))
levels(div_cost_lead$cost_center)

z <- raw_report %>% # for those without management level 4, replace with level 3
  filter(`management chain - level 04`=="") %>% 
  arrange(`employee id`) %>% 
  select(`employee id`,name, company, `management chain - level 03`, division, `cost center`)
names(z)[c(1,4,6)] <- c("emp_id","lead","cost_center")
div_cost_lead <- rbind(div_cost_lead[-(1:31),],z) %>% arrange(lead,emp_id)
rm(z)

# === Filtering out rows for each division =================================
# By division, which rows have an employee with a different "lead" value
# than expected?
# Org chart: https://bmgf.sharepoint.com/:p:/r/sites/gatesetc/_layouts/15/Doc.aspx?sourcedoc=%7B2B4664A5-E996-4B75-8F52-C78CDA0300AC%7D&file=High%20Level%20Foundation%20Org%20Chart%20-%20March%202021.pptx&action=edit&mobileredirect=true&web=1&cid=1cc92d59-d131-4b68-9713-b256a749a1d9

levels(div_cost_lead$division)
gd <- div_cost_lead %>% # President, Chris Elias
  filter(division == "10000 Global Development")
gh <- div_cost_lead %>% # President, Trevor Mundel 
  filter(division == "20000 Global Health")%>% 
  filter(lead != "Trevor Mundel",
         name != "Mundel, Trevor")
gpa <- div_cost_lead %>% # President, Gargee Ghosh
  filter(division == "30000 Global Policy and Advocacy",
         lead != "Gargee Ghosh",
         name != "Ghosh, Gargee")
usp <- div_cost_lead %>%  # President, Allan Golston
  filter(division == "40000 U.S. Program",
         lead != "Allan Golston",
         name != "Golston, Allan")
fso <- div_cost_lead %>%  # CSO, Ankur Vora
  filter(division == "50000 Foundation Strategy Office",
         lead != "Ankur Vora",
         name != "Vora, Ankur")
ggo <- div_cost_lead %>% # President, Rodger Voorhies
  filter(division == "60000 Global Growth & Opportunity",
         lead != "Rodger Voorhies",
         name != "Voorhies, Rodger")
ge <- div_cost_lead %>% # President, Anita Zaidi
  filter(division == "61000 Gender Equality",
         lead != "Anita Zaidi",
         name != "Zaidi, Anita")
rd <- div_cost_lead %>% # MRI?
  filter(division == "70010 Research & Development")
gen_admin <- div_cost_lead %>% # MRI?
  filter(division == "70050 General & Administrative")
mri <- rbind(rd,gen_admin)
ag_one <- div_cost_lead %>% 
  filter(division == "71000 Gates Ag One")
# Chief of Staff, Becky Frank; Chief DEI, Leslie Mays; CEOs, Mark Suzman, Emilio Emini
exec <- div_cost_lead %>% 
  filter(division == "80000 Executive",
         lead != "Becky Frank",
         lead != "Leslie Mays",
         lead != "",
         lead != "Mark Suzman",
         lead != "Emilio Emini",
         name != "Mays, Leslie",
         name != "Frank, Becky")
comms <- div_cost_lead %>% # Chief, Susan Byrnes
  filter(division == "81000 Communications",
         lead != "Susan Byrnes",
         name != "Byrnes, Susan")
# Chief Legal, Lauren Bright; COO, Connie Collingsworth; CHRO, Sonia Vora;
# COO MRI, Debra Weiss
biz_ops <- div_cost_lead %>% 
  filter(division == "90000 Business Operations")
fin <- div_cost_lead %>% # CFO, Carolyn Ainslie
  filter(division == "91000 Finance and Resource Planning",
         lead != "Carolyn Ainslie",
         lead != "Mark Suzman")
# Dataset for export. Employees where division and chief/president don't match ==== 
div_lead_full <- rbind(gh, gpa, usp, fso, ggo, ge, exec, comms, fin)
names(div_lead_full)[1] <- "employee id"
z <- div_lead_full %>% select(`employee id`)
div_lead_full <- merge(z, raw_report)
write.csv(div_lead_full, file.path('div_lead_mismatch.csv'), row.names = FALSE)
