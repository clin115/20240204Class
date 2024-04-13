import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

@st.cache_resource
def get_contacts() -> list:
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT Contact_Name
                FROM Contact_List LEFT JOIN Customer_List ON Contact_List.Customer_ID = Customer_List.Customer_ID
                '''
            cursor.execute(sql)
            datas:list = cursor.fetchmany(10)
            names = []
            for item in datas:
                names.append(item[0])
            return names            
with st.sidebar:
    option = st.selectbox(
    "Specify your contact:",get_contacts())
    st.write('You have selected ',option)