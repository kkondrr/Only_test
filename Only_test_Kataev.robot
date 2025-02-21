*** Settings ***
Library    Selenium2Library
Library    BuiltIn

*** Test Cases ***

№ 1. Проверка наличия "белого" футера на главной странице
    [Tags]    Smoke
    Open Browser    https://only.digital/ru    ff
    Maximize Browser Window
    Set Selenium Speed	3 sec
    ${status}    ${value} =    Run Keyword And Ignore Error    Element Should Be Visible    //footer[@class="Footer_root___6Q28"]
    Run Keyword If    '${status}' == 'FAIL'    FAIL        Футер не найден

№ 2. Проверка наличия кнопки TG в футере страницы Карьера
    [Tags]    Regress
    Open Browser    https://only.digital/ru    ff
    Maximize Browser Window
    Set Selenium Speed	3 sec
    Click Element    //button[@class="Header_burger__16aBb "]
    Click Element    //li/a[@href="/job"]
    ${status}    ${value} =    Run Keyword And Ignore Error    Element Should Be Visible    //footer/div[2]/a[3]  # кнопка tg
    Run Keyword If    '${status}' == 'FAIL'    FAIL        Кнопка tg не найдена