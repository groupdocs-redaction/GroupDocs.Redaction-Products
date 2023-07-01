
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "zh/redaction/java/metadata/version/ppsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "编辑元数据 | Java"
ad_description: "从 Java 中的 PPSX 元数据编辑版本"
############################# Head ############################
head_title: "编辑 Java 中 PPSX 文档中的版本元数据"
head_description: "GroupDocs.Redaction 是一个功能强大的清理 API，可让您从 30 多种文档类型中删除或编辑机密信息。"

############################# Header ############################
title: "编辑 Java 中 PPSX 文档中的版本元数据"
description: "GroupDocs.Redaction 是一个功能强大的清理 API，可让您从 30 多种文档类型中删除或编辑机密信息。"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是元数据编辑？"
    content: |
        以原始格式保存文档需要删除或编辑其元数据才能删除所有机密数据。为此，GroupDocs.Redaction 提供了元数据编辑 API。GroupDocs.Redaction API 允许在 PDF 中保存已编辑的文档，将所有页面转换为光栅图像，或者将已编辑的文档以其原始格式保存以供进一步编辑。所有文件格式，包括 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSX 等，都有一些元数据属性。这些属性包括作者姓名、类别、公司名称、评论、创建时间、上次更新时间等等。还有一些与文件相关的隐藏数据，可以使用各种工具和技术进行查看。使用 GroupDocs.Redaction API，您可以对这些元数据属性中的任何一个应用元数据编辑。您可以通过筛选所需的元数据来更改或删除它们。在本指南中，我们将解释如何编辑 Java 中 PPSX 文档中的版本元数据。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "编辑 Java 中的 PPSX 元数据"
      content_left: |
        以下代码允许您搜索和编辑 PPSX 文档中的敏感数据。你可以通过设置过滤器来设置密文范围，例如设置为 metadataFilter.Version。它将撤消所有元数据项中的正则表达式匹配项，但 “Version” 属性除外： 

      title_right: "如何编辑 PPSX 元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 PPSX 文件
        * 创建 [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 类的实例，从文档的元数据中查找和替换敏感数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中使用 metadataFilters.Version
        * 使用 [metadataSearchredAction] 的对象调用保存方法 (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "aef660cb45245aebae5c5eaa8054769"
      gistfile: "RedactVersionMetadata.java"
      
    - title_left: "移除 Java 中的 PPSX 元数据"
      content_left: |
        您可以使用 eraseMetadataredAction 类将文档中的所有元数据或特定元数据替换为空（空白或最小）值。以下代码显示了如何筛选然后从 PPSX 文档中删除元数据属性。以下示例将该文档的所有属性都清空： 
        
      title_right: "如何删除版本元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 PPSX 文件
        * 创建 [metadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 类的实例来移除文档的元数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中用 metadataFilter.Version 替换 metadataFilter.all
        * 使用 [metadataSearchredAction] 的对象调用保存方法 (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
      gisthash: "84586804ee996134fd12f2061f989fd5"
      gistfile: "CleanMetadata.java"

    - title_left: "系统要求"
      content_left: |
        GroupDocs.Redaction for Java API 在所有主要平台和操作系统上都支持。要获取完整的系统需求指南，请访问 [系统要求](https://docs.groupdocs.com/redaction/java/system-requirements) 在执行以下代码之前，请确保在系统上安装了以下必备组件：
        * 操作系统：微软 Windows、Linux、Mac 操作系统
        * 开发环境：NetBeans、Intellij IDE、Eclipse 等
        * Java 运行时环境：J2SE 6.0 及更高版本
        * 从 [Maven] 获取最新版本的 GroupDocs.Redaction for Java (https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "为什么要使用 GroupDocs.Redaction"
      content_right: |
        * 允许用户添加自定义文档格式和密文类型
        * 无需其他软件即可删除敏感信息
        * 能够将呈现文档的页面范围设置为 PDF
        * 编辑不同类型的元数据的简便方法：作者姓名、版本、标题、主题、描述等等
        * 文档信息提取-文件类型、页数等
        

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