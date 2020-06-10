*** Settings ***
Library     SeleniumLibrary    
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    Headlesschrome
${SiteUrl}    http://newtours.demoaut.com/
${user}       tutorial
${pwd}        tutorial

*** Test Cases ***
RegistrationTest
    Open My Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName    David
    Enter LastName     John
    Enter Phone    1234567890
    Enter Email    davidJohn@gmail.com
    Enter Address1     Toronto
    Enter Address2     Canada
    Enter City     Brampton
    Enter State    Ontario
    Enter Postal Code  L3S 1E7
    Select Country     CANADA
    Enter UserName     johnxyz
    Enter PassWord     johnxyz
    Enter Confirmed PassWord    johnxyz
    Click Submit
    Verify Successful Registration
    Close My Browsers