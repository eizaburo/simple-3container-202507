# 3層 Containerアプリ

### 構造

- Web
- API
- DB

### 実行

#### docker compose

TOPディレクトリで以下を実行。

```
docker compose up -d
```

終了は、

```
docker compose down
```

#### Kubernetes

TOPディレクトリで以下を実行。

```
kubectl apply -f my_kuber_manifest.yml
```

終了は、

```
kubectl delete -f my_kuber_manifest.yml
```