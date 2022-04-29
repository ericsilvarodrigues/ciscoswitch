!Configuração do VTY (Terminais Virtuais)
enable
    configure terminal

    habilitando as linhas Virtuais
    line vty 0 4
        login local 
        loggin  synchronous
        exec-timeout 5 30

        !Habilitando o suporte aos Protocolos
        transport input all
        end 

    !Salvando as configurações 
    write

========================================================================================================================
!Segundo Switch (sw-02)

!Configuração do VTY (Terminais Virtuais)
enable
    configure terminal

    habilitando as linhas Virtuais
    line vty 0 4
        login local 
        loggin  synchronous
        exec-timeout 5 30

        !Habilitando o suporte aos Protocolos
        transport input all
        end 

    !Salvando as configurações 
    write



