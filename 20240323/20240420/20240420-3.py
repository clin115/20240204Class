#計數器
import streamlit as st
st.title("Heaven or Hell?")
st.image("https://img.freepik.com/free-vector/cartoon-buddha-sitting-lotus_74855-204.jpg?t=st=1713582236~exp=1713585836~hmac=4c8bc86a1d55e00608631ee910279375bf8e8e0e72602bdee18f257c57af7c0c&w=740")
st.title("Example of Counter")
count = 0
st.button("+1",type="primary")
st.button("-1",type="primary")
st.button("Reset",type= "secondary")
if increment:
    count += 1
st.write("今日功德餘額  ",count)