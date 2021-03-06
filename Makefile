setup:
	python3 -m venv my_env
	source my_env/bin/activate

install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

lint:
	pylint --disable=R,C app.py
	
run:
	python app.py
	
all:
	setup install lint run
	