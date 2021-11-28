import csv
from datetime import date, timedelta
from random import randrange


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


def random_date(start: date, end: date) -> date:
    """
    This function will return a random date between two date
    objects.
    :param start: datetime.date
    :param end: datetime.date
    :return: datetime.date
    """
    delta = end - start
    return start + timedelta(days=randrange(delta.days))
