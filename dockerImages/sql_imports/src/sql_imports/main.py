import datetime
import os

from .create_exports import (create_test_medical_trajectory,
                             create_test_patients, create_test_prices,
                             create_test_trajectory_detail)
from .sql_utils import bulk_insert, clear_tables
from .utils import write_csv, get_ordered_csv
import logging
import uuid

if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    PREFIX_PATH = "/tmp"
    clear_tables()
    time_start = datetime.datetime.utcnow()
    logging.info('Truncated tables test_prices, test_patients, test_medical_trajectory, test_trajectory_detail')
    run_id = str(uuid.uuid4())
    logging.info(f'Starting creating imports at UTC time {time_start} with run id {run_id}')
    path_prices = os.path.join(PREFIX_PATH, f"test_prices{run_id}.csv")
    bulk_insert(
        write_csv(path_prices, create_test_prices()),
        "test_prices",
    )
    logging.info(f"test_prices finished {path_prices}")
    path_patients = os.path.join(PREFIX_PATH, f"test_patients{run_id}.csv")
    bulk_insert(
        write_csv(
            path_patients, create_test_patients()
        ),
        "test_patients",
    )
    logging.info(f'test_patients finished {path_patients}')
    path_trajectory = os.path.join(PREFIX_PATH, f"test_medical_trajectory{run_id}.csv")
    bulk_insert(
        write_csv(
            path_trajectory,
            create_test_medical_trajectory(),
        ),
        "test_medical_trajectory",
    )
    logging.info(f'test_medical_trajectory finished {path_trajectory}')
    path_trajectory_detail = os.path.join(PREFIX_PATH, f"test_trajectory_detail{run_id}.csv")
    bulk_insert(
        write_csv(
            path_trajectory_detail,
            create_test_trajectory_detail(),
        ),
        "test_trajectory_detail",
    )

    logging.info(f'test_trajectory_detail finished {path_trajectory_detail}')
    time_finish = datetime.datetime.utcnow()
    logging.info(f'Finished imports run_id {run_id} at UTC time {time_finish}')
    logging.info(f'Imports took {time_finish - time_start}')
