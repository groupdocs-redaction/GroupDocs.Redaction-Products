
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 隐藏 JPEG 中的图像"
head_description: "通过使用 GroupDocs.Redaction for .NET 添加彩色覆盖层，在 JPEG 文件中保护私人图像。保持信息安全，同时不改变文件的布局。"

############################# Header ############################
title: "使用 .NET 通过覆盖层保护 JPEG 文件中的敏感图像" 
description: "使用 C# 保护 JPEG 文件中的个人和商业图像。我们的简单工具使文件保护既简单又可靠。"
subtitle: "GroupDocs.Redaction for .NET 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供工具，可以隐蔽或删除 JPEG 文件中的内容。通过涂抹文本、图像和元数据，快速保护文档安全。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Jpeg 文件中的敏感数据"
    content: |
      GroupDocs.Redaction for .NET 旨在帮助您的 .NET 应用程序快速隐藏私人内容。
      
      1. 创建一个 Redactor 对象并提供 Jpeg 文件的路径。
      2. 设置涂抹选项以满足您的需求。
      3. 标记图像区域并选择覆盖层颜色。
      4. 运行涂抹并保存安全版本的文件。
   
    code:
      platform: "net"
      copy_title: "复制"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "样本删除内容"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "点击复制"
        copy_done: "已复制"
      links:
        #  loop
        - title: "更多示例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "文档"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // 在 JPEG 文件中保护图像内容

        // 通过 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // 定义覆盖层的维度和颜色
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择要隐藏的区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用覆盖层并保存结果
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中隐蔽任何内容"
  description: "GroupDocs.Redaction for .NET 使您能够在多种文件格式中隐藏或移除内容。在保持文件整洁和易于共享的同时，保护敏感信息。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "全面控制的涂抹工具"
  features:
    # feature loop
    - title: "随处编辑文本"
      content: "在文档中查找并替换敏感文本，以保护私人数据。"

    # feature loop
    - title: "遮罩图像"
      content: "对图像或特定区域施加覆盖层，以保持敏感视觉内容隐蔽。"

    # feature loop
    - title: "清洁元数据"
      content: "删除或更新隐藏的元数据，以防止意外信息泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层隐藏图像数据"
      content: |
        此示例展示如何在文件中遮盖敏感图像区域。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开文件以进行编辑
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // 配置覆盖层的大小、位置和颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 选择第一页上的特定图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 将覆盖层应用于遮盖图像
              redactor.Apply(redaction);

              // 保存已涂抹的文件
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
          }
          ```
        platform: "net"
        copy_title: "复制"
        install:
          command: "dotnet add package GroupDocs.Redaction"
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "文档"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "准备好开始了吗？"
  description: "免费尝试 GroupDocs.Redaction 的功能或请求许可证"
  items:
    #  loop
    - title: "Nuget 下载"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "许可证"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "使用 .NET 替代保护 JPEG 文件"
    exclude: "JPEG"
    description: "利用 .NET 隐藏或删除 JPEG 文件中的敏感数据。保证文件安全性可信的解决方案。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "JPEG 图像"


---