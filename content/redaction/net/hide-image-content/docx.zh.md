
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 DOCX 中覆盖图像"
head_description: "使用 GroupDocs.Redaction for .NET 在 DOCX 文件中通过彩色覆盖层覆盖敏感图像。在保持文档布局不变的情况下保护私人数据。"

############################# Header ############################
title: "使用 .NET 在 DOCX 文档中覆盖敏感图像" 
description: "使用 C# 保护 DOCX 文件中的个人和业务信息。我们的工具使数据保护简单而可靠。"
subtitle: "GroupDocs.Redaction for .NET 的功能" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供工具，以隐藏或删除 DOCX 文件中的内容。通过覆盖文本、图像和元数据保护文档，支持多种格式。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Docx 文件中的数据"
    content: |
      GroupDocs.Redaction for .NET：旨在帮助您的 .NET 应用程序保护文档。仅需几步就可涂抹敏感信息。
      
      1. 初始化 Redactor 并提供 Docx 文件的路径。
      2. 配置涂抹选项以满足需求。
      3. 选择图像区域并选择覆盖层颜色。
      4. 运行涂抹并保存文件。
   
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
        // 在 DOCX 中覆盖敏感图像区域

        // 通过 Redactor 构造函数加载文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 设置覆盖层颜色和大小
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 定义涂抹区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用覆盖层并保存文档
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文件中涂抹内容"
  description: "使用 GroupDocs.Redaction for .NET，您可以隐藏或删除多种文件类型中的敏感内容。在保持文档安全的同时，确保可读性。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "灵活的涂抹选项"
  features:
    # feature loop
    - title: "轻松编辑文本"
      content: "在文档中找到并替换私人文本，提升数据安全性。"

    # feature loop
    - title: "覆盖图像区域"
      content: "对整个图像或选择的部分进行覆盖，以保护视觉信息。"

    # feature loop
    - title: "清理元数据"
      content: "删除或更改隐藏的元数据，以避免无意的数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "应用覆盖层以隐藏图像细节"
      content: |
        此示例展示如何隐藏文档图像中的敏感区域。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载您要涂抹的文档
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 指定覆盖层参数：大小、位置、颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 目标为第一页的特定区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 在图像上放置覆盖层
              redactor.Apply(redaction);

              // 保存更新后的文件
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
    title: "用 .NET 替换保护 DOCX 文件"
    exclude: "DOCX"
    description: "利用 .NET 涉及覆盖或删除 DOCX 文件中的敏感数据。理想的方式，以确保机密文档的安全。"
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