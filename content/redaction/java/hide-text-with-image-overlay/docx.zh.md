
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 的覆盖层在 DOCX 中隐藏文本"
head_description: "使用 GroupDocs.Redaction for Java 阻止 DOCX 文件中的私人文本。保持布局不变，同时隐藏敏感数据。"

############################# Header ############################
title: "在 Java 中保护 DOCX 文本" 
description: "快速使用 Java 和 GroupDocs.Redaction for Java 隐藏 DOCX 文件中的个人、法律或商业细节。"
subtitle: "GroupDocs.Redaction for Java 的关键工具" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Java 是什么"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发人员提供工具来清理 DOCX 文件。轻松编辑名称、数字或注释。

############################# Steps ############################
steps:
    enable: true
    title: "在 Docx 中编辑敏感内容"
    content: |
      在您的 Java 项目中使用 GroupDocs.Redaction for Java 轻松清理文档。
      
      1. 使用您的文件初始化 Redactor。
      2. 选择编辑应如何工作。
      3. 选择要隐藏的文本和覆盖颜色。
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
        // 在 DOCX 中使用覆盖遮盖文本

        // 创建 Redactor 并加载您的文档
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 选择编辑选项
            // 选择文本和颜色
            ReplacementOptions opt = new ReplacementOptions(java.awt.Color.RED);
            
            ExactPhraseRedaction redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 保存已编辑版本
            redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "日常使用的编辑工具"
  description: "GroupDocs.Redaction for Java 为您提供简单的选项，以隐藏文档中的敏感细节，同时保持其可用性。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "简单的编辑选项"
  features:
    # feature loop
    - title: "查找并更改文本"
      content: "在几秒钟内隐藏或替换单词。"

    # feature loop
    - title: "阻止图像的某些部分"
      content: "遮盖图像或扫描内容的某些区域。"

    # feature loop
    - title: "擦除背景信息"
      content: "删除隐藏的元数据，如作者身份或日期。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找文本并隐藏"
      content: |
        使用模式匹配自动隐藏关键短语
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您要编辑的文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 设置正则表达式模式和覆盖样式
              ReplacementOptions repl_opt = new ReplacementOptions(java.awt.Color.BLUE);
              RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);
              
              // 应用编辑逻辑
              redactor.apply(redaction);

              // 保存您的清理文档
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
    title: "使用 Java 编辑 DOCX 文件"
    exclude: "DOCX"
    description: "通过使用 Java 中的工具来隐藏或删除 DOCX 中的敏感内容。"
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