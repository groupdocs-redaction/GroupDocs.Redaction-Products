
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:55
draft: false
lang: zh
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 删去 PHOTO 中的元数据"
head_description: "GroupDocs.Redaction for Java 帮助您从 PHOTO 文件中去除可能泄露个人或商业细节的隐藏数据。"

############################# Header ############################
title: "使用 Java 从 PHOTO 中移除元数据" 
description: "使用 Java 工具移除隐藏元数据，以保持您的 PHOTO 文件安全。"
subtitle: "GroupDocs.Redaction for Java 的亮点" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 Java 开发人员提供在 PHOTO 文件中隐藏敏感内容的工具，包括文本、图像部分和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何从 Photo 文件中删除元数据"
    content: |
      在您的 Java 应用中使用 GroupDocs.Redaction 来擦除文档中的元数据。
      
      1. 启动一个 Redactor 并打开 Photo 文件。
      2. 设置规则以删除隐藏字段。
      3. 应用遮蔽以清理文件。
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
        // 清理 PHOTO 文件中的元数据

        // 用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // 选择要遮蔽的元数据字段
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 应用并保存文件
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "从文档中移除私人信息"
  description: "GroupDocs.Redaction for Java 通过删除敏感文本、图像内容和元数据来清理文件。非常适合保护隐私和安全。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "实用的遮蔽功能"
  features:
    # feature loop
    - title: "文本清理"
      content: "查找并删除不应被分享的单词或数字。"

    # feature loop
    - title: "图像遮蔽"
      content: "在敏感内容的图像部分上添加覆盖层。"

    # feature loop
    - title: "元数据删除"
      content: "清理可能包含私人信息的文件详细信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "删除隐藏元数据字段"
      content: |
        此示例展示了如何去除 PHOTO 文档中的作者和标题字段。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  在遮蔽工具中打开 PHOTO 文件
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // 遮蔽作者字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 遮蔽标题字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 运行该过程
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 保存清理后的文件
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
    title: "使用 Java 删除 PHOTO 元数据"
    exclude: "PHOTO"
    description: "通过使用 Java 工具保护您的 PHOTO 文档，删除元数据。"
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