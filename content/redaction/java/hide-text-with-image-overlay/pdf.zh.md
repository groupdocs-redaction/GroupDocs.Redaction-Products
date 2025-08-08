
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 PDF 中隐藏私人文本"
head_description: "GroupDocs.Redaction for Java 允许您通过放置彩色框隐藏 PDF 文件中的敏感信息。保护数据而不改变文件外观。"

############################# Header ############################
title: "使用 Java 在 PDF 文档中遮盖文本" 
description: "通过 Java 完全控制 PDF 文件内容。使用编辑功能来保护财务、法律或个人信息。"
subtitle: "GroupDocs.Redaction for Java 的主要特性" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 提供的功能"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发人员提供一种简单的方法来隐藏或移除 PDF 文件中的内容。遮盖不同文件类型中的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Pdf 文件中的机密信息"
    content: |
      GroupDocs.Redaction for Java 使 Java 开发人员可以通过几个简单的步骤隐藏私人内容。
      
      1. 启动 Redactor 并加载您的 Pdf 文件。
      2. 设置您的编辑偏好。
      3. 选择要查找的内容并选择覆盖颜色。
      4. 应用编辑并保存文档。
   
    code:
      platform: "java"
      copy_title: "复制"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "样本删除内容"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "点击复制"
        copy_done: "已复制"
      links:
        #  loop
        - title: "更多示例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "文档"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // 使用彩色覆盖在 PDF 中遮盖文本

        // 将文件路径传递给 Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 调整编辑设置
            // 设置目标文本和颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用并保存已编辑的 PDF
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "控制文档中的可见内容"
  description: "GroupDocs.Redaction for Java 允许您阻止或移除文件的某些部分，同时保持其易于查看和共享。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "强大的编辑工具"
  features:
    # feature loop
    - title: "精确定位并隐藏文本"
      content: "搜索文档并隐藏特定单词或短语以保护私人信息。"

    # feature loop
    - title: "遮盖图像"
      content: "添加覆盖层以完全或部分隐藏视觉内容。"

    # feature loop
    - title: "删除元数据"
      content: "清除隐藏的文档详细信息，以避免无意曝光。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式隐藏文本"
      content: |
        此示例使用正则表达式查找和隐藏特定内容
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载您要处理的文件
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 设置文本模式和覆盖颜色
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 应用编辑
              redactor.apply(redaction);

              // 保存更改
              SaveOptions saveOptions = new SaveOptions();
              saveOptions.setAddSuffix(true);
              saveOptions.setRasterizeToPDF(false);
              redactor.save(saveOptions);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "复制"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
          copy_tip: "点击复制"
          copy_done: "已复制"
        top_links:
          #  loop
          - title: "下载结果"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "更多示例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "文档"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "准备好开始了吗？"
  description: "免费尝试 GroupDocs.Redaction 的功能或请求许可证"
  items:
    #  loop
    - title: "Maven 下载"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "许可证"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "使用 Java 保护 PDF 文件"
    exclude: "PDF"
    description: "使用 Java 来覆盖或删除 PDF 文档中的内容。这是确保私人信息安全的极好方法。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/java/hide-text-with-image-overlay//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/java/hide-text-with-image-overlay//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-text-with-image-overlay//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---