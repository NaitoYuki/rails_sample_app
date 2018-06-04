# 開発者向け情報

## 開発環境

### 必要なツール

Docker for Mac / Windows

### セットアップ

```
$ docker-compose build
$ docker-compose run --rm app bin/setup
$ cp docker-compose.override.yml.example docker-compose.override.yml
```

### 実行

```
$ docker-compose up -d
```

http://localhost:3000

### 稼働中のコンテナのシェルに接続

```
$ docker-compose exec app bash
```

### Docker buildでできたnone削除

```
$ docker system prune
```

### 参考URL
