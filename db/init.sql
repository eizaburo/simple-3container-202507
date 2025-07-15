-- init.sql
-- データベースとユーザーの作成はENV変数で自動的に行われる
-- dbuserをスーパーユーザーにする
ALTER USER dbuser WITH SUPERUSER;

-- testdbに接続してテーブルを作成
\c testdb;

-- テーブルの作成
CREATE TABLE IF NOT EXISTS inquiries(
    id SERIAL PRIMARY KEY,
    title VARCHAR(256),
    email VARCHAR(256),
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- テストデータの挿入
INSERT INTO inquiries(title, email, message) VALUES('hoge', 'hoge@test.local', 'hello hoge');
INSERT INTO inquiries(title, email, message) VALUES('fuga', 'fuga@test.local', 'hello fuga');