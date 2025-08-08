
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してPOWERPOINTからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、POWERPOINTファイル内の機密データを迅速に保護します。"

############################# Header ############################
title: "Pythonを使用してPOWERPOINTファイル内の機密テキストを検索して隠す" 
description: "GroupDocs.Redaction for Python via .NETとPythonを利用して、POWERPOINTファイル内のプライベートコンテンツを削除または隠すことができます。個人情報や仕事関連の情報を秘密に保ちます。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者がPOWERPOINTファイルの内容を内外からクリーンアップするためのツールを提供します。コンテンツ、画像、ノート、メタデータを簡単に削除できます。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointファイル内のテキストをクリーンアップする方法"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、Python via .NETアプリケーション内で機密データをすぐに削除または置き換えます。
      
      1. Redactorを開始し、Powerpointファイルをオープンします。
      2. 必要な削除オプションを選択します。
      3. 検索したいテキストとその置き換え内容を入力します。
      4. 削除を適用し、最終ファイルを保存します。
   
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

        # POWERPOINTファイル内のテキストを削除する方法

        # 削除設定を選択します
        # 検索テキストとその置き換え内容を選択します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタを使用してファイルをロードします
        with gr.Redactor("input.pptx") as redactor:

            # 削除を実行し、最終的なPOWERPOINTファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "プライベートデータを削除するためのさらに多くのツール"
  description: "GroupDocs.Redaction for Python via .NETを使用することで、さまざまなフォーマットでプライベートコンテンツを削除できます。安全な文書の共有やアーカイブに最適です。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "削除オプションとツール"
  features:
    # feature loop
    - title: "テキストを見つけて置き換える"
      content: "迅速に機密単語や数字を交換できます。正規表現やキーワード検索に対応しています。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "特定の領域を図形やオーバーレイで隠します。ニーズに合わせてビジュアルを調整します。"

    # feature loop
    - title: "隠れた情報を削除"
      content: "ファイルを作成した人、コメント、変更履歴のようなメタデータをクリアします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使用したパターン削除"
      content: |
        正規表現を使用して、メールアドレス、連絡先情報、またはその他のプライベートな詳細を見つけて削除します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # EMAIL正規表現パターンと置き換え値を設定します
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # クリーンアップするプレゼンテーションを開きます
          with gr.Redactor("source.pptx") as redactor:

              # 削除手順を適用します
              result = redactor.apply(redaction)

              # 最終的な削除されたファイルを保存します
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
    title: "Pythonを使用してPOWERPOINT内のコンテンツを削除"
    exclude: "POWERPOINT"
    description: "Pythonを使用して、POWERPOINTファイルの機密テキストを削除してデータを安全に保ちます。"
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