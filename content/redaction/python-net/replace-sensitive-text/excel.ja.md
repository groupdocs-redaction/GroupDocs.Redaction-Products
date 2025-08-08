
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してEXCELからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、EXCELファイルから機密情報を迅速にクリーニングします。"

############################# Header ############################
title: "Pythonを使用してEXCELファイル内のプライベートテキストを見つけて削除" 
description: "PythonとGroupDocs.Redaction for Python via .NETを使用して、EXCELドキュメントから機密の詳細をクリアします。業務用でも個人用でも、あなたのコンテンツは安全に保たれます。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にEXCELファイルをクリーンアップするために必要なすべてのツールを提供します。テキスト、画像、コメント、メタデータをシンプルなコードで削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイルでのテキスト削除方法"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すると、プロジェクト内でプライベートコンテンツを削除または隠すことができます。
      
      1. Redactorを作成し、Excelファイルを開きます。
      2. 削除設定を選択します。
      3. 検索するテキストとその置き換え内容を入力します。
      4. 削除を実行し、更新されたファイルを保存します。
   
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

        # EXCELファイル内のテキストを削除する方法

        # 削除オプションを設定します
        # 検索するテキストとその置き換え内容を選択します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタを使用してファイルを開きます
        with gr.Redactor("input.xslx") as redactor:

            # 削除を適用し、更新されたEXCELを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる削除機能"
  description: "GroupDocs.Redaction for Python via .NETは、さまざまなファイル形式でプライベートコンテンツをクリアするのに役立ちます。文書を安全に保ち、共有可能にします。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "削除ツールのアクション"
  features:
    # feature loop
    - title: "プライベートテキストを置き換える"
      content: "一致するテキストを検索して置き換えます。スマート検索や正規表現も対応しています。"

    # feature loop
    - title: "画像コンテンツをカバー"
      content: "オーバーレイで画像の一部を隠すことができます。ページ上での見た目をカスタマイズします。"

    # feature loop
    - title: "隠れた詳細を削除"
      content: "著者情報、コメント、タイムスタンプなどのメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用してパターンを削除"
      content: |
        メール、電話番号、またはアカウント情報のようなテキストパターンを見つけてクリーニングします。
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
          with gr.Redactor("source.xslx") as redactor:

              # 削除ルールを適用します
              result = redactor.apply(redaction)

              # ファイルの最終版を保存します
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
    title: "Pythonを使用してEXCEL内のコンテンツを削除"
    exclude: "EXCEL"
    description: "Pythonを使用して、EXCELファイルからプライベートテキストを削除します。内容が保存または共有するのに安全であることを確認します。"
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