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
head_title: "Java 编辑 API |隐藏 PDF Word Excel 图像中的敏感数据"
head_description: "Java 文档编校 API – 通过各种编校类型隐藏 PDF、Word、Excel、PowerPoint 演示文稿和光栅图像中的个人数据."

############################# Header ############################
title: "通过 Java API 编辑私人信息"
description: "使用 Java 编校 API 从文档、工作表、演示文稿、PDF 和光栅图像文件中排除或隐藏个人信息和元数据."
button:
    enable: true

############################# SubMenu ############################
submenu:
    enable: true
    
    left:
        img_alt: "GroupDocs.Redaction for Java"
        image: "/border/groupdocs-redaction-java.svg"
        product: "GroupDocs.Redaction"
        platform: "Java"

    middle:
        button:
            # button loop
            - link: "#overview"
              text: "概述"

            # button loop
            - link: "#features"
              text: "特征"

            # button loop
            - link: "#support"
              text: "Support"

            # button loop
            - link: "https://products.groupdocs.app/redaction"
              text: "Live Demo"

            # button loop
            - link: "https://purchase.groupdocs.com/pricing/redaction/java"
              text: "价钱"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/java/"
        link_buy: "https://purchase.groupdocs.com"

############################# 概述 ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for Java API 允许开发人员从 Microsoft Word、Excel、PowerPoint、PDF 和图像等流行文件格式中删除敏感数据，以便可以使用和分发，但仍然可以保护机密信息。编校库提供了一个独立于格式的单一界面，可以通过文本、元数据和注释编校类型编校任何类型的分类信息，包括社会保险号、医疗信息、财务、专有、法律甚至贸易细节。它允许您以原始格式保存文档，并使用原始页面的光栅图像创建经过净化的 PDF 文档。
    tabs:
      enable: true     
      
      ## TAB ONE ##
      tab_one:
        description: |
          以下是 Java 的 GroupDocs.Redaction 的概述：

        right:
          enable: true
          icon: "fab fa-html5"
          title: "概述"
          content: |
            * 编辑文本
            * 编辑元数据
            * 编辑注释
            * 编辑表格文档
            * 编辑受保护的文件
            * 定制
      
      ## TAB TWO ##
      tab_two:
        description: |
          GroupDocs.Redaction for Java 支持以下 [文档文件格式](https://docs.groupdocs.com/redaction/java/supported-document-formats/)：

        right:
          enable: true
          table:
            # table loop
            - title: "编辑文本, Metadata & Comments"
              content: |
                * **Word**: DOC, DOCX, DOT, ODT, DOTX, DOCM, DOTM, RTF
                * **Excel**: XLS, XLSX, XLT, XLTX, XLSM, XLTM, CSV
                * **PowerPoint**: PPT, PPTX, PPS, PPSX, POTX, PPTM, PPSM, POTM
                * **固定布局**: PDF
                * **光栅图像**: JPG, BMP, PNG, GIF, TIFF

      ## TAB THREE ##
      tab_three:
        description: |
          GroupDocs.Redaction for Java 支持以下操作系统、框架和包管理器:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "操作系统"
              content: |
                * Microsoft Windows Desktop
                * Microsoft Windows Server
                * Linux
                * MacOS

            # table loop
            - icon: "fas fa-code"
              title: "支持的框架"
              content: |
                * Java 7 (1.7) 及更高版本

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-cogs"
              title: "开发环境"
              content: |
                * NetBeans
                * IntelliJ IDEA
                * Eclipse
            # table loop
            - icon: "fas fa-tools"
              title: "构建自动化工具"
              content: |
                * Maven

############################# 特征 ############################
features:
    enable: true
    title: "GroupDocs.Redaction for Java 特征"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "搜索和编辑搜索字符串的完全匹配"

      # feature loop
      - icon: "fas fa-eye"
        content: "控制编辑过程并跳过特定匹配"

      # feature loop
      - icon: "fas fa-bolt"
        content: "使用正则表达式查找和编辑"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "内置对办公格式和 PDF 的支持"

      # feature loop
      - icon: "fas fa-code"
        content: "清除元数据或编辑元数据值"

      # feature loop
      - icon: "fas fa-cloud"
        content: "限制对特定工作表和列的编辑"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "删除注释或编辑其文本"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "使用文本（豁免代码）或图形（彩色矩形）密文"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "将文档保存为原始格式或带有原始页面光栅图像的 PDF"

      # feature loop
      - icon: "fas fa-border-all"
        content: "支持光栅图像格式和图像区域编辑"

      # feature loop
      - icon: "fas fa-wrench"
        content: "用于实现自定义编辑和格式的集成接口"

      # feature loop
      - icon: "fas fa-columns"
        content: "从图像文件中编辑或删除 EXIF 元数据"

      # feature loop
      - icon: "fas fa-file-word"
        content: "编辑 PDF、Word 和演示文稿文档中的嵌入图像"

    more_feature:
      # more_feature_loop
      - title: "通过编辑您的机密数据确保隐私"
        content: |
          GroupDocs.Redaction for Java 库使开发人员能够通过使用各种编校类型从受支持的文档中编校文本和图像。使用我们的 Redaction API 非常简单直接。

          以下代码示例使用表格文档（例如 Microsoft Excel 电子表格），其中编辑范围可以限制为特定的工作表和/或列。它使用过滤器在工作表“客户”上用电子邮件编辑第二列，使文档中的所有其他电子邮件保持不变。
          
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
    title: "GroupDocs.Redaction 为其他流行的开发环境提供文档查看 API"

    solution:
        # solution loop
        - img_alt: "GroupDocs.Redaction for .NET"
          image: "/border/groupdocs-redaction-net.svg"
          product: "GroupDocs.Redaction"
          platform: ".NET"
          link: "/redaction/net/"

############################# Back to top ###############################
back_to_top:
  enable: true
---