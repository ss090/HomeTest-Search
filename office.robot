*** Settings ***
Library     SeleniumLibrary 

*** Test Cases ***
Testcase 1
    Open Browser   https://www.officemate.co.th/en/search/             Chrome
    Sleep           10s
    Click Element   //div[@id='btn-searchResultPage']/../div/input
    Input Text      //div[@id='btn-searchResultPage']/../div/input      Chair
    Click Element        //div[@id='btn-searchResultPage']
    Sleep       5s
    Element Should Contain       //div[contains(text(),'product results found')]    product results found for "Chair"
    Click Element   //div[@id='btn-searchResultPage']/../div/input
    Input Text      //div[@id='btn-searchResultPage']/../div/input      @
    Click Element        //div[@id='btn-searchResultPage']
    Sleep       10s
    Element Should Contain       //div[@class='title']   ขออภัย! ไม่พบสินค้าที่ตรงกับ "@"
    

