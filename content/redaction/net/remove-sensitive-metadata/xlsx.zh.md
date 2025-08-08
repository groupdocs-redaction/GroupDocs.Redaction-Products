
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 清理 XLSX 文件中的元数据"
head_description: "借助 GroupDocs.Redaction for .NET，您可以安全地移除 XLSX 文件中的元数据。清除可能泄露私人数据的隐藏信息。"

############################# Header ############################
title: "使用 .NET 从 XLSX 文件中擦除元数据" 
description: "使用 C# 保护您 XLSX 文件中的敏感细节。简单的审查适用于个人和工作文档。"
subtitle: "探索 GroupDocs.Redaction for .NET 能做什么" 

############################# About ############################
about:
    enable: true
    title: "了解 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 为 C# 开发者提供工具以清理 XLSX 文档中的内容。快速遮盖或删除文本、图像和元数据。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Xlsx 文件中的元数据"
    content: |
      借助 GroupDocs.Redaction，您的 .NET 应用可以快速移除隐藏数据。
      
      1. 设置一个 Redactor 并打开您的 Xlsx 文件。
      2. 定义要删除的元数据。
      3. 应用审查规则。
      4. 保存最终文件。
   
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
        // 清理 XLSX 中的隐藏元数据

        // 使用 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.xlsx"))
        {
            // 设置要移除的元数据
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 应用审查并保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "保护文档中的敏感信息"
  description: "使用 GroupDocs.Redaction for .NET 清除或隐藏多种文件格式中的内容。保持文件私密，随时可共享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "集成的审查功能"
  features:
    # feature loop
    - title: "替换或移除文本"
      content: "通过查找和删除敏感文本来保护个人数据。"

    # feature loop
    - title: "隐藏图像部分"
      content: "使用覆盖层阻止带有私密视觉信息的图像区域的查看。"

    # feature loop
    - title: "移除元数据"
      content: "清除可能承载个人或商业信息的隐藏元数据字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "如何移除元数据"
      content: |
        此示例代码移除 XLSX 文档中的元数据属性。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开文档
          using (Redactor redactor  = new Redactor("source.xlsx"))
          {
              // 定位作者元数据
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 定位标题元数据
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
    title: "使用 .NET 删除 XLSX 中的元数据"
    exclude: "XLSX"
    description: "在 XLSX 文件中使用 .NET 清除私人元数据。保持文档整洁和安全。"
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