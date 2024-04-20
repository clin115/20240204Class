import streamlit as st
st.title("Session and Callback")
col1,buff,col2 = st.columns([2,1,2])

def lbs_to_kG():
    st.session_state.KG = st.session_state.lbs / 2.2046
def KG_to_lbs():
    st.session_state.lbs = st.session_state.KG * 2.2046
with col1:
    st.number_input('lbs:',key='lbs',on_change=lbs_to_kG)
with col2:
    st.number_input('KG:',key='KG',on_change=KG_to_lbs)