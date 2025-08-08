
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 XLSX 中阻止文本"
head_description: "GroupDocs.Redaction for Java 允许您通过彩色块覆盖 XLSX 文件中的敏感信息。隐藏数据，同时保持布局不变。"

############################# Header ############################
title: "使用 Java 在 XLSX 中隐藏数据" 
description: "使用 Java 和 GroupDocs.Redaction for Java 来遮盖 XLSX 文件中的私人内容，而不影响格式。"
subtitle: "GroupDocs.Redaction for Java 的主要特性" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 的工作原理"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 使 Java 开发人员能够保护 XLSX 文件。快速隐藏文本、图片或元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Xlsx 文档中的信息"
    content: |
      使用简单的代码在 Java 中保持文档的安全。
      
      1. 使用文件路径创建一个 Redactor。
      2. 设置您的编辑逻辑。
      3. 选择关键字和覆盖颜色。
      4. 编辑并保存文件。
   
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
        // 使用块在 XLSX 中隐藏信息

        // 使用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 设置编辑偏好
            // 添加文本和颜色块
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 保存更新后的文档
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "内置的隐私特性"
  description: "在不破坏结构的情况下注释使用 GroupDocs.Redaction for Java 阻止或删除文件中的内容。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "简单的隐私工具"
  features:
    # feature loop
    - title: "更改或隐藏文本"
      content: "轻松编辑或遮挡特定单词。"

    # feature loop
    - title: "遮盖图像的部分"
      content: "添加覆盖层以隐藏图表区域或图像。"

    # feature loop
    - title: "删除隐藏的信息"
      content: "清除用户信息或文件历史的元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式编辑内容"
      content: |
        使用模式匹配自动查找和隐藏文本
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开电子表格
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 定义模式和覆盖颜色
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 应用编辑规则
              redactor.apply(redaction);

              // 导出结果
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
    title: "使用 Java 编辑 XLSX 数据"
    exclude: "XLSX"
    description: "使用覆盖层或删除 XLSX 文件中的内容，以通过 Java 保持敏感数据的私密性。"
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