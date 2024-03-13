USE Hospital

/*Question -1 - display the number of duplicate patients based on their first_name and last_name */

SELECT 
     first_name,
	 last_name,
	 COUNT(*) as number_of_duplicates
FROM patients 
GROUP BY first_name, last_name
HAVING count(*) > 1

/* Question 2 : 
display the number of duplicate patients based on their first_name and last_name */
select concat(first_name,' ',last_name) as full_name,
round(height/30.48,1) as height_feet, round(weight * 2.205,0) as weight_pound,
birth_date,
(case when gender ='F' then 'Female' else 'Male' end) as gender
from patients

/* Question 3:
Question 43:

Show all of the patients grouped into weight groups.

Show the total amount of patients in each weight group.

Order the list by the weight group decending.

For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc. */

SELECT 
     (weight  / 10*10) as grp,
	 COUNT(weight/10*10) as cnt
FROM patients
GROUP BY weight / 10*10
ORDER BY grp DESC

/* Question 4 
Show patient_id, weight, height, isObese from the patients table.

Display isObese as a boolean 0 or 1.

Obese is defined as weight(kg)/(height(m)2) >= 30.

weight is in units kg.

height is in units cm. */

select patient_id,weight,height,
(case when (weight/((height*0.01)*height*0.01))>30 then 1 else 0 end) as
isObese
from patients

/* Question 5
Show patient_id, first_name, last_name, and attending doctor's specialty.

Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

Check patients, admissions, and doctors tables for required information. */

select p.patient_id,p.first_name,p.last_name,
d.specialty
from patients as p 
join admissions as a on p.patient_id = a.patient_id
join doctors as d on a.attending_doctor_id = d.doctor_id
where a.diagnosis = 'Epilepsy' and d.first_name ='Lisa'

/* Question 6: 
All patients who have gone through admissions, can see their medical documents on our site. 
Those patients are given a temporary password after their first admission. 
Show the patient_id and temp_password. */

SELECT 
     p.patient_id,
	 CONCAT(p.patient_id, len(p.last_name), YEAR(p.birth_date)) AS user_password
FROM patients p
INNER JOIN admissions a ON a.patient_id = p.patient_id

/* Question 7:
Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
*/
SELECT
      pn.province_name
FROM province_names pn
INNER JOIN patients p ON pn.province_id = p.province_id
GROUP BY province_name
HAVING 
       SUM (CASE WHEN p.gender = 'M' THEN 1 ELSE 0 END) > SUM( CASE WHEN p.gender = 'F' THEN 1 ELSE 0 END)


/* Question 8:
We are looking for a specific patient. Pull all columns for the patient who matches the following criteria:

- First_name contains an 'r' after the first two letters.

- Identifies their gender as 'F'

- Born in February, May, or December

- Their weight would be between 60kg and 80kg

- Their patient_id is an odd number

- They are from the city 'Kingston */

select * from patients
where
first_name like '__r%'
and
gender = 'F'
and
month(birth_date) in (2,5,12)
and
weight between 60 and 80
and
patient_id%2>0
and
city = 'Kingston'
 
 /* Question 9
 Sort the province names in ascending order in such a way that the province 'Ontario' is always on top. */

select province_name from province_names where province_name = 'Ontario'
union all
select distinct province_name from province_names where province_name != 'Ontario'

/* Question 10 
For each day display the total amount of admissions on that day. 
Display the amount changed from the previous date. */

select admission_date, count(*) as total_admission
,(count(*) 
- lag(count(*),1) over (order by admission_date
asc) ) as admission_change
from admissions 
group by admission_date 
order by admission_date

/* Question 10 * 
Each admission costs $50 for patients without insurance, and $10 for patients with insurance. All patients with an even patient_id have insurance.

Give each patient a 'Yes' if they have insurance, and a 'No' if they don't have insurance. Add up the admission_total cost for each has_insurance group. */

WITH cte AS (SELECT
     *,
	 CASE WHEN patient_id % 2 = 0 THEN 'Yes' ELSE 'No' 
	 END as Insurance_status,
	 CASE WHEN patient_id % 2 = 0 THEN 10 ELSE 50 END AS Insurance_Cost
FROM admissions)
SELECT 
      Insurance_status, 
	  FORMAT(SUM(insurance_cost), 'C0') as total_amount
FROM cte
GROUP BY Insurance_status

/* Question 52-
Show the percent of patients that have 'M' as their gender. 
Round the answer to the nearest hundreth number and in percent form. */
DECLARE @total_count INT;
SELECT @total_count = COUNT(*) FROM patients;

SELECT
     COUNT(*) * 100.0 / @total_count AS percent_male
FROM patients
WHERE gender = 'M';
