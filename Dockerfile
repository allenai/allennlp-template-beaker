FROM allennlp/allennlp:v1.3.0-cuda11.0

COPY requirements.txt requirements.txt
RUN pip install --upgrade -r requirements.txt

COPY . .
