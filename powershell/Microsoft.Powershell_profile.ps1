Set-PSReadlineOption -PredictionSource None

$shell_tools = "$ENV:GIT_HUB_HOME/shell-tools"
if (Test-Path -Path $shell_tools -PathType Container) {
  . $shell_tools\powershell\aws_connect.ps1
  . $shell_tools\powershell\rattler.ps1
  . $shell_tools\powershell\mamba.ps1

}

$omp_path = "$ENV:USERPROFILE\AppData\Local\Programs\oh-my-posh\"
if (Test-Path -Path $omp_path -PathType Container) {
  oh-my-posh init pwsh --config "$omp_path\themes\agnoster.minimal.omp.json" | Invoke-Expression
}