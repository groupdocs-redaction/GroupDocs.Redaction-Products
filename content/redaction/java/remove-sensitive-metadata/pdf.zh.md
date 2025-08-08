
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 清除 PDF 中的元数据"
head_description: "使用 GroupDocs.Redaction for Java 删除或更新 PDF 文件中的隐藏元数据。在分享文档之前清除私人信息。"

############################# Header ############################
title: "使用 Java 从 PDF 文件中移除元数据" 
description: "使用 Java 保护您的 PDF 文件中的个人和商业信息。简单的工具帮助保护您的数据。"
subtitle: "GroupDocs.Redaction for Java 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 Java 开发人员提供隐藏 PDF 文档中文本、图像内容和元数据的工具。

############################# Steps ############################
steps:
    enable: true
    title: "清除 Pdf 文档中的元数据"
    content: |
      开始使用 GroupDocs.Redaction 来保护您在 Java 项目中的元数据。
      
      1. 设置一个 Redactor 并打开您的 Pdf 文件。
      2. 选择删除所有元数据字段。
      3. 运行遮蔽以清除隐藏数据。
      4. 保存已移除元数据的文件。
   
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
        // 清除 PDF 文件中的元数据

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // 设置元数据遮蔽选项
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 应用并保存更改
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "从文件中移除敏感信息"
  description: "GroupDocs.Redaction for Java 能够清理不同文档格式中的私人内容。保持文件安全，便于分享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "核心遮蔽功能"
  features:
    # feature loop
    - title: "文本遮蔽"
      content: "查找并删除文档中的个人或敏感词汇。"

    # feature loop
    - title: "覆盖图像"
      content: "在图像上放置覆盖层以隐藏私人视觉信息。"

    # feature loop
    - title: "元数据移除"
      content: "擦除可能泄露私人信息的隐藏元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "清除隐藏元数据"
      content: |
        此示例展示了如何更改或删除 PDF 文件中的元数据。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  使用红色工具打开 PDF 文件
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // 目标是作者元数据字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 目标是标题元数据字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 运行元数据清理
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 保存最终文件
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "使用 Java 元数据遮蔽保护 PDF 文件"
    exclude: "PDF"
    description: "使用 Java 删除 PDF 文件中的隐藏字段。通过简单的元数据清理工具保护隐私。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/java/remove-sensitive-metadata//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/java/remove-sensitive-metadata//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/java/remove-sensitive-metadata//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/java/remove-sensitive-metadata//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/java/remove-sensitive-metadata//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/java/remove-sensitive-metadata//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/java/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/java/remove-sensitive-metadata//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/java/remove-sensitive-metadata//jpeg/"
          description: "JPEG 图像"


---