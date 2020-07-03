容器中的 Jekyll 环境

### 用法

```bash
# 构建镜像
./build.sh
# 进入博客目录
cd blog
# 启动容器，在容器中执行博客的构建和预览操作
docker run -it -v $(pwd):/blog --net host jekyll-env
```

### 在 github pages 上使用 Jekyll

参考 https://docs.github.com/cn/github/working-with-github-pages/creating-a-github-pages-site-with-jekyll

Dockerfile.github_page