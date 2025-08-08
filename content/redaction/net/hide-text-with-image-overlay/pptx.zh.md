
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: zh
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "使用 C# 通过覆盖层编辑 PPTX 中的文本"
head_description: "通过使用 GroupDocs.Redaction for .NET 隐藏 PPTX 文档中的私人内容，覆盖其彩色方块。保持您的布局不变。"

############################# Header ############################
title: "使用 .NET 的覆盖层编辑 PPTX 中的文本" 
description: "借助 C# 和 GroupDocs.Redaction for .NET，很容易保护您 PPTX 文件中的敏感数据，将其隐藏起来。"
subtitle: "探索 GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET 的功能"
    link: "/redaction/net/"
    link_title: "了解更多"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET 让您可以使用 C# 截遮盖或删除 PPTX 文档中的内容。几行代码即可轻松隐藏任何内容，比如名称和笔记。

############################# Steps ############################
steps:
    enable: true
    title: "在您的 Pptx 文件中隐藏私人内容"
    content: |
      使用 GroupDocs.Redaction for .NET，.NET 开发人员可以在几个简单步骤中保护文档。
      
      1. 使用要清理的文件路径启动一个 Redactor。
      2. 选择符合您需求的编辑规则。
      3. 选择要匹配的模式和覆盖图像的颜色。
      4. 运行编辑并保存更新后的文件。
   
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
        // 使用覆盖层遮盖 PPTX 中的文本

        // 初始化 Redactor 与您的文件
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // 定义编辑如何工作
            // 设定要隐藏的内容和覆盖色
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // 运行并保存更改
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "保护文件的更多方法"
  description: "GroupDocs.Redaction for .NET 提供工具，帮助您在不同的格式中隐藏数据，而不更改布局。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "对您有用的功能"
  features:
    # feature loop
    - title: "根据需要替换文本"
      content: "替换文本以保护关键信息不被未授权用户访问。"

    # feature loop
    - title: "隐藏图像区域"
      content: "通过绘制覆盖方块隐藏整幅图像或某些部分。"

    # feature loop
    - title: "擦除隐藏的数据"
      content: "删除嵌入的元数据，防止泄露私密信息。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正则表达式编辑"
      content: |
        此示例演示如何使用正则表达式搜索和隐藏文本
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  加载需要编辑的文件
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // 设置编辑规则：搜索文本和覆盖颜色
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // 应用编辑逻辑
              redactor.Apply(redaction);

              // 保存编辑后的结果
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
    title: "使用 .NET 工具保护 PPTX 文本"
    exclude: "PPTX"
    description: "在 PPTX 文件中覆盖私人区域或删除隐藏数据，使用 .NET 编辑功能。"
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