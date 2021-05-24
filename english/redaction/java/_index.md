---
############################# Static ############################
layout: "product"
date: 2021-04-27T09:31:06+03:00
draft: false

product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "Java Redaction API | Hide sensitive data from PDF Word Excel Image"
head_description: "Java document redaction API – Hide personal data from PDF, Word, Excel, PowerPoint presentations & raster images through various redaction types."

############################# Header ############################
title: "Redact Private Information via Java API"
description: "Exclude or hide personal information & metadata from documents, worksheets, presentations, PDF and raster image files using Java redaction API.‎‎"
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
        product: "GroupDocs.Redaction"
        platform: "Java"

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
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "Pricing"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API lets developers remove sensitive data from ‎popular file formats like Microsoft Word, Excel, PowerPoint, PDF and images so it can be used and distributed, but still protect confidential information too. The redaction library offers a single ‎format-independent interface to redact any type of classified information including social security numbers, medical information, financial, proprietary, legal or even trade details through text, metadata ‎and annotation redaction types. It allows you to save the document in its original format and create a sanitized PDF document with raster images of original pages.
    tabs:
      enable: true     
      
      ## TAB ONE ##
      tab_one:
        description: |
          Following is an overview of GroupDocs.Redaction for Java:

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
          GroupDocs.Redaction for Java supports following [document file formats](https://docs.groupdocs.com/redaction/java/supported-document-formats/):

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
          GroupDocs.Redaction for Java supports following Operating Systems, Frameworks & Package ‎Managers:‎
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "Operating Systems"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "Supported Frameworks"
              content: |
                * Java 7 (1.7) and above

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "Development Environments"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse
            # table loop
            - icon: "fas fa-tools"
              title: "Build Automation Tool"
              content: |
                * Maven

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java Features"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "Search and redact exact matches of a search string"

      # feature loop
      - icon: "fas fa-eye"
        content: "Control the redaction process and skip specific matches"

      # feature loop
      - icon: "fas fa-bolt"
        content: "Locate and redact using regular expressions"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "Built-in support for office formats and PDF"

      # feature loop
      - icon: "fas fa-code"
        content: "Wipe out metadata or redact metadata values"

      # feature loop
      - icon: "fas fa-cloud"
        content: "Limit redactions to specific worksheets and columns"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "Remove annotations or redact their texts"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "Use textual (exemption codes) or graphic (colored rectangles) redactions‎"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "Save the document in its original format or as a PDF with raster images of original pages"

      # feature loop
      - icon: "fas fa-border-all"
        content: "Support for raster image formats and image region redactions"

      # feature loop
      - icon: "fas fa-wrench"
        content: "Integration interface for implementing custom redaction and formats"

      # feature loop
      - icon: "fas fa-columns"
        content: "Edit or Remove EXIF Metadata from Image Files"

      # feature loop
      - icon: "fas fa-file-word"
        content: "Redact Embedded Images inside the PDF, Word & Presentation Documents"

    more_feature:
      # more_feature_loop
      - title: "Ensure Privacy by Redacting your Classified Data"
        content: |
          GroupDocs.Redaction for Java library empowers developers to redact text and images from supported documents by employing a variety of redaction types. To use our Redaction API is simple and straight forward.  

          The following code example uses a tabular document such as Microsoft Excel spreadsheet where the scope of redaction can be limited to a specific worksheet and/or column. It uses filters to redact the second column with emails on a worksheet "Customers", leaving all other emails untouched in the document.
          
          ```java
          final Redactor redactor  = new Redactor("sample.xlsx");
          try
          {
              CellFilter filter = new CellFilter();
              filter.setColumnIndex(1);
              filter.setWorkSheetName("Customers");
              Pattern expression = Pattern.compile("^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
              RedactorChangeLog result = redactor.apply(new CellColumnRedaction(filter, expression, new ReplacementOptions("[customer email]")));
              if (result.getStatus() != RedactionStatus.Failed)
              {
                  SaveOptions so = new SaveOptions();
                  so.setAddSuffix(true);
                  so.setRasterizeToPDF(false);
                  redactor.save(so);
              };
          }
          finally { redactor.close(); }
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
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-net.png"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net"

############################# Back to top ###############################
back_to_top:
  enable: true
---