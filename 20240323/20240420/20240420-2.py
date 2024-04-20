import streamlit as st

#create default session state key
if 'A1' not in st.session_state:
    st.session_state['A1'] = 100
if 'A2' not in st.session_state:
    st.session_state['A2'] = 200
if 'A3' not in st.session_state:
    st.session_state['A3'] = 300
st.write(st.session_state)