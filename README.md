# levkins_infra
levkins Infra repository

#Для подключения в одну команду вариант использования:
ssh -A leopold@193.32.218.22 "ssh leo-fed@10.128.0.28"

#Для создания alias я использую файл ~/.ssh/config со следующим содержимым (в связке с ssh-agent+keepass потому строка IdentityFile упущена):
Host bastion
HostName 193.32.218.22
User leopold

Host intro-bastion
HostName 193.32.218.22
User leopold
ForwardAgent true
RemoteCommand ssh leo-fed@10.128.0.28
RequestTTY true

# Совсем простая альтернатива:
alias intro-bastion='ssh -A leopold@193.32.218.22 "ssh leo-fed@10.128.0.28"'
bastion_IP = 193.32.218.22
someinternalhost_IP = 10.128.0.28
