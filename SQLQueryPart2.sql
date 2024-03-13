Use Hospital

/* Question 1: 
*Show the total number of admissions */
SELECT 
      COUNT(*) as total_number_of_patients_admitted
FROM admissions

/* Question : 2
Show all the columns from admissions where the patient was admitted and discharged on the same day.*/

SELECT 
     *
FROM admissions
WHERE admission_date = discharge_date

/*Question 3: 
Show the patient id and the total number of admissions for patient_id 6 */

SELECT
      patient_id,
	  COUNT(*) as number_of_admission
FROM admissions
WHERE patient_id = 6
GROUP BY patient_id


/*Question 4: 
Based on the cities that our patients live in, show unique cities that are in province_id 'NS'?
*/
SELECT 
      DISTINCT city
FROM patients 
WHERE province_id = 'NS'

/* Question 5: 
Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70 */

SELECT
      first_name,
	  last_name,
	  birth_date
FROM patients
WHERE height > 160 AND weight > 70

/* Question 6:
Write a query to find list of patients first_name, last_name, and allergies from Hamilton where allergies are not null
*/
SELECT 
       first_name,
	   last_name,
	   allergies
FROM patients 
WHERE city = 'Hamilton'  AND allergies <> 'NKA'

/* Question 7: 
Based on cities where our patient lives in, write a query to display the list of unique city starting with a vowel (a, e, i, o, u). Show the result order in ascending by city */
SELECT
      DISTINCT city
FROM patients
WHERE city LIKE 'a%'  
OR city LIKE 'e' 
OR city LIKE 'i' 
OR city LIKE 'o' OR 
city LIKE 'u'
ORDER BY city 

/*Show unique birth years from patients and order them by ascending.
*/
Show unique birth years from patients and order them by ascending. */

SELECT
      DISTINCT year(birth_date) as birth_year 
FROM patients
ORDER BY birth_year

/*Question 19:
 Show unique first names from the patients table which only occurs once in the list. */

SELECT DISTINCT first_name
FROM patients
GROUP BY  first_name
HAVING COUNT(first_name) = 1


--Question 20--
/* Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long. */



select patient_id,first_name from patients where first_name like 's____%s'