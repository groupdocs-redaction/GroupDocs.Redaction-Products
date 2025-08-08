
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Word
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ใช้ Overlay ในการปิดบังข้อความใน WORD ผ่าน C#"
head_description: "GroupDocs.Redaction for .NET ทำให้การปิดบังข้อความที่ละเอียดอ่อนใน WORD ง่ายด้วยการใช้บล็อกสี รักษาเอกสารไว้ในสภาพเดิมขณะซ่อนสิ่งสำคัญ"

############################# Header ############################
title: "การปิดบังข้อความ Overlay ในไฟล์ WORD ด้วย .NET" 
description: "ปกป้องข้อมูลที่สำคัญในไฟล์ WORD โดยใช้ Overlay สี่เหลี่ยมที่เขียนด้วย C# เหมาะสำหรับความปลอดภัยและการปฏิบัติตามกฎเกณฑ์"
subtitle: "ดูว่า GroupDocs.Redaction for .NET สามารถทำได้อย่างไร" 

############################# About ############################
about:
    enable: true
    title: "พบกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       นักพัฒนาที่ทำงานกับ C# สามารถใช้ GroupDocs.Redaction for .NET เพื่อปิดบังหรือลบส่วนของเอกสาร WORD ซ่อนชื่อ หมายเลข หรือข้อมูลอื่นๆ ในไม่กี่บรรทัดของโค้ด

############################# Steps ############################
steps:
    enable: true
    title: "ปิดบังข้อมูลส่วนตัวในไฟล์ Word"
    content: |
      GroupDocs.Redaction for .NET ช่วยนักพัฒนา .NET ลบเนื้อหาที่ละเอียดอ่อนได้อย่างรวดเร็ว ทำตามขั้นตอนเหล่านี้เพื่อทำให้ไฟล์ของคุณปลอดภัย
      
      1. เริ่มต้น Redactor พร้อมกับเส้นทางไปยังไฟล์ Word ของคุณ
      2. ตั้งค่ากฎสำหรับการปิดบังเนื้อหา
      3. เลือก รูปแบบข้อความและสีที่ต้องการปิดบัง
      4. นำการปิดบังไปใช้และบันทึกไฟล์ที่ปิดบัง
   
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
        // ปิดบังข้อความใน WORD โดยใช้ Overlay เฉพาะภาพ

        // โหลดไฟล์ของคุณด้วย Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // กำหนดสิ่งที่ต้องปิดบัง
            // เพิ่มข้อความและสี Overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // ดำเนินการปิดบังและบันทึกไฟล์สุดท้าย
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "เครื่องมือการปิดบังเพิ่มเติม"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถปรับปรุงการทำงานของเอกสารโดยการลบข้อมูลที่ชัดเจนและซ่อนข้อมูลที่ซ่อนไว้ในขณะที่เค้าโครงยังคงอยู่"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ช่วยทำความสะอาดและรักษาความปลอดภัย"
  features:
    # feature loop
    - title: "แทนที่ข้อความที่เปิดเผย"
      content: "ลบคำหรือวลีที่อาจรั่วไหลข้อมูลสำคัญ"

    # feature loop
    - title: "ปิดบังภาพ"
      content: "ปิดบังภาพที่ละเอียดอ่อนด้วยบล็อกสี"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนไว้"
      content: "ล้างข้อมูลพื้นหลังเพื่อไม่ให้เผยข้อมูลที่เป็นความลับ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อความที่ตรงกันด้วย regex"
      content: |
        ตัวอย่างนี้แสดงวิธีการใช้ Regular Expressions เพื่อตรวจหาการปิดบังเนื้อหาที่ละเอียดอ่อน
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสารที่ต้องการปิดบัง
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // เลือก รูปแบบและสี
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ดำเนินการตามกฎการปิดบัง
              redactor.Apply(redaction);

              // บันทึกและตรวจสอบสำเนาที่ปิดบัง
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
    title: "ปกป้องไฟล์ WORD ของคุณโดยใช้ .NET"
    exclude: "WORD"
    description: "ด้วย .NET คุณสามารถซ่อนข้อความหรือถอนข้อมูลจาก metadata ในรูปแบบ WORD โดยไม่ทำให้เค้าโครงหรือฟอร์แมตเสีย"
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