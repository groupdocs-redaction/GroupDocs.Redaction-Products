---
############################# Static ############################
layout: "landing"
date: 2025-07-23T13:59:15
draft: false

lang: en
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Remove confidential data from documents using Java"
head_description: "Protect your sensitive information with GroupDocs.Redaction for Java. Effortlessly hide, redact, or delete private content in PDFs, Office files, and images."

############################# Header ############################
title: "Protect Confidential Data with GroupDocs.Redaction"
description: "Easily remove private data, redact text, and clean metadata from PDFs, Word, Excel, PowerPoint, and image formats using the reliable Java toolkit."
words:
  for: "for"

actions:
  main: "Maven Download"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Licensing"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Ready to Get Started?"
  description: "Try GroupDocs.Redaction features for free or request a license."

release:
  title: "Version {0} Released"
  notes: "See what’s new"
  downloads: "Downloads"

code:
  title: "Steps to Redact Document Content"
  more: "More examples"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Load your source file with a Redactor instance
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Define the redaction criteria and settings
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Execute the redaction operation
        RedactorChangeLog result = redactor.apply(red);

        // Save the file with redactions applied
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction at a Glance"
  description: "Enhance your Java applications with professional redaction tools"
  features:
    # feature loop
    - title: "Remove Sensitive Text"
      content: "With GroupDocs.Redaction for Java, you can search for and conceal private text using customizable overlays or replacements. Compatible with PDFs, Word, Excel, and more, it's ideal for regulatory compliance and secure document sharing."

    # feature loop
    - title: "Conceal Images"
      content: "Identify and mask images completely or partially based on your requirements. Define detection rules and area coordinates to secure visual data efficiently."

    # feature loop
    - title: "Clean Embedded Metadata"
      content: "Files may carry hidden information such as author names, creation tools, or device details. GroupDocs.Redaction for Java lets you detect and sanitize metadata in Word, Excel, images, and other formats."

    # feature loop
    - title: "Redact Embedded Objects"
      content: "Thoroughly sanitize documents by redacting objects like PDF annotations, comments, or other embedded items to eliminate any trace of confidential information."

############################# Platforms ############################
platforms:
  enable: true
  title: "Platform Independence"
  description: "GroupDocs.Redaction for Java works across major operating systems, frameworks, and development platforms."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Supported File Formats"
  description: |
    GroupDocs.Redaction for Java supports working with the following [file formats](https://docs.groupdocs.com/redaction/java/supported-document-formats/).
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office Formats
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Other Office Formats
        * **Portable:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Text Formats:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Other Formats
        * **Web:** HTM, HTML, MD
        * **Images:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBooks:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "What You Can Do with GroupDocs.Redaction"
  description: "Quickly locate and redact content from PDFs, Office documents, and images with precision."

  items:
    # feature loop
    - icon: "search"
      title: "Search with Precision"
      content: "Use case-sensitive and case-insensitive search modes to find and redact exact matches."

    # feature loop
    - icon: "text"
      title: "Find and Replace Text"
      content: "Automatically detect and substitute or delete confidential text across the document."

    # feature loop
    - icon: "image"
      title: "Overlay with Custom Images"
      content: "Use image blocks to obscure redacted text, preserving layout while hiding details."

    # feature loop
    - icon: "search"
      title: "Use Regex for Advanced Redaction"
      content: "Utilize regular expressions to detect complex patterns and redact intelligently."

    # feature loop
    - icon: "table"
      title: "Redact Specific Areas"
      content: "Limit redaction to selected pages or zones by defining precise areas to target."

    # feature loop
    - icon: "template"
      title: "Scrub Metadata Fields"
      content: "Identify and clean document metadata, including author, company, or tracking data."

    # feature loop
    - icon: "pdf"
      title: "Export in Desired Format"
      content: "Save your redacted files in PDF or another supported format without losing layout integrity."

    # feature loop
    - icon: "template"
      title: "Wipe All Metadata"
      content: "Completely remove metadata from supported files in just one command."

    # feature loop
    - icon: "hyperlink"
      title: "Automated Redaction Policies"
      content: "Create reusable redaction configurations stored in XML for consistent, batch redaction."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Code Samples"
  description: "Common GroupDocs.Redaction for Java use case examples"
  items:
    # code sample loop
    - title: "Redaction Using Regex"
      content: |
        GroupDocs.Redaction for Java empowers Java developers to apply [regex-based redaction](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) with optional image masking:
        {{< landing/code title="Redact Word Documents Using Regular Expressions">}}
        ```java {style=abap}
        // Create an instance of the Redactor class
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Define redaction rules using a regular expression
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Mask all matching text with blue square overlays
            redactor.apply(redaction);

            // Save the redacted Word document
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Remove All Metadata"
      content: |
        With our API, you can [delete metadata](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) across multiple file types in one step:
        {{< landing/code title="Remove All Metadata from Presentations">}}
        ```java {style=abap}   
        // Provide the path of the presentation to Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Configure the redaction options
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Erase all metadata from the presentation
            redactor.apply(red);

            // Save the cleaned presentation file
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
