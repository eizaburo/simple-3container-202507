# Node.js の公式イメージを使用（Alpine版で軽量化）
FROM node:22-bullseye-slim

# 作業ディレクトリを設定
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー（依存関係のキャッシュ最適化）
COPY package*.json ./

# 依存関係をインストール
RUN npm ci --only=production

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションのポートを公開
EXPOSE 3000

# ヘルスチェックを追加
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node healthcheck.js || exit 1

# アプリケーションを起動
CMD ["node", "index.js"]