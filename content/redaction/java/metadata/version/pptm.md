
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "redaction/java/metadata/version/pptm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "Redact Metadata | Java"
ad_description: "Redact Version from PPTM Metadata in Java"
############################# Head ############################
head_title: "Redact Version Metadata from PPTM Document in Java"
head_description: "GroupDocs.Redaction is a powerful sanitization API that enables you to remove or edit confidential information from over 30 document types."

############################# Header ############################
title: "Redact Version Metadata from PPTM Document in Java"
description: "GroupDocs.Redaction is a powerful sanitization API that enables you to remove or edit confidential information from over 30 document types."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Metadata Redaction?"
    content: |
        Saving the document in an original format requires deleting or redacting its metadata to remove all confidential data. For these purposes GroupDocs.Redaction provides metadata redaction API. GroupDocs.Redaction API allows to either save redacted documents in PDF, transform all pages into raster images or save redacted document in its original format for further editing. All the file formats including PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX and others have some metadata properties. These properties include author name, category, company name, comments, creation time, last updated and many more.There are also some hidden data associated with the files which can be viewed using various tools and techniques. With GroupDocs.Redaction API you can apply metadata redactions to any of these metadata properties. You can change or delete them by filtering the metadata you want. In this guide we will explain how you can redact Version metadata from PPTM document in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact PPTM Metadata in Java"
      content_left: |
        Following code allows you to search and redact sensitive data from a PPTM document. You can set scope for redaction by setting filter, e.g. to MetadataFilter.Version. It will leave the regular expressions matches undone in all metadata items, except "Version" property: 

      title_right: "How to Redact PPTM Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPTM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to find and replace sensitive data from document's metadata
        * Set scope for redaction by setting filter, e.g. Use MetadataFilters.Version in below code
        * Call save method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebaae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "Remove PPTM Metadata in Java"
      content_left: |
        You can replace all or specific metadata in the document with empty (blank or minimal) values using EraseMetadataRedaction class. Following code shows how you can filter and then remove a metadata property from a PPTM document.The example below blanks out all properties of the document: 
        
      title_right: "How to Erase Version Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPTM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to remove metadata of the document
        * Set scope for redaction by setting filter, e.g. Replace MetadataFilter.All with MetadataFilter.Version in below code
        * Call save method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "System Requirements"
      content_left: |
        GroupDocs.Redaction for Java APIs are supported on all major platforms and operating systems. For complete system requirements guide, please visit [system requirements](https://docs.groupdocs.com/redaction/java/system-requirements) Before executing the code below, please make sure that you have the following prerequisites installled on your system:
        * Operating Systems: Microsoft Windows, Linux, MacOS
        * Development Environment: NetBeans, Intellij IDEA, Eclipse etc
        * Java Runtime Environment: J2SE 6.0 and above
        * Get the latest version of GroupDocs.Redaction for Java from [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Why Use GroupDocs.Redaction"
      content_right: |
        * Allow users to add custom document formats and types of redactions
        * No additional software is required to remove sensitive information
        * Ability to set page range rendering document as PDF
        * Easy way to redact different types of metadata: author name, version, title, subject, description and many more
        * Document information extraction - file type, page count etc.
        

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