import pandas as pd
from sqlalchemy import create_engine

file_path = input("enter the location of the file ")
df_lap = pd.read_csv(f"{file_path}\\f1_lap_data.csv")
df_race = pd.read_csv(f"{file_path}\\f1_race_data.csv")

your_database = input("enter your database realted engine detail ")

engine = create_engine(your_database)

df_lap.to_sql(
        name="f1_lap_data",      
        con=engine,
        if_exists='replace',       
        index=False,
        chunksize=100000,            
        method='multi'             
    )

df_race.to_sql(
        name="f1_race_data",      
        con=engine,
        if_exists='replace',       
        index=False,
        chunksize=100000,            
        method='multi'             
    )