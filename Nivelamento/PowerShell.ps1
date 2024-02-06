##PowerShell
write-host "Ola, mundo"
=============================Condicao
$a=3
$b=5
if ($a -gt $b) {write-host "A é maior que B"} else {write-host "B é maior que A"}
=============================Iterar
for ($i=1; $i -le 5; $i++) {write-host "iteracao $i"}
=============================Funcao
function Saudacao {param ([string]$nome) write-host "Ola, $nome!"}
Saudacao -nome "Amigo"
=============================Funcao
function Mensagem {param ([string]$nome, [string]$cumprimento="Ola ") write-host "$cumprimento, $nome!"}
Mensagem -nome "Amigo"
Mensagem -nome "Amigo" -cumprimento "Bom dia"
=============================Verica se existe Malwares no Registro
$chaveMaliciosa = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Ruun\EncryptorMalicioso"
if (Test-Path $chaveMaliciosa) {
	write-host "Removendo chave maliciosa do Registro..."
	Remove-Item -Path $chaveMaliciosa -Force
	write-Host "Chave maliciosa encontrada no Registro"
	} else {
		Write-Host "Nenhuma chave maliciosa encontrada no Registro."
	}
=============================Criptografa e descriptografa Mensagem
# Encryption Key (16,24, or 32 bytes)
$encryptionKey=[Text.Encoding]::UTF8.GetBytes("MySecretEncryptionKey")
# Text to Encryption
$textToEncryp = "SENAI 123"
#Convert the text to bytes
$bytesToEncrypt=[Text.Encoding]::UTF8.GetBytes($textToEncryp)

# Create AES encryption object
$aes=[System.Securuty.Cryptography.Aes]::Create()
$aes.Mode=[System.Security.Cryptography.CipherMode]::CBC
$aes.Padding=[System.Security.Cryptography.PaddingMode]::PKCS7

Saes=[System.Security.Cryptography.Aes]::Create()

$aes.Mode=[System.Security.Cryptography.CipherMode]::CBC
$aes.Padding=[System.Security.Cryptography.PaddingMode]::PKCS7

=============================Politicas de execucao
Get-ExecutionPolicy
Get-ProcessMitigation -System
Get-MpPreference | Select-Object -Property *Detection*

=============================Varredura de portas
Get-NetTCPConnection | Select-Object -Property LocalAddress, LocalPort, RemoteAddress, RemotePort, State Test-NetConnection -ComputerName localhost -Port 80 

Get-NetTCPConnection | Select-Object -Property LocalAddress, LocalPort, RemoteAddress, RemotePort, State
