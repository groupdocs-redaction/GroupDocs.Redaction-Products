---
############################# Static ############################
layout: "autogen"
draft: false
path: "redaction/net/regex/docm"
otherformats: CSV DOC DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact DOCM Documents using Regular Expressions via .NET Core"
head_description: "Redact out sensitive information using regular expression from documents of different formats"

############################# Header ############################
title: "Sanitize DOCM Files via C# and Regular Expressions in .NET Core Apps"
description: "Find and remove sensitive information from Office & OpenOffice Documents, Spreadsheets & Presentations as well as DOCM on Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Document Text Redaction for .NET API"
    content: |
        A single format-independent interface for sanitization of sensitive and classified information from the PDF, Word, Excel, PowerPoint documents and images, including the ability to change metadata and remove comments. With GroupDocs.Redaction for .NET tool you can redact out the classified information and save redacted document in PDF, transforming all pages into raster images or keep the document in its original format for further editing.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redact Text from DOCM using Regular Expressions via C#"
    content_left: |
        [GroupDocs.Redaction](/redaction/net/) allows .NET developers to use full strength of regular expressions to redact DOCM file with a few easy steps.

        *   Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & load DOCM file
        *   Create an instance of [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) class to find and replace the text
        *   Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of RegexRedaction
        
    title_right: "Get Started with Redaction API"
    content_right: |
        Install from command line as ```nuget install GroupDocs.Redaction``` or via Package Manager Console of Visual Studio with ```Install-Package GroupDocs.Redaction```. 
        Alternatively, get the offline MSI installer or DLLs in a ZIP file from [downloads](https://downloads.groupdocs.com/redaction/net), and reference it in your project manually.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.docm"))
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