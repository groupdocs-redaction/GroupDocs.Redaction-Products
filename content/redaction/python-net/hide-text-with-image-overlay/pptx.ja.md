
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使用してPPTX内のテキストを隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、PPTXファイル内の機密コンテンツを色付きオーバーレイで覆います。レイアウトはそのままです。"

############################# Header ############################
title: "Pythonを使用してPPTXのテキストを保護" 
description: "GroupDocs.Redaction for Python via .NETおよびPythonを使用して、PPTXプレゼンテーション内のプライベート情報をカラーブロックで隠します。"
subtitle: "GroupDocs.Redaction for Python via .NETで可能なこと" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETの詳細"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者がPPTXプレゼンテーションを清掃するために、テキスト、画像、隠された情報を覆ったり削除したりするのを助けます。

############################# Steps ############################
steps:
    enable: true
    title: "Pptx内のプライベート情報を削除"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すれば、数ステップでプレゼンテーションを保護できます。
      
      1. Redactorを作成し、編集したいファイルをロードします。
      2. ニーズに合った削除設定を選択します。
      3. テキストパターンを設定し、オーバーレイ用の色を選びます。
      4. 削除を適用し、変更を保存します。
   
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

        # PPTX内のテキストを隠すためにオーバーレイを使用

        # 削除の設定を定義します
        # テキストと色を選択します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorでファイルをクロスロードします
        with gr.Redactor("input.pptx") as redactor:

            # 削除してファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "情報を隠すための簡単な方法"
  description: "GroupDocs.Redaction for Python via .NETは、法的、個人的、またはビジネス使用向けに、ドキュメントの敏感な部分を隠したり削除したりするのを簡単にします。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "プライバシーのための便利なツール"
  features:
    # feature loop
    - title: "テキストを見つけて置き換える"
      content: "単語や数字を検索して隠したり変更したりします。"

    # feature loop
    - title: "画像の一部を隠す"
      content: "オーバーレイを描いて全画像や選択した部分を隠します。"

    # feature loop
    - title: "隠れた情報を削除"
      content: "ユーザーに見えない名前やタイムスタンプなどのメタデータを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使ってテキストを見つける"
      content: |
        正規表現がスライド内の敏感なコンテンツを見つけて隠すのに役立つ方法を確認します。
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

          # PPTXファイルを開きます
          with gr.Redactor("source.pptx") as redactor:

              # 削除を実行します
              result = redactor.apply(redaction)

              # 最終バージョンを保存します
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
    title: "Pythonを使用してPPTX内のテキストを隠す"
    exclude: "PPTX"
    description: "Pythonを使用してオーバーレイを追加したり、PPTXスライドからコンテンツを削除してプライベートデータを安全に保ちます。"
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