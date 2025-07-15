# nginxの公式イメージを使用
FROM nginx:bullseye

# カレントディレクトリのindex.htmlをnginxのデフォルトドキュメントルートにコピー
COPY index.html /usr/share/nginx/html/

# ポート80を公開
EXPOSE 80

# nginxをフォアグラウンドで実行
CMD ["nginx", "-g", "daemon off;"]