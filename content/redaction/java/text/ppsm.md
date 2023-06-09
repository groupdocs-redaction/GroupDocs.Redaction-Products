













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/java/text/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact PPSM Text via Exact Phrase/Regular Expression in Java"
head_description: "GroupDocs.Redactions Java API enables developers to redact text from PDF DOC DOCX RTF XLSX CSV PPT PPTX & images via exact phrase or regular expression in Java"

############################# Header ############################
title: "How to Redact, Hide or Remove Text from PPSM Files using Java"
description: "GroupDocs.Redactions Java API allows to redact, hide or remove sensitive text from word processing documents, worksheets, presentations, PDFs & images."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Text Redaction?"
    content: |
        Text Redaction is the process of removing the confidential or unwanted text or information from digital documents while leaving intact the rest of the document or paragraph containing it. Redaction helps users as well as organization to protect their sensitive information by hiding or permanently removing them.   Using GroupDocs.Redaction Java API users can now redact, hide or remove sensitive text from word processing documents, worksheets, presentations, PDF and raster image files. The API provides a wide range of options and methods for the redaction of private information in the documents. It supports search and redact using exact match or regular expressions,  Use textual (exemption codes) or graphical (colored rectangles) redactions and many more. So why not give it a try and automate your document redaction process by downloading the API and explore its basic and advanced features. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redact PPSM Exact Phrase in Java"
      content_left: |
        GroupDocs.Redaction allows to easily redact data of sensitive or private nature from your documents. The most popular redaction case is to remove a text from a document. 

        The following code can be used to apply textual redaction to a particular part of a document via exact phrase. It allows users to replace personal exact phrase "Michal Clark" with personal (or any exemption code),

      title_right: "Remove Sensitive Data from PPSM"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPSM file
        * Call Redactor.apply method with new instance of ExactPhraseRedaction class
        * Call redactor.save method with object of [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Call redactor.save method to save the changes 

      gisthash: "3202859fc19b5dfd14e8f073b70a18f8"
      gistfile: "redact_exact_phrase.java"
      
    - title_left: "Case Sensitive Text Redaction in PPSM"
      content_left: |
        The following example enables users to perform exact phrase case-sensitive redaction to remove or hide a particular chuck of text inside a document. By default, search for exact phrase is case insensitive. 
        
      title_right: "Perform Case Sensitive Redaction via Java"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPSM file
        * Call Redactor.apply method with new instance of ExactPhraseRedaction class
        * Call redactor.save method with object of [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Call redactor.save method to save the changes 
        
      gisthash: "a43e3ce358f93df92373b5441bc579fb"
      gistfile: "case_sensitive_redaction.java"

    - title_left: "Redact Text in PPSM via Color Box"
      content_left: |
        Instead of removing a redacted text or placing a string over there, it is also possible to put color box over the redacted text. In this case the matched text will be removed and a colored rectangle will be placed over redacted text.
        
      title_right: "Use Color Box to Remove Text in Java"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPSM file
        * Call Redactor.apply method with new instance of ExactPhraseRedaction class
        * Call redactor.save method with object of [ExactPhraseRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/ExactPhraseRedaction)
        * Call redactor.save method to save the changes 
        
      gisthash: "6d83e791388b6834a372dc90f4b455f6"
      gistfile: "redact_text_using_color_box.java"

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