
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนข้อความที่ละเอียดอ่อนใน PDF ด้วย Overlay โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนข้อความที่ละเอียดอ่อนในไฟล์ PDF โดยใช้ Overlay สี่เหลี่ยมสีสดใส ปกป้องข้อมูลส่วนตัวโดยไม่เปลี่ยนแปลงเค้าโครงต้นฉบับ"

############################# Header ############################
title: "ซ่อนข้อความที่ละเอียดอ่อนในเอกสาร PDF ด้วย Overlay โดยใช้ .NET" 
description: "ควบคุมเนื้อหาไฟล์ PDF โดยใช้ C# ใช้การปิดบังเพื่อปกป้องข้อมูลทางกฎหมาย การเงิน และข้อมูลส่วนบุคคล"
subtitle: "คุณสมบัติของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือให้กับนักพัฒนา C# ในการซ่อนหรือถอนเนื้อหาจากไฟล์ PDF เป็นวิธีง่ายๆ ในการรักษาความปลอดภัยเอกสาร คุณสามารถปิดบังข้อความ ภาพ หรือ metadata ในหลายประเภทไฟล์

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลธุรกิจในเอกสาร Pdf"
    content: |
      GroupDocs.Redaction for .NET: ถูกสร้างขึ้นเพื่อช่วยแอปพลิเคชัน .NET ของคุณให้รักษาความปลอดภัยเอกสารได้อย่างรวดเร็วและมีประสิทธิภาพ
      
      1. สร้างอินสแตนซ์ Redactor และระบุเส้นทางไปยังไฟล์ Pdf ที่คุณต้องการปิดบัง
      2. กำหนดการตั้งค่าการปิดบังเพื่อให้ได้ผลลัพธ์ตามที่ต้องการ
      3. เพียงตั้งค่ารูปแบบข้อความที่ต้องการค้นหาและเลือกสี Overlay
      4. ปิดบังเอกสารและบันทึกการเปลี่ยนแปลง
   
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
        // ซ่อนข้อความที่ละเอียดอ่อนใน PDF ด้วยภาพ Overlay

        // ระบุเส้นทางไฟล์ให้กับตัวสร้าง Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // ตั้งค่าตัวเลือกการปิดบัง
            // กำหนดรูปแบบข้อความและสี Overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ปิดบังและบันทึกไฟล์ PDF ที่ได้รับการอัปเดต
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ปิดบังเนื้อหาในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถลบหรือซ่อนเนื้อหาในหลากหลายประเภทไฟล์ ปกป้องข้อมูลที่ละเอียดอ่อนในขณะที่ทำให้เอกสารอ่านง่ายและแชร์ได้"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการปิดบังขั้นสูง"
  features:
    # feature loop
    - title: "แก้ไขข้อความได้ทุกที่"
      content: "ค้นหาและแทนที่ข้อความที่ตรงกันในเอกสารของคุณเพื่อช่วยรักษาข้อมูลลับให้ปลอดภัย"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "ใช้ Overlay ปิดภาพทั้งหมดหรือพื้นที่ที่เลือกเพื่อซ่อนภาพส่วนตัว"

    # feature loop
    - title: "จัดการ metadata"
      content: "ลบหรือเปลี่ยนแปลง metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูลที่ไม่ต้องการ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ Regular Expressions เพื่อซ่อนข้อความ"
      content: |
        ตัวอย่างนี้แสดงวิธีการค้นหาและซ่อนข้อความโดยใช้ Regular Expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสารที่คุณต้องการปิดบัง
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // กำหนดการตั้งค่าการปิดบัง: รูปแบบข้อความและสี
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ใช้การปิดบังกับเนื้อหา
              redactor.Apply(redaction);

              // บันทึกเวอร์ชันที่ถูกปิดบัง
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
    title: "ปกป้องข้อมูล PDF ด้วยการปิดบัง .NET"
    exclude: "PDF"
    description: "ใช้ .NET เพื่อปิดบังหรือ ลบเนื้อหาในไฟล์ PDF นี่เป็นตัวเลือกที่ชาญฉลาดสำหรับการรักษาความปลอดภัยเอกสารที่ละเอียดอ่อนหรือทางการ"
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