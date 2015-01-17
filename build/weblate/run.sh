#!/bin/sh

alias weblate='python /usr/lib/weblate/manage.py'
cd /usr/lib/weblate
echo no | weblate syncdb --migrate || exit $?
weblate createadmin 2>/dev/null
weblate runserver 0.0.0.0:8000

