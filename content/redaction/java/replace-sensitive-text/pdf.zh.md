
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 PDF 中编辑敏感文本"
head_description: "使用 GroupDocs.Redaction for Java 查找并删除您 PDF 文件中的私人数据。简单、快速且可靠的文本编辑。"

############################# Header ############################
title: "使用 Java 从 PDF 文件中移除敏感数据" 
description: "使用 Java 和 GroupDocs.Redaction for Java 清理 PDF 文件。编辑个人、法律或商业内容。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供了一种简单的方法来清理 PDF 文件。移除或替换文本、图像、评论和隐藏数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Pdf 文件中编辑文本"
    content: |
      使用 GroupDocs.Redaction for Java，Java 开发者可以在几个步骤中移除敏感内容。
      
      1. 创建一个 Redactor 并加载您的 Pdf 文件。
      2. 选择您需要的编辑设置。
      3. 输入要搜索的文本及其替代内容。
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
        // 如何清理 PDF 文件

        // 创建一个 Redactor 并加载文档
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 设置您的编辑规则
            // 添加要移除的文本及其替代文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用编辑并保存新文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多编辑功能"
  description: "GroupDocs.Redaction for Java 在多种格式中移除敏感信息。编辑文本、图像和元数据，同时保持文件可读。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "文本和图像编辑工具"
  features:
    # feature loop
    - title: "查找并替换文本"
      content: "搜索任何单词或短语并进行替换。支持纯文本或正则表达式。"

    # feature loop
    - title: "隐藏图像内容"
      content: "使用彩色遮罩隐藏图片或部分图像。"

    # feature loop
    - title: "清理元数据"
      content: "在分享之前移除作者姓名、日期或其他隐藏信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式编辑文本"
      content: |
        使用正则表达式查找并隐藏电子邮件、ID或自定义格式等模式。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您想要编辑的文档
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 添加电子邮件正则表达式和替换文本
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 应用编辑于匹配内容
              redactor.apply(redaction);

              // 保存编辑后的版本
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
    title: "使用 Java 编辑 PDF 文件"
    exclude: "PDF"
    description: "通过使用 Java 工具来保护个人或商业信息，编辑 PDF 内容。"
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