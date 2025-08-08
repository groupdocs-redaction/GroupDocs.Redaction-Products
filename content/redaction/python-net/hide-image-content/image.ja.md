
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使ったIMAGEのマスク画像"
head_description: "オーバーレイを使用して、IMAGEファイル内の敏感な画像コンテンツを隠すGroupDocs.Redaction for Python via .NET。元のレイアウトを保持しつつ、重要なビジュアルを守ります。"

############################# Header ############################
title: "Pythonオーバーレイを使ったIMAGEファイル内の敏感な画像のカバー" 
description: "Pythonを使って、IMAGEファイル内の個人および業務画像データを保護します。迅速かつ効果的な保護のためのシンプルなツール。"
subtitle: "GroupDocs.Redaction for Python via .NETの必要な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にIMAGEファイル内の内容を隠したり削除したりするためのツールを提供します。テキスト、画像、メタデータの保護を強化します。

############################# Steps ############################
steps:
    enable: true
    title: "Imageファイル内のプライベートコンテンツを覆う"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すれば、あなたのPython via .NETアプリケーションが敏感なデータを簡単に隠すことができます。
      
      1. Redactorを初期化し、Imageファイルを指定します。
      2. 必要に応じて修正設定を行います。
      3. 画像セクションを選択し、オーバーレイの色を決定します。
      4. ファイルを処理し、修正されたバージョンを保存します。
   
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

        # IMAGE内の画像コンテンツを覆う

        # オーバーレイのサイズと色を指定
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 隠す領域を選択
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使用してファイルをロード
        with gr.Redactor("input.png") as redactor:

            # オーバーレイを適用して保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "異なる文書形式でのデータ保護"
  description: "GroupDocs.Redaction for Python via .NETは、異なるファイル形式のコンテンツを隠したり削除したりすることを可能にします。文書をクリーンで安全に保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "あらゆる修正を制御するためのツール"
  features:
    # feature loop
    - title: "敏感なテキストを検索・置き換え"
      content: "ドキュメントをスキャンしてプライベートなテキストを置き換え、データを安全に保ちます。"

    # feature loop
    - title: "画像をオーバーレイでマスク"
      content: "画像にオーバーレイを追加して、画像やその特定の部分を隠します。"

    # feature loop
    - title: "メタデータを削除"
      content: "プライベートデータの漏洩を防ぐために隠れたメタデータを削除または編集します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像コンテンツを隠す"
      content: |
        この例は、オーバーレイを使用して文書の敏感な画像データを保護する方法を示しています。
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

          # ページ1の画像領域を選択
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 修正のためにファイルを開く
          with gr.Redactor("source.png") as redactor:

              # オーバーレイで画像コンテンツを隠す
              result = redactor.apply(redaction)

              # 修正後のファイルを保存
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
    title: "Pythonを使用したIMAGEファイル内のコンテンツ保護"
    exclude: "IMAGE"
    description: "Pythonを使用して、IMAGEファイル内の敏感な情報を隠したり削除したりできます。文書を安全でプロフェッショナルに保つための信頼できる方法です。"
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