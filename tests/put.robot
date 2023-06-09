*** Settings ***
Documentation       PUT /partners
Resource            ../resources/base.robot


*** Keywords ***
Create a new partner
    [Arguments]    ${partner}
    

*** Test Cases ***
Should enable a partner
    ${partner}    Factory Enable Partner

    ${partner_id}    Create a new partner   ${partner}

    ${response}    Enable Partner    ${partner_id}
    Status Should Be    200

Should return 404 on enable a partner

    ${partner}        Factory 404 Partner   

    ${partner_id}    Create a new partner   ${partner}

    Remove Partner By Name    ${partner}[name]

    ${response}    Enable Partner    ${partner_id}
    Status Should Be    404

Should disable a partner
    ${partner}    Factory Disable Partner

    ${partner_id}    Create a new Partner    ${partner}
    Enable Partner    ${partner_id}

    ${response}    disable Partner    ${partner_id}
    Status Should Be    200

Should return 404 on disable a partner
    ${partner}    Factory 404 Partner

    ${partner_id}    Create a new Partner    ${partner}

    Remove Partner By Name    ${partner}[name]

    ${response}    disable Partner    ${partner_id}
    Status Should Be    404
