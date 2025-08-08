
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Photo
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "เพิ่ม overlay เพื่อซ่อนภาพใน PHOTO โดยใช้ C#"
head_description: "ซ่อนข้อมูลที่ละเอียดอ่อนในไฟล์ PHOTO ด้วย GroupDocs.Redaction for .NET โดยการใช้ overlay รักษาข้อมูลส่วนตัวให้ปลอดภัยในขณะที่คงโครงสร้างเอกสารไร้การเปลี่ยนแปลง"

############################# Header ############################
title: "ซ่อนข้อมูลภาพในไฟล์ PHOTO ด้วย overlay โดยใช้ .NET" 
description: "รักษาภาพส่วนตัวและธุรกิจในไฟล์ PHOTO โดยใช้ C# เครื่องมือที่เน้นการใช้ที่ง่ายสำหรับการรักษาความปลอดภัยเนื้อหา"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET เป็นวิธีที่ยอดเยี่ยมสำหรับนักพัฒนา C# ในการซ่อนหรือลบข้อมูลในไฟล์ PHOTO ปกป้องเอกสารด้วยการคลองข้อความ, รูปภาพ, และ metadata อย่างรวดเร็ว

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลในไฟล์ Photo"
    content: |
      GroupDocs.Redaction for .NET ทำให้คุณสามารถซ่อนเนื้อหาได้อย่างรวดเร็วในแอปพลิเคชัน .NET ของคุณ
      
      1. สร้างวัตถุ Redactor และตั้งค่ามันให้ชี้ไปยังไฟล์ Photo
      2. ปรับตั้งการตั้งค่าการตัดให้เหมาะกับความต้องการของคุณ
      3. เลือกพื้นที่ภาพและกำหนดสี overlay
      4. ดำเนินการตัดและบันทึกไฟล์ที่ปลอดภัย
   
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
        // ใช้งาน overlay เพื่อซ่อนภาพในไฟล์ PHOTO

        // โหลดไฟล์ด้วย Redactor
        using (Redactor redactor  = new Redactor("input.jpeg"))
        {
            // ตั้งขนาดและสี overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่เพื่อลบ
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ทำการ overlay และบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ลดเนื้อหาอย่างง่ายดายในเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณซ่อนหรือลบเนื้อหาที่มีความละเอียดอ่อนในหลายประเภทไฟล์ รักษาข้อมูลส่วนตัวขณะที่เอกสารยังอ่านง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการตัดข้อมูลแบบ All-in-One"
  features:
    # feature loop
    - title: "แก้ไขข้อความในเอกสาร"
      content: "ค้นหาและแทนที่ข้อความส่วนตัวในเอกสารของคุณเพื่อรักษาความปลอดภัย"

    # feature loop
    - title: "ซ่อนพื้นที่ภาพ"
      content: "เพิ่ม overlay กับภาพหรือพื้นที่ที่เลือกเพื่อปิดบังภาพที่ละเอียด"

    # feature loop
    - title: "จัดการ Metadata"
      content: "ลบ metadata ที่แฝงอยู่เพื่อหลีกเลี่ยงการรั่วไหล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อมูลภาพด้วย overlay"
      content: |
        ตัวอย่างนี้แสดงถึงการใช้ overlay ซ่อนพื้นที่ภาพในไฟล์
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดไฟล์เพื่อทำการตัด
          using (Redactor redactor  = new Redactor("source.jpeg"))
          {
              // ตั้งค่าตำแหน่ง, ขนาด, และสี overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // มุ่งเน้นไปที่พื้นที่เฉพาะในหน้าหนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // นำ overlay ไปใช้กับการซ่อนข้อมูล
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ได้รับการปรับแต่ง
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
    title: "รักษาไฟล์ PHOTO ด้วยการตัดข้อมูล .NET"
    exclude: "PHOTO"
    description: "ด้วย .NET คุณสามารถซ่อนหรือลบข้อมูลที่ละเอียดอ่อนในไฟล์ PHOTO การแก้ไขแบบง่ายๆ เป็นโซลูชันที่เชื่อถือได้ในการรักษาความปลอดภัยของเอกสาร"
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