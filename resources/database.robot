*** Settings ***

Documentation        Database helpers connection

Library              RobotMongoDBLibrary.Delete
Library              RobotMongoDBLibrary.Find

*** Variables ***

&{MONGODB_URI}       connection=mongodb+srv://bugereats:bugereats123@cluster0.gsi5v3h.mongodb.net/PartnerDB?retryWrites=true&w=majority    database=PartnerDB  collection=partner

*** Keywords***
Remove Partner By Name

    [Arguments]      ${partner_name}

 
    ${filter}        Create Dictionary
    ...              name=${partner_name}
    
    DeleteOne        ${MONGODB_URI}     ${filter}

Find Partner By name

    $[Arguments]     ${partner_name}

    ${filter}        Create Dictionary
    ...              name=${partner_name}

    ${results}       Find    ${MONGO_URI}    ${filter}

    [return]         ${results}
    