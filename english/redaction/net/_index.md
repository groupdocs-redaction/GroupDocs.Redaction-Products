---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "C# .NET Redaction API | Hide Private Text from PDF Word Excel Images"
head_description: "Document redaction API for .NET. Redact, hide or remove sensitive content from PDF, Microsoft Word, Excel, ‎presentations, & raster images."

############################# Header ############################
title: "Secure Classified Data via Redaction API"
description: "‎Redact, hide or remove sensitive content & metadata from documents, worksheets, presentations, PDF and raster image files using .NET API.‎‎"
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for .NET"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
        product: "GroupDocs.Redaction"
        platform: ".NET"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "Overview"

            # button loop
            - link: "#features"
              text: "Features"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET is an API library that helps you erase sensitive and classified data from ‎various file formats, such as, Microsoft Word, Excel, PowerPoint and PDF. Our Redaction API’s single ‎format-independent interface supports redaction of various types, e.g., text redaction, metadata ‎redaction, annotation redaction, and tabular document redaction. GroupDocs.Redaction for .NET API ‎also allows you to redact password protected files. You are allowed to save the document in its original ‎format as well as create a sanitized PDF document with raster images of original pages.‎‎
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          Following is an overview of GroupDocs.Redaction for .NET:
      
        right:
          enable: true
          icon: "fab fa-html5"
          title: "Overview"
          content: |
            * Redact Text
            * Redact Metadata
            * Redact Annotation
            * Redact Tabular Document
            * Redact Protected Files
            * Customization
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction for .NET supports following [document file formats](https://docs.groupdocs.com/redaction/net/supported-document-formats/):

        right:
          enable: true
          table:
            # table loop
            - title: "Redact Text, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **Fixed Layout**: PDF
                * **Raster Images**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for .NET supports following Operating Systems, Frameworks & Package Managers:‎
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operating Systems"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "Supported Frameworks"
              content: |
                * .NET Framework 2.0 or higher
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "Package Manager"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "Development Environments"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for .NET Features"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Perform case-sensitive search for exact phrase redaction"

      # feature loop
      - icon: "fas fa-eye"
        content: "Use color box to hide redacted text instead of string replacement"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Locate & redact out any text using regular expression search"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Filter all or any combination of classified metadata information of document"

      # feature loop
      - icon: "fas fa-code"
        content: "Quickly erase complete metadata information of specific document"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Set a scope of the redaction to a specific worksheet and/or column in Excel"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Remove all or specific comments and other annotations from the document"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Search & remove sensitive data from the annotation text‎"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Ability to work with your own formats & redactions"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Support for raster image formats and image region redactions"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Specify a set of redaction rules (policy) in XML file"

      # feature loop
      - icon: "fas fa-columns"
        content: "Specify Pages Range and PDF Compliance Level while Conversion to PDF"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Edit or Delete EXIF Metadata from Image Files"

      # feature loop
      - icon: "fas fa-envelope"
        content: "Redact Embedded Images inside the PDF, Word & Presentation Documents"

      # feature loop
      - icon: "fas fa-print"
        content: "Save a Redaction Policy as an XML File"

    more_feature:
      # more_feature_loop
      - title: "Redact your Classified Data with Ease & Control"
        content: |
          GroupDocs.Redaction for .NET API grants you complete control over how you want to hide or erase ‎your important classified information from supported document. To use our Redaction API is pretty ‎simple and straight forward.  

          In following example, we load a supported document, redact out any ‎text, matching "2 digits, space or nothing, 2 digits, again space and 6 digits" (such as 12 34 567890) with a blue color box using ‎C#. Once that is done, it saves the document in its original format by renaming it with an added suffix ‎‎“_Redacted”:‎

          ```cs
          // Create an instance of Redactor class
          using (Redactor redactor = new Redactor("sample.docx"))
          {‎
            // Apply redaction
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          ‎}‎
          ```

############################# Support ############################
support:
    enable: true

############################# Solutions ############################
solutions:
    enable: true
    title: "GroupDocs.Redaction offers document viewing APIs for other popular development environments"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for Java"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java"

############################# Back to top ###############################
back_to_top:
  enable: true
---