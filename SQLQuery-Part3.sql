Use Hospital

/* 
Question 1
Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

Primary diagnosis is stored in the admissions table. */

SELECT 
     p.patient_id,
     p.first_name,
	 p.last_name
FROM patients p 
INNER JOIN admissions a ON a.patient_id = p.patient_id
WHERE a.diagnosis = 'Dementia'
     
/* Question 2
Display every patient's first_name.

Order the list by the length of each name and then by alphbetically */
SELECT
      first_name
FROM patients
ORDER BY len(first_name) , first_name ;

/*Show the total amount of male patients and the total amount of female patients in the patients table.

Display the two results in the same row. */

SELECT 
      COUNT(CASE WHEN gender = 'M' THEN 1 ELSE 0 end) as male_count,
	  COUNT(CASE WHEN gender = 'F' THEN 1 ELSE 0 end) as female_count
FROM patients
	   


/* Question 4
*Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. 
Show results ordered ascending by allergies then by first_name then by last_name. */

SELECT 
      first_name,
	  last_name,
	  allergies
FROM patients 
WHERE allergies = 'Penicillin' OR allergies = 'Morphine'

/* Question 5
Show patient_id, diagnosis from admissions. 
Find patients admitted multiple times for the same diagnosis. */

SELECT  p.patient_id,a.diagnosis
FROM patients as p 
INNER JOIN admissions as a ON  p.patient_id = a.patient_id
GROUP BY p.patient_id,a.diagnosis
HAVING COUNT(a.diagnosis)>1


/* Question 6
Show the city and the total number of patients in the city.

Order from most to least patients and then by city name ascending. */

SELECT 
      city,
	  COUNT(patient_id) patient_count
FROM patients 
GROUP BY city
ORDER BY 2 DESC, city;

/* Question 7
Show first name, last name and role of every person that is either patient or doctor.

The roles are either "Patient" or "Doctor */

SELECT 
      first_name,
	  last_name,
	  'Patient' AS Role
FROM patients
UNION ALL 
SELECT 
      first_name,
	  last_name,
	  'Role'AS Role
FROM doctors

/* Question 8
Show all allergies ordered by popularity. Remove NULL values from query.   
*/
SELECT
      allergies,
	  COUNT(*) number_of_count
FROM patients 
WHERE allergies <> 'NKA'
GROUP BY allergies
ORDER BY 2 DESC;


/* Question 9
Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. 
Sort the list starting from the earliest birth_date. */

SELECT 
      first_name,
	  last_name,
	  birth_date
FROM patients 
WHERE birth_date BETWEEN '1970-01-01' AND '1980-01-01'
ORDER BY 3 ASC;

/* Question 10
We want to display each patient's full name in a single column. Their last_name in all upper letters must appear first, then first_name in all lower case letters. Separate the last_name and first_name with a comma.
Order the list by the first_name in decending order */

SELECT 
      CONCAT(UPPER(last_name),  ' , ', LOWER(first_name)) as Full_Name
FROM patients
ORDER BY first_name DESC;

select concat(upper(last_name),',',lower(first_name)) from patients
order by first_name desc