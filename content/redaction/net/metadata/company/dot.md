
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "redaction/net/metadata/company/dot"
otherformats: BMP DOC DOCM DOCX DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact Sensitive Metadata from DOT Documents in C#"
head_description: "Apply metadata redaction by applying filters for documents of different formats"

############################# Header ############################
title: "Redact Company Name from DOT Metadata in C#"
description: "GroupDocs.Redactions provides a flexible API that allows to search & replace/remove any metadata property using filters."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Metadata Redaction?"
    content: |
        Redaction refers to the removal of unwanted or confidential information from electronic documents. All the file formats including PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX and others have some metadata properties. These properties include author name, category, company name, comments, creation time, last updated and many more. Sometimes you need to completely delete unwanted metadata fields or you might want to update their values. There are also some hidden data associated with the files which can be viewed using various tools and techniques. There are many cases when you don't want this data to be accessed by anyone. With GroupDocs.Redaction API you can apply metadata redactions to any of these metadata properties. You can change or delete them by filtering the metadata you want. In this guide we will explain how you can redact company name from DOT metadata in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact DOT Metadata in C#"
      content_left: |
        Following code allows you to search and redact sensitive data from a DOT document. You can set scope for redaction by setting filter, e.g. to MetadataFilter.Company. - it will leave the regular expressions matches undone in all metadata items, except "Company" property:
        

      title_right: "How to Redact DOT Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload DOT file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) class to find and replace sensitive data from document's metadata
        * Set scope for redaction by setting filter, e.g. Use MetadataFilter.Company in below code
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "28e28d1f0f09bbb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "Remove DOT Metadata in C#"
      content_left: |
        You can replace all or specific metadata in the document with empty (blank or minimal) values using EraseMetadataRedaction class. Following code shows how you can filter and then remove a metadata property from a DOT document.The example below blanks out all properties of the document:
        
        
      title_right: "Erase DOT Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload DOT file
        * Create an instance of [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) to remove metadata of the document
        * Set scope for redaction by setting filter, e.g. Replace MetadataFilter.All with MetadataFilter.Company in below code 
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "System Requirements"
      content_left: |
        GroupDocs.Redaction for .NET supports any 32-bit or 64-bit operating system where .NET platform is installed. It does not require any external software or third party tool to be installed. For complete system requirements guide, please visit [system requirements](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "Installation Instructions"
      content_right: |
        Install from command line as ```nuget install GroupDocs.Redaction``` or via Package Manager Console of Visual Studio with ```Install-Package GroupDocs.Redaction```. 
        Alternatively, get the offline MSI installer or DLLs in a ZIP file from [downloads](https://downloads.groupdocs.com/redaction/net), and reference it in your project manually.

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