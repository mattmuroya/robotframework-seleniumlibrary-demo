*** Settings ***
Documentation      Demo test suite for https://the-internet.herokuapp.com
Library            SeleniumLibrary
Resource           ../resources/keywords.robot

Test Setup         Open Browser To Login Page
Test Teardown      Close Browser

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id:username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Click Login
    Click Button    xpath://form[@id='login']/button[@type='submit']

Log In
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login
    

*** Variables ***
${LOGIN_URL}    https://the-internet.herokuapp.com/login


*** Test Cases ***
Successful Login
    [Tags]    positive
    Log In    tomsmith    SuperSecretPassword!
    Wait Until Page Contains    Welcome to the Secure Area.    3 seconds

Invalid Username
    [Tags]    negative
    Log In    thomassmith    SuperSecretPassword!
    Wait Until Element Contains    id:flash-messages    Your username is invalid!    3 seconds

Invalid Password
    [Tags]    negative
    Log In    tomsmith    SecretPassword123
    Wait Until Element Contains    id:flash-messages    Your password is invalid!    3 seconds
