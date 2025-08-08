
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 WORD 移除私人文本"
head_description: "通过使用 GroupDocs.Redaction for Java 和 Java 保护您的 WORD 文件中的敏感数据。快速简单的清理。"

############################# Header ############################
title: "使用 Java 在 WORD 文件中编辑或删除文本" 
description: "使用 GroupDocs.Redaction for Java 和 Java 保护您 WORD 文件中的重要内容。自信地编辑商业、法律或个人数据。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供一种可靠的方法来编辑 WORD 文件。用少量的代码清理文本、图像、评论和隐藏细节。

############################# Steps ############################
steps:
    enable: true
    title: "编辑 Word 文档的步骤"
    content: |
      在您的 Java 项目中使用 GroupDocs.Redaction for Java，在分享前清理文件。
      
      1. 创建一个 Redactor 并加载 Word 文档。
      2. 设置您想要的编辑选项。
      3. 选择您想查找和替换的文本。
      4. 应用编辑并保存文件。
   
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
        // 在 WORD 文档中编辑

        // 使用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 选择您的编辑规则
            // 输入搜索和替换文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 运行编辑并保存新文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多编辑功能"
  description: "GroupDocs.Redaction for Java 可以帮助您清理不同文件类型中的敏感信息。快速移除文本、图片和隐藏的元数据。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "编辑文本、图像和元数据"
  features:
    # feature loop
    - title: "搜索和替换文本"
      content: "在整个文件中查找特定内容并替换或删除，支持正则表达式。"

    # feature loop
    - title: "覆盖页面部分"
      content: "使用覆层隐藏照片或文档的某些区域。"

    # feature loop
    - title: "清理元数据"
      content: "删除额外信息，如作者、时间戳或删除的记录。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "基于正则表达式的编辑"
      content: |
        使用正则表达式查找文本，从而隐藏如电话号码、日期或 ID 等内容。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载您的文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 设置电子邮件正则表达式模式和替换值
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 应用文本编辑
              redactor.apply(redaction);

              // 保存更新后的文档
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "在 Java 中编辑 WORD 内容"
    exclude: "WORD"
    description: "使用 Java 隐藏或删除 WORD 文档中的个人和私人内容。轻松保护您的文件。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/java/replace-sensitive-text//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/java/replace-sensitive-text//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/java/replace-sensitive-text//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/java/replace-sensitive-text//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/java/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/java/replace-sensitive-text//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---