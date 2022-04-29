#from multiprocessing import connection
import streamlit as st
import pandas as pd
#from decouple import config
#from sqlalchemy import create_engine


st.title("Dashboard")
#engine_pass=config('')
#e=create_engine(engine_pass)
#connection = e.raw_connection() 

data=pd.read_csv('data/data.cvs')
st.write(data.head())





