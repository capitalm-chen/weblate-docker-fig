FROM ubuntu:14.04

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install \
    git \
    python-babel \
    python-django \
    python-django-crispy-forms \
    python-libravatar \
    python-memcache \
    python-mysqldb \
    python-pil \
    python-pip \
    python-whoosh \
    translate-toolkit

RUN pip install \
    oauthlib \
    python-social-auth \
    South \
    https://github.com/SmileyChris/pyuca/archive/master.zip

ADD weblate /usr/lib/weblate
ADD settings.py /usr/lib/weblate/weblate/
ADD settings_user_default.py /usr/lib/weblate/weblate/
ADD entrypoint.sh /
ADD run.sh /usr/local/bin/
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8000
CMD ["/usr/local/bin/run.sh"]

