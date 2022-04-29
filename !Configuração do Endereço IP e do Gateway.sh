!Configuração do Endereço IP e do Gateway
enable
    configure terminal
    
    !Configurando o gateway no switch
    ip default-gateway 192.168.1.254

    !Configurando a WLAN1
    interface vlan 1

        !Configurar a descrição da interface 
        description Interface de SVI do Switch

        !Configurar o endereço IPv4
        ip address 192.168.1.250 255.255.255.0

        !Habilitar a Interface SVI 
        no shutdown
        end     
    write
show running-config

========================================================================================================================
!Segundo Switch (sw-02)

!Configuração do Endereço IP e do Gateway
enable
    configure terminal
    
    !Configurando o gateway no switch
    ip default-gateway 192.168.1.254

    !Configurando a WLAN1
    interface vlan 1

        !Configurar a descrição da interface 
        description Interface de SVI do Switch

        !Configurar o endereço IPv4
        ip address 192.168.1.251 255.255.255.0

        !Habilitar a Interface SVI 
        no shutdown
        end     
    write
show running-config



