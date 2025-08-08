
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Word
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してWORDの画像をオーバーレイで保護する"
head_description: "GroupDocs.Redaction for Python via .NETを使い、WORDファイル内の敏感な画像にオーバーレイを適用して保護します。文書のレイアウトを保持しつつプライベートデータを保護します。"

############################# Header ############################
title: "Pythonを使用したWORDファイル内のプライベート画像を覆う" 
description: "Pythonを使用して、WORD文書内の個人およびビジネスビジュアルを安全に保ちます。信頼できるシンプルで迅速な修正ツール。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にWORDファイルから内容を隠したり削除したりするためのシンプルなツールを提供します。さまざまな形式でのテキスト、画像、メタデータを安全に保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Wordファイル内の敏感な情報を保護する"
    content: |
      GroupDocs.Redaction for Python via .NETは、あなたのPython via .NETアプリがプライベートコンテンツをオーバーレイで覆うことで文書を保護するのをサポートします。
      
      1. Redactorオブジェクトを作成し、Wordファイルをロードします。
      2. 必要に応じて修正設定を調整します。
      3. 画像の領域を選択し、オーバーレイの色を設定します。
      4. オーバーレイを適用し、修正されたファイルを保存します。
   
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

        # WORD内の敏感な画像の部分を覆う

        # オーバーレイの色とサイズを指定
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 隠す画像の領域を選択
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使用してファイルをロード
        with gr.Redactor("input.docx") as redactor:

            # オーバーレイを適用し、文書を保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "高度な修正機能"
  description: "GroupDocs.Redaction for Python via .NETを使えば、さまざまな文書形式内の敏感なコンテンツを隠したり削除したりできます。ファイルをきれいで、共有可能な状態に保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "オールインワン修正ツールキット"
  features:
    # feature loop
    - title: "テキストを検索・置き換え"
      content: "文書内の敏感なテキストを見つけて修正し、プライバシーを確保します。"

    # feature loop
    - title: "画像にオーバーレイを適用"
      content: "選択した画像の領域や全体を覆い、プライバシーを守ります。"

    # feature loop
    - title: "メタデータを削除"
      content: "隠れたメタデータを削除して、目に見えないデータを共有することを避けます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像コンテンツを隠す"
      content: |
        この例は、オーバーレイを使用して文書内の敏感な画像を隠す方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイの寸法、色、位置を設定
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # カバーする領域を選択
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 文書を開く
          with gr.Redactor("source.docx") as redactor:

              # オーバーレイ修正を適用
              result = redactor.apply(redaction)

              # 更新された文書を保存
              save_options = gro.SaveOptions()
              save_options.add_suffix = True
              save_options.rasterize_to_pdf = False
              result_path = redactor.save(save_options)
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "Pythonを使用してWORDでコンテンツを修正"
    exclude: "WORD"
    description: "Pythonを使用して、WORDファイル内の敏感なコンテンツを隠したり削除したりできます。文書の安全性を確保するための信頼できるソリューションです。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/hide-image-content//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/hide-image-content//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/hide-image-content//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/hide-image-content//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/hide-image-content//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/hide-image-content//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/hide-image-content//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/hide-image-content//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/hide-image-content//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/hide-image-content//jpeg/"
          description: "JPEG画像"


---