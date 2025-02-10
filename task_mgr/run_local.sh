
# This environment variable tells flask how to find your app (so it can run it)
export FLASK_APP=app/routes.py
# This environment variable sets your environment to development, which enhances "debug mode"
export FLASK_ENV=development
# This enables debug mode, which also triggers "auto-reload"
export FLASK_DEBUG=1

flask run