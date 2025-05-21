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
head_title: "C# .NET 编辑 API |从 PDF Word Excel 图像中隐藏私人文本"
head_description: ".NET 的文档编辑 API。编辑、隐藏或删除 PDF、Microsoft Word、Excel、演示文稿和光栅图像中的敏感内容."

############################# Header ############################
title: "通过编辑 API 保护机密数据"
description: "使用 .NET API 编辑、隐藏或删除文档、工作表、演示文稿、PDF 和光栅图像文件中的敏感内容和元数据."
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
            - link: "https://purchase.groupdocs.com/pricing/redaction/net"
              text: "价钱"

    right:
        link_download: "https://downloads.groupdocs.com/redaction"
        link_learn: "https://docs.groupdocs.com/redaction/net/"
        link_buy: "https://purchase.groupdocs.com"

############################# Overview ############################
overview:
    enable: true
    content: |
      GroupDocs.Redaction for .NET 是一个 API 库，可帮助您从各种文件格式（例如 Microsoft Word、Excel、PowerPoint 和 PDF）中删除敏感和分类数据。我们的编校 API 的单一格式独立接口支持各种类型的编校，例如文本编校、元数据编校、注释编校和表格文档编校。 GroupDocs.Redaction for .NET API 还允许您编辑受密码保护的文件。您可以将文档保存为原始格式，并使用原始页面的光栅图像创建经过净化的 PDF 文档。
    tabs:
      enable: true
      
      ## TAB ONE ##
      tab_one:
        description: |
          以下是 .NET 的 GroupDocs.Redaction 的概述：
      
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
          GroupDocs.Redaction for .NET 支持以下 [文档文件格式](https://docs.groupdocs.com/redaction/net/supported-document-formats/)：

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
          GroupDocs.Redaction for .NET 支持以下操作系统、框架和包管理器:
        
        left:
          enable: true
          table:
            # table loop
            - icon: "fab fa-windows"
              title: "操作系统"
              content: |
                * Windows Desktop
                * Windows Server
                * Windows Azure
                * Linux

            # table loop
            - icon: "fas fa-code"
              title: "支持的框架"
              content: |
                * .NET Framework 2.0 或更高版本
                * .NET Standard 2.0
                * .NET Core 2.0

        right:
          enable: true
          table:
            # table loop
            - icon: "fas fa-box"
              title: "包管理器"
              content: |
                * NuGet

            # table loop
            - icon: "fas fa-tools"
              title: "开发环境"
              content: |
                * Microsoft Visual Studio
                * Xamarin.Android
                * Xamarin.IOS
                * Xamarin.Mac
                * MonoDevelop

############################# Features ############################
features:
    enable: true
    title: "GroupDocs.Redaction for .NET 特征"

    feature:
      # feature loop
      - icon: "fas fa-copy"
        content: "执行区分大小写的搜索，以查找准确的短语编辑"

      # feature loop
      - icon: "fas fa-eye"
        content: "使用颜色框隐藏编辑文本而不是字符串替换"

      # feature loop
      - icon: "fas fa-bolt"
        content: "使用正则表达式搜索查找和编辑任何文本"
      
      # feature loop
      - icon: "fas fa-file-powerpoint"
        content: "过滤文档的分类元数据信息的全部或任意组合"

      # feature loop
      - icon: "fas fa-code"
        content: "快速擦除特定文档的完整元数据信息"

      # feature loop
      - icon: "fas fa-cloud"
        content: "将编辑范围设置为 Excel 中的特定工作表和/或列"

      # feature loop
      - icon: "fas fa-remove-format"
        content: "从文档中删除所有或特定的评论和其他注释"

      # feature loop
      - icon: "fas fa-comment-slash"
        content: "从注释文本中搜索和删除敏感数据"

      # feature loop
      - icon: "fas fa-location-arrow"
        content: "能够使用您自己的格式和编辑"

      # feature loop
      - icon: "fas fa-border-all"
        content: "支持光栅图像格式和图像区域编辑"

      # feature loop
      - icon: "fas fa-wrench"
        content: "在 XML 文件中指定一组编辑规则（策略）"

      # feature loop
      - icon: "fas fa-columns"
        content: "在转换为 PDF 时指定页面范围和 PDF 合规级别"

      # feature loop
      - icon: "fas fa-file-word"
        content: "編輯或刪除圖像文件中的 EXIF 元數據"

      # feature loop
      - icon: "fas fa-envelope"
        content: "编辑 PDF、Word 和演示文稿文档中的嵌入图像"

      # feature loop
      - icon: "fas fa-print"
        content: "将编辑策略另存为 XML 文件"

    more_feature:
      # more_feature_loop
      - title: "轻松控制地编辑您的分类数据"
        content: |
          GroupDocs.Redaction for .NET API 让您可以完全控制如何从受支持的文档中隐藏或删除重要的分类信息。使用我们的 Redaction API 非常简单直接。  

          在下面的示例中，我们加载一个支持的文档，删除任何文本，使用 C# 匹配“2 位，空格或无，2 位，再次空格和 6 位”（例如 12 34 567890）和蓝色框。完成后，它会通过添加后缀“_Redacted”来重命名文档，以原始格式保存文档：

          ```cs
          // 创建一个 Redactor 类的实例
          using (Redactor redactor = new Redactor("sample.docx"))
          {
            // 应用编辑
            redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
            redactor.Save();
          }
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
        - img_alt: "GroupDocs.Redaction for Java"
          image: "https://www.groupdocs.cloud/templates/groupdocs/images/product-logos/groupdocs-redaction-java.png"
          product: "GroupDocs.Redaction"
          platform: "Java"
          link: "/redaction/java/"

############################# Back to top ###############################
back_to_top:
  enable: true
---