













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "zh/redaction/net/metadata/tiff"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  


############################# Head ############################
head_title: "Apply Metadata Redactions to PDF, DOCX, PPT, PPTX, XLS, XLSX in .NET"
head_description: "GroupDocs.Redactions .NET API allows software developers to apply metadata redactions to different file formats like PDF DOC DOCX RTF XLSX CSV PPT PPTX & images"

############################# Header ############################
title: "Redact & Filter Metadata from PDF, DOCX, PPT, PPTX, XLS, XLSX & More"
description: "GroupDocs.Redactions .NET API allows software developers to redact or filter metadata from various file formats like PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX and many others"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Metadata Redaction?"
    content: |
        Metadata is a kind of data that provides information about other data. In other words you many think of metadata as references to data. It helps to summarize basic information about data which can be used to easily track and manage data. GroupDocs.Redaction for .NET is a powerful native API that allows software developers to redact sensitive and classified information from various documents types without installing any external software or third-party tool. It has provided support for various filters such as author, company, category, size of a document, created date, title, LastPrinted, comments and so on.   It helps users to apply metadata redactions to various popular documents formats like word processing documents, Excel worksheets, presentations, PDF and raster image files. Developers can also update, replace or erase metadata by applying filters or using search. Moreover, developers can easily apply multiple redactions in a single call. So better give it a try to automate your document and metadata redaction process by downloading the API and explore its basic and advanced features.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "How to Clean Metadata from TIFF Document in C#"
      content_left: |
        GroupDocs.Redaction for .NET is a powerful API that allows programmers to redact, hide or replace the classified information from numerous popular document types using filters or search by regular expression.
        The following .NET code example shows how to apply metadata redaction to replace all or specific metadata in the document with empty or minimal values.

      title_right: "Apply Metadata Redaction to TIFF File"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class 
        * Call Redactor.Apply method with EraseMetadataRedaction object of [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)
        * Call Redactor.Save method to save the document to "*_Redacted.*" file in original format
        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: "Redact Metadata from TIFF File via .NET"
      content_left: |
        GroupDocs.Redaction .NET API makes developers life easy by helping them to embed documents automation and reporting jobs with just couple of lines of code without any external dependencies.
        The following C# .NET code example shows how software developers can remove sensitive data from document's metadata with just a couple of lines of code.
        
      title_right: "Metadata Redaction from TIFF Files"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class 
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 
        * Call Redactor.Save method to save the document to "*_Redacted.*" file in original format
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "System Requirements"
      content_left: |
        GroupDocs.Redaction for .NET APIs are supported on all major platforms and operating systems. For complete system requirements guide, please visit [system requirements](https://docs.groupdocs.com/redaction/net/system-requirements/) Before executing the code below, please make sure that you have the following prerequisites installled on your system:
        * Operating Systems: Microsoft Windows, Linux, MacOS
        * Development Environment:  Visual Studio, Xamarin, MonoDevelop etc
        * Frameworks: .NET Framework, .NET Standard, .NET Core, Mono
        * Get the latest version of GroupDocs.Redaction .NET APIs from [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/)
        
      title_right: "Why Use GroupDocs.Redaction"
      content_right: |
        * Allow users to add custom document formats and types of redactions
        * No additional software is required to remove sensitive information
        * Ability to set page range rendering document as PDF
        * Easy way to redact different types of metadata: author name, version, title, subject, description and many more
        * Document information extraction - file type, page count etc.
        * Full support for Multiple data formats


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