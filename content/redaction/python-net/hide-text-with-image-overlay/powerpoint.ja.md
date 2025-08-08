
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使用してPOWERPOINT内の機密テキストを隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使用すると、POWERPOINTファイル内のプライベートコンテンツを色オーバーレイで覆うことができます。何が重要かを隠しながら、全てをそのままに保ちます。"

############################# Header ############################
title: "Pythonを使用してPOWERPOINTプレゼンテーションのテキストを隠す" 
description: "PythonとGroupDocs.Redaction for Python via .NETを使用して、POWERPOINTスライド内の機密テキストを隠すためにオーバーレイを追加します。"
subtitle: "GroupDocs.Redaction for Python via .NETでできること" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについての詳細"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETを使用すると、Python開発者はPOWERPOINTプレゼンテーション内のテキスト、画像、および隠された情報を覆ったり削除したりします。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointファイルの情報を削除"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すれば、シンプルな削除手順でPowerpointファイルを共有準備できます。
      
      1. 新しいRedactorを作成し、ファイルをロードします。
      2. 隠すものと適用方法を選択します。
      3. 検索パターンを追加し、オーバーレイの色を設定します。
      4. 削除を適用し、更新されたドキュメントを保存します。
   
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

        # オーバーレイを使用してPOWERPOINT内のテキストを隠す

        # 削除がどのように機能するかを設定します
        # 隠すテキストと色を選択します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorを使ってプレゼンテーションをロードします
        with gr.Redactor("input.pptx") as redactor:

            # 削除してファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "情報を隠すシンプルな方法"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、法的、個人的、またはビジネス使用向けに、ドキュメントの敏感な部分を隠したり削除したりすることが簡単になります。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "プライバシーに配慮した便利なツール"
  features:
    # feature loop
    - title: "テキストを見つけて置き換え"
      content: "単語や番号を検索して隠したり変更したりします。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "オーバーレイを描いて、全体の画像や特定のスポットを隠します。"

    # feature loop
    - title: "隠れた情報を削除"
      content: "ユーザーが見えない名前やタイムスタンプを含むメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現検索を使用して削除"
      content: |
        正規表現がスライド内のテキストを見つけて隠すのに役立つ方法を確認します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # パターンとオーバーレイの色を定義します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # POWERPOINTファイルを開きます
          with gr.Redactor("source.pptx") as redactor:

              # 削除を実行します
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
    title: "Pythonを使用してPOWERPOINT内のテキストを隠す"
    exclude: "POWERPOINT"
    description: "Pythonを使用してオーバーレイを追加するか、POWERPOINTスライドからコンテンツを削除してプライベートデータを安全に保ちます。"
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