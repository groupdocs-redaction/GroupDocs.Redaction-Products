---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "redaction/java/regex/ppsm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSX PPT PPTM PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Redact PPSM Text via Regular Expression in Java"
head_description: "GroupDocs.Redactions Java API enables developers to redact text from PDF DOC DOCX RTF XLSX CSV PPT PPTX & images using regular expressions in Java"

############################# Header ############################
title: "How to Remove Text from PPSM Files using Regular Expressions and Java"
description: "GroupDocs.Redactions Java API allows to redact, hide or remove sensitive text from word processing documents, worksheets, presentations, PDFs & images using regular expressions."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "What is Text Sanitization?"
    content: |
        Text Redaction or Sanitization is the process of removing the confidential or unwanted text or information from digital documents while leaving intact the rest of the document or paragraph containing it. Redaction helps users as well as organization to protect their sensitive information by hiding or permanently removing them.   Using GroupDocs.Redaction Java API users can now redact, hide or remove sensitive text from word processing documents, worksheets, presentations, PDF and raster image files. The API provides a wide range of options and methods for the redaction of private information in the documents. It supports search and redact using regular expressions, usage of textual (exemption codes) or graphical (colored rectangles) redactions and many more. So why not give it a try and automate your document redaction process by downloading the API and explore its basic and advanced features. 

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redact PPSM using Regular Expressions in Java"
      content_left: |
        GroupDocs.Redaction allows to easily redact data of sensitive or private nature from your documents. The most popular redaction case is to remove a text from a document. 

        The following code can be used to apply textual redaction to a particular part of a document using regular expression. It allows users to replace all numbers, matching pattern "AA BB CCCCCC" with a  Blue color rectangle,

      title_right: "Remove Sensitive Data from PPSM"
      content_right: |
        * Create an instance of [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) class & upload PPSM file
        * Create an instance of [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction) class
        * Call redactor.apply method with object of RegexRedaction class
        * Call redactor.save method to save the changes 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
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