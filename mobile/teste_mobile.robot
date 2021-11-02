***Setting***
Resource    ./resource.robot

***Test Cases***
#caso de teste 01: Pesquisar canal “Adrenaline”
    #Abrir o aplicativo no celular
    #Buscar o canal “Adrenaline” 
    #Selecionar o canal na lista de busca 
    #Navegar pelo menu Playlist
    #Selecionar a primeira playlist do canal
    #Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube

caso de Teste 02: Logar no YouTube
    Abrir o aplicativo no celular
    Logar no aplicativo com a conta x
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

# Caso de Teste 03: Usar método Swipe na tela
#     Abrir o aplicativo no celular
#     # Entrar no menu “Explorar” --não existe nessa versão do youtube
#     Usar swipe de tela até o 10 item da tela
#     Clicar no vídeo