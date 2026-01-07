
# ETL Pipeline for FlexiMart
import pandas as pd
from datetime import datetime

def standardize_phone(phone):
    if pd.isna(phone): 
        return None
    digits = ''.join(filter(str.isdigit, str(phone)))
    if len(digits) == 10:
        return "+91-" + digits
    if len(digits) == 12 and digits.startswith("91"):
        return "+91-" + digits[2:]
    return "+91-" + digits[-10:]

def parse_date(val):
    for fmt in ("%Y-%m-%d", "%d/%m/%Y", "%m-%d-%Y", "%m/%d/%Y"):
        try:
            return datetime.strptime(val, fmt).date()
        except:
            pass
    return None

customers = pd.read_csv("C://Users//sluth//Downloads//Module 2 Assignment//customers_raw.csv").drop_duplicates()
customers['phone'] = customers['phone'].apply(standardize_phone)
customers['registration_date'] = customers['registration_date'].astype(str).apply(parse_date)
customers = customers.dropna(subset=['email'])

products = pd.read_csv("C://Users//sluth//Downloads//Module 2 Assignment//products_raw.csv")
products['category'] = products['category'].str.strip().str.title()
products['price'] = products['price'].fillna(products['price'].median())
products['stock_quantity'] = products['stock_quantity'].fillna(0)

sales = pd.read_csv("C://Users//sluth//Downloads//Module 2 Assignment//sales_raw.csv").drop_duplicates()
sales['transaction_date'] = sales['transaction_date'].astype(str).apply(parse_date)
sales = sales.dropna(subset=['customer_id','product_id'])

print("ETL Completed Successfully")


