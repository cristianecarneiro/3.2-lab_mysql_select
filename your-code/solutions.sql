-- CHALLENGE 1

SELECT A.AU_ID, AU_LNAME, AU_FNAME, TITLE, PUB_NAME
FROM TITLES AS T
LEFT JOIN TITLEAUTHOR AS TA
ON T.TITLE_ID = TA.TITLE_ID
INNER JOIN AUTHORS AS A
ON A.AU_ID = TA.AU_ID
LEFT JOIN PUBLISHERS AS P
ON P.PUB_ID = T.PUB_ID;


-- CHALLENGE 2

SELECT A.AU_ID, AU_LNAME, AU_FNAME, PUB_NAME, COUNT(TITLE) AS TITLE_COUNT
FROM TITLES AS T
LEFT JOIN TITLEAUTHOR AS TA
ON T.TITLE_ID = TA.TITLE_ID
INNER JOIN AUTHORS AS A
ON A.AU_ID = TA.AU_ID
LEFT JOIN PUBLISHERS AS P
ON P.PUB_ID = T.PUB_ID
GROUP BY A.AU_ID, P.PUB_ID
ORDER BY TITLE_COUNT DESC , AU_LNAME DESC;


-- CHALLENGE 3 

SELECT A.AU_ID, AU_LNAME, AU_FNAME, COUNT(TITLE) AS TOTAL
FROM TITLES AS T
LEFT JOIN TITLEAUTHOR AS TA
ON T.TITLE_ID = TA.TITLE_ID
INNER JOIN AUTHORS AS A
ON A.AU_ID = TA.AU_ID
GROUP BY A.AU_ID, AU_LNAME, AU_FNAME
ORDER BY TOTAL DESC
LIMIT 3; 
-- #check case of 4th having same total as 3. 

-- CHALLENGE 4

SELECT A.AU_ID, AU_LNAME, AU_FNAME, COUNT(TITLE) AS TOTAL
FROM TITLES AS T
LEFT JOIN TITLEAUTHOR AS TA
ON T.TITLE_ID = TA.TITLE_ID
RIGHT JOIN AUTHORS AS A
ON A.AU_ID = TA.AU_ID
GROUP BY A.AU_ID, AU_LNAME, AU_FNAME
ORDER BY TOTAL DESC;