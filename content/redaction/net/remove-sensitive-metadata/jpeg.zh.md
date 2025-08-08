
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 编辑 JPEG 中的元数据"
head_description: "使用 GroupDocs.Redaction for .NET 可以清理或更改您的 JPEG 文件中的元数据。移除可能包含私人数据的隐藏细节。"

############################# Header ############################
title: "使用 .NET 删除 JPEG 文件中的元数据" 
description: "使用 C# 保护 JPEG 文件中的私人细节。简单的工具提高文档安全性。"
subtitle: "GroupDocs.Redaction for .NET 的主要功能" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 C# 开发者使用简单工具删除 JPEG 文件中的文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Jpeg 文档中的元数据"
    content: |
      GroupDocs.Redaction 使您能轻松在 .NET 应用中移除元数据。
      
      1. 设置一个 Redactor 并加载您想要清理的 Jpeg 文件。
      2. 选择设置以清除所有元数据。
      3. 运行审查以清理文件。
      4. 保存清理后的文件。
   
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
        // 从 JPEG 文件中移除元数据

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // 配置元数据审查
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用并保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "从文档中删除敏感数据"
  description: "GroupDocs.Redaction for .NET 使您可以在多种格式中隐藏或清理私人内容。保护敏感数据，同时保持文件的实用性和清晰性。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "关键审查功能"
  features:
    # feature loop
    - title: "搜索并移除文本"
      content: "在您的文件中找到敏感词语或短语并把它们清除。"

    # feature loop
    - title: "遮盖图像区域"
      content: "使用覆盖层隐藏图像的私密部分。"

    # feature loop
    - title: "编辑元数据"
      content: "删除或更改元数据以避免分享私人数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "清除隐藏的元数据字段"
      content: |
        本示例展示了如何删除或编辑 JPEG 文档中的隐藏元数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  使用审查工具打开 JPEG 文件
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // 为作者字段添加审查
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 为标题字段添加审查
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 运行审查过程
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存清理后的文档
              var saveOptions = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(saveOptions);
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "使用 .NET 清理 JPEG 元数据"
    exclude: "JPEG"
    description: "使用 .NET 从 JPEG 文档中删除隐藏数据。保护敏感细节的理想方法。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/remove-sensitive-metadata//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/remove-sensitive-metadata//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/remove-sensitive-metadata//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 图像"
          format: "IMAGE"
          link: "/redaction/net/remove-sensitive-metadata//image/"
          description: "常见图像格式"

        # format loop 6
        - name: "红行动 照片"
          format: "PHOTO"
          link: "/redaction/net/remove-sensitive-metadata//photo/"
          description: "照片格式"

        # format loop 7
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/remove-sensitive-metadata//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 8
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 9
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/remove-sensitive-metadata//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"

        # format loop 10
        - name: "红行动 JPEG"
          format: "JPEG"
          link: "/redaction/net/remove-sensitive-metadata//jpeg/"
          description: "JPEG 图像"


---