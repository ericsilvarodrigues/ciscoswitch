enable (Modo Privilegiado)
    configure terminal (Modo de Configuração Global)
        hostname sw-01 (Nome do Switch) 
        enable secret 123@senac (Senha Modo Privilegiado)   
        username senac secret 123@senac (Usuário e Senha de Admin)
        line console 0 (Acessando a linha console)
            login local (Habilitando a Autenticação)
            exit (saindo da linha console)
        exit (saindo do modo Configuração Global)
    copy running-config startup-config (Salvando a Configuração)


    enable (Modo Privilegiado)
    configure terminal (Modo de Configuração Global)
        hostname sw-02 (Nome do Switch) 
        enable secret 123@senac (Senha Modo Privilegiado)   
        username senac secret 123@senac (Usuário e Senha de Admin)
        line console 0 (Acessando a linha console)
            login local (Habilitando a Autenticação)
            exit (saindo da linha console)
        exit (saindo do modo Configuração Global)
    copy running-config startup-config (Salvando a Configuração)