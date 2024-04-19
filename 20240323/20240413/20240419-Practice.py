import streamlit as st
from dotenv import load_dotenv
import psycopg2
import os
load_dotenv()

@st.cache_resource
def get_station() -> list:
    with psycopg2.connect(os.environ['POSTGRE_PASSWORD']) as conn:
        with conn.cursor() as cursor:
            sql='''
                SELECT DISTINCT English_Name
                FROM stations
                ORDER BY English_Name ASC
                '''
            cursor.execute(sql)
            datas:list = cursor.fetchall()
            names = []
            for item in datas:
                names.append(item[0])
            return names            
with st.sidebar:
    option1 = st.selectbox(
    "Please tell me your departure station, Your Highness",get_station())
    option2 = st.selectbox("Then Select Your arrival station",get_station())
    T1 = st.date_input("Date of Departure")
    T2 = st.date_input("Date of Return")
    st.write(
        'Your Honor, you are traveling from',
        option1,'to',option2,
        'from',T1,"and will return on",T2, 
        'Is that correct?' )
    if st.button('Click here to confirm your orders',type="primary"):
        st.write("Your order has been confirmed. Just go and check your Email !!")
    