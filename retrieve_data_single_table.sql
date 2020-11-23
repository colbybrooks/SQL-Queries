/* Order of Operations & Notes
Two methods of operations, for this script, I will do left side
USE database     			| 
SELECT *     	 			|	SELECT *
FROM table 					|	FROM databse.table
WHERE operation
ORDER BY operation

sql_store = database
sys = is the mysql default database */

USE sql_store; -- Default Database for all operations
################### To run a section, complete the comment block , ***/ , Insert the / at the end

/* SELECT statement_________________________________________________________
Selects table or tables within the database
* Is selecting all columns within the table
SELECT xxx,yyyy,zzz FROM    Does only certain columns
***
SELECT * FROM sql_store.customers 
*/

/* AS operator ____Creates an new Alias for a table within the database, Renaming it

***
SELECT name, unit_price, unit_price * 1.1 AS new_price
FROM sql_inventory.products;
*/

/* WHERE statement_____________________________________________________
SELECT * FROM sql_store.orders
WHERE order_date > '1995-01-01'
*/

/*AND, OR , NOT Operator ____________________________________
SELECT * FROM sql_store.order_items
WHERE order_id = 6 AND (quantity * unit_price) > 30
*/

/* IN Operator -- Use IN to set equal to multiple thing i.e ('AZ','VA') & (49,72)
***
SELECT * FROM products
WHERE quantity_in_stock IN (49,38,72)
*/

/* BETWEEN -- Use between to choose between two values, smaller AND bigger, i.e 7 AND 8
***
SELECT * FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'
*/

/* LIKE -- Use Like to find info in table that matches to ' ' statement
% any number of characters     
_ single character
***
-- Use either statement
SELECT * FROM customers
#WHERE address LIKE '%trail%' OR '%avenue%'
#WHERE phone LIKE '%9'
*/

/* REGEXP -- Stronger and better than LIKE, search for more complex
^ means beginning of a string '^string'
$ means end of a string 'string$'
| = OR to use multiple words to search for 'field|string'
[]_ to search for letters [] in front or behind of _ i.e [gim]e = ge , ie , me or e[fmg]
 - use for range of characters i.e [a-c]e  = ae be ce
***
SELECT * FROM customers
WHERE last_name REGEXP 'ey$|on$|^my|SE|b[ru]'
*/
 
/* IS NULL -- Find where there is no data in the entry
IS NOT NULL to find where there is data
***
SELECT * FROM customers
WHERE phone IS NULL
*/
 
 /* ORDER BY ___________________________________________________________________
 ORDER BY column DESC or Ascending (default)
 ***
 SELECT *, quantity * unit_price AS total_price FROM order_items
 WHERE order_id = 2
 ORDER BY total_price DESC
 */
 
/* LIMIT ----------------------------------------------------
Use limit clause to limit amount of rows you get
LIMIT 300 means to limit to 300 rows
LIMIT 6, 3  - means to offset 6 and then limit 3 rows
***
SELECT * FROM customers
WHERE
ORDER BY points DESC
LIMIT 3 
*/
