
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したEXCELからのメタデータ削除"
head_description: "GroupDocs.Redaction for Python via .NETを使用してEXCELドキュメントのメタデータを削除します。隠れたデータを排除し、機密情報を保護します。"

############################# Header ############################
title: "Pythonを使用したEXCELの隠れたメタデータ削除" 
description: "Pythonを使用してEXCELファイルを制御し、プライベートなデータを削除します。"
subtitle: "GroupDocs.Redaction for Python via .NETの主な機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETを知る"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者がEXCELファイルをクリーンに保つために設計されています。不要なメタデータ、テキスト、画像を簡単に削除します。

############################# Steps ############################
steps:
    enable: true
    title: "Excelファイルのメタデータをクリーンにするステップ"
    content: |
      Python via .NETアプリでGroupDocs.Redactionを使用して、メタデータを数ステップで削除します。
      
      1. Redactorを開始し、Excelファイルを開きます。
      2. 削除するメタデータフィールドを選択します。
      3. 修正処理を実行します。
      4. 最終ファイルをエクスポートします。
   
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

        # EXCEL内の隠れたデータを削除する

        # どのメタデータを削除するか選択します
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # リダクターを使用してファイルを開く
        with gr.Redactor("input.xlsx") as redactor:

            # 処理を行い、ファイルを保存する
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "すべての種類の敏感なデータをクリーンアップする"
  description: "GroupDocs.Redaction for Python via .NETは、多くの形式でメタデータ、テキスト、画像を削除するツールを提供します。安全な文書の共有に最適です。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "メタデータとプライバシーツール"
  features:
    # feature loop
    - title: "プライベートテキストを削除する"
      content: "ドキュメントから個人情報または隠れた情報を検出して削除します。"

    # feature loop
    - title: "画像の詳細をマスクする"
      content: "プライベートなビジュアルをブロックするために画像の一部を覆います。"

    # feature loop
    - title: "メタデータをクリーンにする"
      content: "敏感なデータを含む可能性のある隠れたメタデータフィールドを削除します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "著者およびタイトルメタデータを削除する"
      content: |
        以下の例では、GroupDocs.Redaction for Python via .NETがEXCELドキュメントから特定のメタデータフィールドをクリアする方法を示しています。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者情報を削除する
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドを削除する
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # 修正対象のドキュメントを開く
          with gr.Redactor("source.xlsx") as redactor:

              # 変更を適用する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # クリーンなドキュメントを保存する
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
            link: "/examples/redaction/formats/remove-sensitive-metadata.pdf"
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
    title: "Pythonを使用したEXCELのメタデータの削除"
    exclude: "EXCEL"
    description: "Pythonを使用して、EXCELファイルから敏感なメタデータを削除します。共有の前にコンテンツを安全に保ちます。"
    items: 
        # format loop 1
        - name: "PDFのマスキング"
          format: "PDF"
          link: "/redaction/python-net/remove-sensitive-metadata//pdf/"
          description: "Adobeポータブル文書形式"

        # format loop 2
        - name: "Wordのマスキング"
          format: "WORD"
          link: "/redaction/python-net/remove-sensitive-metadata//word/"
          description: "MS WordおよびOpen Officeの文書"
          
        # format loop 3
        - name: "Excelのマスキング"
          format: "EXCEL"
          link: "/redaction/python-net/remove-sensitive-metadata//excel/"
          description: "MS ExcelおよびOpen Officeのスプレッドシート"

        # format loop 4
        - name: "PowerPointのマスキング"
          format: "POWERPOINT"
          link: "/redaction/python-net/remove-sensitive-metadata//powerpoint/"
          description: "MS PowerPointおよびOpen Officeのプレゼンテーション"

        # format loop 5
        - name: "画像のマスキング"
          format: "IMAGE"
          link: "/redaction/python-net/remove-sensitive-metadata//image/"
          description: "一般的な画像フォーマット"

        # format loop 6
        - name: "写真のマスキング"
          format: "PHOTO"
          link: "/redaction/python-net/remove-sensitive-metadata//photo/"
          description: "写真フォーマット"

        # format loop 7
        - name: "DOCXのマスキング"
          format: "DOCX"
          link: "/redaction/python-net/remove-sensitive-metadata//docx/"
          description: "Microsoft WordオープンXMLドキュメント"
          
        # format loop 8
        - name: "XLSXのマスキング"
          format: "XLSX"
          link: "/redaction/python-net/remove-sensitive-metadata//xlsx/"
          description: "Microsoft ExcelオープンXMLスプレッドシート"
          
        # format loop 9
        - name: "PPTXのマスキング"
          format: "PPTX"
          link: "/redaction/python-net/remove-sensitive-metadata//pptx/"
          description: "PowerPointオープンXMLプレゼンテーション"

        # format loop 10
        - name: "JPEGのマスキング"
          format: "JPEG"
          link: "/redaction/python-net/remove-sensitive-metadata//jpeg/"
          description: "JPEG画像"


---