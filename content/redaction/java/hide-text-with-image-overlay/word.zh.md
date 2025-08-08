
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 WORD 中编辑文本"
head_description: "使用 GroupDocs.Redaction for Java 通过颜色块覆盖 WORD 文件中的敏感文本，同时保持文档结构不变。"

############################# Header ############################
title: "使用 Java 对 WORD 文件进行覆盖编辑" 
description: "使用由 Java 和 GroupDocs.Redaction for Java 提供的颜色覆盖，隐藏 WORD 文档中的重要细节。"
subtitle: "GroupDocs.Redaction for Java 的功能" 

############################# About ############################
about:
    enable: true
    title: "认识 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 使 Java 用户能够完全控制 WORD 的编辑。您可以隐藏任何想要的内容——文本、视觉效果或元数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Word 格式中的私人信息"
    content: |
      GroupDocs.Redaction for Java 为 Java 开发人员提供了快速清理文件和保护其内容的方法。
      
      1. 启动 Redactor 并加载 Word 文件。
      2. 选择您的编辑选项。
      3. 添加文本模式和覆盖颜色。
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
        // 在 WORD 中使用覆盖隐藏文本

        // 使用 Redactor 打开文档
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 设置编辑偏好
            // 添加关键字并选择颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用并保存您的已编辑文件
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多的编辑能力"
  description: "使用 GroupDocs.Redaction for Java 从文件中删除可见和隐藏的内容，同时保持布局不变。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "简单、干净的输出"
  features:
    # feature loop
    - title: "替换文本"
      content: "覆盖不应被看到的单词或术语。"

    # feature loop
    - title: "遮盖视觉内容"
      content: "使用彩色覆盖层隐藏图像或它们的部分。"

    # feature loop
    - title: "擦除元数据"
      content: "删除文件属性中隐藏的详细信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "基于正则表达式的编辑"
      content: |
        了解如何使用正则表达式自动隐藏特定内容
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载要编辑的文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 定义您的正则表达式模式和覆盖颜色
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 应用编辑
              redactor.apply(redaction);

              // 保存您的清理版本
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
    title: "使用 Java 编辑 WORD 中的内容"
    exclude: "WORD"
    description: "通过使用 Java 隐藏或删除敏感数据来保持 WORD 文档的私密性。"
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