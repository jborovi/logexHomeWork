# Traject can contain the same activity multiple times.
# date_performed for all activities should be randomly distributed 2 years to the past.
import datetime
import random
import typing

import pyodbc
from dateutil.relativedelta import relativedelta

from .sql_conn import conn_str
from .utils import random_date


def create_test_prices() -> typing.List:
    """
    generate a random price for each activity id from table test_activities
    Prices should be in a range from 10 to 200
    :return List
    """
    output_columns = ("activity_id", "price")
    with pyodbc.connect(conn_str) as conn:
        cursor = conn.cursor()
        cursor.execute("SELECT id FROM test_activities;")
        records = cursor.fetchall()
        return [
            dict(zip(output_columns, (row[0], random.randrange(10, 201))))
            for row in records
        ]


def create_test_patients() -> typing.List:
    """
    generates data for 300.000 unique patients
    :return: List
    """
    return [
        {
            "patientid": None,
            "firstname": f"Firstname{i}",
            "lastname": f"Lastname{i}",
            "address": f"address{i}",
            "city": f"city{i}",
        }
        for i in range(0, 300000)
    ]


def create_test_trajectory_detail() -> typing.List:
    """
    generates 5.000.000 lines for test_trajectory_detail
    Activity_id has to be taken from test_activities table
    and activities should be randomly distributed,
    each traject must be mapped to at least 3 activities.
    :return: List
    """
    activities = []
    medical_trajectories = []
    with pyodbc.connect(conn_str) as conn:
        cursor = conn.cursor()
        cursor.execute("select id from test_activities;")
        activities = cursor.fetchall()
        cursor.execute("select traject_id from test_medical_trajectory;")
        medical_trajectories = cursor.fetchall()

    out = []
    count = 0
    for trajectory_id in medical_trajectories:
        for i in range(0, 3):
            out.append(
                {
                    "trajectory_id": trajectory_id[0],
                    "activity_id": activities[random.randrange(0, len(activities))][0],
                    "date_performed": random_date(
                        datetime.date.today() - relativedelta(years=2),
                        datetime.date.today(),
                    ),
                }
            )

        count += 3

    stop = False
    while not stop:
        trajectory_id = random.choice(medical_trajectories)
        out.append(
            {
                "trajectory_id": trajectory_id[0],
                "activity_id": activities[random.randrange(0, len(activities))][0],
                "date_performed": random_date(
                    datetime.date.today() - relativedelta(years=2),
                    datetime.date.today(),
                ),
            }
        )
        count += 1
        if count > 5000000 - 1:
            stop = True
    return out


def create_test_medical_trajectory() -> typing.List:
    """
    Map trajects to patients at random. Each of the patients must be mapped to at least 1 traject.
    Medical trajectory represents a single medical case.
    It starts with a patient being admitted to a hospital
    and ends with the patient being released home.
    It's always mapped to a single patient.
    There are multiple medical activities performed on the patient under one traject.
    Also, each patient can have multiple trajects within a year.
    :return: List
    """
    with pyodbc.connect(conn_str) as conn:
        cursor = conn.cursor()
        cursor.execute("select patientid from test_patients;")
        patients = cursor.fetchall()
        random.shuffle(patients)
        return [{"traject_id": None, "patient_id": i[0]} for i in patients]
