
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用覆盖层和 C# 隐藏 EXCEL 中的内容"
head_description: "使用 GroupDocs.Redaction for .NET 在 EXCEL 文件中用实心彩色方块覆盖文本。保护私人内容的简单方法。"

############################# Header ############################
title: "在 .NET 中为 EXCEL 文件进行覆盖编辑" 
description: "使用 C# 代码来隐藏文本并保护 EXCEL 文件内的数据。文档安全的清理解决方案。"
subtitle: "GroupDocs.Redaction for .NET 包含的内容" 

############################# About ############################
about:
    enable: true
    title: "为何选择 GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 旨在满足希望在 EXCEL 文件中编辑或删除内容的 C# 开发人员的需求。使用它处理文本、元数据和图像。

############################# Steps ############################
steps:
    enable: true
    title: "在 Excel 格式中编辑敏感信息"
    content: |
      GroupDocs.Redaction for .NET 是一个简单的工具，帮助 .NET 开发人员在共享之前清理文档。
      
      1. 启动一个 Redactor 并加载您的 Excel 文件。
      2. 决定您的任务的编辑设置。
      3. 添加要编辑的关键字或短语并选择颜色。
      4. 运行工具并保存更改。
   
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
        // 使用覆盖层隐藏 EXCEL 中的文本

        // 创建一个 Redactor 并加载文件
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // 选择编辑规则
            // 输入要隐藏的内容并选择颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 应用编辑并保存文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "数据保护的关键功能"
  description: "GroupDocs.Redaction for .NET 让您隐藏或删除文档内的数据，而不失去布局或意思。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "为文档安全打造的"
  features:
    # feature loop
    - title: "更改文本内容"
      content: "在文件中替换或隐藏选定的词汇。"

    # feature loop
    - title: "编辑可视内容"
      content: "用简单方块遮盖照片或区域。"

    # feature loop
    - title: "清理元数据"
      content: "删除诸如作者名称或时间戳等背景数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正则表达式文本编辑"
      content: |
        以下是如何使用正则表达式查找和隐藏文件中的内容
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载要处理的文档
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // 添加模式和覆盖设置
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 应用更改
              redactor.Apply(redaction);

              // 保存并关闭编辑过的文档
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
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
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
    title: "使用 .NET 编辑 EXCEL 文件"
    exclude: "EXCEL"
    description: "使用方形覆盖层或 .NET 的清除编辑功能，覆盖 EXCEL 中的敏感内容。"
    items: 
        # format loop 1
        - name: "红行动 PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "Adobe 便携式文档格式"

        # format loop 2
        - name: "红行动 Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "MS Word 和 Open Office 文档"
          
        # format loop 3
        - name: "红行动 Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "MS Excel 和 Open Office 电子表格"

        # format loop 4
        - name: "红行动 PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPoint 和 Open Office 演示文稿"

        # format loop 5
        - name: "红行动 DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "Microsoft Word 开放 XML 文档"
          
        # format loop 6
        - name: "红行动 XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft Excel 开放 XML 电子表格"
          
        # format loop 7
        - name: "红行动 PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "PowerPoint 开放 XML 演示文稿"


---