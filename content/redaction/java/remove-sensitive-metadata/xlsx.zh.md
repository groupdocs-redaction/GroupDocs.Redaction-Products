
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
head_title: "使用 Java 从 XLSX 中移除元数据"
head_description: "GroupDocs.Redaction for Java 帮助清理 XLSX 文件中的隐藏元数据。保持文档私密并防止不必要的细节。"

############################# Header ############################
title: "使用 Java 清理 XLSX 文件中的元数据" 
description: "使用 Java 清除您 XLSX 文档中的个人或隐藏细节。非常适合工作和个人使用。"
subtitle: "查看您可以使用 GroupDocs.Redaction for Java 做什么" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 Java 开发人员提供控制 XLSX 文件内容的工具。根据需要移除文本、元数据和图像。

############################# Steps ############################
steps:
    enable: true
    title: "从 Xlsx 文件中删除元数据"
    content: |
      GroupDocs.Redaction 帮助您的 Java 项目快速清除敏感元数据。
      
      1. 启动一个 Redactor 并打开 Xlsx 文件。
      2. 选择要移除的元数据字段。
      3. 运行遮蔽以将其从文件中删除。
      4. 保存清理版本。
   
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
        // 擦除 XLSX 文件中的隐藏元数据

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.xslx");
        try
        {
            // 选择要移除的元数据字段
            EraseMetadataRedaction redaction = new EraseMetadataRedaction(MetadataFilters.All);

            // 应用遮蔽并保存文件
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "通过隐藏敏感信息保护您的文件"
  description: "使用 GroupDocs.Redaction for Java，您可以清除多种文档类型中的个人数据。保持文件安全的简单方法。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "清理元数据和内容的工具"
  features:
    # feature loop
    - title: "查找并删除文本"
      content: "搜索敏感文本并删除以保护信息。"

    # feature loop
    - title: "覆盖图像内容"
      content: "隐藏带有机密图像部分的覆盖层。"

    # feature loop
    - title: "删除元数据"
      content: "移除可能包含私密数据的嵌入细节。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "元数据移除示例"
      content: |
        此示例展示了如何从 XLSX 文件中删除诸如作者或标题之类的元数据。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开您的文档
          final Redactor redactor = new Redactor("source.xslx");
          try
          {
              // 选择设置为遮蔽的作者字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company");
              redactionAuthor.setFilter(MetadataFilters.Author);

              // 选择设置为遮蔽的标题字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage");
              redactionTitle.setFilter(MetadataFilters.Title);

              // 运行遮蔽工具
              Redaction[] redactions = new Redaction[]
              {
                  redactionAuthor, redactionTitle
              };
              redactor.apply(redactions);

              // 保存结果
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
    title: "使用 Java 清理 XLSX 中的元数据"
    exclude: "XLSX"
    description: "使用 Java 工具从 XLSX 文件中移除隐藏数据。分享干净、安全的文档。"
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