
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: zh
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 JPEG 中覆盖图像及叠加层"
head_description: "使用 GroupDocs.Redaction for Java 在 JPEG 文件中保持敏感图像的私密性。添加叠加层以隐藏信息而不改变您的文档布局。"

############################# Header ############################
title: "使用 Java 在 JPEG 文件中遮盖敏感图像" 
description: "使用 Java 保护 JPEG 文件中的个人和商业图像。简单的工具可帮助您轻松保护文档。"
subtitle: "GroupDocs.Redaction for Java 的核心特性" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for Java？"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供工具以隐藏或删除 JPEG 文件中的内容。通过遮盖文本、图像和元数据来保护文档的安全。

############################# Steps ############################
steps:
    enable: true
    title: "在 Jpeg 文件中隐藏私人数据"
    content: |
      GroupDocs.Redaction for Java 使您的 Java 应用程序能快速覆盖私人内容。
      
      1. 初始化一个 Redactor 对象并加载 Jpeg 文件。
      2. 根据需要调整删除设置。
      3. 选择图像区域并选择叠加颜色。
      4. 应用删除并保存文件。
   
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
        // 在 JPEG 中遮盖图像数据

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.jpg");
        try
        {
            // 设置叠加层大小和颜色
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 选择要遮盖的区域
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 应用叠加层并保存更改
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中隐藏敏感数据"
  description: "GroupDocs.Redaction for Java 帮助您从多种文件类型中隐藏或删除私人内容。确保您的文档保持整洁且适合分享。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "一体化删除功能"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "在文档中查找私人文本并替换，以保护敏感数据。"

    # feature loop
    - title: "覆盖图像内容"
      content: "使用叠加层隐藏整个图像或所选部分，以保持私人视觉内容的安全。"

    # feature loop
    - title: "删除元数据"
      content: "删除隐藏的元数据，以防止无意中暴露敏感信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用叠加层隐藏图像内容"
      content: |
        此示例演示如何使用叠加层防止文档中敏感图像区域的暴露。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载文件进行删除
          final Redactor redactor = new Redactor("source.jpg");
          try
          {
              // 设置叠加层的大小、位置和颜色
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 选择第一页的图像区域
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 应用叠加层以隐藏图像
              redactor.apply(redaction);

              // 保存更新的文件
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
    title: "使用 Java 保护 JPEG 文件"
    exclude: "JPEG"
    description: "使用 Java 隐藏或删除 JPEG 文件中的敏感数据。可靠的解决方案以保护您的重要文档。"
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