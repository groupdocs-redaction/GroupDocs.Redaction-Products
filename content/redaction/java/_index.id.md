---
############################# Static ############################
layout: "landing"
date: 2025-08-08T14:47:02
draft: false

lang: id
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Drop-down ############################
supported_platforms:
  items:
    # supported_platforms loop
    - title: ".NET"
      tag: "net"
    # supported_platforms loop
    - title: "Java"
      tag: "java"
    # supported_platforms loop
    - title: "Python"
      tag: "python-net"

############################# Head ############################
head_title: "Hapus data rahasia dari dokumen menggunakan Java"
head_description: "Lindungi informasi sensitif Anda dengan GroupDocs.Redaction for Java. Sembunyikan, redaksi, atau hapus konten pribadi dalam file PDF, dokumen Office, dan gambar dengan mudah."

############################# Header ############################
title: "Lindungi Data Rahasia dengan GroupDocs.Redaction"
description: "Hapus data pribadi, redaksi teks, dan bersihkan metadata dari PDF, Word, Excel, PowerPoint, dan format gambar menggunakan toolkit Java yang andal."
words:
  for: "untuk"

actions:
  main: "Unduh Maven"
  main_link: "https://releases.groupdocs.com/java/repo/com/groupdocs/groupdocs-redaction/"
  alt: "Lisensi"
  alt_link: "https://purchase.groupdocs.com/pricing/redaction/java/"
  title: "Siap untuk Memulai?"
  description: "Coba fitur GroupDocs.Redaction secara gratis atau minta lisensi."

release:
  title: "Versi {0} Diluncurkan"
  notes: "Lihat apa yang baru"
  downloads: "Unduhan"

code:
  title: "Langkah-langkah untuk Meredaksi Konten Dokumen"
  more: "Lebih banyak contoh"
  more_link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
  install: |
    <dependency>
      <groupId>com.groupdocs</groupId>
      <artifactId>groupdocs-redaction</artifactId>
      <version>{0}</version>
    </dependency>
  content: |
    ```java {style=abap}  
    // Muat file sumber Anda dengan instance Redactor
    final Redactor redactor = new Redactor("sample.pdf");
    try
    {
        // Tentukan kriteria dan pengaturan redaksi
        ReplacementOptions ro = new ReplacementOptions("[redacted]");
        ExactPhraseRedaction red = new ExactPhraseRedaction("Data", ro);

        // Laksanakan operasi redaksi
        RedactorChangeLog result = redactor.apply(red);

        // Simpan file dengan redaksi yang diterapkan
        redactor.save();
    }
    finally { redactor.close(); }
    ```

############################# Overview ############################
overview:
  enable: true
  title: "GroupDocs.Redaction Dalam Sekilas"
  description: "Tingkatkan aplikasi Java Anda dengan alat redaksi profesional"
  features:
    # feature loop
    - title: "Hapus Teks Sensitif"
      content: "Dengan GroupDocs.Redaction for Java, Anda dapat mencari dan menyembunyikan teks pribadi menggunakan overlay atau penggantian yang dapat disesuaikan. Kompatibel dengan PDF, Word, Excel, dan lainnya, ideal untuk kepatuhan regulasi dan berbagi dokumen yang aman."

    # feature loop
    - title: "Sembunyikan Gambar"
      content: "Identifikasi dan blokir gambar sepenuhnya atau sebagian berdasarkan persyaratan Anda. Tentukan aturan deteksi dan koordinat area untuk mengamankan data visual secara efisien."

    # feature loop
    - title: "Bersihkan Metadata Tertanam"
      content: "File-file dapat menyimpan informasi tersembunyi seperti nama pengarang, alat pembuatan, atau rincian perangkat. GroupDocs.Redaction for Java memungkinkan Anda mendeteksi dan menyanitasi metadata dalam Word, Excel, gambar, dan format lainnya."

    # feature loop
    - title: "Redaksi Objek Tertanam"
      content: "Mensterilkan dokumen secara menyeluruh melalui redaksi objek seperti anotasi PDF, komentar, atau item tertanam lain untuk menghilangkan segala jejak informasi rahasia."

############################# Platforms ############################
platforms:
  enable: true
  title: "Independensi Platform"
  description: "GroupDocs.Redaction for Java berfungsi di semua sistem operasi utama, kerangka kerja, dan platform pengembangan."
  items:
    # platform loop
    - title: "Amazon"
      image: "amazon"
    # platform loop
    - title: "Docker"
      image: "docker"
    # platform loop
    - title: "Azure"
      image: "azure"
    # platform loop
    - title: "Eclipse"
      image: "eclipse"
    # platform loop
    - title: "IntelliJ"
      image: "intellij"
    # platform loop
    - title: "Windows"
      image: "windows"
    # platform loop
    - title: "Linux"
      image: "linux"
    # platform loop
    - title: "Maven"
      image: "maven"

############################# File formats ############################
formats:
  enable: true
  title: "Format File yang Didukung"
  description: |
    GroupDocs.Redaction for Java mendukung bekerja dengan format [file](https://docs.groupdocs.com/redaction/java/supported-document-formats/) berikut.
  groups:
    # group loop
    - color: "green"
      content: |
        ### Format MS Office
        * **Word:** DOCX, DOC, DOCM, DOT, DOTX, DOTM,
        * **Excel:** XLSX, XLS, XLSM, XLSB, 
        * **PowerPoint:** PPT, PPTX
    # group loop
    - color: "blue"
      content: |
        ### Format Office Lainnya
        * **Portabel:** PDF 
        * **OpenDocument:** ODT, ODS, OTS, ODP, OTT
        * **Format Teks:** RTF, CSV, TXT, TSV
      # group loop
    - color: "red"
      content: |
        ### Format Lainnya
        * **Web:** HTM, HTML, MD
        * **Gambar:** BMP, GIF, JPEG, PNG, TIFF, WEBP
        * **eBook:** DJVU 
        
        

############################# Features ############################
features:
  enable: true
  title: "Apa yang Dapat Anda Lakukan dengan GroupDocs.Redaction"
  description: "Dengan cepat menemukan dan meredaksi konten dari PDF, dokumen Office, dan gambar dengan ketepatan."

  items:
    # feature loop
    - icon: "search"
      title: "Pencarian Dengan Ketepatan"
      content: "Gunakan mode pencarian sensitif dan tidak sensitif untuk menemukan dan meredaksi kesesuaian yang tepat."

    # feature loop
    - icon: "text"
      title: "Temukan dan Ganti Teks"
      content: "Secara otomatis mendeteksi dan mengganti atau menghapus teks rahasia di seluruh dokumen."

    # feature loop
    - icon: "image"
      title: "Overlay dengan Gambar Kustom"
      content: "Gunakan blok gambar untuk menyembunyikan teks yang direduksi, menjaga tata letak sambil menyembunyikan detail."

    # feature loop
    - icon: "search"
      title: "Gunakan Regex untuk Redaksi Canggih"
      content: "Manfaatkan ekspresi reguler untuk mendeteksi pola kompleks dan meredaksi secara cerdas."

    # feature loop
    - icon: "table"
      title: "Redaksi Area Tertentu"
      content: "Batasi redaksi hanya pada halaman atau zona yang dipilih dengan menentukan area yang tepat untuk ditargetkan."

    # feature loop
    - icon: "template"
      title: "Bersihkan Bidang Metadata"
      content: "Identifikasi dan bersihkan metadata dokumen, termasuk pengarang, perusahaan, atau data pelacakan."

    # feature loop
    - icon: "pdf"
      title: "Ekspor dalam Format yang Diinginkan"
      content: "Simpan file yang telah direduksi dalam format PDF atau format lain yang didukung tanpa kehilangan integritas tata letak."

    # feature loop
    - icon: "template"
      title: "Hapus Semua Metadata"
      content: "Sepenuhnya menghapus metadata dari file yang didukung dalam satu perintah."

    # feature loop
    - icon: "hyperlink"
      title: "Kebijakan Redaksi Otomatis"
      content: "Buat konfigurasi redaksi yang dapat digunakan kembali yang disimpan dalam XML untuk redaksi yang konsisten dan batch."


############################# Code samples ############################
code_samples:
  enable: true
  title: "Contoh Kode"
  description: "Contoh penggunaan umum GroupDocs.Redaction for Java"
  items:
    # code sample loop
    - title: "Redaksi Menggunakan Regex"
      content: |
        GroupDocs.Redaction for Java memberdayakan pengembang Java untuk menerapkan [redaksi berbasis regex](https://docs.groupdocs.com/redaction/java/text-redactions/#use-regular-expression) dengan opsi pengaburan gambar:
        {{< landing/code title="Redaksi Dokumen Word Menggunakan Ekspresi Reguler">}}
        ```java {style=abap}
        // Buat instance dari kelas Redactor
        final Redactor redactor = new Redactor("source.docx");
        try
        {
            // Tentukan aturan redaksi menggunakan ekspresi reguler
            ReplacementOptions replacement = new ReplacementOptions(java.awt.Color.BLUE);
            RegexRedaction redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", replacement);

            // Sembunyikan semua teks yang cocok dengan overlay kotak biru
            redactor.apply(redaction);

            // Simpan dokumen Word yang telah direduksi
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}
    # code sample loop
    - title: "Hapus Semua Metadata"
      content: |
        Dengan API kami, Anda dapat [menghapus metadata](https://docs.groupdocs.com/redaction/java/metadata-redactions/#clean-metadata) di berbagai jenis file dalam satu langkah:
        {{< landing/code title="Hapus Semua Metadata dari Presentasi">}}
        ```java {style=abap}   
        // Berikan path presentasi ke Redactor
        final Redactor redactor  = new Redactor("source.pptx");
        try 
        {
            // Konfigurasikan opsi redaksi
            EraseMetadataRedaction red = new EraseMetadataRedaction(MetadataFilters.All);

            // Hapus semua metadata dari presentasi
            redactor.apply(red);

            // Simpan file presentasi yang telah dibersihkan
            redactor.save();
        }
        finally { redactor.close(); }
        ```
        {{< /landing/code >}}

---
