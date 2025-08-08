
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Image
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "คุ้มครองภาพใน IMAGE โดยการเพิ่ม overlay โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนข้อมูลที่ละเอียดอ่อนในรูปภาพในไฟล์ IMAGE โดยใช้ overlay สี ปกป้องข้อมูลสำคัญในขณะที่ยังคงการออกแบบเอกสารตามต้นฉบับไว้"

############################# Header ############################
title: "ซ่อนภาพส่วนตัวในไฟล์ IMAGE โดยใช้ overlay กับ .NET" 
description: "รักษาภาพธุรกิจและข้อมูลส่วนตัวในไฟล์ IMAGE โดยใช้ C# เครื่องมือที่เรียบง่ายเพื่อการปกป้องเนื้อหาที่รวดเร็วและมีประสิทธิภาพ"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือที่มีประสิทธิภาพให้กับนักพัฒนาที่ใช้ C# ในการซ่อนหรือลบเนื้อหาในไฟล์ IMAGE ปกป้องเอกสารโดยการใช้ปกคลุมข้อความ, รูปภาพ, และ metadata

############################# Steps ############################
steps:
    enable: true
    title: "รักษาข้อมูลในไฟล์ Image ด้วย overlay"
    content: |
      ใช้ GroupDocs.Redaction for .NET ช่วยให้คุณซ่อนข้อมูลได้อย่างรวดเร็วในแอปของคุณ .NET
      
      1. สร้างอินสแตนซ์ Redactor และใส่เส้นทางไฟล์ Image
      2. ปรับการตั้งค่าการตัดให้เหมาะสม
      3. เลือกพื้นที่ภาพและกำหนดสี overlay
      4. ดำเนินการไฟล์และบันทึกเวอร์ชันที่ถูกรักษาความปลอดภัย
   
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
        // คุ้มครองเนื้อหาภาพในไฟล์ IMAGE

        // เปิดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.png"))
        {
            // กำหนดขนาดและสี overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่ที่คุณต้องการซ่อน
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกผลลัพธ์
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลบเนื้อหาในไฟล์ต่าง ๆ"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนหรือลบเนื้อหาในรูปแบบไฟล์ต่าง ๆ ปกป้องข้อมูลที่ละเอียดอ่อนในขณะที่ยังคงฟอร์แมตที่อ่านง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ควบคุมการตัดอย่างเต็มรูปแบบ"
  features:
    # feature loop
    - title: "ค้นหาและแทนที่ข้อความ"
      content: "ค้นหาเอกสารและแทนที่ข้อความที่ละเอียดอ่อนเพื่อรักษาความปลอดภัย"

    # feature loop
    - title: "เพิ่ม overlay กับภาพ"
      content: "ใส่ overlay เพื่อคลุมภาพทั้งหมดหรือส่วนที่เลือก"

    # feature loop
    - title: "จัดการ Metadata"
      content: "ลบหรือแก้ไขฟิลด์ metadata ที่ซ่อนอยู่เพื่อป้องกันการเปิดเผยข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนเนื้อหาภาพด้วย overlay"
      content: |
        ตัวอย่างรหัสนี้แสดงให้เห็นถึงวิธีการใช้ overlay เพื่อซ่อนเนื้อหาภาพที่ละเอียดอ่อน
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์สำหรับการตัด
          using (Redactor redactor  = new Redactor("source.png"))
          {
              // ตั้งค่าขนาด, สี, และตำแหน่ง overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // เลือกพื้นที่ภาพในหน้าหนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // ใช้ overlay เพื่อซ่อนเนื้อหาภาพ
              redactor.Apply(redaction);

              // บันทึกไฟล์ที่ถูกปรับแต่ง
              var save_options = new SaveOptions() { AddSuffix = true, RasterizeToPDF = false };
              var outputPath = redactor.Save(save_options);
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
            link: "/examples/redaction/formats/hide-image-content.pdf"
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
    title: "ซ่อนเนื้อหาในไฟล์ IMAGE โดยใช้การตัดข้อมูล .NET"
    exclude: "IMAGE"
    description: "ใช้ .NET ซ่อนหรือทำลายข้อมูลที่ละเอียดอ่อนในไฟล์ IMAGE วิธีที่เชื่อถือได้ในการรักษาความลับเอกสารอย่างเป็นทางการ"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/net/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/net/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/net/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/net/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/net/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/net/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/net/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/net/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/net/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/net/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---