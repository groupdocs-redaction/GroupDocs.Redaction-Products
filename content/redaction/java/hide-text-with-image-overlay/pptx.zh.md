
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 PPTX 演示文稿中隐藏文本"
head_description: "使用 GroupDocs.Redaction for Java 通过颜色覆盖阻止 PPTX 文件中的敏感内容。在不改变幻灯片的情况下隐藏关键信息。"

############################# Header ############################
title: "使用 Java 在 PPTX 演示文稿中遮盖文本" 
description: "轻松使用 Java 和 GroupDocs.Redaction for Java 保护 PPTX 幻灯片中的个人或商业细节。"
subtitle: "探索 GroupDocs.Redaction for Java 的功能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 的功能"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 允许 Java 开发人员在短短几步内隐藏或删除 PPTX 演示文稿中的文本、图像或元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Pptx 幻灯片中编辑私人内容"
    content: |
      GroupDocs.Redaction for Java 为 Java 开发人员简化了保护内容的过程。
      
      1. 使用您的演示路径设置 Redactor。
      2. 选择编辑应如何执行。
      3. 添加文本模式和覆盖颜色。
      4. 编辑幻灯片并保存。
   
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
        // 在 PPTX 中使用覆盖层阻挡文本

        // 使用 Redactor 初始化演示文稿
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 选择您的编辑偏好
            // 设置文本和覆盖颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 执行编辑并保存幻灯片组
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "强大的编辑工具"
  description: "借助 GroupDocs.Redaction for Java，在不影响布局或格式的情况下阻止或删除演示文稿中的敏感内容。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "跨幻灯片工作的功能"
  features:
    # feature loop
    - title: "隐藏或替换文本"
      content: "保护不应被看到的名称、术语或注释。"

    # feature loop
    - title: "遮盖视觉区域"
      content: "向幻灯片的图片或图形部分添加覆盖层。"

    # feature loop
    - title: "清除元数据"
      content: "在分享之前清除可能揭示作者身份或编辑历史的后台信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式编辑文本"
      content: |
        使用正则表达式查找和遮盖敏感词
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开演示文稿文件
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 设置搜索模式和覆盖颜色
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 运行编辑规则
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
    title: "使用 Java 工具保护 PPTX 幻灯片"
    exclude: "PPTX"
    description: "使用 Java 的编辑功能覆盖或完全移除 PPTX 演示文稿中的敏感内容。"
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