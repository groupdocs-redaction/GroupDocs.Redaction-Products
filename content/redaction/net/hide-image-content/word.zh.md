
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: zh
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 WORD 中覆盖图像"
head_description: "使用 GroupDocs.Redaction for .NET 隐藏 WORD 文件中的敏感图像区域。添加彩色覆盖层以保护私人数据，同时保持文档的原始布局不变。"

############################# Header ############################
title: "使用 .NET 在 WORD 文件中隐藏私人图像" 
description: "使用 C# 保护 WORD 文档中的个人和企业数据。借助我们简单的工具实现可靠的内容保护。"
subtitle: "GroupDocs.Redaction for .NET 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发人员提供工具，帮助他们隐藏或删除 WORD 文件中的内容。通过快速涂抹文本、图像和元数据来保护文档的安全性。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Word 文件中的敏感数据"
    content: |
      GroupDocs.Redaction for .NET 帮助您的 .NET 应用程序快速隐藏文档中的私人内容。
      
      1. 创建一个 Redactor 对象并指定 Word 文件路径。
      2. 根据需求设置涂抹参数。
      3. 标记图像区域并定义覆盖颜色。
      4. 处理并保存已涂抹的文件。
   
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
        // 在 WORD 中覆盖敏感图像

        // 通过 Redactor 构造函数加载文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 定义覆盖层颜色和维度
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // 选择涂抹的图像区域
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
  title: "隐藏或删除文档内容"
  description: "GroupDocs.Redaction for .NET 简化了在多种文件格式中隐藏或删除数据的流程。在保护敏感信息的同时，保持文档整洁和可读。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "详细的涂抹工具"
  features:
    # feature loop
    - title: "随处替换文本"
      content: "在文档中搜索并替换敏感文本以保护私人信息。"

    # feature loop
    - title: "遮罩图像"
      content: "对特定图像区域或整个图像添加覆盖层，以隐蔽私人视觉内容。"

    # feature loop
    - title: "清除元数据"
      content: "删除或修改隐藏的元数据，以避免意外信息泄露。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "添加覆盖层以隐藏图像内容"
      content: |
        此示例展示如何使用覆盖层保护文档图像中的敏感数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载待编辑文档
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 设置覆盖层的大小、位置和颜色
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // 关注第一页的特定图像区域
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // 应用覆盖层涂抹
              redactor.Apply(redaction);

              // 保存文件更改
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
    title: "用 .NET 替换保护 WORD 内容"
    exclude: "WORD"
    description: ".NET 使您能够在 WORD 文件中隐藏或删除敏感内容。这是保护机密和官方文件的可靠方式。"
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