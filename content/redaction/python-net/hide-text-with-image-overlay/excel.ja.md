
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使用してEXCEL内のコンテンツを隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使用すれば、色付きオーバーレイを使ってEXCELファイル内のテキストを覆うことができます。プライベートコンテンツを保護するためのシンプルな方法です。"

############################# Header ############################
title: "Python内でのEXCEL用のオーバーレイテキスト隠し" 
description: "Pythonコードを書いて、EXCELファイルにおいてテキストを隠し、情報を保護します。ドキュメントを安全かつ整然と保ちます。"
subtitle: "GroupDocs.Redaction for Python via .NETで得られるもの" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを使用する理由"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者がEXCELファイル内のコンテンツを隠したり削除したりする必要がある場合に対応するために設計されています。テキスト、画像、メタデータで作業が容易になります。

############################# Steps ############################
steps:
    enable: true
    title: "Excel内の機密データを隠す"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NET開発者が共有する前にドキュメントを準備するのを簡単にします。
      
      1. Redactorを作成し、Excelファイルを開きます。
      2. タスクに合った削除設定を選択します。
      3. 隠すテキストやフレーズを入力し、色を選択します。
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

        # EXCEL内のテキストを隠すためにオーバーレイを使用

        # あなたの削除設定を選択します
        # 隠すものと使用する色を選びます
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorを使ってファイルをロードします
        with gr.Redactor("input.xslx") as redactor:

            # 変更を適用し、ファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "データを削除するための便利なツール"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、ドキュメントのレイアウトと内容を明確に保ちながら、データを隠したり削除したりできます。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ファイルを保護するために設計されています"
  features:
    # feature loop
    - title: "テキストを隠すまたは変更する"
      content: "隠す必要のあるテキストの任意の部分を見つけて置き換えます。"

    # feature loop
    - title: "画像やビジュアルを覆う"
      content: "オーバーレイを追加して、画像やグラフの敏感な部分を削除します。"

    # feature loop
    - title: "隠されたメタデータをクリア"
      content: "著者名やタイムスタンプなどのバックグラウンド情報を削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現を使って削除する"
      content: |
        正規表現パターンを使ってコンテンツを見つけたり隠したりする方法を学びます。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 正規表現パターンと色の設定を追加します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # クリーンアップしたいファイルを開きます
          with gr.Redactor("source.xslx") as redactor:

              # 削除を適用します
              result = redactor.apply(redaction)

              # 削除版を保存します
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
    title: "Python削除でEXCELを保護"
    exclude: "EXCEL"
    description: "正方形のオーバーレイを使用してEXCELのコンテンツを隠したり、Python機能を使って完全に削除したりします。"
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