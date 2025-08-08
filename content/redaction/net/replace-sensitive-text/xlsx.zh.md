
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: zh
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 从 XLSX 中删除私密文本"
head_description: "快速使用 GroupDocs.Redaction for .NET 和 C# 清理您的 XLSX 文件中的私密内容。快速且简便的红action。"

############################# Header ############################
title: "使用 .NET 编辑或隐藏 XLSX 文件中的敏感文本" 
description: "借助 GroupDocs.Redaction for .NET 和 C#，您可以从 XLSX 文件中删除个人或商业信息，确保它们可以安全共享。"
subtitle: "您可以使用 GroupDocs.Redaction for .NET 做些什么" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 让 C# 开发者可以搜索和移除 XLSX 文件中的敏感信息。支持文本、图片、注释和文件数据。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Xlsx 文件中删除文本"
    content: |
      在您的 .NET 项目中使用 GroupDocs.Redaction for .NET 隐藏或删除敏感信息，仅需几个步骤。
      
      1. 创建一个 Redactor 并加载 Xlsx 文件。
      2. 选择适合您需求的红action设置。
      3. 输入要查找的文本和要替换的文本。
      4. 运行红action过程并保存您的更新文件。
   
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
        // 从 XLSX 文件中删除文本

        // 使用 Redactor 打开文件
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 选择您的红action选项
            // 设置搜索和替换文本
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 应用红action并保存清理后的文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多红action工具"
  description: "GroupDocs.Redaction for .NET 帮助清理不同类型的内容——文本、图像或元数据，以便您的文件准备好安全共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "红action 选项展示"
  features:
    # feature loop
    - title: "替换敏感文本"
      content: "在文件中搜索并替换任何机密信息。支持简单文本和模式。"

    # feature loop
    - title: "覆盖图片区域"
      content: "使用覆盖层隐藏可视数据。选择颜色、区域大小和页面布局。"

    # feature loop
    - title: "删除多余数据"
      content: "删除作者姓名、时间戳或内部注释等元数据，以避免泄漏。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式规则删除"
      content: |
        使用正则表达式查找并清理类似于电话号码、电子邮件或其他个人信息的模式。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开文件以开始
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 编写一个电子邮件正则表达式规则并选择替换项
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 根据您的模式运行红action
              redactor.Apply(redaction);

              // 保存红action 文件
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "使用 .NET 隐藏 XLSX 中的信息"
    exclude: "XLSX"
    description: "通过使用 .NET 工具，清理您的 XLSX 文档，删除个人或敏感文本。保持数据私密。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/replace-sensitive-text//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/replace-sensitive-text//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/replace-sensitive-text//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/replace-sensitive-text//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/replace-sensitive-text//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/replace-sensitive-text//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---