FROM bitnami/php-fpm:8.1

RUN rm -rf /var/lib/apt/lists
RUN apt-get clean
RUN echo 'Acquire::http::Pipeline-Depth 0;' >> /etc/apt/apt.conf
RUN echo 'Acquire::http::No-Cache true;' >> /etc/apt/apt.conf
RUN echo 'Acquire::BrokenProxy true;' >> /etc/apt/apt.conf
COPY ./badproxy /etc/apt/apt.conf.d/99fixbadproxy

RUN apt-get update -y

RUN apt-get install -y git build-essential autoconf gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgbm1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget libgbm-dev libxshmfence-dev iputils-ping
RUN pecl install xdebug -y
