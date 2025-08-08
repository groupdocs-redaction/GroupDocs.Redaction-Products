
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 通过添加覆盖层保护 IMAGE 中的图像"
head_description: "借助 GroupDocs.Redaction for .NET，您可以在 IMAGE 文件中使用彩色覆盖层隐藏敏感图像数据。确保重要信息的安全，同时保持文件的原始设计。"

############################# Header ############################
title: "使用 .NET 在 IMAGE 文件中隐藏私人图像" 
description: "使用 C# 保护 IMAGE 文件中的敏感业务和个人图像。快速有效地保护内容的简单工具。"
subtitle: "GroupDocs.Redaction for .NET 的关键功能" 

############################# About ############################
about:
    enable: true
    title: " GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供强大的工具，以在 IMAGE 文件中隐藏或删除敏感内容。通过遮罩敏感文本、图像和元数据来保护文档。

############################# Steps ############################
steps:
    enable: true
    title: "使用覆盖层保护 Image 文件中的数据"
    content: |
      使用 GroupDocs.Redaction for .NET，快速在您的 .NET 应用程序中隐藏私人内容。
      
      1. 创建一个 Redactor 实例并提供 Image 文件路径。
      2. 根据需要调整涂抹设置。
      3. 选择图像区域并定义覆盖层颜色。
      4. 处理文件并保存安全版本。
   
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
        // 保护 IMAGE 中的图像内容

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // 定义覆盖层的尺寸和颜色
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择要隐藏的区域
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // 添加覆盖层并保存结果
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在不同文件格式中涂抹内容"
  description: "GroupDocs.Redaction for .NET 允许您隐蔽或删除多种文件格式中的内容。在保护敏感数据的同时，保持清晰可读的格式。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "全面控件的涂抹功能"
  features:
    # feature loop
    - title: "查找并替换文本"
      content: "在文档中搜索并替换敏感文本，以保护私人信息。"

    # feature loop
    - title: "遮罩图像"
      content: "添加彩色覆盖层以遮蔽整个图像或特定部分。"

    # feature loop
    - title: "编辑元数据"
      content: "删除或修改隐藏元数据字段，以防止数据暴露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用覆盖层隐藏图像内容"
      content: |
        此代码示例展示如何使用覆盖层隐藏敏感图像内容。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载需涂抹的文件
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // 配置覆盖层的大小、颜色和位置
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 选择第一页上的图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 添加覆盖层以隐藏图像内容
              redactor.Apply(redaction);

              // 保存更新的文件
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
    title: "使用 .NET 替换保护 IMAGE 内容"
    exclude: "IMAGE"
    description: "利用 .NET 隐藏或删除 IMAGE 文件中的敏感数据。可靠的保护官方文件和机密信息的方法。"
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