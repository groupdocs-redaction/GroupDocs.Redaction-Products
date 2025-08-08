
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使用してPDFファイルの機密テキストを隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使用すると、色付きのオーバーレイを追加してPDFファイルの機密テキストを隠すことができます。ファイルの見た目を変えずにプライベートデータを保護します。"

############################# Header ############################
title: "Pythonを使用してPDFの機密テキストを隠す" 
description: "PythonでPDFファイルを保護します。法的、個人的、または機密情報をブロックするためにオーバーレイを使用します。"
subtitle: "GroupDocs.Redaction for Python via .NET のハイライト" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者がPDFファイル内のコンテンツを簡単に隠したり削除したりする方法を提供します。多くのフォーマットにわたる機密テキスト、画像、またはメタデータを覆い隠します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルの機密情報を安全に保つ"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、あなたのPython via .NETアプリでプライベートコンテンツを迅速に隠します。
      
      1. Redactorを設定し、Pdfファイルをロードします。
      2. 削除方法を選択します。
      3. 隠すテキストを選択し、オーバーレイの色を選びます。
      4. 削除を適用し、ファイルを保存します。
   
    code:
      platform: "python-net"
      copy_title: "コピー"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "サンプルのマスキング"
      install:
        command: |
        command: "pip install groupdocs-redaction-net"
        copy_tip: "クリックしてコピー"
        copy_done: "コピーしました"
      links:
        #  loop
        - title: "さらに多くの例"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
        #  loop
        - title: "ドキュメンテーション"
          link: "https://docs.groupdocs.com/redaction/python-net/"
          
      content: |
        ```python {style=abap}
        import groupdocs.redaction as gr
        import groupdocs.redaction.redactions as grr
        import groupdocs.pydrawing as grd

        # 色付きオーバーレイを使用してPDFの機密テキストを隠す

        # 削除オプションを設定します
        # 隠す内容を定義し、色を選択します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorにファイルのパスを渡してファイルをロードします
        with gr.Redactor("input.pdf") as redactor:

            # PDFファイルを削除して保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ドキュメントから情報を隠すまたは削除する"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、多くのフォーマットでテキスト、画像、その他のデータを隠すことができます。重要な情報を保護しつつ、ドキュメントを読みやすく、共有しやすく保ちます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "柔軟な削除機能"
  features:
    # feature loop
    - title: "任意のテキストを編集"
      content: "機密テキストを見つけて置き換えることで、ドキュメントを安全に保つことができます。"

    # feature loop
    - title: "画像を覆う"
      content: "オーバーレイを使用して、全体の画像または特定の領域をブロックします。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "隠されたデータを削除して、意図しない情報漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用してテキストを検索して隠す"
      content: |
        この例では、正規表現パターンを使用してテキストを検索して隠す方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # テキストパターンとオーバーレイの色を設定します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # ドキュメントをロードします
          with gr.Redactor("source.pdf") as redactor:

              # 選択したコンテンツを削除します
              result = redactor.apply(redaction)

              # 更新されたファイルを保存します
              so = gro.SaveOptions()
              so.add_suffix = True
              so.rasterize_to_pdf = False
              result_path = redactor.save(so)
          ```
        platform: "python-net"
        copy_title: "コピー"
        install:
          command: "pip install groupdocs-redaction-net"
          copy_tip: "クリックしてコピー"
          copy_done: "コピーしました"
        top_links:
          #  loop
          - title: "結果をダウンロード"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "さらに多くの例"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Python-via-.NET/"
          #  loop
          - title: "ドキュメンテーション"
            link: "https://docs.groupdocs.com/redaction/python-net/"


############################# Actions ############################

actions:
  enable: true
  title: "始める準備はできましたか？"
  description: "GroupDocs.Redactionの機能を無料で試すか、ライセンスをリクエストしてください"
  items:
    #  loop
    - title: "PyPiをダウンロード"
      link: "https://releases.groupdocs.com/redaction/python-net/"
      color: "red"
        #  loop
    - title: "ライセンス"
      link: "https://purchase.groupdocs.com/pricing/redaction/python-net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "PythonツールでPDFファイルを保護"
    exclude: "PDF"
    description: "Pythonを使用してPDFファイル内のコンテンツを隠したり削除したりします。プライベート情報を安全に保つための信頼できる方法です。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/hide-text-with-image-overlay//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/hide-text-with-image-overlay//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/hide-text-with-image-overlay//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-text-with-image-overlay//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/hide-text-with-image-overlay//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/hide-text-with-image-overlay//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/hide-text-with-image-overlay//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---