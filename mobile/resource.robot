***Settings***
Documentation  Simple example using AppiunLibrary
Library  AppiumLibrary 


***Variables***
${urL_appium_server}          http://localhost:4723/wd/hub
&{AppiumCapabilities}         platformName=Android
...                           platformVersion=10.0
...                           deviceName=Pixel 2 API 29
...                           automationName=UiAutomator2
...                           appPackage=com.google.android.youtube
...                           appium:appActivity=com.google.android.apps.youtube.app.WatchWhileActivity

&{Home}                       icone_busca=accessibility_id=Search
...                           campo_texto_busca=search_edit_text
...                           icone_home=accessibility_id=Home
# ...                           icone_trending=accessibility_id=Trending   --Foi retirado na atualização do App
...                           icone_shorts=id=com.google.android.youtube:id/text
...                           icone_subscriptions=accessibility_id=Subscriptions
...                           icone_notifications=accessibility_id=Notifications
...                           icone_library=accessibility_id=Library
...                           icone_account=//android.widget.ImageView[@content-desc="Account"]
...                           switch_account=id=com.google.android.youtube:id/switch_account
...                           sign_out_footer=id=com.google.android.youtube:id/sign_out_footer
...                           button=id=com.google.android.youtube:id/button
...                           relativeLayout=//android.widget.RelativeLayout[@content-desc="Lorrainny Ferreira Silva,No channel"]
...                           recyclerView=//android.support.v7.widget.RecyclerView[@content-desc="filters"]/android.widget.LinearLayout[1]
...                           viewGroup=//android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.view.ViewGroup[1]
...                           openVideo=//android.view.ViewGroup/android.support.v7.widget.RecyclerView/android.view.ViewGroup[3]

&{Resultados_busca}           canais_sugeridos=channel_item

&{canais}                     playlist=accessibility_id=Playlists
...                           lista_playlist=//android.view.ViewGroup[@content-desc="12ª geração Intel Core - by Adrenaline - 2 videos"]

                  

***keywords***
Abrir o aplicativo no celular 
    Open Application    ${urL_appium_server}  &{AppiumCapabilities}

Buscar o canal “${buscar_canal}” 
    [Documentation]   Keyword responsavel por fazer uma busca dentro do youtube app.
    ...               partir de uma string vinda do teste.
    Wait Until Element Is Visible        ${Home.icone_busca}        30
    Click Element                        ${Home.icone_busca}
    Wait Until Element Is Visible        ${Home.campo_texto_busca}
    Input Text                           ${Home.campo_texto_busca}        ${buscar_canal}
    Press Keycode                        66

Selecionar o canal na lista de busca 
    Wait Until Element Is Visible        ${Resultados_busca.canais_sugeridos}
    Click Element                        ${Resultados_busca.canais_sugeridos}

Navegar pelo menu Playlist
    Wait Until Element Is Visible        ${canais.playlist}
    Click Element                        ${canais.playlist}

Selecionar a primeira playlist do canal
    Wait Until Element Is Visible         ${canais.lista_playlist}
    @{lista_playlist}                     Get Webelements   ${canais.lista_playlist}
    Click Element                         ${lista_playlist}[0]
  
Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Wait Until Element Is Visible        ${Home.icone_home}
    Click Element                        ${Home.icone_home}
    Wait Until Element Is Visible        ${Home.icone_shorts}
    Click Element                        ${Home.icone_shorts}
    Wait Until Element Is Visible        ${Home.icone_subscriptions}
    Click Element                        ${Home.icone_subscriptions}
    Wait Until Element Is Visible        ${Home.icone_notifications}
    Click Element                        ${Home.icone_notifications}
    Wait Until Element Is Visible        ${Home.icone_library}    
    Click Element                        ${Home.icone_library}
   
Logar no aplicativo com a conta x
    Wait Until Element Is Visible       ${Home.icone_account}                60
    Click Element                       ${Home.icone_account}
    Wait Until Element Is Visible       ${Home.switch_account}               60
    Click Element                       ${Home.switch_account}
    Wait Until Element Is Visible       ${Home.sign_out_footer}              60
    Click Element                       ${Home.sign_out_footer}
    Sleep  3s
    Wait Until Element Is Visible       ${Home.icone_account}                60
    Click Element                       ${Home.icone_account}
    Wait Until Element Is Visible       ${Home.button}                       60
    Click Element                       ${Home.button}
    Wait Until Element Is Visible       ${Home.relativeLayout}               60
    Click Element                       ${Home.relativeLayout}

Entrar no menu “Explorar”
    Wait Until Element Is Visible      ${Home.recyclerView}       30          
    Click Element                      ${Home.recyclerView}

Usar swipe de tela até o 10 item da tela
    Wait Until Element Is Visible      ${Home.viewGroup}
    Swipe                               473  1890  493   415  500
    Swipe                               473  1890  493   415  500
    Swipe                               473  1890  493   415  500

Clicar no vídeo
    Wait Until Element Is Visible       ${Home.openVideo}
    Click Element                       ${Home.openVideo}







