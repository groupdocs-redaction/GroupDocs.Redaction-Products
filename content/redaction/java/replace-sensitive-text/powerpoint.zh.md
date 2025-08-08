
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:56
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 从 POWERPOINT 移除私人文本"
head_description: "利用 GroupDocs.Redaction for Java 和 Java 保护您 POWERPOINT 文件中的敏感数据。快速、简单的文本编辑。"

############################# Header ############################
title: "在 POWERPOINT 文件中编辑或隐藏敏感文本，使用 Java" 
description: "使用 Java 和 GroupDocs.Redaction for Java 保护您 POWERPOINT 文件中的敏感内容。无论是个人还是商业，您的数据保持隐私。"
subtitle: "您可以使用 GroupDocs.Redaction for Java 做些什么" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供编辑 POWERPOINT 内容所需的一切。清理文本、图像、注释、评论和元数据，涵盖流行文件类型。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Powerpoint 文档中的内容步骤"
    content: |
      使用 GroupDocs.Redaction for Java 移除或覆盖您 Java 应用中的私人内容。简单、快速的编辑。
      
      1. 初始化一个 Redactor 并加载您的 Powerpoint 文件。
      2. 设置所需的编辑选项。
      3. 指定要查找的文本和替代文本。
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
        // 在 POWERPOINT 文件中编辑文本的方法

        // 使用 Redactor 构造加载您的文件
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 设置您的编辑偏好
            // 选择要查找的内容及其替代文本
            ReplacementOptions opt = new ReplacementOptions("[redacted]");
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用编辑并保存新的 POWERPOINT 文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "额外的编辑工具"
  description: "GroupDocs.Redaction for Java 帮助您删除或隐藏多种文件格式中的敏感内容。确保文档在共享之前干净且安全。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "编辑工具和选项"
  features:
    # feature loop
    - title: "在文件中替换机密文本"
      content: "找到并替换文件中任何地方的匹配文本。支持正则表达式和智能搜索选项。"

    # feature loop
    - title: "隐藏敏感图像"
      content: "使用覆盖层覆盖图像或特定区域，调整页面设置、颜色等。"

    # feature loop
    - title: "清理隐藏的元数据"
      content: "移除隐藏的数据，如作者身份、时间戳或可能涉及隐私的评论。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "基于模式的编辑与正则表达式"
      content: |
        使用正则表达式搜索并编辑敏感文本模式，如电子邮件或ID。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您要清理的文档
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 定义电子邮件正则表达式模式和要替换的文本
              ReplacementOptions repl_opt = new ReplacementOptions("[redacted]");
              String emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              RegexRedaction redaction = new RegexRedaction(emailRegex, repl_opt);
              
              // 应用编辑规则
              redactor.apply(redaction);

              // 保存最终编辑后的文件
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
    title: "使用 Java 编辑 POWERPOINT 内容"
    exclude: "POWERPOINT"
    description: "使用 Java 工具在 POWERPOINT 文件中保护官方和个人数据。确保文档安全和隐私。"
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