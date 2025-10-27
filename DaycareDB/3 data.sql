use DaycareDB 
go
delete ChildProfile 
go

insert ChildProfile(FirstName, LastName, ParentName, ParentNumber, DOB, OzPerFeeding, FoodType, EatsSolids, NumberOfNaps, ImportantInfo, StartDate, EndDate, PaymentMethod )
select 'Avraham', 'Stein', 'Shana', '8453546545', '2025-05-03', 5, 'Formula', 0, 3, null, '2025-07-03',  null, 'zelle'
union select 'Aaron', 'Heyman', 'Chani', '8453535545', '2025-02-01', 6, 'Pumped Milk', 0, 2, null, '2025-04-01', null, 'zelle'
union select 'Ahuva', 'Bitton', 'Aliza', '8453549876', '2025-04-09', 6, 'Formula', 0, 3, null, '2025-06-01', null, 'cash'
union select 'Ayala', 'Silber', 'Shira', '8453321545', '2024-04-04', 6, 'Formula', 1, 2, null, '2025-06-10', null, 'check'
union select 'Chaim', 'Greenfield', 'Adina', '8453123545', '2024-09-29', 6, 'Formula', 1, 2, 'Allergic to eggs', '2024-11-30', '2025-06-15', 'cash'
union select 'Moshe', 'Weiss', 'Leah', '8453546123', '2024-09-07', 6, 'Formula', 1, 2, null, '2024-12-01', null, 'check'
union select 'Yehuda', 'Methal', 'Chani', '8453546343', '2025-04-15', 5, 'Formula', 0, 3, null, '2025-06-14', '2025-08-14', 'zelle'
union select 'Riki', 'Gelberman', 'Gali', '8453541435', '2025-06-12', 4, 'Formula', 0, 3, 'spits up a lot', '2025-09-01', null, 'cash'
union select 'Rivka', 'Balsam', 'Shira', '8453546945', '2024-08-11', 6, 'Formula', 1, 1, null, '2024-11-11', null, 'check'
union select 'Layla', 'Moskowitz', 'Chaya', '8451566545', '2023-02-01', 6, 'Pumped Milk', 1, 1, null, '2023-06-21', '2024-06-21', 'zelle'
union select 'Leba', 'Silberberg', 'Esti', '8453542225', '2023-01-20', 6, 'Pumped Milk', 1, 1, null, '2023-03-01', '2024-06-21', 'zelle'
union select 'Dassi', 'Gayer', 'Adina', '8453542325',  '2022-10-09', 6, 'Formula', 1, 1, null, '2022-12-01', '2023-06-15', 'cash'
union select 'Perri', 'Gayer', 'Adina', '8453542325', '2022-10-09', 6, 'Formula', 1, 1, null, '2022-12-01', '2023-06-15', 'cash'
union select 'Ahuva', 'Balsam', 'Shira', '8453542325', '2022-06-28', 6, 'Formula', 1, 1, null, '2022-09-01', '2023-06-15', 'cash'
union select 'Yomo', 'Gelberman', 'Gali', '8453522325', '2022-07-11', 6, 'Formula', 1, 1, null, '2022-09-01', '2023-06-15', 'cash'
union select 'Yoni', 'Moskowitz', 'Chaya', '8453121325', '2021-06-15', 4, 'Pumped Milk', 0,  2, null, '2021-09-01', '2022-06-15', 'zelle'

    
    
   
    
    
   
  
    
    
    
    
   
    
   