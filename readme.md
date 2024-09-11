WindowsであればスタートメニューからPowerShellを立ち上げる。
Macであれば以下のURLからPowerShellをインストールして、`pwsh`コマンドでPowerShellを立ち上げる。
https://learn.microsoft.com/ja-jp/powershell/scripting/install/installing-powershell-on-macos?view=powershell-7.4

### LookerのURL、APIキーを変数に保存

```
$HostUrl = "https://example.cloud.looker.com"
$ApiKeyClientKey = ""
$ApiKeyClientSecret = ""
```

### API呼び出し用の一次トークンを取得する

```
$ApiToken = $(./api_login -HostUrl $HostUrl -ApiKeyClientKey $ApiKeyClientKey -ApiKeyClientSecret $ApiKeyClientSecret)
```

### ユーザー一覧の取得

```
./list_users -HostUrl $HostUrl -ApiToken $ApiToken
```

### ユーザーの新規作成

```
./create_user -HostUrl $HostUrl -ApiToken $ApiToken -Email t.tanaka@example.com -FirstName Tarou -LastName Tanaka -GroupIds @(2) -RoleIds @(2)
```

### ユーザーの更新

```
./update_user -HostUrl $HostUrl -ApiToken $ApiToken -UserId 709 -Email t.tanaka@example.com -FirstName Tarou -LastName Tanaka -GroupIds @(2) -RoleIds @(2)
```

### ユーザーの削除

```
./delete_user -HostUrl $HostUrl -ApiToken $ApiToken -UserId 709 
```
