---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/net/metadata/subject/ppsm"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 

############################# Head ############################
head_title: "Metadata Redactions from Documents in C#"
head_description: "Redact sensitive metadata in C# by applying filters for documents of different formats"

############################# Header ############################
title: "Metadata Redaction from PPSM Document in C#"
description: "GroupDocs.Redactions API allows to search and then update or remove any confidential data from metadata of a document."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Metadata Redaction?"
    content: |
        Mostly people are concerned with text redaction of a document. But metadata redaction is equally as important. Metadata is the hidden data of a document that can contain confidential inforation which you might not want to share with other. Metadata redaction refers to the removal of unwanted or confidential information from electronic documents. Metadata of a document includes author name, category, company name, comments, creation time, last updated and many more. Sometimes you need to completely delete unwanted metadata fields or you might want to update their values. With GroupDocs.Redaction API you can apply metadata redactions to any of these metadata properties. You can change or delete them by filtering the metadata you want. In this guide we will explain how you can redact subject metadata from PPSM document in C#.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Subject from PPSM Document"
      content_left: |
        Following code allows you to search and redact sensitive data from a PPSM document. You can set scope for redaction by setting filter, e.g. to MetadataFilter.Company. - it will leave the regular expressions matches undone in all metadata items, except “Company” property:
        
      title_right: "How to Redact PPSM Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload PPSM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) class to find and replace sensitive data from document's metadata
        * Set scope for redaction by setting filter, e.g. Use MetadataFilter.Subject in below code 
        * Call [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "fe7bf28f64f61d748d50026fbc1350fe"
      gistfile: "RedactSubjectMetadata.cs"

    - title_left: "Remove PPSM Metadata in C#"
      content_left: |
        You can replace all or specific metadata in the document with empty (blank or minimal) values using EraseMetadataRedaction class. Following code shows how you can filter and then remove a metadata property from a PPSM document.The example below blanks out all properties of the document:
        
      title_right: "Erase PPSM Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) class & upload PPSM file
        * Create an instance of [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) to remove metadata of the document
        * Set scope for redaction by setting filter, e.g. Replace MetadataFilter.All with MetadataFilter.Subject in below code 
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

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---