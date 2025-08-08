
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 PPTX 移除私人文本"
head_description: "利用 GroupDocs.Redaction for Java 和 Java 保护您 PPTX 演示文稿中的敏感细节。快速有效的编辑。"

############################# Header ############################
title: "使用 Java 清理 PPTX 文件中的文本" 
description: "使用 GroupDocs.Redaction for Java 和 Java 隐藏或删除您 PPTX 幻灯片中的内容。适用于商业、法律或个人用途。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供了一个坚实的方法来编辑或隐藏 PPTX 文件中的内容。精准地处理文本、图像、元数据和评论。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Pptx 演示中编辑内容"
    content: |
      借助 GroupDocs.Redaction for Java，您可以在几个步骤中清理 Java 演示文稿。
      
      1. 创建一个 Redactor 并加载您的 Pptx 文件。
      2. 选择符合您需求的编辑设置。
      3. 设置搜索词和替换内容。
      4. 应用更改并保存更新后的文件。
   
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
        // 在 PPTX 演示中编辑文本

        // 使用 Redactor 加载您的文档
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 设置编辑选项
            // 选择要查找的文本及其替代文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 编辑并保存文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多编辑工具"
  description: "GroupDocs.Redaction for Java 使您可以轻松隐藏或删除多种文件中的私人内容。在分享之前确保数据的安全。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "移除文本、图像和元数据的选项"
  features:
    # feature loop
    - title: "在任何地方替换文本"
      content: "在幻灯片中搜索并替换单词或短语。支持完整文本或模式。"

    # feature loop
    - title: "隐藏视觉内容"
      content: "使用覆盖框遮住幻灯片或图像的部分，选择颜色。"

    # feature loop
    - title: "移除元数据"
      content: "删除背景数据，如作者、创建日期或可能包含私人信息的注释。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "基于正则表达式的编辑"
      content: |
        使用正则表达式查找和移除电子邮件、电话号码或代码等模式。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您要清理的文件
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 定义一个电子邮件正则表达式模式和替换文本
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 根据模式应用编辑
              redactor.apply(redaction);

              // 保存清理后的版本
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
    title: "使用 Java 编辑 PPTX 内容"
    exclude: "PPTX"
    description: "使用 Java 从 PPTX 文档中删除私人或敏感信息。确保您的文件安全无忧。"
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