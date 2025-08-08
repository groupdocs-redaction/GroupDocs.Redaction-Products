
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Xlsx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนข้อความใน XLSX ด้วย Overlay ของ C#"
head_description: "GroupDocs.Redaction for .NET ช่วยให้ซ่อนข้อความในไฟล์ XLSX โดยใช้กล่องสี อนุรักษ์ข้อมูลให้ปลอดภัยโดยไม่เปลี่ยนรูปแบบเอกสารของคุณ"

############################# Header ############################
title: "ซ่อนข้อความในไฟล์ XLSX โดยใช้ Overlay และ .NET" 
description: "ใช้ C# และ GroupDocs.Redaction for .NET เพื่อเพิ่ม Overlay ง่ายๆ ที่ปิดบังข้อความที่ละเอียดอ่อนในไฟล์ XLSX ของคุณ"
subtitle: "คุณสมบัติของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "GroupDocs.Redaction for .NET ช่วยเหลืออย่างไร"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET อนุญาตให้นักพัฒนาที่ใช้ C# ซ่อนข้อมูลที่ไม่ต้องการในไฟล์ XLSX ปิดบังข้อมูลใด ๆ - จากคำไปจนถึงภาพ - ผ่านรูปแบบไฟล์ที่แตกต่างกัน

############################# Steps ############################
steps:
    enable: true
    title: "เก็บข้อมูลที่ละเอียดอ่อนไว้ให้ปลอดภัยในเอกสาร Xlsx"
    content: |
      GroupDocs.Redaction for .NET ช่วยนักพัฒนา .NET ปกป้องไฟล์ ซ่อนเนื้อหาส่วนตัวได้เพียงไม่กี่บรรทัดของโค้ด
      
      1. สร้างอ็อบเจ็กต์ Redactor ใหม่โดยใช้เส้นทางไฟล์ Xlsx ของคุณ
      2. ปรับการตั้งค่าในการปิดบังตามที่ต้องการ
      3. เพิ่มรูปแบบการค้นหาและเลือกสีสำหรับบล็อก Overlay
      4. ดำเนินการปิดบังและบันทึกไฟล์ของคุณ
   
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
        // ปิดบังข้อความส่วนตัวใน XLSX โดยใช้ Overlay

        // โหลดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // เลือกวิธีการปิดบัง
            // ใส่ข้อความที่จะซ่อนและเลือกสี Overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ประมวลผลไฟล์และบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติการปิดบังที่ชาญฉลาด"
  description: "ใช้ GroupDocs.Redaction for .NET เพื่อลบหรือซ่อนเนื้อหาในประเภทไฟล์ต่างๆ เก็บรายละเอียดส่วนตัวไว้ให้ห่างจากสายตาสาธารณะ"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "เครื่องมือปิดบังที่ใช้งานได้จริง"
  features:
    # feature loop
    - title: "เปลี่ยนข้อความใดๆ"
      content: "ค้นหาและอัปเดตข้อมูลใดๆ ในเอกสารเพื่อปกป้องข้อมูล"

    # feature loop
    - title: "ซ่อนเนื้อหาภาพ"
      content: "เพิ่มสี่เหลี่ยมหรือสี่เหลี่ยมผืนผ้าเพื่อปิดบังส่วนที่ละเอียดอ่อนในภาพ"

    # feature loop
    - title: "ทำความสะอาด metadata"
      content: "ลบหรือเขียนทับรายละเอียดพื้นฐานของไฟล์ก่อนที่จะแชร์"
      
  code_samples_ext:
    # code sample ext loop
    - title: "จับคู่และซ่อนด้วย regex"
      content: |
        เรียนรู้วิธีการตรวจจับและปิดบังเนื้อหาด้วย regular expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสารเป้าหมาย
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // ตั้งค่าสำหรับรูปแบบและสี Overlay
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ใช้กฎการปิดบัง
              redactor.Apply(redaction);

              // ส่งออกเวอร์ชันที่ถูกปิดบัง
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
    title: "ใช้ .NET เพื่อซ่อนข้อมูลในไฟล์ XLSX"
    exclude: "XLSX"
    description: "เพิ่ม Overlay หรือลบส่วนของเอกสาร XLSX ของคุณเพื่อปกป้องรายละเอียดที่ละเอียดอ่อนด้วยความช่วยเหลือจาก .NET"
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