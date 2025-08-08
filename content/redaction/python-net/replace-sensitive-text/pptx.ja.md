
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してPPTXからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、PPTXファイルを安全に保ちます。迅速に機密コンテンツを見つけて削除します。"

############################# Header ############################
title: "Pythonを使用してPPTXファイル内のプライベートテキストを編集または削除" 
description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、PPTXドキュメント内の機密データを見つけてクリーンアップします。個人または仕事のファイルをプライベートに保ちます。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にPPTXファイルに対する完全な管理を提供します。テキスト、画像、ノート、メタデータを簡単に削除できます。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxドキュメント内のテキストを削除する方法"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、Python via .NET環境内で機密コンテンツをすぐに隠すか削除できます。
      
      1. Redactorを作成し、Pptxファイルをロードします。
      2. 削除設定を選択します。
      3. 検索するテキストとその置き換え内容を入力します。
      4. 削除を適用し、更新されたファイルを保存します。
   
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

        # PPTXファイル内のテキストを削除する方法

        # 削除オプションを選択します
        # 検索するテキストとその置き換え内容を選択します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタを使用してファイルをロードします
        with gr.Redactor("input.pptx") as redactor:

            # 削除を実行し、更新されたPPTXを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる削除機能"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、さまざまなフォーマットで機密データを削除または隠すことができます。安全に文書を共有します。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "削除機能の概要"
  features:
    # feature loop
    - title: "プライベートテキストの検出と置換"
      content: "特定の単語やフレーズを検索して置き換えます。正規表現とスマートフィルターに対応します。"

    # feature loop
    - title: "プライベート画像のカバー"
      content: "画像内の特定の領域をオーバーレイで隠します。設定を調整して、ニーズに合った外観を実現してください。"

    # feature loop
    - title: "隠れた情報の削除"
      content: "著者名、タイムスタンプ、または内部ノートのようなメタデータをクリーンアップします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現によるパターン削除"
      content: |
        メールアドレス、電話番号、またはIDのようなテキストを見つけてクリーンアップするために正規表現を使用します。
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

          # 編集したいファイルを開きます
          with gr.Redactor("source.pptx") as redactor:

              # 削除プロセスを実行します
              result = redactor.apply(redaction)

              # クリーンなファイルを保存します
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
    title: "Pythonを使用してPPTX内のコンテンツを削除"
    exclude: "PPTX"
    description: "Pythonを使用してPPTXドキュメントから機密テキストを削除し、データを安全に保ちます。"
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