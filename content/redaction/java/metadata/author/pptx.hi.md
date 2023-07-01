
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "hi/redaction/java/metadata/author/pptx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "मेटाडेटा संपादित करें | Java"
ad_description: "Java में PPTX मेटाडेटा से Author Name को संपादित करें"
############################# Head ############################
head_title: "Java में PPTX मेटाडेटा से लेखक का नाम हटाएं या अपडेट करें"
head_description: "GroupDocs.Redaction s एक लचीला API प्रदान करता है जो फ़िल्टर का उपयोग करके किसी भी मेटाडेटा प्रॉपर्टी को खोजने और बदलने/निकालने की अनुमति देता है।"

############################# Header ############################
title: "Java में PPTX मेटाडेटा से लेखक का नाम हटाएं या अपडेट करें"
description: "GroupDocs.Redaction s एक लचीला API प्रदान करता है जो फ़िल्टर का उपयोग करके किसी भी मेटाडेटा प्रॉपर्टी को खोजने और बदलने/निकालने की अनुमति देता है।"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "मेटाडेटा रिडक्शन क्या है?"
    content: |
        रिडक्शन इलेक्ट्रॉनिक दस्तावेज़ों से अवांछित या गोपनीय जानकारी को हटाने को संदर्भित करता है। PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX और अन्य सहित सभी फ़ाइल प्रारूपों में कुछ मेटाडेटा गुण हैं। इन संपत्तियों में लेखक का नाम, श्रेणी, कंपनी का नाम, टिप्पणियां, निर्माण का समय, अंतिम अपडेट और बहुत कुछ शामिल हैं। कभी-कभी आपको अवांछित मेटाडेटा फ़ील्ड को पूरी तरह से हटाने की आवश्यकता होती है या हो सकता है कि आप उनके मूल्यों को अपडेट करना चाहें। फ़ाइलों से जुड़े कुछ छिपे हुए डेटा भी हैं जिन्हें विभिन्न उपकरणों और तकनीकों का उपयोग करके देखा जा सकता है। ऐसे कई मामले हैं जब आप नहीं चाहते कि यह डेटा किसी के द्वारा एक्सेस किया जाए। GroupDocs.Redaction API के साथ आप इनमें से किसी भी मेटाडेटा प्रॉपर्टी पर मेटाडेटा रिडक्शन लागू कर सकते हैं। आप अपने इच्छित मेटाडेटा को फ़िल्टर करके उन्हें बदल सकते हैं या हटा सकते हैं। इस गाइड में हम बताएंगे कि आप Java में PPTX मेटाडेटा से लेखक का नाम कैसे बदल सकते हैं।

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Java में PPTX मेटाडेटा को फिर से बनाना"
      content_left: |
        निम्नलिखित कोड से आप PPTX दस्तावेज़ से संवेदनशील डेटा खोज सकते हैं और उसे संपादित कर सकते हैं। आप फ़िल्टर सेट करके रिडक्शन की गुंजाइश सेट कर सकते हैं, उदाहरण के लिए metadataFilter.Author। यह “लेखक” संपत्ति को छोड़कर, सभी मेटाडेटा आइटम में नियमित अभिव्यक्तियों के मिलान को पूर्ववत छोड़ देगा: 

      title_right: "PPTX मेटाडेटा को कैसे रिएक्ट करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PPTX फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा से संवेदनशील डेटा को खोजने और बदलने के लिए [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) क्लास का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए नीचे दिए गए कोड में मेटाडेटा फ़िल्टर का उपयोग करें। लेखक
        * [मेटाडेटा सर्चरेडएक्शन] के ऑब्जेक्ट के साथ redactor.save विधि को कॉल करें (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "e3926608f913f15d261b194084c179dd"
      gistfile: "RedactAuthorMetadata.java"
      
    - title_left: "Java में लेखक मेटाडेटा हटाएं"
      content_left: |
        आप eraseMetadataredAction क्लास का उपयोग करके दस्तावेज़ में सभी या विशिष्ट मेटाडेटा को खाली (रिक्त या न्यूनतम) मानों से बदल सकते हैं। निम्नलिखित कोड दिखाता है कि आप PPTX दस्तावेज़ से मेटाडेटा प्रॉपर्टी को कैसे फ़िल्टर कर सकते हैं और फिर हटा सकते हैं. नीचे दिया गया उदाहरण दस्तावेज़ के सभी गुणों को खाली कर देता है: 
        
      title_right: "PPTX मेटाडेटा मिटाएं"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PPTX फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा को हटाने के लिए [MetadataSearchRedAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) वर्ग का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए मेटाडेटा फ़िल्टर. ऑल को मेटाडेटा फ़िल्टर से बदलें। लेखक नीचे दिए गए कोड में
        * [मेटाडेटा सर्चरेडएक्शन] के ऑब्जेक्ट के साथ redactor.save विधि को कॉल करें (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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