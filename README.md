# discord-sandbox
DiscordをTerraformを利用して色々お試しする環境。

## Require
 - Terraform v1.1.7

## 前準備
 - TFCのOrgに参加する
 - 本リポジトリを`git clone`する
 - `terraform login`を行い、発行されたTokenを入力する

## 運用方法
本リポジトリはサンドボックスなのでPRを作成せずそのままmainブランチにpushしてください。  
push後はTFCで自動applyされます。