runreq:
	pip install -r requirements.txt

runAlltests:
	python -m robot -d logs -i @casasbahia -L debug test/casas_bahia.robot

runPtests:
	python -m robot -d logs -i @positive -L debug test/casas_bahia.robot

runNtests:
	python -m robot -d logs -i @negative -L debug test/casas_bahia.robot

run1test:
	python -m robot -d logs -i @1test -L debug test/casas_bahia.robot

runMetrics:
	robotmetrics -M metrics-dashboard.html --inputpath ./logs/ --output output.xml