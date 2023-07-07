---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "hi/redaction/net/regex/dotx"
otherformats: CSV DOC DOCM DOCX DOT DOTM PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET कोर के माध्यम से रेगुलर एक्सप्रेशन का उपयोग करके DOTX दस्तावेज़ों को संशोधित करें"
head_description: "विभिन्न प्रारूपों के दस्तावेज़ों से नियमित अभिव्यक्ति का उपयोग करके संवेदनशील जानकारी को संशोधित करें"

############################# Header ############################
title: "C# और रेगुलर एक्सप्रेशन के माध्यम से .NET कोर ऐप्स में DOTX फाइलों को सेनिटाइज करें"
description: "Office और OpenOffice दस्तावेज़ों, स्प्रैडशीट्स और प्रस्तुतियों के साथ-साथ Windows, Linux और macOS पर DOTX से संवेदनशील जानकारी ढूंढें और हटाएं"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET एपीआई के लिए दस्तावेज़ टेक्स्ट रिडक्शन"
    content: |
        मेटाडेटा को बदलने और टिप्पणियों को हटाने की क्षमता सहित, PDF, Word, Excel, PowerPoint दस्तावेजों और छवियों से संवेदनशील और वर्गीकृत जानकारी के स्वच्छता के लिए एक एकल प्रारूप-स्वतंत्र इंटरफ़ेस। GroupDocs.Redaction for .NET टूल से आप वर्गीकृत जानकारी को संशोधित कर सकते हैं और संशोधित दस्तावेज़ को PDF में सहेज सकते हैं, सभी पृष्ठों को रेखापुंज छवियों में बदल सकते हैं या आगे के संपादन के लिए दस्तावेज़ को उसके मूल प्रारूप में रख सकते हैं।

############################# Steps ############################
steps:
    enable: true
    title_left: "C# के माध्यम से रेगुलर एक्सप्रेशन का उपयोग करके DOTX से टेक्स्ट को संपादित करें"
    content_left: |
        [GroupDocs.Redaction](hi//redaction/net/) .NET डेवलपर्स को कुछ आसान चरणों के साथ DOTX फ़ाइल को संशोधित करने के लिए नियमित अभिव्यक्तियों की पूरी ताकत का उपयोग करने की अनुमति देता है।

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) क्लास का एक उदाहरण बनाएं और DOTX फ़ाइल लोड करें
        *   टेक्स्ट को ढूंढने और बदलने के लिए [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) क्लास का एक उदाहरण बनाएं
        *   RegexRedaction के ऑब्जेक्ट के साथ [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) विधि को कॉल करें
        
    title_right: "रिडक्शन एपीआई के साथ आरंभ करें"
    content_right: |
        कमांड लाइन से ```nuget install GroupDocs.Redaction``` या विजुअल स्टूडियो के पैकेज मैनेजर कंसोल के माध्यम से ```इंस्टॉल-पैकेज GroupDocs.Redaction``` के साथ इंस्टॉल करें। 
        वैकल्पिक रूप से, [डाउनलोड](https://downloads.groupdocs.com/redaction/net) से ZIP फ़ाइल में ऑफ़लाइन एमएसआई इंस्टॉलर या डीएलएल प्राप्त करें, और इसे अपने प्रोजेक्ट में मैन्युअल रूप से संदर्भित करें।  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.dotx"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
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