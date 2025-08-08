
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ปกปิดข้อความที่ละเอียดอ่อนใน DOCX โดยใช้ Overlay และ C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อปกป้องข้อความส่วนตัวในไฟล์ DOCX ด้วย Overlay สี่เหลี่ยมง่ายๆ รักษาเค้าโครงเอกสารให้ไม่เปลี่ยนแปลงและซ่อนข้อมูลของคุณ"

############################# Header ############################
title: "ปกปิดข้อความใน DOCX ด้วย Overlay โดยใช้ .NET" 
description: "ซ่อนเนื้อหาที่ละเอียดอ่อนในเอกสาร DOCX ของคุณโดยใช้โค้ด C# เหมาะสำหรับการป้องกันเอกสารทางกฎหมาย ธุรกิจ หรือส่วนตัว"
subtitle: "GroupDocs.Redaction for .NET features" 

############################# About ############################
about:
    enable: true
    title: "อะไรคือ GroupDocs.Redaction for .NET?"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ช่วยนักพัฒนา C# ซ่อนหรือลบเนื้อหาที่เป็นส่วนตัวในไฟล์ DOCX ใช้เพื่อปิดบังข้อความ ภาพ และ metadata ในรูปแบบไฟล์ที่แตกต่างกัน

############################# Steps ############################
steps:
    enable: true
    title: "ลบข้อมูลส่วนตัวจากเอกสาร Docx"
    content: |
      GroupDocs.Redaction for .NET ช่วยนักพัฒนา .NET ทำความสะอาดเอกสารเพียงไม่กี่บรรทัดของโค้ด
      
      1. สร้าง Redactor และระบุเส้นทางไฟล์ของคุณ
      2. กำหนดว่าการปิดบังจะทำงานอย่างไร
      3. ใส่ข้อความที่จะซ่อนและเลือกสี Overlay
      4. ปิดบังไฟล์และบันทึก
   
    code:
      platform: "net"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
        command: "dotnet add package GroupDocs.Redaction"
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/net/"
          
      content: |
        ```csharp {style=abap}
        // ซ่อนข้อความใน DOCX โดยใช้บล็อก Overlay

        // สร้าง Redactor และโหลดไฟล์
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // ตั้งค่าตัวเลือกการปิดบัง
            // ใส่ข้อความและตั้งค่าสีบล็อก
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ปิดบังและบันทึกเอกสารที่อัปเดต
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีเพิ่มเติมในการทำความสะอาดเอกสาร"
  description: "ด้วย GroupDocs.Redaction for .NET ปิดบังประเภทไฟล์ต่างๆ เพื่อรักษาความปลอดภัยให้เนื้อหาของคุณ"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "การปิดบังที่ชาญฉลาดที่สร้างขึ้น"
  features:
    # feature loop
    - title: "แก้ไขหรือลบข้อความ"
      content: "ค้นหาข้อความเฉพาะและซ่อนหรือลบออก"

    # feature loop
    - title: "ซ่อนพื้นที่ภาพ"
      content: "ปิดบังจุดที่ละเอียดอ่อนในภาพหรือเอกสารที่สแกน"

    # feature loop
    - title: "ลบ metadata ที่ซ่อนอยู่"
      content: "ลบข้อมูลที่มองไม่เห็นซึ่งอาจเปิดเผยข้อมูลผู้ใช้หรือระบบ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex สำหรับการปิดบังเนื้อหา"
      content: |
        ดูวิธีการที่ regular expressions สามารถค้นหาและซ่อนคำที่ละเอียดอ่อนได้
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์เป้าหมาย
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // ตั้งค่ารูปแบบและสี
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ใช้ลอจิกการปิดบัง
              redactor.Apply(redaction);

              // ส่งออกเอกสารที่ถูกปิดบัง
              var save_opt = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_opt);
          }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: "dotnet add package GroupDocs.Redaction"
          copy_tip: "คลิ๊กเพื่อคัดลอก"
          copy_done: "คัดลอกแล้ว"
        top_links:
          #  loop
          - title: "ดาวน์โหลดผลลัพธ์"
            icon: "download"
            link: "/examples/redaction/formats/hide-text-with-image-overlay.pdf"
        links:
          #  loop
          - title: "ตัวอย่างเพิ่มเติม"
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-.NET/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/net/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Nuget"
      link: "https://releases.groupdocs.com/redaction/net/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/net/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ซ่อนเนื้อหาใน DOCX ด้วย .NET"
    exclude: "DOCX"
    description: "ปกป้องข้อมูลที่ละเอียดอ่อนในเอกสาร DOCX โดยใช้ Overlay หรือการลบอย่างสมบูรณ์ด้วยเครื่องมือ .NET"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-text-with-image-overlay//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-text-with-image-overlay//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-text-with-image-overlay//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-text-with-image-overlay//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-text-with-image-overlay//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 6
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-text-with-image-overlay//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 7
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-text-with-image-overlay//pptx/"
          description: "การเสนอ PowerPoint Open XML"


---