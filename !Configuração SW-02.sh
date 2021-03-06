!
version 15.0
service timestamps log datetime msec
no service timestamps debug datetime msec
service password-encryption
!
hostname sw-01
!
enable secret 5 $1$mERr$3O.pM7PScAETpkhlqaEiE.
!
!
!
ip ssh version 2
no ip domain-lookup
ip domain-name senac.br
!
username senac secret 5 $1$mERr$3O.pM7PScAETpkhlqaEiE.
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
!
interface FastEthernet0/1
!
interface FastEthernet0/2
!
interface FastEthernet0/3
!
interface FastEthernet0/4
!
interface FastEthernet0/5
!
interface FastEthernet0/6
!
interface FastEthernet0/7
!
interface FastEthernet0/8
!
interface FastEthernet0/9
!
interface FastEthernet0/10
!
interface FastEthernet0/11
!
interface FastEthernet0/12
!
interface FastEthernet0/13
!
interface FastEthernet0/14
!
interface FastEthernet0/15
!
interface FastEthernet0/16
!
interface FastEthernet0/17
!
interface FastEthernet0/18
!
interface FastEthernet0/19
!
interface FastEthernet0/20
!
interface FastEthernet0/21
!
interface FastEthernet0/22
!
interface FastEthernet0/23
!
interface FastEthernet0/24
!
interface GigabitEthernet0/1
!
interface GigabitEthernet0/2
!
interface Vlan1
 description Interface de SVI do Switch
 ip address 192.168.1.250 255.255.255.0
!
ip default-gateway 192.168.1.254
!
banner motd ^CAVISO acesso autorizado somente a funcionarios^C
!
!
!
line con 0
 logging synchronous
 login local
 exec-timeout 5 30
!
line vty 0 4
 exec-timeout 5 30
 logging synchronous
 login local
 transport input ssh
line vty 5 15
 login
!
!
!
!
end


sw-01#enable
sw-01#
sw-01#
sw-01#exit

[Connection to 192.168.1.250 closed by foreign host]
C:\>ex
Invalid Command.

C:\>ssh -l senac 192.168.1.251

Password: 
% Login invalid


Password: 
% Login invalid


Password: 

AVISO acesso autorizado somente a funcionarios

sw-02>enable 
Password: 
Password: 
sw-02#show ru
sw-02#show running-config 
Building configuration...

Current configuration : 1511 bytes
!
version 15.0
service timestamps log datetime msec
no service timestamps debug datetime msec
service password-encryption
!
hostname sw-02
!
enable secret 5 $1$mERr$3O.pM7PScAETpkhlqaEiE.
!
!
!
ip ssh version 2
no ip domain-lookup
ip domain-name senac.br
!
username senac secret 5 $1$mERr$3O.pM7PScAETpkhlqaEiE.
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
!
interface FastEthernet0/1
!
interface FastEthernet0/2
!
interface FastEthernet0/3
!
interface FastEthernet0/4
!
interface FastEthernet0/5
!
interface FastEthernet0/6
!
interface FastEthernet0/7
!
interface FastEthernet0/8
!
interface FastEthernet0/9
!
interface FastEthernet0/10
!
interface FastEthernet0/11
!
interface FastEthernet0/12
!
interface FastEthernet0/13
!
interface FastEthernet0/14
!
interface FastEthernet0/15
!
interface FastEthernet0/16
!
interface FastEthernet0/17
!
interface FastEthernet0/18
!
interface FastEthernet0/19
!
interface FastEthernet0/20
!
interface FastEthernet0/21
!
interface FastEthernet0/22
!
interface FastEthernet0/23
!
interface FastEthernet0/24
!
interface GigabitEthernet0/1
!
interface GigabitEthernet0/2
!
interface Vlan1
 description Interface de SVI do Switch
 ip address 192.168.1.251 255.255.255.0
!
ip default-gateway 192.168.1.254
!
banner motd ^CAVISO acesso autorizado somente a funcionarios^C
!
!
!
line con 0
 logging synchronous
 login local
 exec-timeout 5 30
!
line vty 0 4
 exec-timeout 5 30
 logging synchronous
 login local
 transport input ssh
line vty 5 15
 login
!
!
!
!
end