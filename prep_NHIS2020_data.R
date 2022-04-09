# prep NHIS 2020 data

require("ipumsr")

ddi <- read_ipums_ddi("nhis_00002.xml")
data <- read_ipums_micro(ddi)



data$REGION <- as.factor(data$REGION)
levels(data$REGION) <- c("Northeast","Midwest","South","West")

data$SEX <- as.factor(data$SEX)
levels(data$SEX) <- c("Male","Female","Refused","dont know")

data$SEXORIEN <- as.factor(data$SEXORIEN)
levels(data$SEXORIEN) <- c("NIU","Lesbian or gay","straight","bisexual","something else","dont know","refused","NA")

data$MARST <- as.factor(data$MARST)
levels(data$MARST) <- c("NIU","Married","Married spouse not there","Married spouse NA","Widowed","Divorced","Separated","never married","unknown")

data$RACEA <- as.factor(data$RACEA)
levels(data$RACEA) <- c("white","Black","Aleut Alaskan","American Indian","Asian","Other","refused","not ascertained","unknown")

data$HISPETH <- as.factor(data$HISPETH)
levels(data$HISPETH) <- c("Not Hispanic","Mexican","Other Hispanic","NA")

data$YRSINUS <- as.factor(data$YRSINUS)
levels(data$YRSINUS) <- c("NIU","Less than 1 year in US","1-5 years in US","5-10 years in US","10-15 yr in US","15 or more yr in US","NA")

data$CITIZEN <- as.factor(data$CITIZEN)
levels(data$CITIZEN) <- c("No not US citizen","yes US citizen","refused","NA","dont know")

data$ARMFEV <- as.factor(data$ARMFEV)
levels(data$ARMFEV) <- c("NIU","No never active duty","active only for training","yes ever served in armed forces","refused","NA","dont know")

data$EDUC <- as.factor(data$EDUC)
levels(data$EDUC) <- c("NIU","no school","less than hs","12th grade no diploma","HS diploma","GED","some college","assoc deg in tech or occ","assoc deg academic","bachelors","masters","professional degree","doctoral","refused","dont know")

data$EMPSTAT <- as.factor(data$EMPSTAT)
levels(data$EMPSTAT) <- c("NIU","Employed","not employed","dont know")

data$EMPHI <- as.factor(data$EMPHI)
levels(data$EMPHI) <- c("NIU","no workplace did not offer health insurance","yes workplace offer health insurance","refused","NA","dont know")

data$EMPFT <- as.factor(data$EMPFT)
levels(data$EMPFT) <- c("NIU","parttime","fulltime","refused","NA","dont know")

data$HEALTH <- as.factor(data$HEALTH)
levels(data$HEALTH) <- c("excellent","very good","good","fair","poor","refused","dont know")


is.na(data$HOURSWRK) <- which(data$HOURSWRK > 95)  # hours of work each week
is.na(data$HEIGHT) <- which(data$HEIGHT > 94)  # height in inches
is.na(data$WEIGHT) <- which(data$WEIGHT > 900)  # weight in pounds
is.na(data$BMICALC) <- which(data$BMICALC > 900)  # BMI Body Mass Index

data$HINOTCOVE <- as.factor(data$HINOTCOVE)
levels(data$HINOTCOVE) <- c("has health insurance coverage","no health insurance coverage","dont know")


