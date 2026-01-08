
## Section A: Limitations of RDBMS

Relational database struggles with products having different attributes because it requires a fixed table schema. When products like laptops and shoes have distinct attributes, the database either ends up with many nullable columns or multiple product-specific tables, both of which increase complexity, reduce clarity, and waste storage.

Frequent schema changes further worsen the problem. Every time a new product type or attribute is introduced, the table structure must be altered. These schema changes are time-consuming, risky in production environments, and can impact existing applications and queries that depend on the current schema.

Relational databases also perform poorly when storing customer reviews as nested data. Reviews must be stored in separate tables and linked using foreign keys, requiring joins to retrieve complete product information. As review volume grows, these joins become expensive, leading to slower query performance and increased maintenance effort, especially for read-heavy use cases like product browsing.


## Section B: NoSQL Benefits
MongoDB addresses key limitations of relational databases when dealing with semi-structured and evolving data. Its flexible schema allows documents within a collection to have different fields and structures. This is particularly useful in retail systems where product attributes may vary across categories or change over time. Unlike rigid table schemas, MongoDB enables seamless updates without schema redesign or downtime.

Using embedded documents, MongoDB efficiently models hierarchical relationships such as customer reviews within product documents. Instead of performing costly joins across multiple tables, related data is stored together, enabling faster read operations and simplified query logic. This design is well-suited for read-heavy use cases like product browsing and review analysis.

MongoDB also supports horizontal scalability through sharding, allowing data to be distributed across multiple servers. As data volume and user traffic grow, the system can scale by adding nodes, ensuring high availability and consistent performance without major architectural changes.


## Section C: Trade-offs
One disadvantage of using MongoDB instead of MySQL is its relatively weaker join support and less natural handling of complex, multi-entity ACID transactions. While MongoDB provides transaction support, enforcing strict relationships and consistency across multiple collections is more straightforward in relational databases using foreign keys and joins. This makes MySQL better suited for scenarios requiring strong referential integrity.

Another disadvantage is reduced suitability for complex analytical and reporting queries. MySQL’s SQL engine is optimized for multi-table aggregations and structured reporting, whereas MongoDB’s aggregation framework can become complex and harder to maintain for advanced analytics.
