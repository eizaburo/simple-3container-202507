# PostgreSQL公式イメージを使用
FROM postgres:15

# 環境変数の設定
ENV POSTGRES_DB=testdb
ENV POSTGRES_USER=dbuser
ENV POSTGRES_PASSWORD=postgres

# 初期化スクリプトをコピー
COPY init.sql /docker-entrypoint-initdb.d/

# PostgreSQLの設定ファイルをコピー（リモート接続許可のため）
COPY postgresql.conf /etc/postgresql/postgresql.conf
COPY pg_hba.conf /etc/postgresql/pg_hba.conf

# ポート5432を公開
EXPOSE 5432