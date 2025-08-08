
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 EXCEL 中隐藏图像及叠加层"
head_description: "使用 GroupDocs.Redaction for Java 在 EXCEL 文件中覆盖敏感图像。添加彩色叠加层，以保护私人信息并保持文档设计完整。"

############################# Header ############################
title: "使用 Java 在 EXCEL 文件中隐藏敏感图像" 
description: "使用 Java 在 EXCEL 文件中保护私人和商业视觉信息。快速简单的工具，提供可靠的数据保护。"
subtitle: "GroupDocs.Redaction for Java 的功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供工具，以隐藏或删除 EXCEL 文件中的内容。覆盖文本、图像和元数据以保护敏感数据。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Excel 文件中的数据"
    content: |
      GroupDocs.Redaction for Java 帮助 Java 应用程序轻松隐藏文档中的敏感内容。
      
      1. 创建一个 Redactor 对象并加载 Excel 文件。
      2. 设置删除选项以匹配您的需求。
      3. 选择图像区域并挑选叠加颜色。
      4. 应用删除并保存您的文档。
   
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
        // 在 EXCEL 中隐藏图像内容

        // 使用 Redactor 打开文件
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 定义叠加层大小和颜色
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 标记要隐藏的区域
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 应用更改并保存文件
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中隐藏或删除内容"
  description: "GroupDocs.Redaction for Java 允许您在多种文件类型中覆盖或删除敏感数据。确保文档保持整洁和安全。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "高级删除功能"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "在文档中搜索私人文本并进行替换，以确保数据安全。"

    # feature loop
    - title: "覆盖图像区域"
      content: "使用彩色叠加层隐藏图像的部分或整个视觉内容。"

    # feature loop
    - title: "清理元数据"
      content: "删除隐藏的元数据，以避免共享多余的信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用叠加层隐藏图像数据"
      content: |
        此示例展示如何使用叠加层在文档中遮盖敏感图像区域。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  打开文件进行编辑
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 设置叠加层尺寸、颜色和位置
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 选择第一页上的图像部分
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 应用叠加层以隐藏数据
              redactor.apply(redaction);

              // 保存您的已删除文档
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
    title: "使用 Java 删除 EXCEL 文件"
    exclude: "EXCEL"
    description: "使用 Java 隐藏或删除 EXCEL 文件中的敏感数据。确保文档隐私的简单方法。"
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