
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 XLSX 移除私人文本"
head_description: "通过使用 GroupDocs.Redaction for Java 编辑文本和元数据来保护您的 XLSX 数据。有效的保护措施。"

############################# Header ############################
title: "使用 Java 清理 XLSX 文件" 
description: "使用 Java 和 GroupDocs.Redaction for Java 从 XLSX 文件中移除敏感内容。确保电子表格的安全。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "为什么选择 GroupDocs.Redaction for Java?"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供工具来清理 XLSX 文件。用少量的代码编辑文本、元数据、图像等。

############################# Steps ############################
steps:
    enable: true
    title: "从 Xlsx 文件中编辑数据"
    content: |
      在任何 Java 应用中使用 GroupDocs.Redaction for Java，在分享之前移除文本或隐藏内容。
      
      1. 创建一个 Redactor 实例并加载您的文件。
      2. 选择您想要的编辑选项。
      3. 选择要查找的文本及其替代内容。
      4. 应用编辑并保存您的文档。
   
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
        // 如何编辑 XLSX 电子表格

        // 创建一个 Redactor 并加载文件
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 选择编辑设置
            // 输入搜索和替换文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用更改并保存
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "实用的编辑工具"
  description: "GroupDocs.Redaction for Java 帮助从多种文件中移除私人内容。在不失去格式的情况下清理文档。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "智能内容保护"
  features:
    # feature loop
    - title: "搜索和替换文本"
      content: "查找并更新或隐藏单元格中的敏感数据。"

    # feature loop
    - title: "隐藏视觉内容"
      content: "使用彩色遮罩隐藏图表、图像或范围。"

    # feature loop
    - title: "清理元数据"
      content: "移除作者信息、创建日期以及其他背景数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式编辑"
      content: |
        查找并编辑如账号或模式等值，使用正则表达式。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开要处理的文件
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 添加电子邮件正则表达式规则和替换
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 应用编辑规则
              redactor.apply(redaction);

              // 保存更新后的文件
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
    title: "在 Java 中编辑 XLSX 内容"
    exclude: "XLSX"
    description: "使用 Java 功能清理和保护 XLSX 文件中的内容。"
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