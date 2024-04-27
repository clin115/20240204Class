#計數器
import streamlit as st
st.title("See if you are going to Heaven or Hell")
st.image("https://img.freepik.com/free-vector/cartoon-buddha-sitting-lotus_74855-204.jpg?t=st=1713582236~exp=1713585836~hmac=4c8bc86a1d55e00608631ee910279375bf8e8e0e72602bdee18f257c57af7c0c&w=740",width=400)
if 'count' not in st.session_state:
    st.session_state.count = 0
increment = st.button("I did something good !",type='primary')
if increment:
    st.session_state.count += 1

decrement = st.button("I did something bad !",type='primary')
if decrement:
    st.session_state.count -= 1

st.write("The credit of your conscience today is    ",st.session_state.count)

if st.session_state.count >=0:
    st.subheader('Seems like you are a nice person ! Keep it up !')
else:
    st.subheader('You are really really terrible. Confess to Buddha and then reset your credits.')

reset = st.button("Reset",type='primary')
if reset:
    st.session_state.count = 0

