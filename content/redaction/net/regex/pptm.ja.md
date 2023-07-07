---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ja/redaction/net/regex/pptm"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTX RTF XLS XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: ".NET コア経由の正規表現を使用して PPTM ドキュメントを秘匿化する"
head_description: "正規表現を使用して、さまざまな形式の文書から機密情報を編集します。"

############################# Header ############################
title: ".NET コアアプリの C# と正規表現を使用して PPTM ファイルをサニタイズする"
description: "Office および OpenOffice のドキュメント、スプレッドシート、プレゼンテーション、および Windows、Linux、macOS 上の PPTM から機密情報を検索して削除します"

################### SubMenu/Download Button #####################
submenu:
    enable: true

############################# About ############################
about:
    enable: true
    title: ".NET API のドキュメント テキストの秘匿化"
    content: |
        メタデータの変更やコメントの削除機能を含む、PDF、Word、Excel、PowerPoint のドキュメントおよび画像からの機密情報や機密情報をサニタイズするための、形式に依存しない単一のインターフェイス。 GroupDocs.Redaction for .NET ツールを使用すると、機密情報を編集して編集した文書を PDF に保存し、すべてのページをラスター イメージに変換したり、文書を元の形式で保存してさらに編集したりできます。

############################# Steps ############################
steps:
    enable: true
    title_left: "C# 経由の正規表現を使用して PPTM からのテキストを秘匿化する"
    content_left: |
        [GroupDocs.Redaction](ja//redaction/net/) を使用すると、.NET 開発者は正規表現の最大限の強度を使用して、いくつかの簡単な手順で PPTM ファイルを秘匿化できます。

        *   [Redactor](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor) クラスのインスタンスを作成し、PPTM ファイルをロードします
        *   [RegexRedaction](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction.redactions/regexredaction) クラスのインスタンスを作成して、テキストを検索して置換します
        *   RegexRedaction のオブジェクトを使用して [Redactor.Apply](https://apireference.groupdocs.com/redaction/net/groupdocs.redaction/redactor/methods/apply/index) メソッドを呼び出す
        
    title_right: "リダクション API を使ってみる"
    content_right: |
        コマンドラインから ``nuget install GroupDocs.Redaction`` としてインストールするか、Visual Studio のパッケージ マネージャー コンソールから ``Install-Package GroupDocs.Redaction`` を使用してインストールします。 
        あるいは、[ダウンロード](https://downloads.groupdocs.com/redaction/net) からオフライン MSI インストーラーまたは ZIP ファイル内の DLL を取得し、プロジェクト内で手動で参照します。  
        
    code: |
        ```cs
        using (Redactor redactor = new Redactor(@"sample.pptm"))
        {
        	redactor.Apply(new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", new ReplacementOptions(System.Drawing.Color.Blue)));
        	redactor.Save();
        }
        ```

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