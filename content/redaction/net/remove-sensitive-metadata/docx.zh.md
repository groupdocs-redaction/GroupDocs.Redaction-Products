
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 删除 DOCX 中的元数据"
head_description: "使用 GroupDocs.Redaction for .NET 删除或更改 DOCX 文件中的隐藏元数据。保护您的文档不暴露私人细节。"

############################# Header ############################
title: "使用 .NET 删除 DOCX 文件中的元数据" 
description: "使用 C# 清除 DOCX 文件中的敏感元数据。保护您的商业和个人数据。"
subtitle: "GroupDocs.Redaction for .NET 的顶级功能" 

############################# About ############################
about:
    enable: true
    title: "什么是 GroupDocs.Redaction for .NET？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 C# 开发者提供工具，以隐藏或删除 DOCX 文件中的内容。快速清理文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Docx 文件中的隐藏数据"
    content: |
      GroupDocs.Redaction 帮助您的 .NET 项目快速移除不需要的元数据。
      
      1. 创建一个 Redactor 实例并打开您的 Docx 文件。
      2. 设置审查以定位元数据条目。
      3. 应用更改以清理文档。
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
        // 从 DOCX 文档中去除元数据

        // 使用 Redactor 加载文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 设置元数据移除选项
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在任何文档中隐藏敏感信息"
  description: "GroupDocs.Redaction for .NET 让您可以清理多种文件类型中的敏感内容。使您的文档更安全以便共享或存储。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "智能的审查选项"
  features:
    # feature loop
    - title: "删除私人文本"
      content: "搜索并擦除文件中的个人或商业文本。"

    # feature loop
    - title: "遮蔽图像"
      content: "覆盖图像或选择区域以隐藏机密内容。"

    # feature loop
    - title: "清除元数据"
      content: "清除隐藏的元数据条目，避免泄露背景细节。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "清理元数据字段"
      content: |
        本示例演示了如何删除 DOCX 文件中的隐藏数据。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载您的 DOCX 文件
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 定位作者字段以移除
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 定位标题字段以移除
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 运行审查过程
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存更新后的文件
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
    title: "使用 .NET 删除 DOCX 中的元数据"
    exclude: "DOCX"
    description: "使用 .NET 删除 DOCX 文件中的不必要元数据。这是保护您文件隐藏细节的简单方法。"
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