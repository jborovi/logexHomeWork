# Traject can contain the same activity multiple times.
# date_performed for all activities should be randomly distributed 2 years to the past.
import datetime
import itertools
import random
import typing
from operator import itemgetter

import pyodbc
from dateutil.relativedelta import relativedelta

from .sql_conn import conn_str
from .utils import random_date
import logging
logging.basicConfig(level=logging.INFO)

NUM_PATIENTS = 300000


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
        for i in range(0, NUM_PATIENTS)
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
        cursor.execute("select patient_id, traject_id from test_medical_trajectory order by patient_id;")
        medical_trajectories = [[i[0], i[1]] for i in cursor.fetchall()]

    out = []
    patient_last_date = {}
    traject_min = {}
    traject_max = {}
    for patient_id, trajectory_id in medical_trajectories:
        for i in range(0, 3):
            rand_date = random_date(
                        datetime.date.today() - relativedelta(years=2),
                        datetime.date.today(),
                    )
            try:
                if patient_last_date[patient_id] > rand_date:
                    rand_date = random_date(
                        patient_last_date[patient_id],
                        datetime.date.today(),
                    )
            except KeyError:
                pass
            patient_last_date[patient_id] = rand_date
            out.append(
                {
                    "trajectory_id": trajectory_id,
                    "activity_id": activities[random.randrange(0, len(activities))][0],
                    "date_performed": rand_date,
                }
            )
            try:
                if traject_min[trajectory_id] > rand_date:
                    traject_min[trajectory_id] = rand_date
            except KeyError:
                traject_min[trajectory_id] = rand_date
            try:
                if traject_max[trajectory_id] < rand_date:
                    traject_max[trajectory_id] = rand_date
            except KeyError:
                traject_max[trajectory_id] = rand_date

    while len(out) < 5000000:
        patient_id, trajectory_id = random.choice(medical_trajectories)
        rand_date = random_date(
            traject_min[trajectory_id],
            traject_max[trajectory_id],
        )
        out.append(
            {
                "trajectory_id": trajectory_id,
                "activity_id": activities[random.randrange(0, len(activities))][0],
                "date_performed": rand_date,
            }
        )
    return out


# def create_test_trajectory_detail() -> typing.List:
#     """
#     generates 5.000.000 lines for test_trajectory_detail
#     Activity_id has to be taken from test_activities table
#     and activities should be randomly distributed,
#     each traject must be mapped to at least 3 activities.
#     :return: List
#     """
#     activities = []
#     patients_medical_trajectories = []
#     with pyodbc.connect(conn_str) as conn:
#         cursor = conn.cursor()
#         cursor.execute("select id from test_activities;")
#         activities = cursor.fetchall()
#         cursor.execute("select patient_id, traject_id from test_medical_trajectory order by patient_id, traject_id")
#         patients_medical_trajectories = [[i[0], i[1]] for i in cursor.fetchall()]
#
#     out = []
#     count = 0
#     # for trajectory_id in medical_trajectories:
#     #     for i in range(0, 3):
#     #         # get_latest_date_traject(trajectory_id[0], conn)
#     #         out.append(
#     #             {
#     #                 "trajectory_id": trajectory_id[0],
#     #                 "activity_id": activities[random.randrange(0, len(activities))][0],
#     #                 "date_performed": random_date(
#     #                     datetime.date.today() - relativedelta(years=2),
#     #                     datetime.date.today(),
#     #                 ),
#     #             }
#     #         )
#     #
#     #     count += 3
#     #
#     stop = False
#     #trajectory_id = random.choice(medical_trajectories)
#     #assign random dates in last 2 years to random activities X 5.000.000 and sort by date
#     #to assign later to trajects with patients,
#     #so patient with multiple trajects dont overlap same patients traject with different traject_id by date_performed
#     activities_list = []
#     while not stop:
#         activities_list.append(
#             {
#                 "trajectory_id": 'X',
#                 "activity_id": activities[random.randrange(0, len(activities))][0],
#                 "date_performed": random_date(
#                     datetime.date.today() - relativedelta(years=2),
#                     datetime.date.today(),
#                 ),
#             }
#         )
#         count += 1
#         if count > 5000000 - 1:
#             stop = True
#     activities_list.sort(key=itemgetter('date_performed'), reverse=False)
#
#
#     count_activity = 0
#     out = []
#     activity_per_traject = int(len(activities_list) / len(patients_medical_trajectories))
#     tmp = patients_medical_trajectories
#
#     count = 0
#     iter = 0
#     last_patient_id = None
#     for data in list(tmp):
#         patient_id = data[0]
#         traject_id = data[1]
#         for z in range(0, activity_per_traject):
#             out.append(
#                 {
#                     "trajectory_id": traject_id,
#                     "activity_id": activities_list[count]['activity_id'],
#                     "date_performed":  activities_list[count]['date_performed'],
#                 }
#             )
#             logging.info(len(out))
#             count += 1
#         if last_patient_id is not None and last_patient_id == patient_id:
#             tmp.pop(iter)
#             iter += 1
#             continue
#         last_patient_id = patient_id
#
#
#     # for activity in activities_list:
#     #     last_patient_id = None
#     #     iter = 0
#     #     for data in list(tmp):
#     #         patient_id = data[0]
#     #         traject_id = data[1]
#     #         for z in range(0, activity_per_traject):
#     #             out.append(
#     #                 {
#     #                     "trajectory_id": traject_id,
#     #                     "activity_id": activity['activity_id'],
#     #                     "date_performed": activity['date_performed'],
#     #                 }
#     #             )
#     #             logging.info(len(out))
#     #         if last_patient_id is not None and last_patient_id == patient_id:
#     #             tmp.pop(iter)
#     #             iter += 1
#     #             continue
#     #         last_patient_id = patient_id
#     return out


def get_latest_date_traject(traject_id: int, conn):
    cursor = conn.cursor()
    sql = "select * from test_patients where patientid = 1"
        # sql = "select tmt.patient_id, tmt.traject_id," \
        #       "ttd.date_performed from test_medical_trajectory tmt" \
        #       "INNER join test_trajectory_detail ttd on ttd.traject_id = tmt.traject_id"
    cursor.execute(sql)
    traject_details = cursor.fetchall()
    #print(traject_details)
        # random.shuffle(patients)



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
        patients = [i[0] for i in cursor.fetchall()]
        random.shuffle(patients)
        #add one traject for patient
        trajects_1 = [{"traject_id": None, "patient_id": i} for i in patients]
        #add one more traject to some random patients
        random_trajects = [{"traject_id": None, "patient_id": i} for i in random.sample(patients, random.randrange(1, NUM_PATIENTS))]
        return trajects_1 + random_trajects


#select tmt.patient_id, tmt.traject_id, MIN(ttd.date_performed), MAX(ttd.date_performed) from test_medical_trajectory tmt INNER join test_trajectory_detail ttd on ttd.traject_id = tmt.traject_id group by tmt.patient_id, tmt.traject_id order by patient_id, traject_id