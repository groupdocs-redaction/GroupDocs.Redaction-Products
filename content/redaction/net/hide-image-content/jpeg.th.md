
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Jpeg
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนภาพใน JPEG ด้วย overlay โดยใช้ C#"
head_description: "ปกป้องภาพส่วนตัวในไฟล์ JPEG ด้วย GroupDocs.Redaction for .NET โดยการเพิ่ม overlay สีสัน รักษาความปลอดภัยข้อมูลที่ละเอียดอ่อนโดยไม่เปลี่ยนแปลงเค้าโครงไฟล์"

############################# Header ############################
title: "ปิดบังภาพที่มีความละเอียดอ่อนในไฟล์ JPEG ด้วย overlay โดยใช้ .NET" 
description: "รักษาข้อมูลภาพส่วนตัวและทางธุรกิจในไฟล์ JPEG โดยใช้ C# เครื่องมือของเราทำให้การป้องกันไฟล์ทำได้ง่ายและเชื่อถือได้"
subtitle: "ฟีเจอร์หลักของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET ให้เครื่องมือที่มีประสิทธิภาพกับนักพัฒนา C# ในการซ่อนหรือทำลายข้อมูลในไฟล์ JPEG คลุมข้อความ, รูปภาพ, และ metadata เพื่อรักษาความปลอดภัย

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลที่ละเอียดอ่อนในไฟล์ Jpeg"
    content: |
      GroupDocs.Redaction for .NET ถูกออกแบบมาเพื่อช่วยให้แอปพลิเคชัน .NET ของคุณสามารถซ่อนข้อมูลส่วนตัวได้เร็วและง่าย
      
      1. สร้าง Redactor และระบุเส้นทางไปยังไฟล์ Jpeg ของคุณ
      2. ตั้งค่าการตัดให้ตรงกับความต้องการ
      3. เลือกพื้นที่ภาพและตั้งค่าสี overlay
      4. ดำเนินการตัดแล้วบันทึกไฟล์ที่ได้รับการปกป้อง
   
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
        // ปิดบังเนื้อหาภาพในไฟล์ JPEG

        // โหลดไฟล์โดยใช้ Redactor
        using (Redactor redactor  = new Redactor("input.jpg"))
        {
            // กำหนดขนาดและสี overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่ที่จะซ่อนข้อมูล
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกไฟล์
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ตัดเนื้อหาทุกประเภทในเอกสาร"
  description: "GroupDocs.Redaction for .NET ทำให้การซ่อนหรือลบเนื้อหาในรูปแบบไฟล์ต่างๆ เป็นเรื่องง่าย รักษาความปลอดภัยข้อมูลในขณะที่ให้เอกสารดูเรียบร้อยและง่ายต่อการแชร์"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "เครื่องมือการตัดที่ควบคุมได้เต็มที่"
  features:
    # feature loop
    - title: "แก้ไขข้อความที่ไหนก็ได้"
      content: "ค้นหาและแทนที่ข้อความที่มีความละเอียดอ่อนในเอกสารทั้งหมดเพื่อรักษาความปลอดภัยข้อมูล"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "เพิ่ม overlay ให้กับภาพหรือเฉพาะส่วนใดส่วนหนึ่งเพื่อปกปิดข้อมูลภาพ"

    # feature loop
    - title: "แก้ไข Metadata"
      content: "ลบหรือปรับแก้ฟิลด์ metadata ที่ซ่อนอยู่เพื่อป้องกันการเปิดเผยข้อมูล"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ซ่อนข้อมูลภาพด้วย overlay"
      content: |
        ตัวอย่างนี้แสดงถึงวิธีการปกปิดพื้นที่ภาพที่ละเอียดอ่อนในไฟล์
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดไฟล์สำหรับการแก้ไข
          using (Redactor redactor  = new Redactor("source.jpg"))
          {
              // ตั้งค่าสี, ขนาด, และตำแหน่งของ overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // เลือกพื้นที่ภาพเฉพาะในหน้าที่หนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // เพิ่ม overlay เพื่อซ่อนภาพ
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ถูกแก้ไข
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
    title: "รักษาไฟล์ JPEG ด้วยการตัดข้อมูล .NET"
    exclude: "JPEG"
    description: "ด้วย .NET คุณสามารถซ่อนหรือทำลายข้อมูลที่มีความละเอียดอ่อนในไฟล์ JPEG เป็นทางเลือกที่เชื่อถือได้ในความปลอดภัยของเอกสาร"
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