## Alpine 环境初始化

```bash
sudo sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.cernet.edu.cn/alpine#g' /etc/apk/repositories
sudo apk update
sudo apk add zsh git rustup eza
```

## 克隆并部署配置文件

```bash
git clone --depth 1 https://github.com/mokurin000/dot_confi
mv dot_config/.z* .
rm -rf dot_config/
```

## 配置 Git 代理

```bash
git config --global http.proxy $http_proxy
git config --global https.proxy $https_proxy
```

## 安装 Zsh 插件管理器

```bash
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```

## 启动 Zsh

```bash
zsh
```

## 安装 Rust 工具链（Alpine）

```bash
rustup-init
```

## 安装 Rust 工具链（Arch）

```bash
rustup toolchain install nightly --profile minimal
```
