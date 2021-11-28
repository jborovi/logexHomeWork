from setuptools import find_packages, setup

setup(
    name="sql_imports",
    version="0.1.0",
    packages=find_packages(include=["sql_imports", "sql_imports.*"]),
)
