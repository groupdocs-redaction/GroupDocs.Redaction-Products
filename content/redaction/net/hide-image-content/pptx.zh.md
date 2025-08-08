
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 PPTX 中涂抹图像"
head_description: "通过将彩色覆盖层应用于 PPTX 文件中的敏感图像内容，使用 GroupDocs.Redaction for .NET 保护机密数据，而不改变文档结构。"

############################# Header ############################
title: "使用 .NET 在 PPTX 文档中涂抹敏感图像" 
description: "使用 C# 保护 PPTX 文件中的私人和商业数据。我们的工具使涂抹图像的速度快而且简单。"
subtitle: "GroupDocs.Redaction for .NET 所提供的内容" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供简单工具，用于隐藏或删除 PPTX 文件中的内容。通过快速涂抹文本、图像和元数据来保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "在 Pptx 文档中保护业务数据"
    content: |
      GroupDocs.Redaction for .NET：帮助 .NET 应用程序通过隐藏敏感信息来保障文档安全。
      
      1. 设置 Redactor 实例并加载 Pptx 文件。
      2. 调整涂抹设置以适应您的需求。
      3. 选择图像区域并指定覆盖颜色。
      4. 处理涂抹并保存文件。
   
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
        // 在 PPTX 中涂抹敏感图像区域

        // 使用 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 定义覆盖层颜色和尺寸
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择要涂抹的区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 应用覆盖并保存文档
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文档涂抹工具"
  description: "GroupDocs.Redaction for .NET 让您能够在多种文件类型中隐藏或删除敏感内容。在保持文档整洁且易于共享的同时保护信息。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "强大的涂抹工具"
  features:
    # feature loop
    - title: "查找并替换文本"
      content: "定位并涂抹私人文本，以增强文档安全性。"

    # feature loop
    - title: "涂抹图像内容"
      content: "覆盖整个图像或选定区域，以隐藏私人视觉内容。"

    # feature loop
    - title: "移除元数据"
      content: "删除或修改隐藏元数据，以防止数据泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层隐藏图像数据"
      content: |
        此示例展示如何在文档中涂抹敏感图像。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载文档
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 设置覆盖层大小、位置和颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 在第一页上标记涂抹区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 应用覆盖层
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
    title: "用 .NET 替换保护 PPTX 内容"
    exclude: "PPTX"
    description: "利用 .NET 涉及在 PPTX 文件中替代或删除敏感内容。确保文档安全性可靠的解决方案。"
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