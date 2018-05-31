# colleshare-web 開発者向け情報

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

- [Pivotal](https://www.pivotaltracker.com/n/projects/2166612)

- [デザイン](https://xd.adobe.com/spec/ea38ef9a-13f0-4ced-488d-e139edab3f22-9c09/)

- [Bootstrap](https://v4-alpha.getbootstrap.com/getting-started/introduction/)

- [モデル](https://cacoo.com/diagrams/sgT178N1JGuMe3wM#615C5)
