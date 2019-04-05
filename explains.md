### Before index
```sql
Salesrep.where(first_name: 'Mark').explain
  Salesrep Load (11.1ms)  SELECT "salesreps".* FROM "salesreps" WHERE "salesreps"."first_name" = $1  [["first_name", "Mark"]]
=> EXPLAIN for: SELECT "salesreps".* FROM "salesreps" WHERE "salesreps"."first_name" = $1 [["first_name", "Mark"]]
                          QUERY PLAN
--------------------------------------------------------------
 Seq Scan on salesreps  (cost=0.00..2285.00 rows=19 width=51)
   Filter: ((first_name)::text = 'Mark'::text)
(2 rows)
```

### After index
```sql
Salesrep.where(first_name: 'Mark').explain
  Salesrep Load (0.9ms)  SELECT "salesreps".* FROM "salesreps" WHERE "salesreps"."first_name" = $1  [["first_name", "Mark"]]
=> EXPLAIN for: SELECT "salesreps".* FROM "salesreps" WHERE "salesreps"."first_name" = $1 [["first_name", "Mark"]]
                                         QUERY PLAN
---------------------------------------------------------------------------------------------
 Bitmap Heap Scan on salesreps  (cost=4.56..73.08 rows=19 width=51)
   Recheck Cond: ((first_name)::text = 'Mark'::text)
   ->  Bitmap Index Scan on index_salesreps_on_first_name  (cost=0.00..4.56 rows=19 width=0)
         Index Cond: ((first_name)::text = 'Mark'::text)
(4 rows)
```


### Before index
Product.where(name: 'Gel Bridge_83069').explain
  Product Load (9.9ms)  SELECT "products".* FROM "products" WHERE "products"."name" = $1  [["name", "Gel Bridge_83069"]]
=> EXPLAIN for: SELECT "products".* FROM "products" WHERE "products"."name" = $1 [["name", "Gel Bridge_83069"]]
                         QUERY PLAN
------------------------------------------------------------
 Seq Scan on products  (cost=0.00..2798.04 rows=1 width=93)
   Filter: ((name)::text = 'Gel Bridge_83069'::text)
(2 rows)


### After index

Product.where(name: 'Gel Bridge_83069').explain
  Product Load (1.4ms)  SELECT "products".* FROM "products" WHERE "products"."name" = $1  [["name", "Gel Bridge_83069"]]
=> EXPLAIN for: SELECT "products".* FROM "products" WHERE "products"."name" = $1 [["name", "Gel Bridge_83069"]]
                                       QUERY PLAN
----------------------------------------------------------------------------------------
 Index Scan using index_products_on_name on products  (cost=0.42..8.44 rows=1 width=93)
   Index Cond: ((name)::text = 'Gel Bridge_83069'::text)
(2 rows)
