ClassRates <- read.csv("ClassRates.csv",header=TRUE)
PremiumCredits <- read.csv("Premium_Credits.csv",header=TRUE)
SchedRating <- read.csv("Sched_Rating.csv",header=TRUE)

exp.constant <- 150

# Example Calculation
# Manual way first, need to refactor this code later
example.class <- "8810"


manual.prem <- function(cler,food,health,allo){
  cler.prem + food.prem + health.prem + allo.prem
}

sched.factor <- function(prem,classp,medfac,safd,emp,man){
  credit.pre <- prem + classp + medfac + safd + emp + man
  ifelse(credit.pre < 0, max(credit.pre,-.25),min(credit.pre,.25))
}

other.factor <- function(drug,ast,ret){
  (1-drug)*(1-ast)*(1-ret)
}