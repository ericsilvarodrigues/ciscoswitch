!Acessar o modo EXEC Privilegiado 
enable 

    !Configurar a Data e Hora do Switch
    clock Set 19:30:00 28 April 2022

    !Modo de Configuração Global
    configure terminal

        !Configuração do Hostname (Nome do Equipamento)
        hostname sw-01
        
        !Habilitar a Criptografia de Senha
        service password-encryption

        !Habilitar a Marcação de Data e Hora do Log 
        service timestamps log datetime msec

        !Desativar a Resolução de Nome 
        no ip domain-lookup

        !Configuração da Mensagem do dia 
        banner motd #AVISO acesso autorizado somente a funcionarios#   

        !Habilitando a senha do modo Enable 
        enable secret 123@senac 

        !Criar usuários de administração do Switch
        username senac secret 123@senac 

        !Acessar a Linha de Console 
        line console 0

        !Habilitando Login Local
        login local 

        !Habilitando o sincronismo dos Logs 
        logging synchronous

        !Habilitando o tempo de inatividade
        exec-timeout 5 30 

        !Sair de todos os Modos
        end (Ctrl + Z)

    !Salvando as configurações do Switch
    copy runnig-config startup-config

    !Verificando as configurações do Switch
    show runnig-config

========================================================================================================================
!Segundo Switch (sw-02)

!Acessar o modo EXEC Privilegiado 
enable 

    !Configurar Hora e Data do Switch
    clock Set 20:37:00  28 April 2022

    !Modo de Configuração Global
    configure terminal

         !Configuração do Hostname (Nome do Equipamento)
        hostname sw-02

        !Habilitar a Criptografia de Senha
        service password-encryption

         !Habilitar a Marcação de Data e Hora do Log 
        service timestamps log datetime msec

        !Desativar a Resolução de Nome 
        no ip domain-lookup

        !Configuração da Mensagem do dia 
        banner motd #AVISO acesso autorizado somente a funcionarios# 

        !Habilitando a senha do modo Enable 
        enable secret 123@senac 

        !Criar usuários de administração do Switch
        username senac secret 123@senac 

        !Acessar a Linha de Console 
        line console 0

        !Habilitando Login Local
        login local 

        !Habilitando o sincronismo dos Logs 
        logging synchronous

        !Habilitando o tempo de inatividade
        exec-timeout 5 30 

        !Sair de todos os Modos
        end (Ctrl + Z)

    !Salvando as configurações do Switch
    copy runnig-config startup-config

    !Verificando as configurações do Switch
    show runnig-config











    
