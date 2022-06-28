IF NOT EXIST mkcert.exe powershell Invoke-WebRequest https://github.com/FiloSottile/mkcert/releases/download/v1.4.1/mkcert-v1.4.1-windows-amd64.exe -UseBasicParsing -OutFile mkcert.exe
mkcert -install
REM del /Q /S *.crt
REM del /Q /S *.key
REM mkcert -cert-file secrets\tls\global-cm\tls.crt -key-file secrets\tls\global-cm\tls.key "cm.globalhost"
REM mkcert -cert-file secrets\tls\global-cd\tls.crt -key-file secrets\tls\global-cd\tls.key "cd.globalhost"
REM mkcert -cert-file secrets\tls\global-id\tls.crt -key-file secrets\tls\global-id\tls.key "id.globalhost"

mkcert -cert-file secrets\tls\global-hrz\tls.crt -key-file secrets\tls\global-hrz\tls.key "hrz.globalhost"