
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "hi/redaction/net/metadata/company/dotm"
otherformats: BMP DOC DOCM DOCX DOT DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "C# में DOTM दस्तावेज़ों से संवेदनशील मेटाडेटा को फिर से बनाएँ"
head_description: "विभिन्न प्रारूपों के दस्तावेज़ों के लिए फ़िल्टर लागू करके मेटाडेटा रिडक्शन लागू करें"

############################# Header ############################
title: "C# में DOTM मेटाडेटा से कंपनी का नाम फिर से बनाएँ"
description: "GroupDocs.Redaction s एक लचीला API प्रदान करता है जो फ़िल्टर का उपयोग करके किसी भी मेटाडेटा प्रॉपर्टी को खोजने और बदलने/निकालने की अनुमति देता है।"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "मेटाडेटा रिडक्शन क्या है?"
    content: |
        रिडक्शन इलेक्ट्रॉनिक दस्तावेज़ों से अवांछित या गोपनीय जानकारी को हटाने को संदर्भित करता है। PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX और अन्य सहित सभी फ़ाइल प्रारूपों में कुछ मेटाडेटा गुण हैं। इन संपत्तियों में लेखक का नाम, श्रेणी, कंपनी का नाम, टिप्पणियां, निर्माण का समय, अंतिम अपडेट और बहुत कुछ शामिल हैं। कभी-कभी आपको अवांछित मेटाडेटा फ़ील्ड को पूरी तरह से हटाने की आवश्यकता होती है या हो सकता है कि आप उनके मूल्यों को अपडेट करना चाहें। फ़ाइलों से जुड़े कुछ छिपे हुए डेटा भी हैं जिन्हें विभिन्न उपकरणों और तकनीकों का उपयोग करके देखा जा सकता है। ऐसे कई मामले हैं जब आप नहीं चाहते कि यह डेटा किसी के द्वारा एक्सेस किया जाए। GroupDocs.Redaction API के साथ आप इनमें से किसी भी मेटाडेटा प्रॉपर्टी पर मेटाडेटा रिडक्शन लागू कर सकते हैं। आप अपने इच्छित मेटाडेटा को फ़िल्टर करके उन्हें बदल सकते हैं या हटा सकते हैं। इस गाइड में हम बताएंगे कि आप C# में DOTM मेटाडेटा से कंपनी का नाम कैसे बदल सकते हैं।

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C# में DOTM मेटाडेटा को फिर से बनाना"
      content_left: |
        निम्नलिखित कोड से आप DOTM दस्तावेज़ से संवेदनशील डेटा खोज सकते हैं और उसे संपादित कर सकते हैं। आप फ़िल्टर सेट करके संपादन की गुंजाइश सेट कर सकते हैं, उदाहरण के लिए metadataFilter.company के लिए। - यह “कंपनी” संपत्ति को छोड़कर, सभी मेटाडेटा आइटम में नियमित अभिव्यक्तियों के मिलान को पूर्ववत छोड़ देगा:
        

      title_right: "DOTM मेटाडेटा को कैसे रिएक्ट करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) वर्ग का एक उदाहरण बनाएं और DOTM फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा से संवेदनशील डेटा को खोजने और बदलने के लिए [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) क्लास का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन के लिए स्कोप सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilter.company का उपयोग करें
        * [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) के ऑब्जेक्ट के साथ [redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) विधि को कॉल करें        
      gisthash: "28e28d1f0f09bbb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "C# में DOTM मेटाडेटा हटाएं"
      content_left: |
        आप eraseMetadataredAction क्लास का उपयोग करके दस्तावेज़ में सभी या विशिष्ट मेटाडेटा को खाली (रिक्त या न्यूनतम) मानों से बदल सकते हैं। निम्नलिखित कोड दिखाता है कि आप DOTM दस्तावेज़ से मेटाडेटा प्रॉपर्टी को कैसे फ़िल्टर कर सकते हैं और फिर हटा सकते हैं. नीचे दिया गया उदाहरण दस्तावेज़ के सभी गुणों को खाली कर देता है:
        
        
      title_right: "DOTM मेटाडेटा मिटाएं"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) वर्ग का एक उदाहरण बनाएं और DOTM फ़ाइल अपलोड करें
        * दस्तावेज़ के मेटाडेटा को हटाने के लिए [eraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) का एक उदाहरण बनाएं
        * फ़िल्टर सेट करके रिडक्शन की गुंजाइश सेट करें, उदाहरण के लिए नीचे दिए गए कोड में metadataFilter.company के साथ metadataFilter.all को बदलें 
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