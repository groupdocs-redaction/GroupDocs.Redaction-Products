
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
head_title: "使用 Java 从 POWERPOINT 删除元数据"
head_description: "使用 GroupDocs.Redaction for Java 清理 POWERPOINT 文件中的隐藏元数据，保持文档私密和安全。"

############################# Header ############################
title: "使用 Java 删除 POWERPOINT 中的元数据" 
description: "使用针对 Java 的易用工具保护您的文件。在几步内清除元数据。"
subtitle: "使用 GroupDocs.Redaction for Java 您获得的功能" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Java？"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 是一个针对 Java 开发人员的遮蔽工具。它帮助您清理 POWERPOINT 文件中的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何从 Powerpoint 文件中清理元数据"
    content: |
      使用 GroupDocs.Redaction，您的 Java 应用可以快速清理文档中的元数据。
      
      1. 创建一个 Redactor 对象并加载文档。
      2. 选择要删除的元数据字段。
      3. 应用您的遮蔽设置。
      4. 导出没有隐藏数据的文档。
   
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
        // 从 POWERPOINT 文件中删除元数据

        // 使用红色工具打开文件
        final Redactor redactor = new Redactor("input.pptx");
        try
        {
            // 设置要删除的元数据
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 清理并保存文件
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "通过遮蔽保持您的文件安全"
  description: "GroupDocs.Redaction for Java 帮助清理私人或隐藏内容，以便文档可以安全分享。支持多种文件类型。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "您可以遮蔽的内容"
  features:
    # feature loop
    - title: "删除敏感文本"
      content: "查找并擦除文件中的个人或机密词汇。"

    # feature loop
    - title: "隐藏图像区域"
      content: "覆盖图像中不应被看到的部分。"

    # feature loop
    - title: "清理元数据"
      content: "删除可能揭示隐藏详细信息的字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "删除隐藏元数据字段"
      content: |
        此示例展示了如何从 POWERPOINT 文档中删除嵌入信息，如作者和标题。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  使用红色工具打开文件
          final Redactor redactor = new Redactor("source.pptx");
          try
          {
              // 删除作者字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 删除标题字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 应用遮蔽
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 保存更新的文档
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
    title: "使用 Java 清理 POWERPOINT 中的元数据"
    exclude: "POWERPOINT"
    description: "Java 使您能够从 POWERPOINT 文件中移除私人数据。适合清理敏感文件分享。"
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