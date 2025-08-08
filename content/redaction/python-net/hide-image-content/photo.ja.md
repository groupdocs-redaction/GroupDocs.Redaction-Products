
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonオーバーレイを使ったPHOTOファイル内の画像のカバー"
head_description: "GroupDocs.Redaction for Python via .NETを使用してPHOTOファイル内の敏感な画像データをオーバーレイで隠します。文書のデザインを変更せずにプライベートデータを保護します。"

############################# Header ############################
title: "Pythonを使用したPHOTOファイル内の敏感な画像を隠す" 
description: "Pythonを使用して、PHOTOファイル内の画像コンテンツを保護します。迅速かつ効果的なデータ保護のための簡単なツール。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要な特徴" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にPHOTOファイルのコンテンツを隠したり、削除したりするためのツールを提供します。テキスト、画像、メタデータを保護する強力なソリューションです。

############################# Steps ############################
steps:
    enable: true
    title: "Photoファイル内の画像領域を保護する"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NETアプリケーションが敏感な画像領域を簡単にカバーできるようにします。
      
      1. Redactorオブジェクトを作成し、Photoファイルにリンクします。
      2. タスクに合わせて修正の設定を行います。
      3. 画像セクションを強調表示し、オーバーレイの色を設定します。
      4. 修正を適用し、保護されたファイルを保存します。
   
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

        # PHOTO内の画像データを隠すためにオーバーレイを使用

        # オーバーレイの寸法と色を設定
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 隠す画像領域を選択
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使用してファイルを開く
        with gr.Redactor("input.jpeg") as redactor:

            # オーバーレイを適用して保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "異なるフォーマットでのデータ修正"
  description: "GroupDocs.Redaction for Python via .NETを使用すると、さまざまなタイプのファイルで機密データを隠したり削除したりできます。文書を保護しつつ、専門的な外観を保持します。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "全機能の修正機能"
  features:
    # feature loop
    - title: "テキストを検索・編集"
      content: "敏感なテキストを探し、文書を安全に保つために置き換えます。"

    # feature loop
    - title: "画像をオーバーレイで隠す"
      content: "完全な画像または特定のセクションを覆い、プライベートデータを保護します。"

    # feature loop
    - title: "メタデータを削除する"
      content: "隠れたメタデータを削除または編集し、プライベート情報の漏洩を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像のセクションを覆う"
      content: |
        このコード例は、オーバーレイを使用して文書内の敏感な画像領域をマスクする方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイのサイズ、色、配置を設定
          replacement_size = grd.Size(300, 30)
          color = grd.Color.from_argb(255, 220, 20, 60)
          replacement_options = grr.RegionReplacementOptions(color, replacement_size)
          replacement_point = grd.Point(20, 125)
          redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)

          # 最初のページの画像領域を選択する
          redaction.filters = [
              grr.PageRangeFilter(grr.PageSeekOrigin.BEGIN, 0, 1),
              grr.PageAreaFilter(grd.Point(0, 300), grd.Size(600, 600))
          ]

          # 修正のためにファイルを開く
          with gr.Redactor("source.jpeg") as redactor:

              # オーバーレイを適用してコンテンツを隠す
              result = redactor.apply(redaction)

              # セキュリティを強化したファイルを保存
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
    title: "Pythonを使用してPHOTOの敏感なコンテンツを修正"
    exclude: "PHOTO"
    description: "Pythonを使用して、PHOTOファイル内のプライベートデータを簡単に隠したり、削除したりできます。公式文書を保護するための便利な方法です。"
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