---
############################# Static ############################
layout: "auto-gen-gist"
draft: false
path: "ms/redaction/java/regex/xls"
otherformats: CSV DOC DOCM DOCX DOT DOTM DOTX PDF POT POTM PPS PPSM PPSX PPT PPTM PPTX RTF XLSM XLSX XLT XLTM XLTX  

############################# Head ############################
head_title: "Sunting XLS Teks melalui Ungkapan Biasa dalam Java"
head_description: "API GroupDocs.Redactions Java membolehkan pembangun menyunting teks daripada PDF DOC DOCX RTF XLSX CSV PPT PPTX & imej menggunakan ungkapan biasa dalam Java"

############################# Header ############################
title: "Cara Mengalih Keluar Teks daripada Fail XLS menggunakan Ungkapan Biasa dan Java"
description: "GroupDocs.Redactions Java API membenarkan untuk menyunting, menyembunyikan atau mengalih keluar teks sensitif daripada dokumen pemprosesan perkataan, lembaran kerja, pembentangan, PDFs & imej menggunakan ungkapan biasa."

################### SubMenu/Download Button #####################
button:
    enable: true

############################# About ############################
about:
    enable: true
    title: "Apakah Pensanitasi Teks?"
    content: |
        Penyuntingan Teks atau Pembersihan ialah proses mengalih keluar teks atau maklumat sulit atau tidak diingini daripada dokumen digital sambil membiarkan seluruh dokumen atau perenggan yang mengandunginya utuh. Redaksi membantu pengguna serta organisasi untuk melindungi maklumat sensitif mereka dengan menyembunyikan atau mengalih keluarnya secara kekal. Menggunakan GroupDocs.Redaction Java pengguna API kini boleh menyunting, menyembunyikan atau mengalih keluar teks sensitif daripada dokumen pemprosesan perkataan, lembaran kerja, pembentangan, PDF dan fail imej raster. API menyediakan pelbagai pilihan dan kaedah untuk redaksi maklumat peribadi dalam dokumen. Ia menyokong carian dan suntingan menggunakan ungkapan biasa, penggunaan suntingan tekstual (kod pengecualian) atau grafik (segi empat tepat berwarna) dan banyak lagi. Jadi mengapa tidak mencubanya dan mengautomasikan proses redaksi dokumen anda dengan memuat turun API dan meneroka ciri asas dan lanjutannya.

############################# Steps ############################
steps:
    enable: true
    block:
    - title_left: "Redaksi XLS menggunakan Ungkapan Biasa dalam Java"
      content_left: |
        GroupDocs.Redaction membolehkan anda menyunting data yang bersifat sensitif atau peribadi dengan mudah daripada dokumen anda. Kes redaksi yang paling popular ialah mengalih keluar teks daripada dokumen. 

        Kod berikut boleh digunakan untuk menggunakan redaksi teks pada bahagian tertentu dokumen menggunakan ungkapan biasa. Ia membolehkan pengguna menggantikan semua nombor, padanan corak "AA BB CCCCCC" dengan segi empat tepat warna Biru,

      title_right: "Alih keluar Data Sensitif daripada XLS"
      content_right: |
        * Buat contoh kelas [Redactor](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction/Redactor) & muat naik fail XLS
        * Buat contoh kelas [RegexRedaction](https://apireference.groupdocs.com/redaction/java/com.groupdocs.redaction.redactions/RegexRedaction)
        * Panggil kaedah redactor.apply dengan objek kelas RegexRedaction
        * Panggil kaedah redactor.save untuk menyimpan perubahan 

      gisthash: "6dea616a14aeeff21698dc03be62a341"
      gistfile: "RegularExpressionRedaction.java"
      
    - title_left: "Keperluan Sistem"
      content_left: |
        GroupDocs.Redaction for Java API disokong pada semua platform dan sistem pengendalian utama. Untuk panduan keperluan sistem yang lengkap, sila lawati [keperluan sistem](https://docs.groupdocs.com/redaction/java/system-requirements) Sebelum melaksanakan kod di bawah, sila pastikan anda mempunyai prasyarat berikut dipasang pada sistem anda :
        * Sistem Pengendalian: Microsoft Windows, Linux, MacOS
        * Persekitaran Pembangunan: NetBeans, Intellij IDEA, Eclipse dll
        * Java Persekitaran Masa Jalan: J2SE 6.0 dan ke atas
        * Dapatkan versi terkini GroupDocs.Redaction for Java daripada [Maven](https://repository.groupdocs.com/webapp/#/artifacts/browse/tree/General/repo/com/groupdocs/groupdocs-redaction)
        
      title_right: "Mengapa Menggunakan GroupDocs.Redaction"
      content_right: |
        * Benarkan pengguna menambah format dokumen tersuai dan jenis suntingan
        * Tiada perisian tambahan diperlukan untuk mengalih keluar maklumat sensitif
        * Keupayaan untuk menetapkan dokumen pemaparan julat halaman sebagai PDF
        * Cara mudah untuk menyunting pelbagai jenis metadata: nama pengarang, versi, tajuk, subjek, penerangan dan banyak lagi
        * Pengekstrakan maklumat dokumen - jenis fail, kiraan halaman dsb.

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