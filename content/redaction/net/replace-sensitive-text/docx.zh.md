
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: zh
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 从 DOCX 中删除私密文本"
head_description: "通过 GroupDocs.Redaction for .NET 和 C# 快速保护您的 DOCX 文件中的私密内容。快速使用，结果显著。"

############################# Header ############################
title: "使用 .NET 查找并隐藏 DOCX 文件中的敏感文本" 
description: "无论是个人还是商业用途，GroupDocs.Redaction for .NET 和 C# 有助于将私密信息隐藏起来。"
subtitle: "GroupDocs.Redaction for .NET 如何帮助您" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 是什么？"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 为 C# 开发者提供了查找和清理 DOCX 文件中敏感内容的工具。可以处理文本、图像、注释等。

############################# Steps ############################
steps:
    enable: true
    title: "如何在 Docx 文件中删除内容"
    content: |
      在您的 .NET 项目中遵循这些快速步骤，使用 GroupDocs.Redaction for .NET 清理私密文本。
      
      1. 启动一个新的 Redactor 并加载 Docx 文件。
      2. 选择您想要的红action设置。
      3. 输入要查找的文本和要替换的文本。
      4. 执行红action并保存您的文件。
   
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
        // 在 DOCX 文件中删除文本

        // 使用 Redactor 加载您的文件
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // 选择适合您需求的红action选项
            // 设置要搜索的内容和要替换的内容
            var repl_opt = new ReplacementOptions("[redacted]");
            
            var redaction = new ExactPhraseRedaction("Text to hide", repl_opt);

            // 运行工具并保存您的红action 文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "更多红action特性"
  description: "通过 GroupDocs.Redaction for .NET，轻松从不同类型的文件中删除隐藏或可见内容。非常适合安全共享。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "红action 工具概述"
  features:
    # feature loop
    - title: "替换私密文本"
      content: "在文件中的任何位置搜索特定文本并进行替换。支持纯文本或模式。"

    # feature loop
    - title: "覆盖敏感图片"
      content: "用覆盖层遮盖图像的部分或整页。您可以控制颜色、大小和位置。"

    # feature loop
    - title: "清除隐藏数据"
      content: "删除元数据，如姓名、评论或时间戳，以确保没有遗留信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找并删除模式"
      content: |
        使用正则表达式搜索特定数据类型，如电子邮件地址或身份证号码，自动清理。
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开需要清理的文件
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // 创建一个电子邮件正则表达式规则和一个替换字符串
              var repl_opt = new ReplacementOptions("[redacted]");
              string emailRegex = @"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}";

              var redaction = new RegexRedaction(emailRegex, repl_opt);

              // 根据设置运行红action
              redactor.Apply(redaction);

              // 保存更新后的文件
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
    title: "使用 .NET 在 DOCX 中删除数据"
    exclude: "DOCX"
    description: "通过使用 .NET 在 DOCX 文档中隐藏信息保护个人或官方信息。简单有效。"
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