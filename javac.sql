create table Account
(Account_ID number (2),
First_Name varchar2 (30),
Second_Name varchar2 (30),
Country varchar2 (30));

alter table account
add constraint pk_Account_ID  primary key (Account_ID);


---new table
create table  Credit_Card
(Credit_Card_ID number (16),
Account_ID number (2),
cash_amount number (12,2));

alter table Credit_Card
add constraint fk_Account_ID foreign  key (Account_ID) references Account(Account_ID);
alter table Credit_Card
add constraint pk_Credit_Card_ID  primary key (Credit_Card_ID);

----
create table Transaction
(Transsaction_ID number (8),
From_Credit_Card number (16),
To_Credit_Card number (16),
Amount number (12,2));

alter table Transaction
add constraint fk_From_Credit_Card foreign  key (From_Credit_Card) references Credit_Card(Credit_Card_ID);
alter table Transaction
add constraint fk_To_Credit_Card foreign  key (To_Credit_Card) references Credit_Card(Credit_Card_ID);
