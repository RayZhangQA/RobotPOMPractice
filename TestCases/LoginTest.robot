*** Settings ***
Library     SeleniumLibrary    
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}    Headlesschrome
${SiteUrl}    http://newtours.demoaut.com/
${user}       tutorial
${pwd}        tutorial

*** Test Cases ***
LoginTest
    Open My Browser    ${SiteUrl}    ${Browser}
    Enter UserName    ${user}
    Enter PassWord    ${pwd} 
    Click SignIn
    Verify Successful Login
    Close My Browsers