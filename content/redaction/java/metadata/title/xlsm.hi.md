
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "hi/redaction/java/metadata/title/xlsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSX XLT XLTM XLTX  
ad_headline: "मेटाडेटा संपादित करें | Java"
ad_description: "Java में XLSM मेटाडेटा से टाइटल रिएक्ट करें"
############################# Head ############################
head_title: "GroupDocs.Redaction API का उपयोग करके Java में XLSM फ़ाइल से शीर्षक को संपादित करें"
head_description: "GroupDocs.Redaction एक शक्तिशाली सैनिटाइजेशन API है जो आपको 30 से अधिक दस्तावेज़ों से गोपनीय जानकारी निकालने या संपादित करने में सक्षम बनाता है।"

############################# Header ############################
title: "GroupDocs.Redaction API का उपयोग करके Java में XLSM फ़ाइल से शीर्षक को संपादित करें"
description: "GroupDocs.Redaction एक शक्तिशाली सैनिटाइजेशन API है जो आपको 30 से अधिक दस्तावेज़ों से गोपनीय जानकारी निकालने या संपादित करने में सक्षम बनाता है।"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "मेटाडेटा रिडक्शन क्या है?"
    content: |
        दस्तावेज़ को मूल प्रारूप में सहेजने के लिए सभी गोपनीय डेटा को हटाने के लिए उसके मेटाडेटा को हटाने या संशोधित करने की आवश्यकता होती है। इन उद्देश्यों के लिए GroupDocs.Redaction मेटाडेटा रिडक्शन API प्रदान करता है. GroupDocs.Redaction API या तो PDF में संपादित दस्तावेज़ों को सहेजने, सभी पेजों को रास्टर छवियों में बदलने या आगे के संपादन के लिए अपने मूल प्रारूप में संपादित दस्तावेज़ को सहेजने की अनुमति देता है। PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX और अन्य सहित सभी फ़ाइल प्रारूपों में कुछ मेटाडेटा गुण हैं। इन संपत्तियों में लेखक का नाम, श्रेणी, कंपनी का नाम, टिप्पणियां, निर्माण समय, अंतिम अपडेट और बहुत कुछ शामिल हैं। फ़ाइलों से जुड़े कुछ छिपे हुए डेटा भी हैं जिन्हें विभिन्न उपकरणों और तकनीकों का उपयोग करके देखा जा सकता है। GroupDocs.Redaction API के साथ आप इनमें से किसी भी मेटाडेटा प्रॉपर्टी पर मेटाडेटा रिडक्शन लागू कर सकते हैं। आप अपने इच्छित मेटाडेटा को फ़िल्टर करके उन्हें बदल सकते हैं या हटा सकते हैं। इस गाइड में हम बताएंगे कि आप GroupDocs.Redaction API का उपयोग करके Java में XLSM फ़ाइल से टाइटल को कैसे संपादित कर सकते हैं।

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Java में टाइटल मेटाडेटा को फिर से बनाएँ"
      content_left: |
        निम्नलिखित कोड से आप XLSM दस्तावेज़ से संवेदनशील डेटा खोज सकते हैं और उसे संपादित कर सकते हैं। आप फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट कर सकते हैं, उदाहरण के लिए metadataFilter.title। यह “शीर्षक” संपत्ति को छोड़कर, सभी मेटाडेटा आइटम में नियमित अभिव्यक्तियों के मिलान को पूर्ववत कर देगा: 

      title_right: "XLSM मेटाडेटा को कैसे रिएक्ट करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और XLSM फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा से संवेदनशील डेटा को खोजने और बदलने के लिए [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) क्लास का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilters.title का उपयोग करें
        * [MetaDataSearchRedAction] के ऑब्जेक्ट के साथ कॉल सेव विधि (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "c23f466bec11e0405e2a3e74be681d09"
      gistfile: "RedactTitleMetadata.java"
      
    - title_left: "Java में XLSM मेटाडेटा हटाएं"
      content_left: |
        आप eraseMetadataredAction क्लास का उपयोग करके दस्तावेज़ में सभी या विशिष्ट मेटाडेटा को खाली (रिक्त या न्यूनतम) मानों से बदल सकते हैं। निम्नलिखित कोड दिखाता है कि आप XLSM दस्तावेज़ से मेटाडेटा प्रॉपर्टी को कैसे फ़िल्टर कर सकते हैं और फिर हटा सकते हैं. नीचे दिया गया उदाहरण दस्तावेज़ के सभी गुणों को खाली कर देता है: 
        
      title_right: "XLSM फ़ाइल से टाइटल मेटाडेटा मिटाएँ"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और XLSM फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा को हटाने के लिए [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) वर्ग का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilter.all को MetaDataFilter.title से बदलें
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