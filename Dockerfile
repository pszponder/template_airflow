FROM apache/airflow:${AIRFLOW_VERSION}
COPY requirements.txt /requirements.txt
RUN pip install --no-cahce-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt