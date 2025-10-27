/*
ChildProfile
    ChildProfileId pk
    FirstName varchar(30) not blank not null
    LastName varchar(30) not blank not null
    ParentName varchar(30) not blank not null
    ParentNumber varchar(10) not null all numeric
    DOB date not null before current date
    AgeInMonths computed off of current - dob 
    OzPerFeeding int not null greater than zero
    TypeOfFood varchar(30) not null not blank
    WakeWindow computed
    NumberOfNaps int not null 
    ImportantInfo varchar(200) not blank
    StartDate date not null before current
    EndDate date null before current
    Rate/Day computed off of dob
    PaymentMethod varchar(5) not null cash/zelle/check
    constraint child must be between 6 months and 2 years
    constraint start date before end date
    */