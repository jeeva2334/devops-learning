FROM python:3.9
ADD hello.py .
CMD [“python3”, “./hello.py”] 
