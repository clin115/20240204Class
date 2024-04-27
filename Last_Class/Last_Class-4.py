import psycopg2
import os
import streamlit as st
from dotenv import load_dotenv
load_dotenv()

@st.cache_resource

def get_district():
    conn = psycopg2.connect(os.environ['POSTGRE_PASSWORD1'])
    with conn:
        with conn.cursor() as cursor:
            sql = '''
            SELECT District
            FROM Taipei_Ubike_Stations
            GROUP BY District
            '''
            cursor.execute(sql)
            areas = cursor.fetchall()
            return areas
    conn.close()    

col1, col2 = st.columns([1,2])
data = [tuple1[0] for tuple1 in get_district()]
#print(data)

st.radio('Please Select District: ',data,key='areas',horizontal=True)
