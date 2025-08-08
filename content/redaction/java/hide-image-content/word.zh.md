
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 WORD 中隐藏图像及叠加层"
head_description: "使用 GroupDocs.Redaction for Java，您可以通过彩色叠加层在 WORD 文件中覆盖敏感图像。在不改变文档布局的情况下保护私人数据。"

############################# Header ############################
title: "使用 Java 保护 WORD 文件中的敏感图像" 
description: "使用 Java 在 WORD 文档中保护个人和商业视觉信息。快速可靠的图像删除变得简单。"
subtitle: "GroupDocs.Redaction for Java 的主要特性" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供简单易用的工具，用于在 WORD 文件中隐藏或删除内容。在各种格式中删除文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Word 文件中保持机密数据安全"
    content: |
      GroupDocs.Redaction for Java 使得 Java 应用程序可以轻松隐藏文档内的私人信息。
      
      1. 初始化 Redactor 并加载 Word 文件。
      2. 定义所需的删除设置。
      3. 标记图像区域并选择叠加颜色。
      4. 运行删除并保存更新的文档。
   
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
        // 在 WORD 中隐藏敏感图像内容

        // 使用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.docx");
        try
        {
            // 选择叠加层颜色和大小
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 标记要覆盖的图像区域
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 应用叠加层并保存文件
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "隐藏和删除内容的工具"
  description: "GroupDocs.Redaction for Java 帮助您在多种文件格式中隐藏或删除敏感数据。保持文档的安全与良好结构。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "有效的删除特性"
  features:
    # feature loop
    - title: "查找与替换文本"
      content: "在文档中查找私人文本并替换，以确保数据安全。"

    # feature loop
    - title: "覆盖图像区域"
      content: "通过应用叠加层隐藏完整图像或选择区域。"

    # feature loop
    - title: "删除元数据"
      content: "移除或修改隐藏的元数据，以保护机密信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用叠加层隐藏图像数据"
      content: |
        此示例展示了如何使用叠加层保护文档中的敏感图像内容。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载文档
          final Redactor redactor = new Redactor("source.docx");
          try
          {
              // 设置叠加层属性，如大小、位置和颜色
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 标记第一页的图像区域
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 用叠加层覆盖该区域
              redactor.apply(redaction);

              // 保存已删除的文档
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "使用 Java 在 WORD 文件中隐藏内容"
    exclude: "WORD"
    description: "使用 Java 隐藏或删除 WORD 文件中的敏感数据。有效的文档保护方法。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "JPEG 图像"


---