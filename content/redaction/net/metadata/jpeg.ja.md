













---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ja/redaction/net/metadata/jpeg"
otherformats: BMP DOC DOCM DOCX DOT DOTM DOTX GIF PDF PNG POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF TIFF XLS XLSM XLSX XLT XLTM XLTX  


############################# Head ############################
head_title: ".NETのPDF、DOCX、PPT、PPTX、XLS、XLSXにメタデータ編集を適用する"
head_description: "GroupDocs.Redactions .NET APIを使用すると、ソフトウェア開発者は、PDF DOC DOCX RTF XLSX CSVPPTPPTXや画像などのさまざまなファイル形式にメタデータ編集を適用できます。"

############################# Header ############################
title: "PDF、DOCX、PPT、PPTX、XLS、XLSXなどからメタデータを編集およびフィルタリング"
description: "GroupDocs.Redactions .NET APIを使用すると、ソフトウェア開発者は、PDF、DOC、DOCX、PPT、PPTX、XLS、XLSXなどのさまざまなファイル形式からメタデータを編集またはフィルタリングできます。"

######################### Download Button #######################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "メタデータ編集とは何ですか？"
    content: |
        メタデータは、他のデータに関する情報を提供する一種のデータです。言い換えれば、多くの人がメタデータをデータへの参照と考えています。データの追跡と管理を容易にするために使用できるデータに関する基本情報を要約するのに役立ちます。 GroupDocs.Redaction for .NETは、ソフトウェア開発者が外部ソフトウェアやサードパーティツールをインストールせずに、さまざまな種類のドキュメントから機密情報や機密情報を編集できるようにする強力なネイティブAPIです。作成者、会社、カテゴリ、ドキュメントのサイズ、作成日、タイトル、LastPrinted、コメントなどのさまざまなフィルタをサポートしています。ワードプロセッシングドキュメント、Excelワークシート、プレゼンテーション、PDF、ラスターイメージファイルなど、さまざまな一般的なドキュメント形式にメタデータ編集を適用するのに役立ちます。開発者は、フィルターを適用するか検索を使用して、メタデータを更新、置換、または消去することもできます。さらに、開発者は1回の呼び出しで複数の編集を簡単に適用できます。そのため、APIをダウンロードしてドキュメントとメタデータの編集プロセスを自動化し、その基本機能と高度な機能を調べてみてください。

############################# content ############################
steps:
    enable: true
    block:
    - title_left: "C#でJPEGドキュメントからメタデータを削除する方法"
      content_left: |
        GroupDocs.Redaction for .NETは、プログラマーがフィルターを使用したり、正規表現で検索したりして、多数の一般的なドキュメントタイプから機密情報を編集、非表示、または置換できるようにする強力なAPIです。
        次の.NETコード例は、メタデータ編集を適用して、ドキュメント内のすべてまたは特定のメタデータを空の値または最小値に置き換える方法を示しています。

      title_right: "JPEGファイルにメタデータ編集を適用する"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) クラスのインスタンスを作成します
        * [EraseMetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/erasemetadataredaction) のEraseMetadataRedactionオブジェクトを使用してredactor.Applyメソッドを呼び出します。
        * Redactor.Save メソッドを呼び出して、ドキュメントを元の形式で「*_Redacted。*」ファイルに保存します
        
      gisthash: "8f1bc20dff33c9a45c01a9e251555bf1"
      gistfile: "how_to_clean_metadata_dotnet.cs"

    - title_left: ".NET経由でJPEGファイルからメタデータを編集"
      content_left: |
        GroupDocs.Redaction .NET APIを使用すると、開発者は、外部に依存することなく、わずか数行のコードでドキュメントの自動化とレポート作成ジョブを組み込むことができます。
        次のC＃.NETコード例は、ソフトウェア開発者が数行のコードでドキュメントのメタデータから機密データを削除する方法を示しています。
        
      title_right: "JPEGファイルからのメタデータ編集"
      content_right: |
        * [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) クラスのインスタンスを作成します
        * [MetadataRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/metadataredaction) に電話してください
        * [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) メソッドを呼び出します 
        * Redactor.Save メソッドを呼び出して、ドキュメントを元の形式で「*_Redacted。*」ファイルに保存します
        
      gisthash: "8dee499186930d60909dffa54579c9f4"
      gistfile: "how_to_redact_metadata_dotnet.cs"

    - title_left: "システム要求"
      content_left: |
        GroupDocs.Redaction for .NET APIは、すべての主要なプラットフォームとオペレーティングシステムでサポートされています。 完全なシステム要件ガイドについては、[システム要件](https://docs.groupdocs.com/redaction/net/system-requirements/) にアクセスしてください。以下のコードを実行する前に、次の前提条件がインストールされていることを確認してください。 システム：
        * オペレーティングシステム：Microsoft Windows、Linux、MacOS
        * 開発環境：Visual Studio、Xamarin、MonoDevelopなど
        * フレームワーク：.NET Framework、.NET Standard、.NET Core、Mono
        * [NuGet](https://www.nuget.org/packages/GroupDocs.Redaction/) から最新バージョンのGroupDocs.Redaction.NETAPIを入手します。
        
      title_right: "GroupDocs.Redactionを使用する理由"
      content_right: |
        * ユーザーがカスタムドキュメント形式と編集の種類を追加できるようにする
        * 機密情報を削除するために追加のソフトウェアは必要ありません
        * ページ範囲レンダリングドキュメントをPDFとして設定する機能
        * さまざまな種類のメタデータを編集する簡単な方法：作成者名、バージョン、タイトル、件名、説明など
        * ドキュメント情報の抽出-ファイルタイプ、ページ数など。
        * 複数のデータ形式の完全なサポート


############################# Demos ############################
demos:
    enable: true

############################# More Formats ############################
more_formats:
    enable: true

############################# Back to top ###############################
back_to_top:
    enable: true
---