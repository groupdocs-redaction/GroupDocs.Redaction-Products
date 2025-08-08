
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:59
draft: false
lang: ja
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用してPOWERPOINTファイルの敏感な画像をオーバーレイでマスクする"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、POWERPOINTファイル内のプライベート画像をオーバーレイで隠します。文書のデザインを変更せずに情報を保護します。"

############################# Header ############################
title: "Pythonを使用したPOWERPOINT文書内のプライベート画像を隠す" 
description: "Pythonを使用して、POWERPOINTファイル内の敏感な画像を安全に保てます。強力なデータ保護のために設計されたシンプルなツール。"
subtitle: "GroupDocs.Redaction for Python via .NETの機能を探る" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETとは？"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Python via .NETは、Python開発者にPOWERPOINTファイルから内容を隠したり削除したりするための強力なツールを提供します。テキスト、画像、メタデータをマスキングして、文書を保護します。

############################# Steps ############################
steps:
    enable: true
    title: "Powerpointファイルを安全に保つ"
    content: |
      GroupDocs.Redaction for Python via .NETは、Python via .NETアプリケーションが文書内の敏感なコンテンツを保護するのを簡単にします。
      
      1. Redactorオブジェクトを作成し、Powerpointファイルをロードします。
      2. 要件に応じて修正オプションを調整します。
      3. 画像領域を選び、オーバーレイの色を選択します。
      4. 修正を適用し、文書を保存します。
   
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

        # POWERPOINTファイルの画像コンテンツをマスクする

        # オーバーレイのサイズと色を設定
        replacement_size = grd.Size(100, 100)
        color = grd.Color.from_argb(255, 220, 20, 60)
        replacement_options = grr.RegionReplacementOptions(color, replacement_size)

        # 隠す領域を選ぶ
        replacement_point = grd.Point(200, 200)
        redaction = grr.ImageAreaRedaction(replacement_point, replacement_options)
                
        # Redactorを使ってファイルを開く
        with gr.Redactor("input.pptx") as redactor:

            # オーバーレイを適用してファイルを保存
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "文書内のプライベートデータを保護する"
  description: "GroupDocs.Redaction for Python via .NETは、さまざまなファイル形式内の敏感なコンテンツを隠したり削除したりできます。ファイルを安全で共有可能な状態に保ちます。"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "オールインワン修正機能"
  features:
    # feature loop
    - title: "テキストを検索・編集"
      content: "文書内のプライベートテキストを見つけ、プライバシーを確保するために置き換えます。"

    # feature loop
    - title: "画像の領域をマスクする"
      content: "オーバーレイで画像の全体または選択した部分を隠します。"

    # feature loop
    - title: "隠れたメタデータを削除"
      content: "メタデータを削除または変更し、プライベートデータの公開を防ぎます。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "オーバーレイを使用して画像データを隠す"
      content: |
        この例は、オーバーレイを使用して文書内の敏感な画像を保護する方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # オーバーレイの寸法、位置、色を設定
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

          # 文書を修正用に開く
          with gr.Redactor("source.pptx") as redactor:

              # オーバーレイを適用してデータをマスク
              result = redactor.apply(redaction)

              # 最終的な文書を保存
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
    title: "Pythonを使用してPOWERPOINTで安全を保障する"
    exclude: "POWERPOINT"
    description: "Pythonを使用して、POWERPOINTファイル内の敏感なデータを隠したり削除したりします。重要な文書を保護するための信頼できるソリューションです。"
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