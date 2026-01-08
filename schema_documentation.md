## Entity Relationship Description

ENTITY: customers  
Stores customer master data.

ENTITY: products  
Stores product catalog data.

ENTITY: orders  
Stores order-level transactions.

ENTITY: order_items  
Stores line-item level order details.

## Normalization (3NF)
All tables are in Third Normal Form because non-key attributes depend only on the primary key and not on other non-key attributes. This design avoids redundancy and anomalies.
