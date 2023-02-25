-- 코드를 입력하세요
SELECT EXTRACT(year from SALES_DATE) as YEAR,
EXTRACT(month from SALES_DATE) as MONTH,
GENDER, COUNT(distinct(ONLINE_SALE.USER_ID))
FROM USER_INFO
JOIN ONLINE_SALE on USER_INFO.USER_ID =ONLINE_SALE.USER_ID
GROUP BY YEAR,MONTH,GENDER
HAVING GENDER IS NOT NULL
ORDER BY YEAR,MONTH,GENDER





