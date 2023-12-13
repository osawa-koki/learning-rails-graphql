# learning-rails-graphql

🍥🍥🍥 `Ruby on Rails`でGraphQLを使うためのサンプルプロジェクトです！  

## 成果物

### クエリ

![成果物(クエリ)](./docs/images/fruit.query.gif)  

### ミュテーション・作成

![成果物(ミュテーション・作成)](./docs/images/fruit.mutation-create.gif)  

### ミュテーション・更新

![成果物(ミュテーション・更新)](./docs/images/fruit.mutation-update.gif)  

### ミュテーション・削除

![成果物(ミュテーション・削除)](./docs/images/fruit.mutation-delete.gif)  

## 実行方法

```shell
docker build -t learning-rails-graphql .
docker run -d -p 8000:8000 --rm --name learning-rails-graphql learning-rails-graphql
```
