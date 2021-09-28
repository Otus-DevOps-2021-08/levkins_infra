# levkins_infra
levkins Infra repository

# Для подключения в одну команду вариант использования:
ssh -A leopold@62.84.113.81 "ssh leo-fed@10.128.0.28"

# Для создания alias я использую файл ~/.ssh/config со следующим содержимым (в связке с ssh-agent+keepass потому строка IdentityFile упущена):
Host bastion
HostName 62.84.113.81
User leopold

Host intro-bastion
HostName 62.84.113.81
User leopold
ForwardAgent true
RemoteCommand ssh leo-fed@10.128.0.28
RequestTTY true

# Совсем простая альтернатива:
alias intro-bastion='ssh -A leopold@62.84.113.81 "ssh leo-fed@10.128.0.28"'


bastion_IP = 62.84.113.81
someinternalhost_IP = 10.128.0.28

testapp_IP = 62.84.112.244

testapp_port = 9292
