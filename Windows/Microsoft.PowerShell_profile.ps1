# 主题初始化（选择喜欢的主题）
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\hotstick.minimal.omp.json" | Invoke-Expression

# 别名
Set-Alias -Name up -Value cd..
function gis { git status @args }
function gig { git log --all --graph --decorate --oneline @args }
function giga { git log --all --graph --decorate @args }
function ll { Get-ChildItem -Force @args }

# 语法高亮 + 历史预测
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally

Set-PSReadLineOption -EditMode Vi

# Tab 弹出菜单
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# 基于历史的灰色提示条
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# 智能 cd
Invoke-Expression (& { (zoxide init powershell) -join "`n" })

$env:HTTP_PROXY="http://127.0.0.1:7890"
$env:HTTPS_PROXY="http://127.0.0.1:7890"
