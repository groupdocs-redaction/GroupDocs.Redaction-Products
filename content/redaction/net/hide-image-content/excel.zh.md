
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 EXCEL 中遮罩图像"
head_description: "使用 GroupDocs.Redaction for .NET 隐藏 EXCEL 文件中的私人图像。添加覆盖层以保留敏感数据的安全，同时保持文档的布局不变。"

############################# Header ############################
title: "使用 .NET 在 EXCEL 文件中覆盖敏感图像" 
description: "使用 C# 保护 EXCEL 文件中的个人和业务数据。我们的工具能够快速可靠地保证数据保护。"
subtitle: "探索 GroupDocs.Redaction for .NET 功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 使 C# 开发人员能够使用工具隐藏或删除 EXCEL 文件中的敏感内容。通过覆盖文本、图像和元数据确保文档的安全性。

############################# Steps ############################
steps:
    enable: true
    title: "在 Excel 文件中确保数据安全"
    content: |
      GroupDocs.Redaction for .NET 帮助您的 .NET 应用程序通过隐藏敏感内容来保护文档。
      
      1. 创建一个 Redactor 实例并提供 Excel 文件路径。
      2. 配置涂抹选项，以满足期望的效果。
      3. 选择图像区域和覆盖层颜色。
      4. 应用涂抹并保存文件。
   
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
        // 在 EXCEL 中遮罩图像内容

        // 使用 Redactor 加载文档
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 设置覆盖层大小和颜色
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择待隐藏区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在文档中替换任何内容"
  description: "GroupDocs.Redaction for .NET 帮助您在多种文档格式中隐藏或删除敏感内容。在保护数据的同时，确保文档使用简单。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "功能强大的涂抹选项"
  features:
    # feature loop
    - title: "搜索并编辑文本"
      content: "查找敏感文本并替换，保护文档中的私人数据。"

    # feature loop
    - title: "遮罩图像区域"
      content: "对整个图像或选定部分添加覆盖层，以保护视觉信息。"

    # feature loop
    - title: "删除元数据"
      content: "清除隐含的元数据字段，以避免意外信息泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层遮罩图像数据"
      content: |
        此示例展示如何在文档图像中覆盖敏感信息。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开要编辑的文件
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 定义覆盖层大小、颜色和位置
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 选择第一页的特定图像部分
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 对图像应用覆盖层以实现遮罩
              redactor.Apply(redaction);

              // 保存最终文档
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
    title: "使用 .NET 涂抹保护 EXCEL 文件"
    exclude: "EXCEL"
    description: "利用 .NET 隐藏或删除 EXCEL 文件中的敏感信息。这是安全保证文件保护的值得信赖的解决方案。"
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