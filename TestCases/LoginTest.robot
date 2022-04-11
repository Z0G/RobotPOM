*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  Chrome
${SiteURL}  https://demo.guru99.com/test/newtours/index.php
${user}     raihanshoumik@gmail.com
${pwd}      123

*** Test Cases ***
LoginTest
    Open My Browser     ${SiteURL}      ${Browser}
    Enter UserName      ${user}
    Enter Password      ${pwd}
    Click SignIn
    Sleep   3 seconds
    Verify Successful Login
    Close My Browsers
