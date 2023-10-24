
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "zh/redaction/java/metadata/category/ppsm"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  
ad_headline: "编辑元数据 | Java"
ad_description: "从 Java 中的 PPSM 元数据中删除类别名称"
############################# Head ############################
head_title: "从 Java 中的 PPSM 元数据中删除类别名称"
head_description: "GroupDocs.Redaction s 提供了灵活的 API，允许使用过滤器搜索和替换/删除任何元数据属性。"

############################# Header ############################
title: "从 Java 中的 PPSM 元数据中删除类别名称"
description: "GroupDocs.Redaction s 提供了灵活的 API，允许使用过滤器搜索和替换/删除任何元数据属性。"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "什么是元数据编辑？"
    content: |
        编辑是指从电子文档中删除不需要或机密的信息。所有文件格式，包括 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSX 等，都有一些元数据属性。这些属性包括作者姓名、类别、公司名称、评论、创建时间、上次更新等等。有时您需要完全删除不需要的元数据字段，或者可能需要更新它们的值。还有一些与文件相关的隐藏数据，可以使用各种工具和技术进行查看。在很多情况下，您不希望任何人访问这些数据。使用 GroupDocs.Redaction API，您可以对这些元数据属性中的任何一个应用元数据编辑。您可以通过筛选所需的元数据来更改或删除它们。在本指南中，我们将解释如何从 Java 中的 PPSM 元数据中删除类别名称。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "编辑 Java 中的 PPSM 元数据"
      content_left: |
        以下代码允许您搜索和编辑 PPSM 文档中的敏感数据。你可以通过设置过滤器来设置密文范围，例如设置为 metadataFilter.Category。-它会取消所有元数据项中的正则表达式匹配项，但 “Category” 属性除外： 

      title_right: "如何编辑 PPSM 元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 PPSM 文件
        * 创建 [MetadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 类的实例，从文档的元数据中查找和替换敏感数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中使用 metadataFilters.Category
        * 使用 [metadataSearchredAction] 的对象调用 redactor.save 方法 (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 

      gisthash: "480e989781148cd44a7a7a8823887ae21"
      gistfile: "RedactCategoryMetadata.java"
      
    - title_left: "移除 Java 中的 PPSM 元数据"
      content_left: |
        您可以使用 eraseMetadataredAction 类将文档中的所有元数据或特定元数据替换为空（空白或最小）值。以下代码显示了如何筛选然后从 PPSM 文档中删除元数据属性。以下示例将该文档的所有属性都清空： 
        
      title_right: "从 PPSM 文件中删除类别元数据"
      content_right: |
        * 创建 [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) 类的实例并上传 PPSM 文件
        * 创建 [metadataSearchredAction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 类的实例来移除文档的元数据
        * 通过设置过滤器来设置密文范围，例如在下面的代码中用 metadataFilter.category 替换 metadataFilter.all
        * 使用 [metadataSearchredAction] 的对象调用 redactor.save 方法 (https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/MetadataSearchRedaction) 
        
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