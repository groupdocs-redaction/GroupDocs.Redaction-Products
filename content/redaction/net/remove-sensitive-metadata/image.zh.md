
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 在 IMAGE 中删除隐藏元数据"
head_description: "使用 GroupDocs.Redaction for .NET 清理您的 IMAGE 文件中的元数据。确保私人细节保持私密。"

############################# Header ############################
title: "通过 .NET 删除 IMAGE 文件中的元数据" 
description: "使用 C# 保护您的 IMAGE 文件。轻松保护商业和个人数据。"
subtitle: "GroupDocs.Redaction for .NET 的收获" 

############################# About ############################
about:
    enable: true
    title: "关于 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction 帮助 C# 用户通过删除不需要的文本、图像部分和 IMAGE 文件中的元数据来清理文件。

############################# Steps ############################
steps:
    enable: true
    title: "清理 Image 文件中的元数据"
    content: |
      开始使用 GroupDocs.Redaction 在您的 .NET 应用中清理文件元数据。
      
      1. 创建一个 Redactor 并打开您的 Image 文件。
      2. 选择要删除隐藏元数据条目的选项。
      3. 应用审查设置。
      4. 保存结果。
   
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
        // 从 IMAGE 文件中删除隐藏元数据

        // 打开文件使用 Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // 为元数据添加审查规则
            var redaction = new EraseMetadataRedaction(MetadataFilters.All);
            
            // 处理并保存
            redactor.Apply(redaction);
            redactor.Save();
        }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "在任何文档中清理内容"
  description: "GroupDocs.Redaction for .NET 移除私人文本、图像部分或隐藏字段。使文档适合安全共享。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要功能"
  features:
    # feature loop
    - title: "文本审查"
      content: "查找并删除不应共享的私人词语和数字。"

    # feature loop
    - title: "图像遮盖"
      content: "添加图像遮罩以覆盖视觉信息。"

    # feature loop
    - title: "元数据审查"
      content: "清除可能泄漏信息的元数据字段。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "擦除敏感元数据"
      content: |
        本示例解释如何在 IMAGE 文档中删除特定的元数据字段。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  使用审查工具打开 IMAGE
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // 定位作者字段
              MetadataSearchRedaction redactionAuthor = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs Company")
              {
                  Filter = MetadataFilters.Author
              };

              // 定位标题字段
              MetadataSearchRedaction redactionTitle = 
                  new MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
              {
                  Filter = MetadataFilters.Title
              };

              // 审查字段
              var redactions = new MetadataSearchRedaction[] { redactionAuthor, redactionTitle };
              redactor.Apply(redactions);

              // 保存您的文档
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
    title: "使用 .NET 从 IMAGE 中删除元数据"
    exclude: "IMAGE"
    description: "使用 .NET 在 IMAGE 文件中擦除敏感数据。保持您的文件安全以供共享或存储。"
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