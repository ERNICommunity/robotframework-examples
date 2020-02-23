*** Settings ***
Documentation    Make calls to github rest api
...              See https://developer.github.com/v3/repos/
Library          RequestsLibrary
Resource         github.resource
Suite Setup      Setup Connection

*** Test cases ***
Get User Repositories
    ${names} =    List User Repositories Names    bulkan
    Should Contain    ${names}    robotframework-requests

Get Organization Repositories
    ${names} =    List Organization Repositories Names    ERNICommunity
    Should Contain    ${names}    ERNIbot
