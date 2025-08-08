
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "使用 Java 在 XLSX 文件中覆盖图像和叠加效果"
head_description: "使用 GroupDocs.Redaction for Java 通过添加彩色叠加层在 XLSX 文件中覆盖敏感图像。在保留文档结构不变的情况下保护重要数据。"

############################# Header ############################
title: "使用 Java 在 XLSX 文档中覆盖私人图像" 
description: "使用 Java 保护 XLSX 文件中的敏感图像内容。我们的易用工具使图像删除迅速可靠。"
subtitle: "GroupDocs.Redaction for Java 的关键功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java 为 Java 开发者提供简单的工具，用于在 XLSX 文件中隐藏或删除敏感内容。在多种文档格式中删除文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "在 Xlsx 文档中保持私人数据安全"
    content: |
      GroupDocs.Redaction for Java帮助您的 Java 应用程序通过简单的步骤保护文档。
      
      1. 初始化一个 Redactor 并加载您的 Xlsx 文档。
      2. 根据您的项目设置删除选项。
      3. 选择图像部分并选择叠加颜色。
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
        // 在 XLSX 中遮盖敏感图像区域

        // 创建 Redactor 并设置文件路径
        final Redactor redactor = new Redactor("input.xlsx");
        try
        {
            // 选择叠加层尺寸和颜色
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // 选择要删除的区域
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // 应用叠加并保存文档
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "高级删除功能"
  description: "使用 GroupDocs.Redaction for Java，您可以在多种文件类型中隐藏或删除敏感内容，同时保持文档布局整洁可读。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "强大的删除工具"
  features:
    # feature loop
    - title: "查找和替换文本"
      content: "搜索私人文本并进行替换，以确保文档的安全。"

    # feature loop
    - title: "覆盖图像内容"
      content: "应用叠加层以隐藏机密图像或特定区域。"

    # feature loop
    - title: "清理隐藏的元数据"
      content: "删除或更新元数据以避免意外共享私人信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用叠加层隐藏图像细节"
      content: |
        了解如何使用叠加层保护文档中敏感部分的图像。
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  加载要删除的文档
          final Redactor redactor = new Redactor("source.xlsx");
          try
          {
              // 设置叠加层的大小、颜色和位置
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // 选择特定图像区域
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // 应用叠加层以遮盖图像
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
    title: "使用 Java 覆盖 XLSX 内容"
    exclude: "XLSX"
    description: "使用 Java 在 XLSX 文件中遮蔽或删除私人内容。确保商务和个人文档安全的明智选择。"
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