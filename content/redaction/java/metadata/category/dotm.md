---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/java/metadata/category/dotm"
otherformats: PDF DOC DOT DOCX DOCM RTF XLSX XLSM XLTX XLTM XLS XLT PPTX PPT PPSX POT PPS PPTM 
ad_headline: "Redact Metadata | Java"
ad_description: "Redact Category Name from DOTM Metadata in Java"

############################# Head ############################
head_title: "Redact Category Name from DOTM Metadata in Java"
head_description: "GroupDocs.Redactions provides a flexible API that allows to search & replace/remove any metadata property using filters."

############################# Header ############################
title: "Redact Category Name from DOTM Metadata in Java"
description: "GroupDocs.Redactions provides a flexible API that allows to search & replace/remove any metadata property using filters."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Metadata Redaction?"
    content: |
        Redaction refers to the removal of unwanted or confidential information from electronic documents. All the file formats including PDF, DOC, DOCX, PPT, PPTX, XLS, XLSX and others have some metadata properties. These properties include author name, category, company name, comments, creation time, last updated and many more. Sometimes you need to completely delete unwanted metadata fields or you might want to update their values. There are also some hidden data associated with the files which can be viewed using various tools and techniques. There are many cases when you don't want this data to be accessed by anyone. With GroupDocs.Redaction API you can apply metadata redactions to any of these metadata properties. You can change or delete them by filtering the metadata you want. In this guide we will explain how you can redact category name from DOTM metadata in Java.

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "Redact DOTM Metadata in Java"
      content_left: |
        Following code allows you to search and redact sensitive data from a DOTM document. You can set scope for redaction by setting filter, e.g. to MetadataFilter.Category. It will leave the regular expressions matches undone in all metadata items, except “Category” property:
        
      title_right: "How to Redact DOTM Metadata"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload DOTM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to find and replace sensitive data from document's metadata
        * Set scope for redaction by setting filter, e.g. Use MetadataFilters.Category in below code 
        * Call save method with object of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction)
        
      gisthash: "480e989781148cd44a7aa8823887ae21"
      gistfile: "RedactCategoryMetadata.java"

    - title_left: "Remove DOTM Metadata in Java"
      content_left: |
        You can replace all or specific metadata in the document with empty (blank or minimal) values using EraseMetadataRedaction class. Following code shows how you can filter and then remove a metadata property from a DOTM document.The example below blanks out all properties of the document:
        
      title_right: "Erase Category Metadata from DOTM File "
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload DOTM file
        * Create an instance of [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) class to remove metadata of the document
        * Set scope for redaction by setting filter, e.g. Replace MetadataFilter.All with MetadataFilter.Category in below code
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

demos:
    enable: true
        

about_formats:
    enable: true


more_formats:
    enable: true


back_to_top:
    enable: true
---