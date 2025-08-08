
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してEXCELの画像をオーバーレイで隠す"
head_description: "GroupDocs.Redaction for Python via .NETを使って、EXCELファイル内の敏感な画像領域をオーバーレイで保護します。文書の外観を変更せず、プライベートなビジュアルを隠します。"

############################# Header ############################
title: "Pythonを使用してEXCELファイル内の敏感な画像を保護する" 
description: "Pythonを使用して、EXCELファイル内の個人およびビジネス画像を安全に保ちます。簡単なツールで信頼できる保護を実現。"
subtitle: "GroupDocs.Redaction for Python via .NETの重要な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にEXCELファイルの敏感なコンテンツを隠したり削除したりするためのシンプルなツールを提供します。画像、テキスト、メタデータを覆って文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイル内のデータを保護する"
    content: |
      GroupDocs.Redaction for Python via .NETを使用すると、あなたのPython via .NETアプリが文書内のプライベート情報を迅速かつ簡単に隠すことができます。
      
      1. Redactorインスタンスを作成し、Excelファイルをロードします。
      2. 必要に応じて修正オプションを設定します。
      3. 画像の領域を選択し、オーバーレイの色を指定します。
      4. 修正を適用し、編集したファイルを保存します。
   
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

        # EXCEL内の画像領域を覆う

        # オーバーレイのサイズと色を調整
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 覆う領域を選択
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorで文書を開く
        with gr.Redactor("input.xslx") as redactor:

            # オーバーレイを適用してファイルを保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "敏感なコンテンツを隠すまたは削除する"
  description: "GroupDocs.Redaction for Python via .NETは、さまざまな形式の文書において敏感なデータを隠したり削除したりすることを可能にします。ファイルを安全で共有しやすいものに保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "機能豊富な修正ツール"
  features:
    # feature loop
    - title: "テキストを安全に編集"
      content: "文書内の敏感テキストを見つけ、プライバシーを保護するために置き換えます。"

    # feature loop
    - title: "画像の部分を隠す"
      content: "選択した画像の領域をオーバーレイで覆います。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "見えないメタデータフィールドを消去して、データ漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイで画像データを隠す"
      content: |
        この例は、文書内の敏感な画像にオーバーレイを適用する方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイの色、サイズ、位置を設定します。
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # ページ1の特定の画像セクションを選択
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 文書を編集のためにロードします。
          with gr.Redactor("source.xslx") as redactor:

              # オーバーレイを適用して隠します。
              result = redactor.apply(redaction)

              # 更新されたファイルを保存します。
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
    title: "Pythonを使ったEXCELのコンテンツを隠す"
    exclude: "EXCEL"
    description: "Pythonを使って、EXCELファイル内の敏感な情報を隠したり削除したりできます。文書のセキュリティを確保するための効果的な方法です。"
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