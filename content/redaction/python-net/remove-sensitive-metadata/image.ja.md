
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:47:00
draft: false
lang: ja
format: Image
product: "Redaction"
product_tag: "redaction"
platform: "Python via .NET"
platform_tag: "python-net"

############################# Head ############################
head_title: "Pythonを使用したIMAGEの隠れたメタデータのクリーンアップ"
head_description: "GroupDocs.Redaction for Python via .NETを使用して、IMAGEドキュメントからプライベートメタデータを削除します。ファイルをクリーンで安全に保ちます。"

############################# Header ############################
title: "Pythonを使用したIMAGEファイルのメタデータ削除" 
description: "Pythonのツールを使用してIMAGEドキュメントを保護します。共有または公開する前に隠れた情報を削除します。"
subtitle: "GroupDocs.Redaction for Python via .NETの主要機能" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for Python via .NETについて"
    link: "/redaction/python-net/"
    link_title: "詳細を学ぶ"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redactionは、Python開発者にテキスト、画像、メタデータをIMAGEドキュメントから削除するためのツールを提供します。

############################# Steps ############################
steps:
    enable: true
    title: "Imageファイルからメタデータを削除する方法"
    content: |
      GroupDocs.Redactionは、Python via .NET開発者が数ステップでドキュメントメタデータをクリーンアップするのを支援します。
      
      1. Redactorを設定し、Imageファイルを読み込みます。
      2. 削除するメタデータを選択します。
      3. 修正処理を実行します。
      4. 更新したファイルを保存します。
   
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

        # IMAGEファイル内の隠れたフィールドをクリーンにする

        # 修正するメタデータフィールドを選択する
        redaction = grr.EraseMetadataRedaction(grr.MetadataFilters.ALL)

        # Redactorを使ってファイルを開く
        with gr.Redactor("input.png") as redactor:

            # 処理を行い、エクスポートする
            result = redactor.apply(redaction)
            redactor.save()
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "すべてのファイルから敏感なデータをクリーンにする"
  description: "GroupDocs.Redaction for Python via .NETは、テキスト、画像、メタデータを削除します。共有すべきではない内容をクリーンにします。"
  image: "/img/redaction/features_metadata.webp" # 500x500 px
  image_description: "主要な修正ツール"
  features:
    # feature loop
    - title: "テキストを削除する"
      content: "文書から単語やパターンを削除して、敏感な情報を保護します。"

    # feature loop
    - title: "画像をマスクする"
      content: "プライベートデータを含む画像の一部を覆います。"

    # feature loop
    - title: "メタデータを削除する"
      content: "著者やタイトルのようなファイルプロパティから隠れたデータを消去します。"
      
  code_samples_ext:
    # code sample ext loop
    - title: "メタデータフィールドの削除"
      content: |
        この例では、IMAGEファイルの著者とタイトルのメタデータを削除する方法を示します。
      code:
        title: "Python"
        content: |
          ```python {style=abap}
          import groupdocs.redaction as gr
          import groupdocs.redaction.options as gro
          import groupdocs.redaction.redactions as grr
          import groupdocs.pydrawing as grd

          # 著者フィールドを選択する
          redaction_author = grr.MetadataSearchRedaction("[A-Za-z0-9 ]+", "GroupDocs Company")
          redaction_author.filter = grr.MetadataFilters.AUTHOR

          # タイトルフィールドを選択する
          redaction_title = grr.MetadataSearchRedaction(@"[A-Za-z0-9 ]+", "GroupDocs.Redaction Usage")
          redaction_title.filter = grr.MetadataFilters.TITLE

          # リダクターでファイルを開く
          with gr.Redactor("source.png") as redactor:

              # 修正を実行する
              redactions = [
                redaction_author,
                redaction_title
              ]
              result = redactor.apply(redactions)

              # 最終ドキュメントを保存する
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
    title: "Pythonを使用したIMAGEメタデータの削除"
    exclude: "IMAGE"
    description: "Pythonを使用して、IMAGEファイルから隠れたプライベートデータを迅速かつ簡単に削除します。"
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