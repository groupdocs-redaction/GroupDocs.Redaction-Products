
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: zh
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 PHOTO 中隐藏图像及叠加层"
head_description: "使用 GroupDocs.Redaction for Java 在 PHOTO 文件中通过叠加层遮盖敏感图像区域。在保持文件布局不变的情况下保护私人内容。"

############################# Header ############################
title: "使用 Java 在 PHOTO 文件中保护图像内容" 
description: "使用 Java 保护 PHOTO 文件中的个人和商业图像数据。为快速有效的保护而设计的简单工具。"
subtitle: "GroupDocs.Redaction for Java 的主要特性" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 使 Java 开发者拥有可靠的工具，以隐藏或删除 PHOTO 文件中的内容。在遮盖文本、图像和元数据的同时保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "使用叠加层在 Photo 文件中隐藏内容"
    content: |
      GroupDocs.Redaction for Java 使您在 Java 应用程序中轻松隐藏敏感区域。
      
      1. 初始化一个 Redactor 并加载您的 Photo 文件。
      2. 根据需要设置删除首选项。
      3. 选择图像区域并选择叠加颜色。
      4. 运行删除并保存该文件。
   
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
        // 使用叠加层覆盖 PHOTO 中的图像部分

        // 使用 Redactor 加载文件
        final Redactor redactor = new Redactor("input.jpeg");
        try
        {
            // 定义叠加层的颜色和大小
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 标记要遮蔽的图像区域
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 应用叠加层并保存结果
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "轻松删除敏感内容"
  description: "GroupDocs.Redaction for Java 允许您在各种文档类型中隐藏或删除私人数据。保持文件清晰并准备好分享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "对删除内容的全面控制"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "在文档中找到敏感文本并进行替换，以保护信息。"

    # feature loop
    - title: "叠加图像区域"
      content: "使用叠加层覆盖完整图像或选择部分。"

    # feature loop
    - title: "删除元数据"
      content: "清理隐藏的元数据以避免意外的数据暴露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用叠加层遮盖图像数据"
      content: |
        此示例展示如何在文档中覆盖图像内容。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载文档进行编辑
          final Redactor redactor = new Redactor("source.jpeg");
          try
          {
              // 设置叠加层的大小、颜色和位置
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 标记第一页的图像部分
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 应用叠加层以遮盖内容
              redactor.apply(redaction);

              // 保存编辑后的文件
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
    title: "使用 Java 保护 PHOTO 文件"
    exclude: "PHOTO"
    description: "使用 Java 隐藏或删除 PHOTO 文件中的敏感数据。这是一种有效保护正式文档的方法。"
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