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
...                           icone_trending=accessibility_id=Trending
...                           icone_subscriptions=accessibility_id=Subscriptions
...                           icone_notifications=accessibility_id=Notifications
...                           icone_library=accessibility_id=Library
...                           icone_login=accessibility_id=Account

&{Login}                      sign_in=id=com.google.android.youtube:id/button
...                           accounts=id=com.google.android.youtube:id/name
...                           email=//*[@resource-id='identifierId']
...                           next_email=//android.widget.Button[@text='NEXT']
...                           senha=//android.view.View/android.view.View[2]/android.view.View
...                           next_senha=//android.view.View[1]/android.view.View[4]/android.view.View/android.widget.Button
...                           i_gree=



&{Resultados_busca}           canais_sugeridos=channel_item

&{canais}                     playlist=accessibility_id=Playlists
...                           lista_playlist=playlist_item

                  

***keywords***
Abrir o aplicativo no celular 
    Open Application    ${urL_appium_server}  &{AppiumCapabilities}

Buscar o canal “${buscar_canaL}” 
    [Documentation]   Keyword responsavel por fazer uma busca dentro do youtube app.
    ...               partir de uma string vinda do teste.
    Wait Until Element Is Visible        ${Home.icone_busca}
    Click Element                        ${Home.icone_busca}
    Wait Until Element Is Visible        ${Home.campo_texto_busca}
    Input Text                           ${Home.campo_texto_busca}        ${buscar_canaL}
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
    Wait Until Element Is Visible        ${Home.icone_trending}
    Click Element                        ${Home.icone_trending}
    Wait Until Element Is Visible        ${Home.icone_subscriptions}
    Click Element                        ${Home.icone_subscriptions}
    Wait Until Element Is Visible        ${Home.icone_notifications}
    Click Element                        ${Home.icone_notifications}
    Wait Until Element Is Visible        ${Home.icone_library}    
    Click Element                        ${Home.icone_library}
   
Logar no aplicativo com a conta x
    Wait Until Element Is Visible        ${Home.icone_login}
    Click Element                        ${Home.icone_login}
    Wait Until Element Is Visible        ${Login.sign_in}
    Click Element                        ${Login.sign_in}
    Wait Until Element Is Visible        ${Login.accounts}
    Click Element                        ${Login.accounts}
    Wait Until Element Is Visible        ${Login.email}
    Click Element                        ${Login.email}
    Input Text                           ${Login.email}  qalorrainny
    Wait Until Element Is Visible        ${Login.next_email}
    Click Element                        ${Login.next_email}
    Wait Until Element Is Visible        ${Login.senha}
    Click Element                        ${Login.senha}
    Input Text                           ${Login.senha}  qa25010308
    # Wait Until Element Is Visible        ${Login.i_gree}
    # Click Element                        ${Login.i_gree}







