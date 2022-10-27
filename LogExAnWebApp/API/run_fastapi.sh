gunicorn -w 4 -k uvicorn.workers.UvicornWorker backend:app -D
echo "FastAPI started at http://127.0.0.1:8000/ (BACKEND - local to the container)"