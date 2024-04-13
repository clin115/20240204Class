import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

def get_contacts() -> list:
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT Contact_ID,Customer_Name,Contact_Name,Phone,Email
                FROM Contact_List LEFT JOIN Customer_List ON Contact_List.Customer_ID = Customer_List.Customer_ID
                '''
            cursor.execute(sql)
            datas:list = cursor.fetchmany(10)
            contacts = []
            for item in datas:
                contacts.append({'id':item[0],'客戶名稱':item[1],'姓名':item[2],'電話':item[3],'電郵':item[4]})
            return contacts
source_data = get_contacts()
st.dataframe(source_data,width=1500)