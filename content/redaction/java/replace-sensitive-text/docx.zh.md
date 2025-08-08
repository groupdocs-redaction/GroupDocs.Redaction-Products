
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 DOCX 移除私人文本"
head_description: "利用 GroupDocs.Redaction for Java 保护您 DOCX 文件中的内容。快速、有效的文本、图像和元数据编辑。"

############################# Header ############################
title: "在 DOCX 文档中使用 Java 编辑或删除文本" 
description: "使用 Java 和 GroupDocs.Redaction for Java 保护您 DOCX 文件中的个人或商业内容。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 帮助 Java 开发者清理和编辑 DOCX 文件。移除文本、图片、评论和隐藏数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Docx 文件中编辑内容"
    content: |
      在您的 Java 项目中使用 GroupDocs.Redaction for Java，在分享之前清理文件。
      
      1. 创建一个 Redactor 并加载文件。
      2. 选择您的编辑选项。
      3. 输入要搜索的文本及其替代文本。
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
        // 在 DOCX 文件中编辑内容

        // 使用 Redactor 加载文档
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 设置编辑选项
            // 定义要查找和替换的内容
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用编辑并保存
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "编辑选项"
  description: "GroupDocs.Redaction for Java 使您能够清理多种文件类型中的敏感内容。在不丢失结构的情况下保护文件安全。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "内容移除工具"
  features:
    # feature loop
    - title: "替换文本"
      content: "查找特定内容并在整个文档中替换。"

    # feature loop
    - title: "隐藏图像或部分"
      content: "用彩色遮罩覆盖敏感视觉内容。"

    # feature loop
    - title: "移除隐藏数据"
      content: "清理元数据，例如作者姓名、时间戳或文档属性。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "基于正则表达式的编辑"
      content: |
        使用正则表达式检测并编辑如电话号码或电子邮件等模式。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 设置电子邮件正则表达式和替换文本
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 运行编辑
              redactor.apply(redaction);

              // 保存清理后的文件
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
    title: "使用 Java 清理 DOCX 文件"
    exclude: "DOCX"
    description: "使用 Java 提供的工具编辑或替换 DOCX 文档中的敏感内容。"
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