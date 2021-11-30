import csv
import operator
from datetime import date, timedelta
from random import randrange
import logging

logging.basicConfig(level=logging.INFO)

def write_csv(file: str, values: list) -> str:
    """
    writes/overwrites csv file
    :param file: path to file str
    :param values: values to write (list of dicts)
    :return: path to file (str)
    """
    with open(file, "w", newline="", encoding="utf8") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=values[0].keys())
        writer.writeheader()
        for row in values:
            writer.writerow(row)
    return file


def get_ordered_csv(file:str, order_by: int):
    data = csv.reader(open(file), delimiter=',')
    # sort data on the basis of age
    data = sorted(data, key=operator.itemgetter(order_by))
    return data


def random_date(start: date, end: date) -> date:
    """
    This function will return a random date between two date
    objects.
    :param start: datetime.date
    :param end: datetime.date
    :return: datetime.date
    """
    delta = end - start
    if delta.days == 0:
        return start
    return start + timedelta(days=randrange(delta.days))
