
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:58
draft: false
lang: th
format: Pptx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ปิดบังข้อความใน PPTX โดยใช้ Overlay และ C#"
head_description: "ซ่อนเนื้อหาส่วนตัวในเอกสาร PPTX โดยปิดบังด้วยสี่เหลี่ยมสีด้วย GroupDocs.Redaction for .NET รักษาเค้าโครงของคุณไว้เหมือนเดิม"

############################# Header ############################
title: "ปิดบังข้อความใน PPTX ด้วย Overlay โดยใช้ .NET" 
description: "ด้วย C# และ GroupDocs.Redaction for .NET การปกป้องข้อมูลที่ละเอียดอ่อนในไฟล์ PPTX สามารถทำได้โดยการซ่อนมันจากมุมมอง"
subtitle: "สำรวจ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "สิ่งที่ GroupDocs.Redaction for .NET ทำ"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบคุณสมบัติในการปิดบังหรือถอนเนื้อหาในเอกสาร PPTX โดยใช้ C# ซ่อนข้อมูลใด ๆ ตั้งแต่ชื่อไปจนถึงบันทึกในไม่กี่ขั้นตอน

############################# Steps ############################
steps:
    enable: true
    title: "ซ่อนเนื้อหาที่ละเอียดอ่อนในไฟล์ Pptx ของคุณ"
    content: |
      ด้วย GroupDocs.Redaction for .NET นักพัฒนา .NET สามารถปกป้องเอกสารได้ในไม่กี่ขั้นตอนง่ายๆ
      
      1. เริ่มต้น Redactor ด้วยเส้นทางไปยังไฟล์ที่คุณต้องการทำความสะอาด
      2. เลือกกฎการปิดบังที่ตรงกับความต้องการของคุณ
      3. เลือกแบบที่ต้องการจับคู่และสีสำหรับ Overlay
      4. ดำเนินการปิดบังและบันทึกไฟล์ที่อัปเดตของคุณ
   
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
        // ใช้ Overlay เพื่อปิดบังข้อความใน PPTX

        // เริ่มต้น Redactor ด้วยไฟล์ของคุณ
        using (Redactor redactor  = new Redactor("input.pptx"))
        {
            // กำหนดวิธีการปิดบัง
            // เลือกสิ่งที่จะซ่อนและสีของ Overlay
            var opt = new ReplacementOptions(System.Drawing.Color.Red);
            
            var redaction = new ExactPhraseRedaction("Text to hide", opt);

            // เรียกใช้งานและบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "วิธีเพิ่มเติมในการปกป้องไฟล์ของคุณ"
  description: "GroupDocs.Redaction for .NET มอบเครื่องมือให้คุณซ่อนข้อมูลในรูปแบบที่แตกต่างกันโดยไม่ทำให้เค้าโครงเปลี่ยนแปลง"
  image: "/img/redaction/features_text_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์ที่สำคัญ"
  features:
    # feature loop
    - title: "แทนที่ข้อความตามต้องการ"
      content: "เปลี่ยนข้อความเพื่อไม่ให้มีข้อมูลที่สำคัญตกไปอยู่ในมือของผู้ที่ไม่ควร"

    # feature loop
    - title: "ซ่อนพื้นที่ภาพ"
      content: "ซ่อนภาพทั้งหมดหรือบางส่วนโดยการวาด Overlay boxes"

    # feature loop
    - title: "ลบข้อมูลที่ซ่อนอยู่"
      content: "ลบ metadata ที่ฝังซึ่งอาจเปิดเผยรายละเอียดที่เป็นส่วนตัว"
      
  code_samples_ext:
    # code sample ext loop
    - title: "การปิดบังด้วย Regular Expression"
      content: |
        ตัวอย่างนี้แสดงวิธีการค้นหาและซ่อนข้อความด้วย Regular Expressions
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์สำหรับการปิดบัง
          using (Redactor redactor  = new Redactor("source.pptx"))
          {
              // ตั้งค่ากฎการปิดบัง: ข้อความที่ต้องค้นหาและสีบล็อก
              var repl_opt = new ReplacementOptions(System.Drawing.Color.Blue);
              var redaction = new RegexRedaction("\\d{2}\\s*\\d{2}[^\\d]*\\d{6}", repl_opt);

              // ใช้กฎการปิดบัง
              redactor.Apply(redaction);

              // บันทึกผลลัพธ์ที่ถูกปิดบัง
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
    title: "ให้ความปลอดภัยกับข้อความใน PPTX โดยใช้เครื่องมือ .NET"
    exclude: "PPTX"
    description: "ปิดบังพื้นที่ส่วนตัวหรือกำจัดข้อมูลที่ซ่อนอยู่ในไฟล์ PPTX โดยใช้ฟีเจอร์การปิดบัง .NET"
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