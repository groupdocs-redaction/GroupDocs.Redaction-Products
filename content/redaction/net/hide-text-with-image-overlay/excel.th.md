
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนเนื้อหาใน EXCEL ด้วย Overlay Redaction และ C#"
head_description: "ปกปิดข้อความในเอกสาร EXCEL โดยใช้บล็อกสีทึบด้วย GroupDocs.Redaction for .NET สล็อตที่ง่ายในการปกป้องเนื้อหาส่วนตัว"

############################# Header ############################
title: "Overlay Redaction สำหรับไฟล์ EXCEL ใน .NET" 
description: "ใช้โค้ด C# เพื่อซ่อนข้อความและปกป้องข้อมูลในไฟล์ EXCEL ของคุณ โซลูชันที่ชัดเจนสำหรับความปลอดภัยของเอกสาร"
subtitle: "สิ่งที่ GroupDocs.Redaction for .NET รวมไว้" 

############################# About ############################
about:
    enable: true
    title: "ทำไมจึงเลือก GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ถูกออกแบบมาเพื่อช่วยนักพัฒนา C# ที่ต้องการปิดบังหรือลบเนื้อหาในไฟล์ EXCEL ใช้เพื่อทำงานกับข้อความ metadata และรูปภาพ

############################# Steps ############################
steps:
    enable: true
    title: "ปิดบังข้อมูลที่ละเอียดอ่อนในรูปแบบ Excel"
    content: |
      GroupDocs.Redaction for .NET เป็นเครื่องมือที่ง่ายสำหรับนักพัฒนา .NET ในการทำความสะอาดเอกสารก่อนที่จะแชร์
      
      1. เริ่มต้น Redactor และโหลดไฟล์ Excel ของคุณ
      2. ตัดสินใจเรื่องการตั้งค่าสำหรับการปิดบังเนื้อหาของคุณ
      3. เพิ่มคีย์เวิร์ดหรือวลีที่จะปิดบังและเลือกสี
      4. ทำงานเครื่องมือและบันทึกการเปลี่ยนแปลง
   
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
        // ใช้ Overlay สำหรับซ่อนข้อความใน EXCEL

        // สร้าง Redactor และโหลดไฟล์ของคุณ
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // เลือกกฎการปิดบัง
            // ใส่สิ่งที่ต้องปิดบังและเลือกสี
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ประมวลผลการปิดบังและบันทึกไฟล์
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "คุณสมบัติหลักสำหรับการปกป้องข้อมูล"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณสามารถซ่อนหรือลบข้อมูลภายในเอกสารของคุณได้โดยไม่สูญเสียรูปลักษณ์หรือความหมาย"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "สร้างขึ้นเพื่อนความปลอดภัยของเอกสาร"
  features:
    # feature loop
    - title: "เปลี่ยนเนื้อหาข้อความ"
      content: "แลกเปลี่ยนหรือซ่อนคำที่เลือกภายในไฟล์"

    # feature loop
    - title: "ปิดบังภาพ"
      content: "ซ่อนภาพหรือพื้นที่ที่ง่ายโดยการใช้บล็อก"

    # feature loop
    - title: "ล้าง metadata"
      content: "กำจัดข้อมูลพื้นหลังเช่นชื่อผู้เขียนหรือตำแหน่งเวลา"
      
  code_samples_ext:
    # code sample ext loop
    - title: "Regex text redaction"
      content: |
        นี่คือวิธีการใช้ regex เพื่อค้นหาและซ่อนเนื้อหาในไฟล์
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสารเพื่อดำเนินการ
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // เพิ่มรูปแบบและการตั้งค่า Overlay
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ใช้การเปลี่ยนแปลง
              redactor.Apply(redaction);

              // บันทึกและปิดไฟล์ที่ถูกปิดบัง
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
    title: "ปิดบังไฟล์ EXCEL ด้วย .NET"
    exclude: "EXCEL"
    description: "ปกปิดเนื้อหาความละเอียดอ่อนในไฟล์ EXCEL โดยใช้บล็อก Overlay หรือการลบที่ชัดเจนด้วยคุณสมบัติของ .NET"
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