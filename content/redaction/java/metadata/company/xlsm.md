
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "redaction/java/metadata/company/xlsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSX XLT XLTM XLTX  
ad_headline: "Redact Metadata | Java"
ad_description: "Redact Company Name from XLSM Metadata in Java"
############################# Head ############################
head_title: "Metadata Redaction From XLSM Document in Java"
head_description: "Easily search, replace, remove or edit metadata of various document types by applying filters to choose specific metadata properties using GroupDocs.Redactions API for Java."

############################# Header ############################
title: "Metadata Redaction From XLSM Document in Java"
description: "Easily search, replace, remove or edit metadata of various document types by applying filters to choose specific metadata properties using GroupDocs.Redactions API for Java."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Getting Started with Metadata Redaction"
    content: |
        Sometimes you need to completely delete unwanted metadata fields or you may want to update their values. There is also hidden data associated with files that can be viewed using various tools and techniques. There are many situations where you do not want this data to be accessible to anyone. Redaction means the removal of unwanted or confidential information from various documents. All file formats including PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX and others have specific metadata structures. Metadata properties include author name, category, company name, comments, creation time and last updated etc. With the GroupDocs.Redaction API you can apply metadata redaction to any of these metadata fields. You can change or delete them by filtering the metadata you want. In this guide we will explain how you can apply metadata redaction from XLSM document in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact Metadata of XLSM File"
      content_left: |
        Following code allows you to search and redact sensitive data from a XLSM document. You can set scope for redaction by setting filter, e.g. to MetadataFilter.Company. It will leave the regular expressions matches undone in all metadata items, except "Company" property: 

      title_right: "Steps to Redact Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLSM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to find and replace sensitive data from document's metadata
        * Set scope for redaction by setting filter, e.g. Use MetadataFilters.Company in below code
        * Call save method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "5b04349a19f1627145ab6a9f8f0f5fc0"
      gistfile: "RedactCompanyMetadata.java"
      
    - title_left: "Remove XLSM Metadata in Java"
      content_left: |
        You can replace all or specific metadata in the document with empty (blank or minimal) values using EraseMetadataRedaction class. Following code shows how you can filter and then remove a metadata property from a XLSM document.The example below blanks out all properties of the document: 
        
      title_right: "How to Erase Company Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload XLSM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to remove metadata of the document
        * Set scope for redaction by setting filter, e.g. Replace MetadataFilter.All with MetadataFilter.Company in below code
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