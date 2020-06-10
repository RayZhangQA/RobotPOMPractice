*** Settings ***
Library      SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Keywords ***
Open My Browser
    [Arguments]     ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window
    
Click Register Link
    Click Link    ${link_Reg}
    
Enter FirstName
    [Arguments]    ${firstName}
    Input Text     ${txt_firstName}    ${firstName}
    
Enter LastName
    [Arguments]    ${lastName}
    Input Text     ${txt_lastName}    ${lastName}
    
Enter Phone
    [Arguments]    ${phone}
    Input Text     ${txt_phone}    ${phone}
    
Enter Email
    [Arguments]    ${email}
    Input Text     ${txt_email}    ${email}
    
Enter Address1
    [Arguments]    ${add1}
    Input Text     ${txt_add1}    ${add1}
    
Enter Address2
    [Arguments]    ${add2}
    Input Text     ${txt_add2}    ${add2}
    
Enter City
    [Arguments]    ${city}
    Input Text     ${txt_city}    ${city}
    
Enter State
    [Arguments]    ${state}
    Input Text     ${txt_state}    ${state}
    
Enter Postal Code
    [Arguments]    ${postCode}
    Input Text     ${txt_postCode}    ${postCode}
    
Select Country
    [Arguments]    ${country}
    Select From List By Label     ${drp_country}    ${country}
    
Enter UserName
    [Arguments]    ${userName}
    Input Text     ${txt_userName}    ${userName}
    
Enter PassWord
    [Arguments]    ${passWord}
    Input Text     ${txt_passWord}    ${passWord}
    
Enter Confirmed PassWord
    [Arguments]    ${confPwd}
    Input Text     ${txt_confPwd}    ${confPwd}
    
Click Submit
    Click Button    ${btn_submit}
    
Verify Successful Registration
    Page Should Contain    Thank you for registering.
    
Close My Browsers
    Close All Browsers  