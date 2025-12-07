/* =====================================================================
   OLIST E-COMMERCE ANALYTICS PROJECT  
   SQL QUERIES (Created by: <Your Name>)
   These queries were used for SQL analysis inside the Google Colab notebook,
   after loading the cleaned Olist dataset into SQLite.
   ===================================================================== */


/* ---------------------------------------------------------------------
   1. View first few rows of the table (test query)
   --------------------------------------------------------------------- */
SELECT * FROM olist_clean LIMIT 5;


/* ---------------------------------------------------------------------
   2. Orders per state
   --------------------------------------------------------------------- */
SELECT customer_state, COUNT(*) AS total_orders
FROM olist_clean
GROUP BY customer_state
ORDER BY total_orders DESC;


/* ---------------------------------------------------------------------
   3. Revenue by product category
   --------------------------------------------------------------------- */
SELECT product_category_name, SUM(total_price) AS revenue
FROM olist_clean
GROUP BY product_category_name
ORDER BY revenue DESC;


/* ---------------------------------------------------------------------
   4. Monthly order trend
   --------------------------------------------------------------------- */
SELECT order_month AS month,
       COUNT(DISTINCT order_id) AS total_orders
FROM olist_clean
GROUP BY order_month
ORDER BY order_month;


/* ---------------------------------------------------------------------
   5. Average delivery time (in days)
   --------------------------------------------------------------------- */
SELECT AVG(delivery_days) AS avg_delivery_days
FROM olist_clean;


/* ---------------------------------------------------------------------
   6. Estimated vs actual delivery time
   --------------------------------------------------------------------- */
SELECT AVG(estimated_delivery_days) AS avg_estimated_delivery_days,
       AVG(delivery_days) AS avg_actual_delivery_days
FROM olist_clean;


/* ---------------------------------------------------------------------
   7. Overall late delivery percentage
   --------------------------------------------------------------------- */
SELECT AVG(CASE WHEN is_late_delivery = 1 THEN 1 ELSE 0 END) * 100 
       AS late_delivery_percentage
FROM olist_clean;


/* ---------------------------------------------------------------------
   8. Late delivery percentage by state
   --------------------------------------------------------------------- */
SELECT customer_state,
       AVG(CASE WHEN is_late_delivery = 1 THEN 1 ELSE 0 END)*100 AS late_percentage
FROM olist_clean
GROUP BY customer_state
ORDER BY late_percentage DESC;


/* ---------------------------------------------------------------------
   9. Review score distribution
   --------------------------------------------------------------------- */
SELECT review_score,
       COUNT(*) AS total_reviews
FROM olist_clean
GROUP BY review_score
ORDER BY review_score;


/* ---------------------------------------------------------------------
   10. Average review score by product category
   --------------------------------------------------------------------- */
SELECT product_category_name,
       AVG(review_score) AS avg_review_score
FROM olist_clean
GROUP BY product_category_name
ORDER BY avg_review_score DESC;


/* ---------------------------------------------------------------------
   11. Total revenue by state
   --------------------------------------------------------------------- */
SELECT customer_state,
       SUM(total_price) AS revenue
FROM olist_clean
GROUP BY customer_state
ORDER BY revenue DESC;


/* ---------------------------------------------------------------------
   12. Freight cost averages by product category
   --------------------------------------------------------------------- */
SELECT product_category_name,
       AVG(freight_value) AS avg_freight_cost
FROM olist_clean
GROUP BY product_category_name
ORDER BY avg_freight_cost DESC;


/* ---------------------------------------------------------------------
   13. Top 10 revenue-generating products
   --------------------------------------------------------------------- */
SELECT product_id,
       SUM(total_price) AS total_revenue
FROM olist_clean
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 10;


/* ---------------------------------------------------------------------
   14. Daily order volume (useful for time series analysis)
   --------------------------------------------------------------------- */
SELECT DATE(order_purchase_timestamp) AS date,
       COUNT(DISTINCT order_id) AS daily_orders
FROM olist_clean
GROUP BY date
ORDER BY date;


/* ---------------------------------------------------------------------
   15. Price vs freight value (used for scatter plot correlation)
   --------------------------------------------------------------------- */
SELECT price, freight_value
FROM olist_clean
WHERE price IS NOT NULL AND freight_value IS NOT NULL;


/* ---------------------------------------------------------------------
   END OF QUERIES
   --------------------------------------------------------------------- */
