Use Hospital

/* Show first name, last name, and gender of patients who's gender is 'M' 
# Quesiton 1*/

SELECT
     first_name,
	 last_name,
	 gender 
FROM patients 
WHERE gender = 'M'

/* Question 2: 
Show first name and last name of patients who does not have allergies. (null) */
SELECT
      first_name,
	  last_name
FROM patients 
WHERE allergies IS NULL

--Question--3
/*Show first name of patients that start with the letter 'C' */

SELECT 
      first_name 
FROM patients
WHERE first_name LIKE 'c%'

/* Question --4 */
/* Show first name and last name of patients that weight within the range of 100 and 120(inclusive) */

SELECT 
      first_name,
	  last_name
FROM patients 
WHERE weight BETWEEN 100 and 120


/*Question --5-- */
/*Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA' */
UPDATE patients
SET allergies = 'NKA'
WHERE allergies IS NULL


/*Question --6-- */
/*Show first name and last name concatinated into one column to show their full name. */

SELECT
      CONCAT(first_name, ' ', last_name) as Full_Name
FROM patients

/*Question --7-- */
/*Show first name, last name, and the full province name of each patient. */

SELECT
      p.first_name,
	  p.last_name,
	  pn.province_name
FROM patients p
INNER JOIN province_names pn ON pn.province_id = p.province_id

/* Question 8: 
Show how many patients have a birth_date with 2010 as the birth year. */

SELECT
      COUNT(*) as CNT_People_With_2010_Year_Birth
FROM patients 
WHERE YEAR(birth_date) = 2010

/*Question --9-- *
 Show the first_name, last_name, and height of the patient with the greatest height. */

SELECT 
      first_name,
	  last_name,
	  height
FROM patients 
WHERE height = (SELECT MAX(height) FROM patients )

-- Another way-
SELECT
     TOP 1
	 first_name,
	 last_name,
	 height
FROM patients 
ORDER BY height DESC;

/* Question 10: 
Show the first_name, last_name, and height of the patient with the greatest height. */

SELECT *
FROM patients
WHERE patient_id IN(1, 45, 534, 879, 1000)
