import streamlit as st
st.title("Session and Callback")
col1,buff,col2 = st.columns([3,1,3])
col5,buff,col6,buff,col7 = st.columns([3,1,3,1,3])
col3,buff,col4 = st.columns([3,1,3])

def lbs_to_kG():
    st.session_state.KG = st.session_state.lbs / 2.2046
def KG_to_lbs():
    st.session_state.lbs = st.session_state.KG * 2.2046
with col1:
    st.number_input('lbs:',key='lbs',on_change=lbs_to_kG)
with col2:
    st.number_input('KG:',key='KG',on_change=KG_to_lbs)

def cm3_to_CBM():
    st.session_state.CBM = st.session_state.cm3 / 6000
def CBM_to_cm3():
    st.session_state.cm3 = st.session_state.CBM * 6000
with col3:
    st.number_input('cm3:',key='cm3',on_change=cm3_to_CBM)
with col4:
    st.number_input('CBM:',key='CBM',on_change=CBM_to_cm3)

def cm_to_cm3():
    st.session_state.cm3 = st.session_state.length * st.session_state.width * st.session_state.height
    
with col5:
    st.number_input('Length:',key='length',on_change=cm_to_cm3)
with col6:
    st.number_input('Width:',key='width',on_change=cm_to_cm3)
with col7:
    st.number_input('Height:',key='height',on_change=cm_to_cm3)