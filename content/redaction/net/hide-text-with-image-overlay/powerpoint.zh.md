
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 隐藏 POWERPOINT 中的敏感文本"
head_description: "GroupDocs.Redaction for .NET 让您通过简单的覆盖编辑隐藏 POWERPOINT 文件中的部分内容。保持文档结构安全。"

############################# Header ############################
title: "在 POWERPOINT 中使用 .NET 进行文本编辑" 
description: "通过使用 C# 和 GroupDocs.Redaction for .NET 的覆盖层保护 POWERPOINT 文件中的内容。"
subtitle: "GroupDocs.Redaction for .NET 内部工具" 

############################# About ############################
about:
    enable: true
    title: "关于此工具"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 帮助 C# 用户通过覆盖或删除文本、元数据或图像来清理 POWERPOINT 文档。

############################# Steps ############################
steps:
    enable: true
    title: "保护 Powerpoint 文档中的内容"
    content: |
      在您的 .NET 应用中使用 GroupDocs.Redaction for .NET 在分发前清理文件。
      
      1. 将文件路径传递给新的 Redactor 实例。
      2. 设置您想要遮盖的内容和方式。
      3. 定义文本模式并设置覆盖颜色。
      4. 编辑并保存更新的文件。
   
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
        // 在 POWERPOINT 中使用覆盖层遮盖文本

        // 使用 Redactor 打开您的文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 调整编辑设置
            // 选择文本和遮挡颜色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 运行并保存编辑后的文件
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "轻松隐藏敏感数据"
  description: "使用 GroupDocs.Redaction for .NET 在不同文档类型中删除或覆盖内容，理想用于保护法律、商业或个人文件中的数据。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "灵活的文档编辑"
  features:
    # feature loop
    - title: "替换文本"
      content: "查找信息并替换或隐藏相应的内容。"

    # feature loop
    - title: "遮盖照片或区域"
      content: "添加覆盖层至图片或页面上特定区域。"

    # feature loop
    - title: "删除多余数据"
      content: "清理可能泄露隐私的元数据。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "使用正则表达式查找与编辑"
      content: |
        这展示了正则表达式如何帮助识别和隐藏文本
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  打开需要编辑的文件
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 使用正则表达式设置规则
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 运行编辑过程
              redactor.Apply(redaction);

              // 保存清理后的版本
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
    title: "使用 .NET 隐藏 POWERPOINT 中的内容"
    exclude: "POWERPOINT"
    description: "添加覆盖层或清除 POWERPOINT 文件中的数据，以使用 .NET 保持敏感内容的私密性。"
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