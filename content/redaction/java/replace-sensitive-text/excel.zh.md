
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 EXCEL 移除私人文本"
head_description: "利用 GroupDocs.Redaction for Java 和 Java 通过删除敏感内容保护您的 EXCEL 电子表格。快速而简单的编辑。"

############################# Header ############################
title: "使用 Java 在 EXCEL 文件中编辑或删除文本" 
description: "使用 GroupDocs.Redaction for Java 和 Java 清理您的 EXCEL 文件。非常适合保护商业或个人数据。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供了清理 EXCEL 文件所需的一切。精准地编辑或隐藏文本、图像、元数据和注释。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Excel 文件中编辑内容"
    content: |
      在您的 Java 项目中使用 GroupDocs.Redaction for Java，移除或覆盖您不想分享的文本。
      
      1. 创建一个 Redactor 并加载 Excel 文件。
      2. 选择您的编辑设置。
      3. 定义要查找的内容以及替换的内容。
      4. 运行编辑并保存文件。
   
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
        // 如何在 EXCEL 文件中编辑文本

        // 使用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 设置您的编辑规则
            // 输入目标文本和替换文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用并保存清理后的文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多编辑工具"
  description: "GroupDocs.Redaction for Java 有助于清理许多文档类型中的私人内容。在分享之前完美保护隐私。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "文本、图像和元数据编辑功能"
  features:
    # feature loop
    - title: "替换私人文本"
      content: "在整个文件中查找并更改匹配的单词或数字。使用搜索模式或精确匹配。"

    # feature loop
    - title: "隐藏图像的部分"
      content: "添加遮罩框以隐藏图片或单元格，选择颜色、大小和位置。"

    # feature loop
    - title: "移除背景信息"
      content: "清除隐藏数据，例如作者、时间戳或文档评论。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式编辑模式"
      content: |
        使用正则表达式查找并隐藏电子邮件地址或账号等模式。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您想要清理的文件
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 创建电子邮件正则表达式并设置替换文本
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 运行编辑过程
              redactor.apply(redaction);

              // 保存更新后的版本
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
    title: "使用 Java 编辑 EXCEL 中的内容"
    exclude: "EXCEL"
    description: "清理 EXCEL 文件中的私人数据，使用 Java。确保您的电子表格安全。"
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