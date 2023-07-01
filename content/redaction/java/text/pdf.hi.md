---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "hi/redaction/java/text/pdf"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Java में सटीक वाक्यांश/नियमित अभिव्यक्ति के माध्यम से PDF टेक्स्ट को संपादित करें"
head_description: "GroupDocs.Redaction s Java API डेवलपर्स को PDF DOC DOCX RTF XLSX CSV PPT PPTX से टेक्स्ट और Java में सटीक वाक्यांश या नियमित अभिव्यक्ति के माध्यम से छवियों को संपादित करने में सक्षम बनाता है"

############################# Header ############################
title: "Java का उपयोग करके PDF फ़ाइलों से टेक्स्ट को कैसे संपादित करें, छिपाएं या निकालें"
description: "GroupDocs.Redaction s Java API वर्ड प्रोसेसिंग दस्तावेज़ों, वर्कशीट, प्रस्तुतियों, PDF s और छवियों से संवेदनशील टेक्स्ट को संपादित करने, छिपाने या हटाने की अनुमति देता है।"

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "टेक्स्ट रिडक्शन क्या है?"
    content: |
        टेक्स्ट रिडक्शन डिजिटल दस्तावेज़ों से गोपनीय या अवांछित पाठ या जानकारी को हटाने की प्रक्रिया है, जबकि इसमें मौजूद बाकी दस्तावेज़ या पैराग्राफ को बरकरार रखा जाता है। Redaction उपयोगकर्ताओं के साथ-साथ संगठन को उनकी संवेदनशील जानकारी को छिपाकर या स्थायी रूप से हटाकर उनकी सुरक्षा करने में मदद करता है। GroupDocs.Redaction Java API का उपयोग करके यूज़र अब वर्ड प्रोसेसिंग दस्तावेज़ों, वर्कशीट, प्रस्तुतियों, PDF और रैस्टर इमेज फ़ाइलों से संवेदनशील टेक्स्ट को संपादित कर सकते हैं, छिपा सकते हैं या हटा सकते हैं। API दस्तावेज़ों में निजी जानकारी को संशोधित करने के लिए विकल्पों और तरीकों की एक विस्तृत श्रृंखला प्रदान करता है। यह सटीक मिलान या नियमित अभिव्यक्तियों का उपयोग करके खोज और संपादन का समर्थन करता है, पाठ्य (छूट कोड) या ग्राफ़िकल (रंगीन आयताकार) रिडक्शन और कई अन्य का उपयोग करता है। तो क्यों न इसे आजमाएं और एपीआई डाउनलोड करके अपनी दस्तावेज़ संपादन प्रक्रिया को स्वचालित करें और इसकी बुनियादी और उन्नत सुविधाओं का पता लगाएं। 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Java में PDF सटीक वाक्यांश को फिर से लिखें"
      content_left: |
        GroupDocs.Redaction आपके दस्तावेज़ों से संवेदनशील या निजी प्रकृति के डेटा को आसानी से संपादित करने की अनुमति देता है। सबसे लोकप्रिय रिडक्शन केस किसी दस्तावेज़ से टेक्स्ट निकालना है। 

        निम्नलिखित कोड का उपयोग सटीक वाक्यांश के माध्यम से किसी दस्तावेज़ के किसी विशेष भाग पर पाठ्य संशोधन लागू करने के लिए किया जा सकता है। यह उपयोगकर्ताओं को व्यक्तिगत सटीक वाक्यांश “मीकल क्लार्क” को व्यक्तिगत (या किसी भी छूट कोड) से बदलने की अनुमति देता है,

      title_right: "PDF से संवेदनशील डेटा हटाएं"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PDF फ़ाइल अपलोड करें
        * RedActor को कॉल करें। exactPhraseredAction क्लास के नए उदाहरण के साथ विधि लागू करें
        * [exactPhraseredAction] के ऑब्जेक्ट के साथ redactor.save विधि को कॉल करें (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * परिवर्तनों को सहेजने के लिए redactor.save विधि को कॉल करें 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redactexactphrase.java"
      
    - title_left: "PDF में केस सेंसिटिव टेक्स्ट रिडक्शन"
      content_left: |
        निम्न उदाहरण उपयोगकर्ताओं को किसी दस्तावेज़ के अंदर टेक्स्ट के किसी विशेष चक को हटाने या छिपाने के लिए सटीक वाक्यांश केस-सेंसिटिव रिडक्शन करने में सक्षम बनाता है। डिफ़ॉल्ट रूप से, सटीक वाक्यांश की खोज केस असंवेदनशील होती है। 
        
      title_right: "Java के माध्यम से केस सेंसिटिव रिडक्शन करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PDF फ़ाइल अपलोड करें
        * RedActor को कॉल करें। exactPhraseredAction क्लास के नए उदाहरण के साथ विधि लागू करें
        * [exactPhraseredAction] के ऑब्जेक्ट के साथ redactor.save विधि को कॉल करें (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * परिवर्तनों को सहेजने के लिए redactor.save विधि को कॉल करें 
        
      gisthash: "a43e3ce358f93df92373b541bc579fb"
      gistfile: "casesensitiveredaction.java"

    - title_left: "Color Box के माध्यम से PDF में टेक्स्ट संपादित करें"
      content_left: |
        एक संपादित पाठ को हटाने या वहां पर एक स्ट्रिंग रखने के बजाय, संशोधित पाठ पर रंग बॉक्स डालना भी संभव है। इस स्थिति में मिलान किए गए पाठ को हटा दिया जाएगा और एक रंगीन आयत को संशोधित पाठ के ऊपर रखा जाएगा।
        
      title_right: "Java में टेक्स्ट हटाने के लिए कलर बॉक्स का उपयोग करें"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) वर्ग का एक उदाहरण बनाएं और PDF फ़ाइल अपलोड करें
        * RedActor को कॉल करें। exactPhraseredAction क्लास के नए उदाहरण के साथ विधि लागू करें
        * [exactPhraseredAction] के ऑब्जेक्ट के साथ redactor.save विधि को कॉल करें (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * परिवर्तनों को सहेजने के लिए redactor.save विधि को कॉल करें 
        
      gisthash: "6d83e791388b6834a372dc90f4b45f6"
      gistfile: "redacttextusingcolorbox.java"

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