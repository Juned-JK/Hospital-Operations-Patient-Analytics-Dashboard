use hospital;
select * from hospital_data;

select `Medical Condition` , count(`Medical Condition`) from hospital_data group by `Medical Condition`;
select `Medical Condition`, avg(`Billing Amount`)  from hospital_data group by `Medical Condition`;
select Hospital, count(Name) as number_of_patient from hospital_data group by Hospital order by number_of_patient desc ;
select Doctor, count(Name) as number_of_patient from hospital_data group by Doctor order by number_of_patient desc ;
select `Insurance Provider`, count(Name) as number_of_patient from hospital_data group by `Insurance Provider` order by number_of_patient desc ;
select `Admission Type`, count(Name) as number_of_patient from hospital_data group by `Admission Type` order by number_of_patient desc ;
select `Admission Type`, avg(`Billing Amount`) from hospital_data group by `Admission Type` ;
select `Medical Condition`, avg(Length_of_Stay) from hospital_data group by `Medical Condition`;
select Gender, count(Name) as number_of_patient from hospital_data group by Gender;

select `Blood Type`, count(Name) as number_of_patient from hospital_data group by `Blood Type`;
select `Test Results`, count(Name) as number_of_patient from hospital_data group by `Test Results`;
select Medication,`Medical Condition`, count(`Medical Condition`) from hospital_data group by Medication, `Medical Condition`;
select `Month of Admission`, count(`Name`) from hospital_data group by `Month of Admission`;
select `Month of Admission`, avg(`Billing Amount`) from hospital_data group by `Month of Admission`;
select Hospital, sum(`Billing Amount`) as Revenue from hospital_data group by Hospital order by Revenue desc limit 10;
select Doctor, count(Name) as number_of_patient from hospital_data group by Doctor order by number_of_patient desc limit 10;

select * from hospital_data;

select Age_Group, count(Name) from hospital_data group by Age_Group;
select Age_Group, avg(`Billing Amount`) from hospital_data group by Age_Group;
select Age_Group, max(`Billing Amount`) from hospital_data group by Age_Group;

select Gender, `Medical Condition`, count(Name) from hospital_data group by Gender,`Medical Condition` ;

select `Insurance Provider`, sum(`Billing Amount`) from hospital_data group by `Insurance Provider`;

select Hospital, avg(Length_of_Stay) as avg_days from hospital_data group by Hospital order by avg_days desc;
select Hospital, sum(Length_of_Stay) as total_days from hospital_data group by Hospital order by total_days desc;

select `Admission Type`, sum(Length_of_Stay) as total_days from hospital_data group by `Admission Type` order by total_days desc;
select `Admission Type`, avg(Length_of_Stay) as avg_days from hospital_data group by `Admission Type` order by avg_days desc;

select `Test Results`, sum(`Billing Amount`) from hospital_data group by `Test Results`;
select `Test Results`, avg(`Billing Amount`) from hospital_data group by `Test Results`;

select `Medical Condition`, sum(`Billing Amount`) from hospital_data group by `Medical Condition`;
select `Medical Condition`, avg(`Billing Amount`) from hospital_data group by `Medical Condition`;