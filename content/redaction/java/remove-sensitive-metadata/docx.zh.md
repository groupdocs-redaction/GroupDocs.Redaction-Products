
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
head_title: "使用 Java 删除 DOCX 的元数据"
head_description: "使用 GroupDocs.Redaction for Java 清理您 DOCX 文件中的隐藏元数据。确保您的文档不泄露私人信息。"

############################# Header ############################
title: "使用 Java 清理 DOCX 文档中的元数据" 
description: "使用 Java 从 DOCX 文件中移除不必要的元数据。确保您的文件在共享或存储时保持私密和安全。"
subtitle: "GroupDocs.Redaction for Java 内部的关键工具" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Java？"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 Java 开发人员从 DOCX 文件中移除私人内容。轻松遮蔽文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "擦除 Docx 文件中的隐藏信息"
    content: |
      GroupDocs.Redaction 让您能够轻松删除 Java 应用中的元数据。
      
      1. 初始化 Redactor 并加载 Docx 文件。
      2. 设置工具以删除特定的元数据字段。
      3. 应用遮蔽以删除隐藏的信息。
      4. 保存更新的文件。
   
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
        // 从 DOCX 文件中删除元数据

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 选择要移除的元数据
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
  title: "保护文档中的敏感数据"
  description: "GroupDocs.Redaction for Java 能够从所有类型的文件中隐藏私人内容。确保没有隐藏数据被分享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "元数据、文本和图像遮蔽工具"
  features:
    # feature loop
    - title: "文本遮蔽"
      content: "查找并删除文档中的敏感文本。"

    # feature loop
    - title: "图像覆盖"
      content: "遮蔽图像中隐藏的私人视觉内容。"

    # feature loop
    - title: "元数据清理"
      content: "删除可能揭示隐藏信息的后台元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "如何移除元数据"
      content: |
        此示例展示了如何从 DOCX 文件中删除隐藏属性，如作者和标题。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您的 DOCX 文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 选择需要清理的作者字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 选择需要清理的标题字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 运行遮蔽
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
    title: "使用 Java 清理 DOCX 中的元数据"
    exclude: "DOCX"
    description: "使用 Java 从 DOCX 文档中删除隐藏的元数据。非常适合保护隐私和数据安全。"
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