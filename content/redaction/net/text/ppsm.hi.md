---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "hi/redaction/net/text/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact Sensitive Information from PPSM Documents via .NET Core"
head_description: "Apply text redaction using exact phrase or regular expression for documents of different formats"

############################# Header ############################
title: "Redact PPSM Files via C# in .NET Core Apps"
description: "Search & Replace Text in Office & OpenOffice Documents, Spreadsheets & Presentations as well as PPSM on Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Document Redaction for .NET API"
    content: |
        A single format-independent interface for redacting sensitive and classified information from the PDF, Word, Excel, PowerPoint documents and images, including the ability to change metadata and remove comments. With GroupDocs.Redaction for .NET tool you can redact text and save redacted document in PDF, transforming all pages into raster images or keep the document in its original format for further editing.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redact Exact Text from PPSM via C#"
    content_left: |
        [GroupDocs.Redaction](hi//redaction/net/) makes it easy for .NET developers to add PPSM file redaction feature with a few easy steps.

        *   Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & load PPSM file
        *   Create an instance of [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/exactphraseredaction) class to find and replace the text
        *   Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of ExactPhraseRedaction
        
    title_right: "Get Started with Redaction API"
    content_right: |
        Install from command line as ```nuget install GroupDocs.Redaction``` or via Package Manager Console of Visual Studio with ```Install-Package GroupDocs.Redaction```. 
        Alternatively, get the offline MSI installer or DLLs in a ZIP file from [downloads](https://downloads.groupdocs.com/redaction/net), and reference it in your project manually.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.ppsm"))
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