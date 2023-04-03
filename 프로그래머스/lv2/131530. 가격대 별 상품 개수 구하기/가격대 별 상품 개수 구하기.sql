-- 코드를 입력하세요
/*
CASE 그룹을 만들어서 새로운 컬럼 생성
*/
SELECT (CASE 
       WHEN PRICE <10000 THEN 0
       ELSE TRUNCATE(PRICE,-4)
        END
       ) AS PRICE_GROUP, COUNT(PRODUCT_ID)
       FROM PRODUCT
       GROUP BY PRICE_GROUP
       ORDER BY PRICE_GROUP
                             