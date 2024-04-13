from dotenv import load_dotenv
load_dotenv()
import psycopg2
import os
with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
    with conn.cursor() as cursor:
        sql='''
            SELECT Contact_ID,Customer_Name,Contact_Name,Phone,Email
            FROM Contact_List LEFT JOIN Customer_List ON Contact_List.Customer_ID = Customer_List.Customer_ID
        '''
        cursor.execute(sql)
        datas:list = cursor.fetchmany(10)
for item in datas:
    print(item)
conn.close()