*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${browser}    Chrome
${url}    https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
First_Test
    open browser    ${url}    ${browser}
    close browser


