
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Powerpoint
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนข้อความที่ละเอียดอ่อนใน POWERPOINT ด้วย Overlay ของ C#"
head_description: "GroupDocs.Redaction for .NET ให้คุณซ่อนส่วนของไฟล์ POWERPOINT โดยใช้การปิดบัง Overlay ที่เรียบง่าย รักษาเอกสารให้ปลอดภัยโดยไม่ทำให้โครงสร้างเปลี่ยนแปลง"

############################# Header ############################
title: "การปิดบังข้อความใน POWERPOINT ด้วย Overlay โดยใช้ .NET" 
description: "ปกป้องข้อมูลในไฟล์ POWERPOINT ของคุณโดยการวางบล็อก Overlay ด้วยความช่วยเหลือจาก C# และ GroupDocs.Redaction for .NET"
subtitle: "เครื่องมือภายใน GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับเครื่องมือนี้"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ช่วยนักพัฒนาที่ใช้ C# ทำความสะอาดเอกสาร POWERPOINT โดยการปิดบังหรือลบข้อความ metadata หรือภาพตามต้องการ

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยของเนื้อหาในเอกสาร Powerpoint"
    content: |
      ใช้ GroupDocs.Redaction for .NET ในแอพ .NET ของคุณเพื่อทำความสะอาดไฟล์ก่อนที่จะเผยแพร่
      
      1. ส่งเส้นทางไปยังอินสแตนซ์ Redactor ใหม่
      2. ตั้งค่า ว่า และวิธีการที่ต้องการปิดบัง
      3. กำหนดรูปแบบข้อความและตั้งค่าสี Overlay
      4. ปิดบังและบันทึกไฟล์ที่ได้รับการอัพเดทของคุณ
   
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
        // Overlay ข้อความใน POWERPOINT เพื่อซ่อนรายละเอียด

        // ใช้ Redactor เปิดไฟล์ของคุณ
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // ปรับแต่งการตั้งค่าสำหรับการปิดบัง
            // เลือกข้อความและสีที่ปิดบัง
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ดำเนินการและบันทึกไฟล์ที่ปิดบัง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนข้อมูลที่ละเอียดอ่อนได้ง่าย"
  description: "ใช้ GroupDocs.Redaction for .NET ในการลบหรือปิดบังเนื้อหาในประเภทเอกสารต่าง ๆ - เหมาะสำหรับการปกป้องข้อมูลในเอกสารทางกฎหมาย ธุรกิจ หรือส่วนบุคคล"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "การปิดบังเอกสารที่ยืดหยุ่น"
  features:
    # feature loop
    - title: "เปลี่ยนข้อความ"
      content: "ค้นหาคำหรือหมายเลขและแทนที่หรือปิดบัง"

    # feature loop
    - title: "ปิดบังภาพหรือส่วน"
      content: "เพิ่ม Overlay ไปยังภาพหรือจุดที่เลือกในหน้า"

    # feature loop
    - title: "ลบข้อมูลส่วนเกิน"
      content: "เคลียร์ metadata ที่อาจเผยแพร่ข้อมูลที่ซ่อนเร้น"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ค้นหาและปิดบังด้วย regex"
      content: |
        นี่คือวิธีที่ regex สามารถช่วยในระบุและซ่อนข้อความ
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์ที่ต้องการการปิดบัง
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ตั้งค่ากฎของคุณโดยใช้ regex
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ทำการปิดบัง
              redactor.Apply(redaction);

              // บันทึกเวอร์ชันที่ถูกล้าง
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
    title: "ซ่อนเนื้อหาใน POWERPOINT โดยใช้ .NET"
    exclude: "POWERPOINT"
    description: "เพิ่ม Overlay หรือลบข้อมูลจากไฟล์ POWERPOINT ของคุณเพื่อทำให้ข้อมูลที่ละเอียดอ่อนเป็นส่วนตัวโดยใช้งานจาก .NET"
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