FROM python:3

WORKDIR /wikistream
RUN pip uninstall wikistream
COPY requirements.txt ./
COPY pgtest /bin
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

ENTRYPOINT ["./start.sh"]
CMD ["python", "./start.py"]
