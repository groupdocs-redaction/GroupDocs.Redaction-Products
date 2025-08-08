
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してPPTXファイルの画像をオーバーレイでマスクする"
head_description: "GroupDocs.Redaction for Python via .NETを使って、PPTXファイル内の敏感な画像を色付きのオーバーレイでマスクします。文書のフォーマットを変更することなく、重要なデータを保護します。"

############################# Header ############################
title: "Pythonを使用したPPTX文書内のプライベート画像をマスクする" 
description: "Pythonを使用して、PPTXファイル内の敏感なビジュアルを守ります。当社のツールは、画像の修正を迅速かつ簡単にします。"
subtitle: "GroupDocs.Redaction for Python via .NETの機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にPPTXファイルの内容を隠したり削除したりするためのシンプルなツールを提供します。さまざまなフォーマットでテキスト、画像、メタデータを保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Pptxファイル内の敏感なデータを保護する"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NETアプリが文書を保護するために機密コンテンツを覆うのを支援します。
      
      1. Redactorオブジェクトを作成し、Pptxファイルをロードします。
      2. 必要に応じて修正オプションを設定します。
      3. 画像の領域を選択し、オーバーレイの色を指定します。
      4. オーバーレイを適用し、ファイルを保存します。
   
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

        # PPTX内のプライベート画像領域をマスクする

        # オーバーレイの色とサイズを設定
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 修正する領域を選択
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorで文書を開く
        with gr.Redactor("input.pptx") as redactor:

            # オーバーレイを適用し、ファイルを保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書修正の機能"
  description: "GroupDocs.Redaction for Python via .NETを使用して、さまざまな文書タイプの機密データを隠したり削除したりできます。ファイルをきれいで保護された状態に保ちましょう。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "修正機能の全範囲"
  features:
    # feature loop
    - title: "テキストを検索・置き換え"
      content: "文書中の敏感なテキストを見つけて修正し、情報を保護します。"

    # feature loop
    - title: "画像の領域をマスクする"
      content: "オーバーレイを使用して全画像または特定のセクションを隠します。"

    # feature loop
    - title: "メタデータをクリーンアップ"
      content: "隠れたメタデータを削除または変えることで、プライベートデータを公開しないようにします。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "カラー付きオーバーレイで画像コンテンツを覆う"
      content: |
        この例では、オーバーレイを使用して文書内の敏感な画像の部分をマスクする方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイのプロパティを設定: サイズ、位置、色
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 最初のページの画像領域を選択
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 文書をロードする
          with gr.Redactor("source.pptx") as redactor:

              # 選択した領域にオーバーレイを適用し、保存します。
              result = redactor.apply(redaction)

              # 保護された文書を保存
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
    title: "Pythonを使用してPPTXファイルのコンテンツをマスクする"
    exclude: "PPTX"
    description: "Pythonを使用すれば、PPTXファイル内のプライベートコンテンツを隠したり削除したりできます。文書のセキュリティを確保するための信頼できるツールです。"
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