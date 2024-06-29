create database hospitaldetail
use hospitaldetail
select * from dbo.hospitals

select sum(Procedure_Heart_Attack_Cost) Heart_Attack_Cost, sum(Procedure_Heart_Failure_Cost) Heart_Failure_Cost, sum(Procedure_Pneumonia_Cost) Pneumonia_Cost, 
sum(Procedure_Hip_Knee_Cost) Hip_Knee_Cost from dbo.hospitals

select   distinct Facility_Name, sum(Procedure_Heart_Attack_Cost) Heart_Attack_Cost, sum(Procedure_Heart_Failure_Cost) Heart_Failure_Cost, sum(Procedure_Pneumonia_Cost) Pneumonia_Cost, 
sum(Procedure_Hip_Knee_Cost) Hip_Knee_Cost from dbo.hospitals
group by Facility_Name

select count(Rating_Overall) Rating_Overall, Facility_Type from dbo.hospitals
group by Facility_Type

select Procedure_Heart_Failure_Quality,  Count(*) from dbo.hospitals
group by Procedure_Heart_Failure_Quality

select Procedure_Heart_Failure_Value,  Count(*) from dbo.hospitals
group by Procedure_Heart_Failure_Value

select Procedure_Heart_Attack_Quality,  Count(*) from dbo.hospitals
group by Procedure_Heart_Attack_Quality

select Procedure_Heart_Attack_Value,  Count(*) from dbo.hospitals
group by Procedure_Heart_Attack_Value

select Procedure_Pneumonia_Quality,  Count(*) from dbo.hospitals
group by Procedure_Pneumonia_Quality

select Procedure_Pneumonia_Value,  Count(*) from dbo.hospitals
group by Procedure_Pneumonia_Value

select Procedure_Hip_Knee_Quality,  Count(*) from dbo.hospitals
group by Procedure_Hip_Knee_Quality

select Procedure_Hip_Knee_Value,  Count(*) from dbo.hospitals
group by Procedure_Hip_Knee_Value


SELECT 
    Facility_Type,
    SUM(CASE WHEN Rating_Experience = 'Below' THEN 1 ELSE 0 END) AS total_below,
    SUM(CASE WHEN Rating_Experience = 'Above' THEN 1 ELSE 0 END) AS total_average,
	SUM(CASE WHEN Rating_Experience = 'Same' THEN 1 ELSE 0 END) AS total_same,
	SUM(CASE WHEN Rating_Experience = 'None' THEN 1 ELSE 0 END) AS total_None
FROM 
   dbo.hospitals
GROUP BY 
    Facility_Type;

SELECT 
    Facility_Type,
    SUM(CASE WHEN Rating_Safety = 'Below' THEN 1 ELSE 0 END) AS total_below,
    SUM(CASE WHEN Rating_Safety = 'Above' THEN 1 ELSE 0 END) AS total_average,
	SUM(CASE WHEN Rating_Safety = 'Same' THEN 1 ELSE 0 END) AS total_same,
	SUM(CASE WHEN Rating_Safety = 'None' THEN 1 ELSE 0 END) AS total_None
FROM 
   dbo.hospitals
GROUP BY 
    Facility_Type;


select count(Rating_Overall) Rating_Overall,  Facility_Name from dbo.hospitals
group by Facility_Name

select count(Rating_Overall) Rating_Overall, Facility_City from dbo.hospitals
group by Facility_City

