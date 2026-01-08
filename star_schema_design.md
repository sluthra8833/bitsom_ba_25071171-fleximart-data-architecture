
## Section 1: Schema Overview

The data warehouse uses a star schema centered on the fact_sales table, which captures sales transaction data. The grain of the fact table is defined as one row per product per order line item, ensuring the lowest meaningful level of sales detail. Each record represents a single product sold in a specific order and supports detailed as well as aggregated analysis.

The fact_sales table stores numeric measures including quantity_sold, unit_price, discount_amount, and total_amount, where total_amount is derived from the quantity sold multiplied by unit price minus any discount. The fact table contains foreign keys linking to the date, product, and customer dimensions.

The dim_date table is a conformed time dimension used for temporal analysis. It includes attributes such as full date, day of week, month, quarter, year, and a weekend indicator, with date_key serving as a surrogate primary key.

The dim_product table stores descriptive product attributes such as product name, category, brand, and pricing-related classifications. The dim_customer table captures customer-related details including customer name, location, and customer segment. Together, these dimensions provide descriptive context to the sales facts and enable efficient analytical querying.


## Section 2: Design Decisions

The transaction line-item level granularity was chosen because it represents the most detailed and atomic level of sales data. Storing one row per product per order allows accurate analysis of quantities, pricing, and discounts at the individual product level while still enabling aggregation to higher levels such as orders, days, or months. This granularity ensures flexibility for both detailed and summary reporting.

Surrogate keys were used instead of natural keys to improve performance and maintain stability in the data warehouse. Natural keys such as product IDs or customer IDs may change over time or differ across source systems. Surrogate keys provide consistent, system-independent identifiers and simplify joins between fact and dimension tables.

This star schema design supports drill-down and roll-up operations effectively. Analysts can roll up sales data across time periods, product categories, or customer segments, and drill down from aggregated views to detailed transaction-level records without complex joins.


## Section 3: Sample Data Flow (3 Marks)

A sales transaction originates in the source system as an operational record. For example, Order #101 is placed by customer John Doe for the product Laptop, with a quantity of 2 units at a unit price of 50,000 on 15 January 2024.

During the ETL process, this transaction is transformed and loaded into the data warehouse. The transactional identifiers are replaced with surrogate keys from the corresponding dimension tables. The sales measures are stored in the fact table at the defined grain of one row per product per order line item.

In the data warehouse, the transaction is represented as:

fact_sales

date_key: 20240115  
product_key: 5  
customer_key: 12  
quantity_sold: 2  
unit_price: 50000  
total_amount: 100000  


The descriptive attributes are stored separately in dimension tables:

dim_date contains the calendar details for 20240115,
dim_product contains product details for Laptop, and
dim_customer contains customer information for John Doe.

This separation enables efficient analytical querying and aggregation.
