FROM mysql:8.0
ENV LANG ja_JP.UTF-8

# ログの保管場所の作成
RUN mkdir /var/log/mysql
RUN touch /var/log/mysql/mysql.log

# 設定を配置
COPY ./settings/conf.d/my.cnf /etc/mysql/conf.d/
