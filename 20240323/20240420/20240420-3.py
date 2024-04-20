import streamlit as st
st.title('Session_State Basics')


## Input Widget
number = st.slider(
    'Credit Score',
    min_value=0,
    max_value=100,
    step=5,
    key='creditslider')
st.write('Your credit score is ',number)

col1, buff, col2 = st.columns([1,0.5,1])

next = st.button('Next option')
if next:
    if st.session_state.radio_option == 'A':
        st.session_state.radio_option = 'B'
    elif st.session_state.radio_option == 'B':
        st.session_state.radio_option = 'C'
    else:
        st.session_state.radio_option = 'A'

with col1:
    option_names = ['A','B','C']
    option = st.radio('Please select your target credit class',option_names,key='radio_option')
    #st.write('Selecting radio',st.session_state)

with col2:
    if option == 'AA':
        st.write("You have chosen 'A' :smile:")
    elif option == 'BB':
        st.write("You have chosen 'B' :smile:")
    elif option == 'CC':
        st.write("You have chosen 'C' :smile:")

