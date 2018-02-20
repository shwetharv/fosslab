
x=$(lsb_release -a)
echo "OS and version,release number,kernel version:$x"
echo "All available shells:"
cat /etc/shells
echo "Memory information: $(free -m)"
echo "CPU information: $(lscpu)"

