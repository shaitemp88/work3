FROM python:3.6-alpine as server
WORKDIR /app
# Copy all packages instead of rerunning pip install
COPY ["./Code","./"]
ENV aws_access_key_id="AKIA5253WURQMRTO2SK2"
ENV aws_secret_access_key="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"
ENV region="eu-west-1"
RUN pip install -r requirements.txt
CMD ["python", "run_app.py"]
