
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:02
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してWORDからプライベートテキストを削除"
head_description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、WORDファイル内のプライベートデータを保護します。迅速かつ簡潔なテキスト削除。"

############################# Header ############################
title: "PythonでWORDファイル内のプライベートテキストを編集または隠す" 
description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、WORDファイル内の機密コンテンツをクリーンアップします。個人または業務文書を安全に保ちます。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを紹介します"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にWORDファイルを簡単にクリーンアップするためのツールを提供します。テキスト、画像、ノート、メタデータを数ステップで削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイル内のテキストを削除する手順"
    content: |
      GroupDocs.Redaction for Python via .NETを使用して、Python via .NETアプリケーションで迅速に機密情報を削除または隠します。
      
      1. Redactorを開始し、Wordファイルをロードします。
      2. 希望する削除設定を選択します。
      3. 検索したいテキストとその置き換え内容を入力します。
      4. 削除を実行し、ドキュメントを保存します。
   
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

        # WORDファイル内のテキストを削除する方法

        # 削除オプションを設定します
        # 置き換えたいテキストとその新しい値を選択します
        repl_opt = grr.ReplacementOptions("[redacted]")
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorコンストラクタを使用してファイルを開きます
        with gr.Redactor("input.docx") as redactor:

            # 適用して、削除されたWORDファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "さらなる削除ツール"
  description: "GroupDocs.Redaction for Python via .NETはさまざまなファイル形式の機密コンテンツをクリアするためのツールを提供します。文書の安全性を保ちながら共有できます。"
  image: "/img/redaction/features_text_redact.webp" # 500x500 px
  image_description: "削除オプションの概要"
  features:
    # feature loop
    - title: "機密テキストを置き換える"
      content: "テキストやパターンを見つけて置き換えます。正規表現もサポートされています。"

    # feature loop
    - title: "プライベート画像のカバー"
      content: "部分的に隠すまたは重ね合わせます。外観やサイズを必要に応じて調整します。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "著者名、作成日、コメントなどの隠れた詳細を消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現によるパターンを削除"
      content: |
        メール、名前、またはIDのようなテキストパターンを見つけてクリーンアップします。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr

          # EMAIL正規表現ルールと置き換えテキストを設定します
          repl_opt = grr.ReplacementOptions(color)
          emailRegex = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

          redaction = grr.RegexRedaction(emailRegex, repl_opt)

          # ドキュメントを開きます
          with gr.Redactor("source.docx") as redactor:

              # 削除設定を適用します
              result = redactor.apply(redaction)

              # 最終版を保存します
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
    title: "Pythonを使用してWORD内のコンテンツを削除"
    exclude: "WORD"
    description: "Pythonツールを利用してWORDドキュメントをクリーンアップし、機密テキストや詳細を削除します。"
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