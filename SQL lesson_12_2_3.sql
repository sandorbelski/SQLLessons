USE Sales

SELECT * 
FROM dbo.goods g
LEFT JOIN (
SELECT good_id, sum(quantity) quantity
FROM dbo.purchases p
GROUP BY good_id) p
on g.id = p.good_id
WHERE quantity IS NULL 