FROM allennlp/allennlp:latest

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
