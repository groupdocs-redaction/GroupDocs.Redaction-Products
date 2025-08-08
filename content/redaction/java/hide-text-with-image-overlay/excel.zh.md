
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 EXCEL 中覆盖文本"
head_description: "通过应用颜色覆盖来保护 EXCEL 文件中的敏感内容，使用 GroupDocs.Redaction for Java。保持文档的布局不变。"

############################# Header ############################
title: "在 Java 中编辑 EXCEL 数据" 
description: "使用 Java 代码来遮盖 EXCEL 电子表格中的敏感信息。保持数据安全的有效方法。"
subtitle: "GroupDocs.Redaction for Java 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "为什么选择 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 是为希望快速隐藏或清理 EXCEL 电子表格内容的 Java 开发人员构建的。

############################# Steps ############################
steps:
    enable: true
    title: "在 Excel 电子表格中隐藏信息"
    content: |
      GroupDocs.Redaction for Java 通过只需很少的行来帮助 Java 开发人员保护文件。
      
      1. 启动 Redactor 并加载您的电子表格。
      2. 根据需要设置编辑规则。
      3. 选择文本和覆盖颜色。
      4. 应用并保存文件。
   
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
        // 使用覆盖在 EXCEL 中隐藏文本

        // 创建 Redactor 并加载您的文件
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 选择编辑规则
            // 输入要隐藏的内容并选择颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用编辑并保存文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "基本数据保护工具"
  description: "使用 GroupDocs.Redaction for Java 在不破坏布局或含义的情况下，从电子表格中隐藏或删除敏感信息。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "为安全数据清理而设计"
  features:
    # feature loop
    - title: "编辑或隐藏文本"
      content: "查找并遮挡需要保护的任何文本。"

    # feature loop
    - title: "遮盖敏感视觉内容"
      content: "在图表区域或图像上应用彩色块。"

    # feature loop
    - title: "删除元数据"
      content: "清除文档历史、作者姓名或时间戳。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正则表达式编辑"
      content: |
        使用正则表达式自动查找和隐藏文本
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您的电子表格
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 设置模式和覆盖详情
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 应用编辑
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
    title: "使用 Java 编辑 EXCEL 表格"
    exclude: "EXCEL"
    description: "使用覆盖层和 Java 的工具来隐藏或清除 EXCEL 中的敏感数据。"
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