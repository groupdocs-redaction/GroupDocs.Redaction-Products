
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してXLSXファイル内の画像領域をオーバーレイで隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使って、XLSXファイル内の敏感な画像領域をオーバーレイで保護します。プライベートなビジュアルを保護しつつ、文書の構造を変更しません。"

############################# Header ############################
title: "Pythonを使用してXLSX文書内の敏感な画像を隠す" 
description: "Pythonを使用してXLSXファイル内の機密画像を安全に保護します。当社のツールは迅速かつ効果的な画像修正を確保します。"
subtitle: "GroupDocs.Redaction for Python via .NETの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にXLSX文書から敏感なデータを隠したり削除したりするためのツールを提供します。異なる形式でのテキスト、画像、メタデータを修正します。

############################# Steps ############################
steps:
    enable: true
    title: "Xlsxファイル内の敏感なデータを保護する"
    content: |
      GroupDocs.Redaction for Python via .NETは、あなたのPython via .NETアプリに文書を保護するのをシンプルにします。
      
      1. Redactorを初期化し、Xlsx文書をロードします。
      2. 作業に合った修正パラメーターを設定します。
      3. 覆う画像の部分を定義し、色を選択します。
      4. 修正を適用して、最終ファイルを保存します。
   
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

        # XLSX内の機密画像セクションを隠す

        # オーバーレイのサイズと色を選択
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 修正する領域を指定
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使ってドキュメントをロード
        with gr.Redactor("input.xslx") as redactor:

            # オーバーレイを適用してファイルを保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内のコンテンツを修正する"
  description: "GroupDocs.Redaction for Python via .NETを使えば、多くの文書形式で敏感なデータを隠したり削除したりできます。文書を安全で、プロフェッショナルな外観のまま保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "効率的な修正ツール"
  features:
    # feature loop
    - title: "テキストを検索・置き換える"
      content: "プライベートなテキストを探し、隠したり置き換えたりします。"

    # feature loop
    - title: "オーバーレイで画像を覆う"
      content: "全画像または特定のセクションを隠すことができます。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "ファイルからメタデータをクリーンアップし、プライベート情報を共有しないようにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像コンテンツをマスクする"
      content: |
        このガイドは、オーバーレイを使用して文書内の敏感な画像領域を隠す方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイのサイズ、位置、色を設定
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 特定の画像セクションを選択
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 修正のためにファイルを開く
          with gr.Redactor("source.xslx") as redactor:

              # オーバーレイを適用して領域を隠す
              result = redactor.apply(redaction)

              # 修正された文書を保存
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
    title: "Pythonを使用してXLSXファイルのコンテンツを隠す"
    exclude: "XLSX"
    description: "Pythonを使用することで、XLSXファイル内の情報を隠したり削除したりできます。機密文書を保護するための、信頼のおける方法です。"
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