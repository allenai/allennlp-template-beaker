FROM allennlp/allennlp:v1.0.0

COPY requirements.txt requirements.txt
RUN pip install --upgrade -r requirements.txt

COPY . .
