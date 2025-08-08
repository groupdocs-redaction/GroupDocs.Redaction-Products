---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: zh
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
head_title: "使用 Java 删除文档中的机密数据"
head_description: "使用 GroupDocs.Redaction for Java 保护您的敏感信息。轻松隐藏、删除或删除PDF、Office文件和图像中的私人内容。"

############################# Header ############################
title: "使用 GroupDocs.Redaction 保护机密数据"
description: "轻松从PDF、Word、Excel、PowerPoint和图像格式中移除私有数据、删除文本和清理元数据，使用可靠的 Java 工具包。"
words:
  for: "用于"

actions:
  main: "Maven 下载"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "许可"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "准备好开始了吗？"
  description: "免费试用 GroupDocs.Redaction 的功能或请求许可证。"

release:
  title: "版本 {0} 已发布"
  notes: "查看新功能"
  downloads: "下载"

code:
  title: "删除文档内容的步骤"
  more: "更多示例"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // 加载带有 Redactor 实例的源文件
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // 定义删除标准和设置
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // 执行删除操作
        RedactorChangeLog result = redactor.apply(red);

        // 保存应用删除的文件
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction 一览"
  description: "为您的 Java 应用程序增强专业删除工具"
  features:
    # feature loop
    - title: "删除敏感文本"
      content: "使用 GroupDocs.Redaction for Java，您可以通过可定制的覆盖层或替换搜索和隐藏私人文本。支持PDF、Word、Excel等格式，适合监管合规和安全文件共享。"

    # feature loop
    - title: "隐藏图像"
      content: "根据需要识别和遮蔽图像，可以完全或部分。定义检测规则和区域坐标以高效保护视觉数据。"

    # feature loop
    - title: "清理嵌入的元数据"
      content: "文件可能携带隐藏的信息，如作者名称、创建工具或设备详细信息。GroupDocs.Redaction for Java 使得您可以检测和清理Word、Excel、图像及其他格式的元数据。"

    # feature loop
    - title: "删除嵌入对象"
      content: "通过删除注释、评论或其他嵌入项目等对象，彻底清理文档，以消除任何机密信息的痕迹。"

############################# Platforms ############################
platforms:
  enable: true
  title: "平台独立性"
  description: "GroupDocs.Redaction for Java 适用于主要操作系统、框架和开发平台。"
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
  title: "支持的文件格式"
  description: |
    GroupDocs.Redaction for Java 支持与以下 [文件格式](https://docs.groupdocs.com/redaction/java/supported-document-formats/) 的操作。
  groups:
    # group loop
    - color: "green"
      content: |
        ### MS Office 格式
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### 其他Office格式
        * **可移植:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **文本格式:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### 其他格式
        * **网络:** HTM, HTML, MD
        * **图像:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **电子书:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "您可以用 GroupDocs.Redaction 做什么"
  description: "快速定位和删除PDF、Office文档和图像中的内容，精准无误。"

  items:
    # feature loop
    - icon: "search"
      title: "精准搜索"
      content: "使用区分大小写和不区分大小写的搜索模式查找并删除完全匹配。"

    # feature loop
    - icon: "text"
      title: "查找并替换文本"
      content: "自动检测并替换或删除机密文本。"

    # feature loop
    - icon: "image"
      title: "使用自定义图像覆盖"
      content: "使用图像块遮盖删除文本，保持布局的同时隐藏细节。"

    # feature loop
    - icon: "search"
      title: "使用正则表达式进行高级删除"
      content: "利用正则表达式检测复杂模式并智能删除。"

    # feature loop
    - icon: "table"
      title: "仅删除特定区域"
      content: "通过定义精确的区域来限制删除，使其仅适用于选定的页面或区域。"

    # feature loop
    - icon: "template"
      title: "清理元数据字段"
      content: "识别并清理文档元数据，包括作者、公司或跟踪数据。"

    # feature loop
    - icon: "pdf"
      title: "以所需格式导出"
      content: "在不损失布局完整性的情况下，保存您的删除文件为PDF或其他支持的格式。"

    # feature loop
    - icon: "template"
      title: "清除所有元数据"
      content: "仅需一个命令，就可以从支持的文件中完全删除元数据。"

    # feature loop
    - icon: "hyperlink"
      title: "自动化删除策略"
      content: "创建可重用的删除配置，存储为XML，以便在多个文件中进行一致的批量删除。"


############################# Code samples ############################
code_samples:
  enable: true
  title: "代码示例"
  description: "常见 GroupDocs.Redaction for Java 使用案例示例"
  items:
    # code sample loop
    - title: "使用正则表达式进行删除"
      content: |
        GroupDocs.Redaction for Java 使 Java 开发者能够应用 [基于正则表达式的删除](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression)，并使用可选的图像遮盖：
        {{< landing/code title="使用正则表达式删除Word文档">}}
        ```java {style=abap}
        // 创建一个 Redactor 类的实例
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // 使用正则表达式定义删除规则
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // 使用蓝色方框覆盖所有匹配文本
            redactor.apply(redaction);

            // 保存已删除的Word文档
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "删除所有元数据"
      content: |
        使用我们的API，您可以在一步中 [删除元数据](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) 跨越多种文件类型：
        {{< landing/code title="从演示文稿中删除所有元数据">}}
        ```java {style=abap}   
        // 将演示文稿的路径提供给 Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // 配置删除选项
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // 从演示文稿中删除所有元数据
            redactor.apply(red);

            // 保存清理后的演示文件
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
