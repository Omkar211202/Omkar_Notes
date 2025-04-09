# install.packages("reshape2")
# install.packages('stringi')
# install.packages("caTools")
# install.packages("rpart.plot")

library(reshape2)
library(dplyr)
library(data.table)
library(tidyr)
library(ggplot2)

data=read.csv("C:\\Users\\omkar\\Desktop\\MBA\\Busi_Analytics\\Master_Project\\loan_approval_dataset.csv")
dim(data)

colSums(is.na(data))
sum(is.na(data))
sum(duplicated(data))

dim(data)
str(data)
colnames(data)
head(data)
summary(data)



education1<-data%>%
  group_by(education)%>%
  count(education)%>%
  rename(count=n)%>%
  mutate(percentage=paste0(round(count/nrow(data)*100,2),"%"))

head(education1)

ggplot(data = education1, mapping = aes(x = "", y = count, fill = education))+
  geom_bar(stat = "identity") +
  coord_polar(theta = "y", start = 0) +
  labs(x = NULL, y = NULL)+
  theme_void() +
  geom_text(aes(label = percentage),position = position_stack(vjust = 0.5)) +
  labs(title = "Percentage of Graduates to Non graduates")

education2 <- data %>%
  filter(loan_status == " Approved") %>%
  group_by(education) %>%
  count(education)%>%
  rename(count=n)
head(education2)

data%>%
  group_by(education,loan_status)%>%
  summarise(count=n())%>%
  ggplot(aes(x=education,y=count,fill=loan_status))+
  geom_bar(stat="identity",position="dodge")+
  labs(title = "Loan Approval By educational Status",x="Education Status",
       y="Count",fill="Loan Status")+theme_minimal()

ggplot(data,mapping=aes(x=loan_status,y=cibil_score))+
  geom_boxplot()+labs(title="Credit score distribution between loan status")

x <- data %>%
  select(everything()) %>% 
  filter(cibil_score > 650 & loan_status == " Rejected")
x

num_loan<- data%>%
  select(everything(),-(education),-(self_employed),-(loan_status),-(loan_id))
head(num_loan)



data%>%
  group_by(self_employed,loan_status)%>%
  count()%>%
  rename(count=n)%>%
  ggplot(aes(x=self_employed,y=count,fill=loan_status))+
    geom_histogram(stat="identity",position = "dodge")+labs(title = "Self-Employed and approval")

data%>%
  group_by(income_annum,loan_status)%>%
  ggplot(aes(x=loan_status,y=income_annum/100000))+geom_boxplot()+labs(title="Income and Approval",x="loan status",y="approval")

names(data)

data%>%
  group_by(no_of_dependents,loan_status)%>%
  ggplot(aes(x=loan_status,y=no_of_dependents))+geom_boxplot()+labs(title = "Loan Status analysis based on no of dependents",x="Loan_Status",
                                                                      y="No of Dependents")



data%>%
  group_by(loan_amount,loan_status)%>%
  ggplot(aes(x=loan_status,y=loan_amount/100000))+geom_boxplot()+labs(title = "Loan Status analysis based on Loan amount",x="Loan",y="Amount in Lakhs")

data%>%
  group_by(loan_term,loan_status)%>%
  ggplot(aes(x=loan_status,y=loan_term))+geom_boxplot()+labs(title="Loan Status analysis based on term",y="Time",x="Loan Status")

data%>%
  group_by(residential_assets_value,loan_status)%>%
  ggplot(aes(x=loan_status,y=residential_assets_value/100000))+geom_boxplot()+labs(title="Loan Status analysis based on term",y="Time",x="Loan Status")

data%>%
  group_by(residential_assets_value,loan_status)%>%
  ggplot(aes(x=loan_status,y=residential_assets_value/100000))+geom_boxplot()+labs(title="Loan Status analysis based on Residential Assets",y="Residential assets in Lakhs",x="Loan Status")

data%>%
  group_by(commercial_assets_value,loan_status)%>%
  ggplot(aes(x=loan_status,y=commercial_assets_value/100000))+geom_boxplot()+labs(title="Loan Status analysis based on commercial Assets",y="Commercial in Lakhs",x="Loan Status")

data%>%
  group_by(luxury_assets_value,loan_status)%>%
  ggplot(aes(x=loan_status,y=luxury_assets_value/100000))+geom_boxplot()+labs(title="Loan Status analysis based on luxury Assets",y="luxury assets in Lakhs",x="Loan Status")

data%>%
  group_by(bank_asset_value,loan_status)%>%
  ggplot(aes(x=loan_status,y=bank_asset_value/100000))+geom_boxplot()+labs(title="Loan Status analysis based on Bank Assets",y="Bank assets in Lakhs",x="Loan Status")




cor_loan<-cor(num_loan)
cor_loan
melted_loan<- reshape2::melt(cor_loan)
head(melted_loan)

ggplot(data=melted_loan,aes(Var1,Var2,fill=value))+
  geom_tile()+
  theme(axis.text.x=element_text(angle=90))+
  geom_text(aes(label=round(value,2)))+
  scale_fill_gradient(low="yellow",high='red')

