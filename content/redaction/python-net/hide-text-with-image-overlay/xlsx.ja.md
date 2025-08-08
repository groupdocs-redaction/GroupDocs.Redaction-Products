
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:01
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonとオーバーレイを使用してXLSX内のテキストを隠す"
head_description: "GroupDocs.Redaction for Python via .NETは、色付きオーバーレイを追加することでXLSXファイル内のテキストを隠す手助けをします。ファイルのレイアウトを変更せずにデータをプライベートに保つことができます。"

############################# Header ############################
title: "Pythonオーバーレイを使用してXLSXファイル内のテキストを隠す" 
description: "GroupDocs.Redaction for Python via .NETとPythonを使用して、シンプルなオーバーレイを使ってXLSXファイル内の機密テキストを保護します。"
subtitle: "GroupDocs.Redaction for Python via .NETで得られるもの" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETの機能"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者向けに、XLSXファイル内のテキストや画像、その他コンテンツを隠したり削除したりするツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイル内のデータを保護"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すれば、Python via .NET開発者は数行のコードでプライベート情報を隠すことができます。
      
      1. Redactorを作成し、Xlsxファイルをロードします。
      2. あなたのケースに合った削除オプションを設定します。
      3. 隠すテキストパターンを追加し、色を選択します。
      4. 削除を実行し、ファイルを保存します。
   
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

        # XLSX内のプライベートコンテンツをオーバーレイで隠す

        # 削除設定を設定します
        # 隠すテキストとオーバーレイの色を選択します
        color = grd.Color.from_argb(255, 220, 20, 60)
        repl_opt = grr.ReplacementOptions(color)
                
        redaction = grr.ExactPhraseRedaction("Text to hide", repl_opt)

        # Redactorを使用してファイルをロードします
        with gr.Redactor("input.xslx") as redactor:

            # 削除を実行し、ファイルを保存します
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "役立つ削除ツール"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、多くのファイルタイプからコンテンツを隠したり削除したりできます。個人情報やビジネス情報を保護します。"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "使いやすい削除オプション"
  features:
    # feature loop
    - title: "テキストを見つけて編集"
      content: "特定のテキストを検索し、置き換えたり隠したりします。"

    # feature loop
    - title: "画像コンテンツを覆う"
      content: "プライベートな領域をブロックするために画像全体にオーバーレイを描きます。"

    # feature loop
    - title: "メタデータを削除"
      content: "共有前にバックグラウンド情報をクリーンアップします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "正規表現パターンを使用してテキストを隠す"
      content: |
        この例では、正規表現を使用してコンテンツを見つけて隠す方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # テキストパターンとオーバーレイの色を設定します
          color = grd.Color.from_argb(255, 220, 20, 60)
          repl_opt = grr.ReplacementOptions(color)

          redaction = grr.RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt)

          # 編集したいファイルを開きます
          with gr.Redactor("source.xslx") as redactor:

              # 削除ルールを適用します
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
    title: "PythonでXLSXを隠す"
    exclude: "XLSX"
    description: "Pythonのツールを使って、迅速かつ容易にXLSXファイルの機密部分を隠したり削除したりします。"
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