*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    http://demo.automationtesting.in/Register.html
${browser}    Chrome
${fname_loc_xpath}    xpath://input[@ng-model='FirstName']


*** Test Cases ***
Test002
    open browser    ${url}    ${browser}
    #set selenium speed    1 second
    #input text    locator Text
    input text    ${fname_loc_xpath}    Tanim01
    #sleep    2 seconds
    clear element text    ${fname_loc_xpath}
    input text    ${fname_loc_xpath}    Tanim01
    #give the name attriute value as locator and value attribute's value as data
    select radio button    radiooptions    Male
    # check box
    select checkbox    id:checkbox1
    select checkbox    id:checkbox3
    select from list by value    id:Skills      Python
    select from list by label    id:countries    India
    select from list by index    id:yearbox    65
    capture page screenshot    Test002.png
    close browser