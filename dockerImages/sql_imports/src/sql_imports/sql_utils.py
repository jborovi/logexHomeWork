import pyodbc

from .sql_conn import conn_str
import logging

def bulk_insert(file: str, table: str) -> None:
    """
    :param file: path to csv bulk file (str)
    :param table: table name to import to (str)
    :return: None
    """
    sql = (
        f"BULK INSERT {table} "
        f"FROM '{file}' "
        "WITH "
        "("
        "FIRSTROW = 2,"
        "FIELDTERMINATOR = ',',"
        "ROWTERMINATOR = '\n',"
        "TABLOCK"
        ")"
    )
    with pyodbc.connect(conn_str) as conn:
        cursor = conn.cursor()
        cursor.execute(sql)


def clear_tables() -> None:
    """
    truncates tables needed where we import data
    :return: None
    """
    with pyodbc.connect(conn_str) as conn:
        cursor = conn.cursor()
        try:
            cursor.execute("TRUNCATE table test_prices;")
            cursor.execute("TRUNCATE table test_patients;")
            cursor.execute("TRUNCATE table test_medical_trajectory;")
            cursor.execute("TRUNCATE table test_trajectory_detail;")
        except pyodbc.ProgrammingError as e:
            logging.error('Database is not ready yet, will try run import script a bit later')
            logging.error(str(e))
            raise e
