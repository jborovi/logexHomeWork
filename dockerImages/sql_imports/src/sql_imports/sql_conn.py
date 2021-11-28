import os

server = os.getenv("SERVER")
driver = os.getenv("DRIVER")
PORT = os.getenv("PORT")
user = os.getenv("SQL_USER")
password = os.getenv("SQL_PASSWORD")
database = os.getenv("DATABASE")

conn_str = (
    f"DRIVER=;SERVER={server};UID={user};PWD={password};DATABASE={database};"
)
