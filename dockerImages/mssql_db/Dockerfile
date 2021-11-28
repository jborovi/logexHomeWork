FROM mcr.microsoft.com/mssql/server:2019-latest
COPY ./src/entrypoint.sh /usr/src/app/entrypoint.sh
COPY ./src/import_data.sh /usr/src/app/import_data.sh
COPY ./sql_data/interview_db_schema.sql /usr/src/app/setup.sql
#COPY ./sql_data/interview_db_schema_rework.sql /usr/src/app/setup.sql
#RUN chmod +x /usr/src/app/entrypoint.sh
#RUN chmod +x /usr/src/app/import_data.sh
CMD /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P ${SA_PASSWORD} -Q "SELECT 1" || exit 1
CMD /bin/bash /usr/src/app/entrypoint.sh

