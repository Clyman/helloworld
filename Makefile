install:
	pip install --upgrade pipm &&\
		pip install -r requirements.txt
		
format:
	black *.py
	
lint: 
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello helloworld.py
 
all: install format lint test
