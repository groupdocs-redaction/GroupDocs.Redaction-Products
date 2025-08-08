
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 删除 PHOTO 中的元数据"
head_description: "GroupDocs.Redaction for .NET 帮助您移除可能泄露个人或商业信息的 PHOTO 文件中的隐藏数据。"

############################# Header ############################
title: "使用 .NET 删除 PHOTO 中的元数据" 
description: "轻松保护您的文档，通过 C# 移除 PHOTO 文件中的隐藏信息。"
subtitle: "GroupDocs.Redaction for .NET 的亮点" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 C# 开发者在 PHOTO 文件中隐藏私人内容，包括文本、图像部分和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "擦除 Photo 文件中的元数据"
    content: |
      在您的 .NET 项目中使用 GroupDocs.Redaction 清理文档元数据。
      
      1. 启动一个 Redactor 并打开您的 Photo 文件。
      2. 设置删除元数据的规则。
      3. 应用审查并清理文件。
      4. 保存结果文件。
   
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
        // 从 PHOTO 文档中删除元数据

        // 使用 Redactor 加载文档
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // 设置元数据字段进行审查
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 清理文档并保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "删除文件中的私人信息"
  description: "GroupDocs.Redaction for .NET 为您提供从文本、图像和文件详细信息中删除个人数据的方法。完美的数据安全性。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "有用的审查功能"
  features:
    # feature loop
    - title: "文本清理"
      content: "扫描并擦除任何不应共享的文本。"

    # feature loop
    - title: "覆盖图像区域"
      content: "在具有私密细节的图像部分添加覆盖。"

    # feature loop
    - title: "删除元数据"
      content: "在共享或发布之前删除隐藏文件数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "删除隐藏的元数据字段"
      content: |
        本示例指导您在 PHOTO 文档中删除元数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  将 PHOTO 文件加载到审查工具中
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // 对作者字段进行审查
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 对标题字段进行审查
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 处理文档
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存清理后的版本
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
    title: "使用 .NET 审查 PHOTO 中的元数据"
    exclude: "PHOTO"
    description: "使用 .NET 工具清理 PHOTO 文档中的元数据。保护敏感细节。"
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