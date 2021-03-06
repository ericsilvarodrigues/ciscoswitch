!Configuração do Roteador
Enable
    clock set 19:41:00 05 May 2022
    configure terminal
        hostname rt-01
        service timestamps log datetime msec
        service timestamps debug datetime msec 
        service password-encryption 
        no ip domain-lookup 
        banner motd #AVISO acesso autorizado somente a funcionarios#
         security passwords min-length 8
         enable secret 123@senac
         username senac password 123@senac
         username tatuape secret 123@senac
         line console 0
            login local
            logging synchronous 
            exec-timeout 5 30
            exit
            ip domain-name senac.br
            crypto key generate rsa general-keys modulus 1024 
            ip ssh version 2
            line vty 0 4
                login local 
                logging synchronous
                exec-timeout 5 30
                transporte input ssh
                exit 
            interface gigabitEthernet 0/0
                description Interface de Gateway da Rede LAN
                ip address 192.168.1.254 255.255.255.0
                no shutdown
                end
    write (copy running-config startup-config)

exit

show runnig-config
ip interface brief
ping 192.168.1.254
ping 192.168.1.250
ping 192.168.1.251
telnet 192.168.1.254
telnet 192.168.1.250
telnet 192.168.1.251





