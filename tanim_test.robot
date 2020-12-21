*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${browser}    Chrome
${url}    https://twitter.com/login

*** Test Cases ***

First_Test
    open browser    ${url}    ${browser}
    TakeScreenshot and Log
    close browser

*** Keywords ***

TakeScreenshot and Log
    capture page screenshot
    log    "Taking Screenshot"