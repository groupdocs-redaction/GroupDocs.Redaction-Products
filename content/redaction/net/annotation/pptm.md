---
############################# Static ############################
layout: "autogen"
draft: false
path: "redaction/net/annotation/pptm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact Annotations in PPTM Documents using Regular Expressions via .NET Core"
head_description: "Redact out sensitive information in annotations using regular expression from documents of different formats"

############################# Header ############################
title: "Redact PPTM Files Annotations via C# and Regular Expressions in .NET Core Apps"
description: "Find and remove sensitive information from Office & OpenOffice Documents, Spreadsheets & Presentations as well as PPTM on Windows, Linux & macOS"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Document Annotation Redaction for .NET API"
    content: |
        A single format-independent interface for sanitization of sensitive and classified information from the PDF, Word, Excel, PowerPoint documents and images, including the ability to change metadata and remove annotations. With GroupDocs.Redaction for .NET tool you can redact out the classified information and save redacted document in PDF, transforming all pages into raster images or keep the document in its original format for further editing.

############################# Steps ############################
steps:
    enable: true
    title_left: "Redact Annotations from PPTM using Regular Expressions via C#"
    content_left: |
        [GroupDocs.Redaction](/redaction/net/) allows .NET developers to use full strength of regular expressions to redact PPTM file with a few easy steps.

        *   Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & load PPTM file
        *   Create an instance of [AnnotationRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/annotationredaction) class to find and replace the comments
        *   Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of AnnotationRedaction
        
    title_right: "How to use GroupDocs Redaction API"
    content_right: |
        Install package from command line as ```nuget install GroupDocs.Redaction``` or via Package Manager Console of Visual Studio with ```Install-Package GroupDocs.Redaction```. 
        Alternatively, get the offline MSI installer or DLLs in a ZIP file from [downloads](https://downloads.groupdocs.com/redaction/net), and reference it in your project manually.  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptm"))
        {
        	redactor.Apply(new AnnotationRedaction("(?im:john)", "[redacted]"));
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