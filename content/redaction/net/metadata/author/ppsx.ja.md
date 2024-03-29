
---
############################# Static ############################
layout: "auto-gen-gist" 
draft: false
path: "ja/redaction/net/metadata/author/ppsx"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF JPEG PDF PNG POT POTM PPS PPSM PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "C#のドキュメントから機密メタデータを編集する"
head_description: "さまざまな形式のドキュメントにフィルターを適用して、メタデータの編集を適用します"

############################# Header ############################
title: "C#のPPSXメタデータから作成者名を編集します"
description: "GroupDocs.Redactionsは、フィルターを使用してメタデータプロパティを検索および置換/削除できる柔軟なAPIを提供します."

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "メタデータ編集とは何ですか？"
    content: |
        墨消しとは、電子文書から不要な情報や機密情報を削除することです。 PDF、DOC、DOCX、PPT、PPTX、XLS、XLSXなどを含むすべてのファイル形式には、いくつかのメタデータプロパティがあります。これらのプロパティには、作成者名、カテゴリ、会社名、コメント、作成時間、最終更新日などが含まれます。不要なメタデータフィールドを完全に削除する必要がある場合や、値を更新したい場合があります。さまざまなツールや手法を使用して表示できるファイルに関連付けられた隠しデータもいくつかあります。このデータに誰もアクセスしたくない場合が多くあります。 GroupDocs.Redaction APIを使用すると、これらのメタデータプロパティのいずれかにメタデータ編集を適用できます。必要なメタデータをフィルタリングすることで、それらを変更または削除できます。このガイドでは、C#のPPSXメタデータから作成者名を編集する方法について説明します。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C#でPPSXメタデータを編集する"
      content_left: |
        次のコードを使用すると、PPSXドキュメントから機密データを検索して編集できます。フィルタを設定することで、編集の範囲を設定できます。 MetadataFilter.Authorに。 -「Author」プロパティを除くすべてのメタデータアイテムで、正規表現の一致が取り消されたままになります。
        

      title_right: "PPSXメタデータを編集する方法"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)クラスのインスタンスを作成し、PPSXファイルをアップロードします
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)クラスのインスタンスを作成して、ドキュメントのメタデータから機密データを検索して置換します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilter.Authorを使用します
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)        
      gisthash: "9718d29035590c729114d50e69aa49b0"
      gistfile: "RedactAuthorMetadata.cs"

    - title_left: "C#でPPSXメタデータを削除する"
      content_left: |
        EraseMetadataRedactionクラスを使用して、ドキュメント内のすべてまたは特定のメタデータを空の（空白または最小の）値に置き換えることができます。次のコードは、PPSXドキュメントからメタデータプロパティをフィルタリングして削除する方法を示しています。次の例では、ドキュメントのすべてのプロパティが空白になっています。
        
        
      title_right: "PPSXメタデータを消去する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor)クラスのインスタンスを作成し、DOCXファイルをアップロードします
        * [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction)のインスタンスを作成して、ドキュメントのメタデータを削除します
        * フィルターを設定して編集の範囲を設定します。以下のコードでMetadataFilter.AllをMetadataFilter.Authorに置き換えます 
        * [MetadataSearchRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadatasearchredaction)
        
      gisthash: "cef91d8d8f160aaf560218d1abd520e2"
      gistfile: "CleanMetadata.cs"

    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for .NETは、.NETプラットフォームがインストールされている32ビットまたは64ビットのオペレーティングシステムをサポートします。外部ソフトウェアやサードパーティツールをインストールする必要はありません。完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/net/system-requirements)にアクセスしてください。
        
      title_right: "インストール手順"
      content_right: |
        コマンドラインから```nuget install GroupDocs.Redaction```としてインストールするか、VisualStudioのパッケージマネージャーコンソールから```Install-PackageGroupDocs.Redaction```を使用してインストールします。
        または、[ダウンロード](https://downloads.groupdocs.com/redaction/net)からオフラインMSIインストーラーまたはDLLをZIPファイルで取得し、プロジェクトで手動で参照します。

############################# Demos ############################
demos:
    enable: true
############################# About Formats ############################
about_formats:
    enable: true
############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---