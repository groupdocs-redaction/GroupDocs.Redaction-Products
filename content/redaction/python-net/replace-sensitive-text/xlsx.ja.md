
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してXLSXからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、XLSXファイルから機密データを隠すか削除します。"

############################# Header ############################
title: "Pythonを使用してXLSXファイル内のプライベートテキストを隠すまたは削除" 
description: "GroupDocs.Redaction for Python via .NETとPythonを利用して、XLSXドキュメントからプライベートテキストを削除できます。迅速で信頼性のあるプロセス。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にXLSXファイルからプライベートデータを削除または隠すためのすべてのツールを提供します。テキスト、画像、メモ、メタデータを処理できます。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイルからコンテンツを削除する方法"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、Python via .NETアプリにおいて機密コンテンツをすぐにクリアまたは隠すことができます。
      
      1. Redactorを開始し、Xlsxファイルをロードします。
      2. 必要な削除設定を選択します。
      3. 検索テキストと置き換え内容を設定します。
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

        # XLSXファイル内のテキストを削除する方法

        # 削除の好みを選択します
        # 検索の値と置き換えの値を設定します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタを使用してファイルをロードします
        with gr.Redactor("input.xslx") as redactor:

            # 変更を適用し、更新されたXLSXを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "追加の削除機能"
  description: "GroupDocs.Redaction for Python via .NETを使用して、異なるファイル形式でプライベート情報を隠したり削除したりするのが簡単です。安全なファイルを自信を持って共有できます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータ削除のための機能"
  features:
    # feature loop
    - title: "プライベートテキストを置き換える"
      content: "一致する単語やパターンを見つけて交換します。正規表現とキーワード検索に対応しています。"

    # feature loop
    - title: "機密画像を隠す"
      content: "オーバーレイでファイルの一部を隠します。見た目と隠す内容をカスタマイズできます。"

    # feature loop
    - title: "メタデータを削除する"
      content: "ドキュメント履歴、著者名、内部タグなどの隠れた情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用して削除"
      content: |
        電話番号、ID、またはメールを正規表現で見つけて迅速に削除します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # あなたのEMAIL正規表現パターンと置き換えるテキストを設定します
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # 清掃したいドキュメントを開きます
          with gr.Redactor("source.xslx") as redactor:

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
    title: "Pythonを使用してXLSX内のコンテンツを削除"
    exclude: "XLSX"
    description: "Pythonを使用してXLSXファイルから機密テキストを削除します。データの安全性を保つために、個人情報を保護します。"
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