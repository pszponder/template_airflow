- Create makefile

Initialize Airflow project
```bash
mkdir -p ./dags ./logs ./plugins ./config
echo -e "AIRFLOW_UID=$(id -u)" > .env
```

Optionally download Wrapper Script (use to run CLI commands)
```bash
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/2.9.3/airflow.sh'
chmod +x airflow.sh
```

Run database migrations and create admin user
```bash
docker compose up airflow-init
```

Run Airflow
```bash
docker compose up -d [--build]
```

Clean Up The Environment
```bash
docker compose down --volumes --rmi all --remove-orphans
```