---
############################# Static ############################
layout: "autogen"
draft: false
path: "hi/redaction/net/text/xltx"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM  

############################# Head ############################
head_title: "XLTX दस्तावेज़ों से संवेदनशील जानकारी को .NET कोर के माध्यम से संपादित करें"
head_description: "विभिन्न प्रारूपों के दस्तावेज़ों के लिए सटीक वाक्यांश या नियमित अभिव्यक्ति का उपयोग करके टेक्स्ट संशोधन लागू करें"

############################# Header ############################
title: ".NET कोर ऐप्स में C# के माध्यम से XLTX फ़ाइलों को संशोधित करें"
description: "Office और OpenOffice दस्तावेज़ों, स्प्रैडशीट्स और प्रस्तुतियों के साथ-साथ Windows, Linux और macOS पर XLTX में टेक्स्ट खोजें और बदलें"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET एपीआई के लिए दस्तावेज़ संशोधन"
    content: |
        मेटाडेटा को बदलने और टिप्पणियों को हटाने की क्षमता सहित, PDF, Word, Excel, PowerPoint दस्तावेजों और छवियों से संवेदनशील और वर्गीकृत जानकारी को संशोधित करने के लिए एक एकल प्रारूप-स्वतंत्र इंटरफ़ेस। GroupDocs.Redaction for .NET टूल से आप टेक्स्ट को रिडक्ट कर सकते हैं और रिडक्टेड दस्तावेज़ को PDF में सेव कर सकते हैं, सभी पेजों को रैस्टर इमेज में बदल सकते हैं या दस्तावेज़ को आगे के संपादन के लिए उसके मूल प्रारूप में रख सकते हैं।

############################# Steps ############################
steps:
    enable: true
    title_left: "XLTX से C# तक सटीक पाठ संपादित करें"
    content_left: |
        [GroupDocs.Redaction](hi//रेडेक्शन/net/) कुछ आसान चरणों के साथ .NET डेवलपर्स के लिए XLTX फ़ाइल रीडेक्शन सुविधा जोड़ना आसान बनाता है।

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) क्लास का एक उदाहरण बनाएं और XLTX फ़ाइल लोड करें
        *   टेक्स्ट को ढूंढने और बदलने के लिए [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) क्लास का एक उदाहरण बनाएं
        *   ExactPhraseRedaction के ऑब्जेक्ट के साथ [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) विधि को कॉल करें
        
    title_right: "रिडक्शन एपीआई के साथ आरंभ करें"
    content_right: |
        कमांड लाइन से ```nuget install GroupDocs.Redaction``` या विजुअल स्टूडियो के पैकेज मैनेजर कंसोल के माध्यम से ```इंस्टॉल-पैकेज GroupDocs.Redaction``` के साथ इंस्टॉल करें। 
        वैकल्पिक रूप से, [डाउनलोड](https://downloads.groupdocs.com/redaction/net) से ZIP फ़ाइल में ऑफ़लाइन एमएसआई इंस्टॉलर या डीएलएल प्राप्त करें, और इसे अपने प्रोजेक्ट में मैन्युअल रूप से संदर्भित करें।  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.xltx"))
        {
        	redactor.Apply(new ExactPhraseRedaction("John Doe", new ReplacementOptions("[personal]")));
        	redactor.Save();
        }
        ```

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---