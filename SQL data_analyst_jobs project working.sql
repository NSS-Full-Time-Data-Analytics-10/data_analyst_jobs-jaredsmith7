---QUESTION 1----
---1793---

SELECT COUNT(title)
FROM data_analyst_jobs;

---QUESTION 2---
---ExxonMobil---

SELECT *
FROM data_analyst_jobs
LIMIT 10;

---Question 3---
---21 in TN---
---27 in TN or KY---
---6 in KY---

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location='KY' OR location='TN';

---Question 4---
---3 postings in TN with star rating above 4---

SELECT COUNT(location)
FROM data_analyst_jobs
WHERE location='TN' 
	AND star_rating > 4;
	
---Question 5---
---151---

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

---Question 6----
---Nebraska---

SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC;

---Question 7---
---881---

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;

---Question 8---
---230---

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location='CA';

---Question 9---
---41 companies---

SELECT ROUND(AVG(star_rating),2) AS avg_rating, company, SUM(review_count) AS sum_reviews
FROM data_analyst_jobs
WHERE review_count>5000
GROUP BY company
ORDER BY avg_rating DESC;

---Question 10---
---GM, 4.2---

SELECT ROUND(AVG(star_rating),2) AS avg_rating, company, SUM(review_count) AS sum_reviews
FROM data_analyst_jobs
WHERE review_count>5000
GROUP BY company
ORDER BY avg_rating DESC;


---Question 11---
---774---

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

---Question 12---
---All contain Tableau/are visualization roles---

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
		AND title NOT ILIKE '%Analytics%';
			
			
---Bonus---
---Internet and Software, Banks and Financial Services,Consulting and Business Services, Health Care---
---62,61,57,52 respectively---

SELECT domain,COUNT(title) AS number_of_jobs
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
AND days_since_posting >21
AND domain IS NOT NULL
GROUP BY domain
ORDER BY number_of_jobs DESC;












