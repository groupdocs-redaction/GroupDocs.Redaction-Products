
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してDOCXからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して機密コンテンツを削除することで、DOCXファイルを安全に保つ。迅速かつ簡潔な削除プロセス。"

############################# Header ############################
title: "PythonでDOCXファイル内のプライベートテキストを編集または隠す" 
description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、DOCXコンテンツを制御します。個人使用にもビジネス用途にも最適です。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にDOCXファイル内のコンテンツをクリーンアップするためのツールを提供します。テキスト、画像、コメント、メタデータを簡単に削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Docxファイル内のテキストをクリーンアップする方法"
    content: |
      Python via .NETアプリ内でGroupDocs.Redaction for Python via .NETを使用して、プライベートテキストを削除または隠します。迅速で簡単な削除プロセス。
      
      1. Redactorを作成し、Docxファイルをオープンします。
      2. 必要な削除ルールを設定します。
      3. 検索するテキストとその置き換え内容を選択します。
      4. 削除を実行し、新しいファイルを保存します。
   
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

        # DOCXファイル内のテキストを削除する方法

        # 削除設定を選択します
        # 検索するテキストとその置き換え内容を入力します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタでファイルを開きます
        with gr.Redactor("input.docx") as redactor:

            # 変更を適用し、更新されたDOCXファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらに多くの削除ツール"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、さまざまなフォーマットで機密テキストを削除またはマスクできます。安心して清潔で安全なファイルを共有します。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "テキスト、画像、メタデータ削除のためのツール"
  features:
    # feature loop
    - title: "プライベートテキストの検出と置換"
      content: "特定の単語やパターンを検索して置き換えます。正規表現とキーワードオプションに対応しています。"

    # feature loop
    - title: "機密画像のカバー"
      content: "画像の領域をオーバーレイまたは非表示にします。色、透明度、サイズを必要に応じて変更します。"

    # feature loop
    - title: "メタデータの削除"
      content: "著者名、タイムスタンプ、内部ノートなどの隠れた情報を消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "パターンを削除するための正規表現を使用"
      content: |
        メール、ID、またはパターンを検索し、簡単に置き換えます。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # EMAIL正規表現パターンと置き換えテキストを設定します
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # クリーンアップしたいファイルを開きます
          with gr.Redactor("source.docx") as redactor:

              # 削除設定を適用します
              result = redactor.apply(redaction)

              # 削除されたドキュメントを保存します
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
    title: "Pythonを使用してDOCX内のコンテンツを削除"
    exclude: "DOCX"
    description: "Pythonを使用してDOCXファイルから機密テキストを削除します。個人および業務文書を保護します。"
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