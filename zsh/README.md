### My .zshrc
zplugでプラグイン管理しようと思っていたが（書き方が悪くて）以上に遅かったので，oh-my-zshでプラグイン管理


開発しているoh-my-zshはなぜかgit上だと見れないので，外部プラグインは適宜インストールする必要がある

この設定の再現方法


* oh-my-zshのインストール（一応このリポジトリで管理）
* oh-my-zsh以外の外部プラグインのダウンロード（/.oh-my-zsh/custom/plugins配下に）

以下が現在インストールしている外部プラグイン一覧
- zsh-syntax-highlighting
- zsh-autosuggestions

themeはbullet-trainを使っているので，/.oh-my-zsh/custom配下にbullet-train.zsh-themeファイルを作成して配置しておく必要がある(ファイルの中身は[これ](https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme))
