
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层保护 POWERPOINT 中的文本"
head_description: "使用 GroupDocs.Redaction for Java，您可以使用简单的覆盖框，在 POWERPOINT 幻灯片中阻止私人文本——无需更改布局。"

############################# Header ############################
title: "使用覆盖和 Java 在 POWERPOINT 中隐藏文本" 
description: "使用 Java 和 GroupDocs.Redaction for Java 通过遮盖敏感内容保护您的 POWERPOINT 幻灯片的安全。"
subtitle: "GroupDocs.Redaction for Java 的内部功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 介绍"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 帮助 Java 开发人员通过阻止或删除敏感内容（如文本、元数据或图像）来清理 POWERPOINT 幻灯片。

############################# Steps ############################
steps:
    enable: true
    title: "在共享前清理 Powerpoint 演示文稿"
    content: |
      使用 GroupDocs.Redaction for Java 在 Java 应用程序中隐藏或删除幻灯片中的敏感部分。
      
      1. 使用您的幻灯片组路径创建一个新的 Redactor。
      2. 定义您的编辑偏好。
      3. 设置文本模式和覆盖颜色。
      4. 运行并保存编辑后的文件。
   
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
        // 在 POWERPOINT 中覆盖文本区域

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 调整编辑设置
            // 输入文本并选择覆盖颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 编辑并保存更新后的文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "简单的敏感幻灯片编辑"
  description: "GroupDocs.Redaction for Java 使您可以轻松阻止或删除幻灯片中的内容，无论使用场景如何。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "适应的编辑工具"
  features:
    # feature loop
    - title: "查找并替换文本"
      content: "保护任何幻灯片上的敏感短语或标签。"

    # feature loop
    - title: "覆盖视觉部分"
      content: "在选定的幻灯片区域或图像上添加覆盖层。"

    # feature loop
    - title: "删除隐藏内容"
      content: "在共享之前清除幻灯片的元数据或修订备注。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正则表达式文本编辑"
      content: |
        学习使用模式匹配检测和编辑文本
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载幻灯片组
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 应用您的正则表达式规则
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 运行编辑
              redactor.apply(redaction);

              // 保存最终版本
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
    title: "使用 Java 保护 POWERPOINT 幻灯片"
    exclude: "POWERPOINT"
    description: "使用 Java 的覆盖编辑和清理工具，保持您的 POWERPOINT 幻灯片私密。"
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