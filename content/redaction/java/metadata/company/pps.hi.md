
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "hi/redaction/java/metadata/company/pps"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "मेटाडेटा संपादित करें | Java"
ad_description: "Java में PPS मेटाडेटा से कंपनी का नाम फिर से बनाएँ"
############################# Head ############################
head_title: "Java में PPS दस्तावेज़ से मेटाडेटा रिडक्शन"
head_description: "Java के लिए GroupDocs.Redaction के API का उपयोग करके विशिष्ट मेटाडेटा गुणों को चुनने के लिए फ़िल्टर लागू करके विभिन्न दस्तावेज़ प्रकारों के मेटाडेटा को आसानी से खोजें, बदलें, निकालें या संपादित करें।"

############################# Header ############################
title: "Java में PPS दस्तावेज़ से मेटाडेटा रिडक्शन"
description: "Java के लिए GroupDocs.Redaction के API का उपयोग करके विशिष्ट मेटाडेटा गुणों को चुनने के लिए फ़िल्टर लागू करके विभिन्न दस्तावेज़ प्रकारों के मेटाडेटा को आसानी से खोजें, बदलें, निकालें या संपादित करें।"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "मेटाडेटा रिडक्शन के साथ शुरुआत करना"
    content: |
        कभी-कभी आपको अवांछित मेटाडेटा फ़ील्ड को पूरी तरह से हटाने की आवश्यकता होती है या हो सकता है कि आप उनके मूल्यों को अपडेट करना चाहें। फ़ाइलों से जुड़ा छिपा हुआ डेटा भी है जिसे विभिन्न उपकरणों और तकनीकों का उपयोग करके देखा जा सकता है। ऐसी कई स्थितियाँ हैं जहाँ आप नहीं चाहते कि यह डेटा किसी के लिए भी सुलभ हो। संशोधन का अर्थ है विभिन्न दस्तावेज़ों से अवांछित या गोपनीय जानकारी को हटाना। PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX और अन्य सहित सभी फ़ाइल प्रारूपों में विशिष्ट मेटाडेटा संरचनाएं हैं। मेटाडेटा गुणों में लेखक का नाम, श्रेणी, कंपनी का नाम, टिप्पणियां, निर्माण समय और अंतिम अपडेट आदि शामिल हैं. GroupDocs.Redaction API के साथ आप इनमें से किसी भी मेटाडेटा फ़ील्ड में मेटाडेटा रिडक्शन लागू कर सकते हैं। आप अपने इच्छित मेटाडेटा को फ़िल्टर करके उन्हें बदल सकते हैं या हटा सकते हैं। इस गाइड में हम बताएंगे कि आप Java में PPS दस्तावेज़ से मेटाडेटा रिडक्शन कैसे लागू कर सकते हैं।

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "PPS फ़ाइल का मेटाडेटा संपादित करें"
      content_left: |
        निम्नलिखित कोड से आप PPS दस्तावेज़ से संवेदनशील डेटा खोज सकते हैं और उसे संपादित कर सकते हैं। आप फ़िल्टर सेट करके संशोधन की गुंजाइश सेट कर सकते हैं, उदाहरण के लिए metadataFilter.company के लिए। यह “कंपनी” संपत्ति को छोड़कर, सभी मेटाडेटा आइटम में नियमित अभिव्यक्तियों के मिलान को पूर्ववत छोड़ देगा: 

      title_right: "मेटाडेटा को फिर से बनाने के चरण"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PPS फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा से संवेदनशील डेटा को खोजने और बदलने के लिए [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) क्लास का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilters.company का उपयोग करें
        * [MetaDataSearchRedAction] के ऑब्जेक्ट के साथ कॉल सेव विधि (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "5b04349a19f1627145ab6a9f8f0f5fc0"
      gistfile: "RedactCompanyMetadata.java"
      
    - title_left: "Java में PPS मेटाडेटा हटाएं"
      content_left: |
        आप eraseMetadataredAction क्लास का उपयोग करके दस्तावेज़ में सभी या विशिष्ट मेटाडेटा को खाली (रिक्त या न्यूनतम) मानों से बदल सकते हैं। निम्नलिखित कोड दिखाता है कि आप PPS दस्तावेज़ से मेटाडेटा प्रॉपर्टी को कैसे फ़िल्टर कर सकते हैं और फिर हटा सकते हैं. नीचे दिया गया उदाहरण दस्तावेज़ के सभी गुणों को खाली कर देता है: 
        
      title_right: "कंपनी मेटाडेटा को कैसे मिटाएं"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PPS फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा को हटाने के लिए [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) वर्ग का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन की गुंजाइश सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilter.company के साथ metadataFilter.all को बदलें
        * [MetaDataSearchRedAction] के ऑब्जेक्ट के साथ कॉल सेव विधि (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "सिस्टम आवश्यकताएँ"
      content_left: |
        GroupDocs.Redaction for Java API सभी प्रमुख प्लेटफ़ॉर्मों और ऑपरेटिंग सिस्टम पर समर्थित हैं। संपूर्ण सिस्टम आवश्यकताएँ मार्गदर्शिका के लिए, कृपया [सिस्टम आवश्यकताएँ](https://docs.groupdocs.com/redaction/java/system-requirements) पर जाएं नीचे दिए गए कोड को निष्पादित करने से पहले, कृपया सुनिश्चित करें कि आपके सिस्टम पर निम्नलिखित आवश्यक शर्तें स्थापित हैं:
        * ऑपरेटिंग सिस्टम: माइक्रोसॉफ्ट Windows, Linux, Mac OS
        * विकास पर्यावरण: नेटबीन, इंटेलीज आईडिया, एक्लिप्स आदि
        * Java रनटाइम पर्यावरण: J2SE 6.0 और इसके बाद के संस्करण
        * [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction) से GroupDocs.Redaction for Java का नवीनतम संस्करण प्राप्त करें
        
      title_right: "GroupDocs.Redaction का उपयोग क्यों करें"
      content_right: |
        * उपयोगकर्ताओं को कस्टम दस्तावेज़ प्रारूप और संपादन के प्रकार जोड़ने की अनुमति दें
        * संवेदनशील जानकारी को हटाने के लिए किसी अतिरिक्त सॉफ़्टवेयर की आवश्यकता नहीं है
        * पेज रेंज रेंडरिंग दस्तावेज़ को PDF के रूप में सेट करने की योग्यता
        * विभिन्न प्रकार के मेटाडेटा को फिर से बनाने का आसान तरीका: लेखक का नाम, संस्करण, शीर्षक, विषय, विवरण और बहुत कुछ
        * दस्तावेज़ जानकारी निष्कर्षण - फ़ाइल प्रकार, पृष्ठ गणना आदि।
        

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---