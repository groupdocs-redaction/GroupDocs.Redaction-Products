
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してPDF内の機密テキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、PDFドキュメント内のプライベートな詳細を安全に保つ。機密情報を迅速に見つけて隠すことができます。"

############################# Header ############################
title: "Pythonを使用してPDFファイルから機密テキストを消去" 
description: "PythonとGroupDocs.Redaction for Python via .NETを使用して、PDFファイルからプライベート、法的、または個人的なデータを検索して削除します。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にPDFファイル内のコンテンツ（テキスト、画像、コメントなど）を削除するために必要なすべてのツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Pdfファイルでのコンテンツの削除方法"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、どのPython via .NETアプリでもコンテンツを安全に保つことができます。
      
      1. Redactorを作成し、Pdfファイルをロードします。
      2. 希望する削除設定を選択します。
      3. 検索するテキストとその置き換え内容を入力します。
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

        # 

        # 
        # 
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # 
        with gr.Redactor("input.pdf") as redactor:

            # 
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらに多くの削除機能"
  description: "GroupDocs.Redaction for Python via .NETは、さまざまなファイルタイプでプライベートなコンテンツを隠すことができます。データを安全に保ち、共有の準備を整えます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータ削除のためのツール"
  features:
    # feature loop
    - title: "プライベートテキストの検索と置換"
      content: "一致するテキストを検索して置き換えます。正規表現やキーワード検索と連携します。"

    # feature loop
    - title: "プライベート画像のカバー"
      content: "オーバーレイを使用して、完全な画像またはその一部を隠します。外観設定をカスタマイズできます。"

    # feature loop
    - title: "隠れたメタデータの消去"
      content: "著者名、タイムスタンプ、改訂ノートなどの隠れた情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用して削除"
      content: |
        メールアドレス、ID、または番号のようなパターンを見つけて削除するために正規表現を使用します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # 正規表現パターンと置き換えテキストを設定します
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # クリーンアップしたいファイルを開きます
          with gr.Redactor("source.pdf") as redactor:

              # 削除ルールを適用します
              result = redactor.apply(redaction)

              # 削除されたファイルを保存します
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
            link: "/examples/redaction/formats/replace-sensitive-text.pdf"
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
    title: "Pythonを使用してPDF内のコンテンツを削除"
    exclude: "PDF"
    description: "Pythonツールを使用して、PDFファイル内のテキストを削除することで、個人情報やビジネスデータを安全に保ちます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/replace-sensitive-text//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/replace-sensitive-text//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/replace-sensitive-text//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/replace-sensitive-text//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/replace-sensitive-text//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 6
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/replace-sensitive-text//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 7
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/replace-sensitive-text//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"


---