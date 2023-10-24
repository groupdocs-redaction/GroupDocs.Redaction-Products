
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "zh/redaction/net/metadata/company/docx"
otherformats: BMP DOC DOCM DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "编辑 C# 中 DOCX 个文档中的敏感元数据"
head_description: "通过对不同格式的文档应用过滤器来应用元数据密文"

############################# Header ############################
title: "从 C# 中的 DOCX 元数据中删除公司名称"
description: "GroupDocs.Redaction s 提供了灵活的 API，允许使用过滤器搜索和替换/删除任何元数据属性。"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是元数据编辑？"
    content: |
        编辑是指从电子文档中删除不需要或机密的信息。所有文件格式，包括 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSX 等，都有一些元数据属性。这些属性包括作者姓名、类别、公司名称、评论、创建时间、上次更新等等。有时您需要完全删除不需要的元数据字段，或者可能需要更新它们的值。还有一些与文件相关的隐藏数据，可以使用各种工具和技术进行查看。在很多情况下，您不希望任何人访问这些数据。使用 GroupDocs.Redaction API，您可以对这些元数据属性中的任何一个应用元数据编辑。您可以通过筛选所需的元数据来更改或删除它们。在本指南中，我们将解释如何从 C# 中的 DOCX 元数据中删除公司名称。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "编辑 C# 中的 DOCX 元数据"
      content_left: |
        以下代码允许您搜索和编辑 DOCX 文档中的敏感数据。你可以通过设置过滤器来设置密文范围，例如设置为 metadataFilter.Company。-它将取消所有元数据项中的正则表达式匹配项，但 “公司” 属性除外：
        

      title_right: "如何编辑 DOCX 元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例并上传 DOCX 文件
        * 创建 [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 类的实例，从文档的元数据中查找和替换敏感数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中使用 metadataFilter.Company
        * 使用 [metadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 的对象调用 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 方法        
      gisthash: "28e28d1f0f09bb1286cd97b95b22712"
      gistfile: "RedactCompanyMetadata.cs"

    - title_left: "移除 C# 中的 DOCX 元数据"
      content_left: |
        您可以使用 eraseMetadataredAction 类将文档中的所有元数据或特定元数据替换为空（空白或最小）值。以下代码显示了如何筛选然后从 DOCX 文档中删除元数据属性。以下示例将该文档的所有属性都清空：
        
        
      title_right: "擦除 DOCX 元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) 类的实例并上传 DOCX 文件
        * 创建 [eraseMetadataredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) 实例以删除文档的元数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中用 metadataFilter.Company 替换 metadataFilter.all 
        * 使用 [metadataSearchredAction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction) 的对象调用 [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) 方法
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "系统要求"
      content_left: |
        GroupDocs.Redaction for .NET 支持安装了 .NET 平台的任何 32 位或 64 位操作系统。它不需要安装任何外部软件或第三方工具。有关完整的系统要求指南，请访问 [系统要求](https://docs.groupdocs.com/redaction/net/system-requirements)
        
      title_right: "安装说明"
      content_right: |
        以 ``nuget install GroupDocs.Redaction ``的形式从命令行安装，或者使用 ``Install-Package GroupDocs.Redaction ``通过 Visual Studio 的包管理器控制台安装。 
        或者，从 [downloads](https://downloads.groupdocs.com/redaction/net) 获取 ZIP 文件中的离线 MSI 安装程序或 DLL，然后在项目中手动引用。

############################# Demos ############################
demos:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---