gunicorn -w 4 'frontend:app' -b 0.0.0.0:5000 -D
echo "FastAPI started at http://localhost:5000/ (FRONTEND - connected to host via bridge network)"