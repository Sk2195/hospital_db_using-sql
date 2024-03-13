USE Hospital

/* Question 1
display the number of duplicate patients based on their first_name and last_name */

SELECT
      first_name,
	  last_name,
	  count(*) as number_of_duplicates
FROM patients
GROUP BY first_name, last_name
HAVING count(*) > 1

/* Question 2: 
Display patient's full name,

height in the units feet rounded to 1 decimal,

weight in the unit pounds rounded to 0 decimals,

birth_date,

gender non abbreviated.

Convert CM to feet by dividing by 30.48.

Convert KG to pounds by multiplying by 2.205. */


SELECT 
    CONCAT(first_name , ' ', last_name) Full_Name,
	ROUND(height / 30.48, 1) as height_feet,
	ROUND(weight * 2.205, 0) as weight_pound,
	birth_date,
	CASE 
	   WHEN gender = 'F' THEN 'Female'
	   ELSE 'Male'
	   END AS Gender
FROM patients

/* Question 3: Show the difference between the largest weight and smallest weight for patients with the last name 'Maroni' */

SELECT 
      Max(weight) - Min(weight) as DIFF
FROM patients
WHERE last_name = 'Maroni'


/* Question 4: Show all columns for patient_id 6's most recent admission_date.

*/
SELECT *
FROM admissions
WHERE patient_id = 6 
  AND admission_date = (SELECT MAX(admission_date) FROM admissions WHERE patient_id = 6);

SELECT
      top 1 *
FROM admissions 
WHERE patient_id = 6
ORDER BY admission_date DESC

/* Question 5:
Show patient_id, doctor_id, and diagnosis for admissions that match one of the two criteria:

1. patient_id is an odd number and attending_doctor_id is either 1, 5, or 19.

2. attending_doctor_id contains a 2 and the length of patient_id is 3 characters. */

SELECT
      p.patient_id,
	  d.doctor_id,
	  a.diagnosis
FROM patients p
INNER JOIN admissions a ON a.patient_id = p.patient_id
INNER JOIN doctors d ON d.doctor_id = a.attending_doctor_id
WHERE (p.patient_id % 2 = 1 AND a.attending_doctor_id IN (1, 5, 19) ) 
OR (a.attending_doctor_id LIKE '%2%' AND len(p.patient_id) = 3)

select patient_id,attending_doctor_id,diagnosis from admissions
where
(patient_id %2 >0 and attending_doctor_id in (1,5,19))
or
(attending_doctor_id like '%2%' and len(patient_id) =3)

/* Question 6:
Show first_name, last_name, and the total number of admissions attended for each doctor.

Every admission has been attended by a doctor. */

SELECT 
      d.first_name,
	  d.last_name,
	  COUNT(*) total_number_of_admissions
FROM doctors d
INNER JOIN admissions a ON a.attending_doctor_id = d.doctor_id
GROUP BY first_name, last_name
ORDER BY 3 DESC;

--Question 7:
/* For each doctor, display their id, full name, and the first and last admission date they attended. */
SELECT
      doctor_id,
	  CONCAT(first_name, ' ', last_name) as Full_Name,
	  MIN(a.admission_date) as first_event,
	  MAX (a.admission_date) as last_event
FROM doctors d 
INNER JOIN admissions a ON a.attending_doctor_id = d.doctor_id
GROUP BY doctor_id, CONCAT(first_name, ' ', last_name)

/* Question 8:
Display the total amount of patients for each province. Order by descending.
 */

 SELECT 
       pn.province_name,
	   COUNT(p.patient_id) as total_patients
FROM patients p
INNER JOIN province_names pn ON pn.province_id = p.province_id
GROUP BY pn.province_name
ORDER BY 2 DESC


/* Question 9:
For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
*/
SELECT
      CONCAT(p.first_name, ' ', p.last_name) as Patient_Name,
	  a.diagnosis,
	  CONCAT(d.first_name, ' ', d.last_name) as Patient_Doctor
FROM patients p 
INNER JOIN admissions a ON  a.patient_id = p.patient_id
INNER JOIN doctors d ON d.doctor_id = a.attending_doctor_id





