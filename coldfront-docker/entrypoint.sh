#!/bin/bash

set -e

cd /app

if [ ! -f "/app/db.sqlite3" ]; then
    echo "Initializing ColdFront database..."
    echo "yes" | uv run coldfront initial_setup

    echo "Creating superuser..."
    uv run coldfront createsuperuser \
        --username admin \
        --email admin@example.com \
        --noinput || true

    uv run coldfront shell <<EOF
from django.contrib.auth import get_user_model
User = get_user_model()
user = User.objects.get(username="admin")
user.set_password("admin")
user.save()
EOF
fi

echo "Starting ColdFront server..."
exec env DEBUG=True uv run coldfront runserver 0.0.0.0:8000 --noreload