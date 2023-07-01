
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "hi/redaction/net/metadata/description/xltx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "C# में दस्तावेज़ों से मेटाडेटा रिडक्शन"
head_description: "विभिन्न प्रारूपों के दस्तावेज़ों के लिए फ़िल्टर लागू करके C# में संवेदनशील मेटाडेटा को फिर से बनाएं"

############################# Header ############################
title: "C# में XLTX दस्तावेज़ से विवरण मेटाडेटा को संपादित करें"
description: "GroupDocs.Redaction का API किसी दस्तावेज़ के मेटाडेटा से किसी भी गोपनीय डेटा को खोजने और फिर अपडेट करने या हटाने की अनुमति देता है।"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "मेटाडेटा रिडक्शन क्या है?"
    content: |
        ज्यादातर लोग किसी दस्तावेज़ के टेक्स्ट रिडक्शन से संबंधित होते हैं। लेकिन मेटाडेटा रिडक्शन भी उतना ही महत्वपूर्ण है। मेटाडेटा एक दस्तावेज़ का छिपा हुआ डेटा होता है जिसमें गोपनीय जानकारी हो सकती है जिसे आप अन्य के साथ साझा नहीं करना चाहेंगे। मेटाडेटा रिडक्शन इलेक्ट्रॉनिक दस्तावेज़ों से अवांछित या गोपनीय जानकारी को हटाने को संदर्भित करता है। किसी दस्तावेज़ के मेटाडेटा में लेखक का नाम, श्रेणी, कंपनी का नाम, टिप्पणियां, निर्माण का समय, अंतिम अपडेट और बहुत कुछ शामिल हैं। कभी-कभी आपको अवांछित मेटाडेटा फ़ील्ड को पूरी तरह से हटाने की आवश्यकता होती है या हो सकता है कि आप उनके मूल्यों को अपडेट करना चाहें। GroupDocs.Redaction API के साथ आप इनमें से किसी भी मेटाडेटा प्रॉपर्टी पर मेटाडेटा रिडक्शन लागू कर सकते हैं। आप अपने इच्छित मेटाडेटा को फ़िल्टर करके उन्हें बदल सकते हैं या हटा सकते हैं। इस गाइड में हम बताएंगे कि आप C# में XLTX दस्तावेज़ से विवरण मेटाडेटा को कैसे संपादित कर सकते हैं।

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "XLTX दस्तावेज़ से विवरण संपादित करें"
      content_left: |
        निम्नलिखित कोड से आप XLTX दस्तावेज़ से संवेदनशील डेटा खोज सकते हैं और उसे संपादित कर सकते हैं। आप फ़िल्टर सेट करके संशोधन की गुंजाइश सेट कर सकते हैं, उदाहरण के लिए metadataFilter.description के लिए। यह “विवरण” संपत्ति को छोड़कर, सभी मेटाडेटा आइटम में नियमित अभिव्यक्तियों के मिलान को पूर्ववत छोड़ देगा:
        

      title_right: "XLTX मेटाडेटा को कैसे रिएक्ट करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) वर्ग का एक उदाहरण बनाएं और XLTX फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा से संवेदनशील डेटा को खोजने और बदलने के लिए [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) क्लास का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए मेटाडेटा फ़िल्टर का उपयोग करें। नीचे दिए गए कोड में विवरण
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) के ऑब्जेक्ट के साथ [redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) विधि को कॉल करें        
      gisthash: "15e3f0329c4e24c0f77f785b87753e0d"
      gistfile: "RedactDescriptionMetadata.cs"

    - title_left: "C# में XLTX मेटाडेटा हटाएं"
      content_left: |
        आप eraseMetadataredAction क्लास का उपयोग करके दस्तावेज़ में सभी या विशिष्ट मेटाडेटा को खाली (रिक्त या न्यूनतम) मानों से बदल सकते हैं। निम्नलिखित कोड दिखाता है कि आप XLTX दस्तावेज़ से मेटाडेटा प्रॉपर्टी को कैसे फ़िल्टर कर सकते हैं और फिर हटा सकते हैं. नीचे दिया गया उदाहरण दस्तावेज़ के सभी गुणों को खाली कर देता है:
        
        
      title_right: "XLTX मेटाडेटा मिटाएं"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) वर्ग का एक उदाहरण बनाएं और XLTX फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा को हटाने के लिए [eraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए मेटाडेटा फ़िल्टर. ऑल को मेटाडेटा फ़िल्टर से बदलें। नीचे दिए गए कोड में विवरण 
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) के ऑब्जेक्ट के साथ [redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) विधि को कॉल करें
        
      gisthash: "सीईएफ91डी8डी8एफ160एएएफ560218डी1एबीडी520ई2"
      gistfile: "CleanMetadata.cs"

    - title_left: "सिस्टम आवश्यकताएँ"
      content_left: |
        GroupDocs.Redaction for .NET किसी भी 32-बिट या 64-बिट ऑपरेटिंग सिस्टम का समर्थन करता है जहां .NET प्लेटफ़ॉर्म इंस्टॉल किया गया है। इसे इंस्टॉल करने के लिए किसी बाहरी सॉफ़्टवेयर या थर्ड पार्टी टूल की आवश्यकता नहीं होती है। संपूर्ण सिस्टम आवश्यकताएँ मार्गदर्शिका के लिए, कृपया [सिस्टम आवश्यकताएँ](https://docs.groupdocs.com/redaction/net/system-requirements) पर जाएं
        
      title_right: "अधिष्ठापन निर्देश"
      content_right: |
        कमांड लाइन से ``nuget install GroupDocs.Redaction ```के रूप में या ``इंस्टॉल-पैकेज GroupDocs.Redaction `````के साथ Visual Studio के पैकेज मैनेजर कंसोल के माध्यम से इंस्टॉल करें। 
        वैकल्पिक रूप से, [डाउनलोड](https://downloads.groupdocs.com/redaction/net) से ZIP फ़ाइल में ऑफ़लाइन MSI इंस्टॉलर या DLL प्राप्त करें, और इसे अपने प्रोजेक्ट में मैन्युअल रूप से संदर्भित करें।

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