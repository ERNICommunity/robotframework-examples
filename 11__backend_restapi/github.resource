*** Keywords ***
Setup Connection
    Create Session    github    https://api.github.com

List User Repositories Names
    [Arguments]    ${username}
    ${data} =    List User Repositories    ${username}
    ${names} =    Evaluate    [x["name"] for x in $data]
    Log    ${names}
    [Return]    ${names}

List Organization Repositories Names
    [Arguments]    ${org}
    ${data} =    List Organization Repositories    ${org}
    ${names} =    Evaluate    [x["name"] for x in $data]
    Log    ${names}
    [Return]    ${names}

List User Repositories
    [Arguments]    ${username}
    ${resp}=    Get Request    github    /users/${username}/repos?per_page=100
    Should Be Equal As Strings    ${resp.status_code}    200
    [Return]    ${resp.json()}

List Organization Repositories
    [Arguments]    ${org}
    ${resp}=    Get Request    github    /orgs/${org}/repos?per_page=100
    Should Be Equal As Strings    ${resp.status_code}    200
    [Return]    ${resp.json()}
