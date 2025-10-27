use DaycareDB 
go 
drop table if exists ChildProfile 
go 

create table dbo.ChildProfile(
    ChildProfileId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_childprofile_firstname_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_childprofile_LastName_cannot_be_blank check(LastName <> ''),
    ParentName varchar(30) not null constraint ck_childprofile_parentname_cannot_be_blank check(ParentName <> ''),
    ParentNumber char(10) not null constraint ck_childprofile_parentnumber_must_be_numeric check(ParentNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    DOB date not null constraint ck_childprofile_DOB_before_current_date check(DOB <= getdate()),
    AgeInMonths as datediff(month, DOB, getdate()),
    OzPerFeeding int not null constraint ck_childprofile_OzPerFeeding_must_be_greater_than_zero check(OzPerFeeding > 0),
    FoodType varchar(420) not null constraint ck_childprofile_FoodType_must_be_either_formula_or_pumped_milk check(FoodType in ('formula', 'pumped milk')),
    EatsSolids bit not null,
    WakeWindowMinutes as case
                        when datediff(week, DOB, isnull(EndDate, getdate())) between 6 and 12 then '45-90' 
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 3 and 4 then '75-120'
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 5 and 6 then '120-150'
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 7 and 9 then '150-180'
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 10 and 12 then '180-240'
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 13 and 18  then '240-300'
                        when datediff(month, DOB, isnull(EndDate, getdate())) between 19 and 24 then '170-360'
                     end,
    NumberOfNaps int not null constraint ck_childprofile_NumberOfNaps_greater_than_zero check(NumberOfNaps > 0),
    ImportantInfo varchar(200) constraint ck_childprofile_ImportantInfo_cannot_be_blank check(ImportantInfo <> ''),
    StartDate date not null constraint ck_childprofile_startdate_before_current check(StartDate <= getdate()),
    EndDate date constraint ck_childprofile_enddate_before_current check(EndDate <= getdate()),
    RatePerDay as case 
                when datediff(month, DOB, isnull(EndDate, getdate())) between  0 and 6 then 75
                when datediff(month, DOB, isnull(EndDate, getdate())) between  6 and 12 then 50
                when datediff(month, DOB, isnull(EndDate, getdate())) between  12 and 24 then 40
              end,
    PaymentMethod varchar(5) not null constraint ck_childprofile_PaymentMethod_either_cash_check_or_zelle check(PaymentMethod in ('cash', 'check', 'zelle')),
    constraint ck_childprofile_age_must_be_between_6_months_and_2_years check(datediff(week, DOB, isnull(EndDate,getdate())) between 6 and 104),
    constraint ck_childprofile_startdate_must_be_before_enddate check(StartDate < EndDate)
)