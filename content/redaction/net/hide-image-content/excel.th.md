
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Excel
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ปกปิดภาพใน EXCEL ด้วย overlay โดยใช้ C#"
head_description: "ซ่อนภาพส่วนตัวในไฟล์ EXCEL โดยใช้ overlay สีจาก GroupDocs.Redaction for .NET เพื่อรักษาความปลอดภัยของข้อมูลในขณะที่เก็บเค้าโครงเอกสารไว้"

############################# Header ############################
title: "ปกปิดภาพที่มีความละเอียดอ่อนในไฟล์ EXCEL โดยใช้ overlay จาก .NET" 
description: "ปกป้องข้อมูลส่วนตัวและธุรกิจในไฟล์ EXCEL โดยใช้ C# สร้างความปลอดภัยข้อมูลด้วยเครื่องมือที่เชื่อถือได้และรวดเร็ว"
subtitle: "สำรวจฟีเจอร์ของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET เปิดโอกาสให้นักพัฒนาที่ใช้ C# ได้รับเครื่องมือที่สำคัญในการซ่อนหรือลบข้อมูลในไฟล์ EXCEL คลุมข้อความ, รูปภาพ, และ metadata เพื่อรักษาความปลอดภัย

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลในไฟล์ Excel"
    content: |
      GroupDocs.Redaction for .NET ช่วยให้แอปพลิเคชัน .NET ของคุณรักษาความปลอดภัยเอกสารโดยการซ่อนข้อมูลที่ละเอียดอ่อน
      
      1. สร้างอินสแตนซ์ Redactor และระบุเส้นทางไปยังไฟล์ Excel ของคุณ
      2. ปรับแต่งการตั้งค่าการตัดข้อมูลเพื่อแบบที่คุณต้องการ
      3. เลือกพื้นที่ภาพและเลือกสี overlay
      4. ใช้การตัดข้อมูลและบันทึกไฟล์
   
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
        // ปกปิดเนื้อหาภาพในไฟล์ EXCEL

        // โหลดเอกสารโดยการใช้ Redactor
        using (Redactor redactor  = new Redactor("input.xslx"))
        {
            // ตั้งค่าขนาดและสี overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่ที่จะซ่อน
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ดำเนินการและบันทึกการเปลี่ยนแปลง
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ตัดเนื้อหาทุกประเภทในเอกสาร"
  description: "GroupDocs.Redaction for .NET ช่วยให้คุณสามารถซ่อนหรือลบเนื้อหาที่ละเอียดอ่อนในหลายรูปแบบเอกสาร รักษาข้อมูลในขณะที่ยังคงให้เอกสารใช้งานง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการตัดที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "ค้นหาและแก้ไขข้อความ"
      content: "ค้นหาข้อความที่มีความละเอียดอ่อนและแทนที่เพื่อรักษาความปลอดภัยของข้อมูลในเอกสารของคุณ"

    # feature loop
    - title: "ปกปิดพื้นที่ภาพ"
      content: "ใช้ overlay กับภาพทั้งหมดหรือแบ่งส่วนใดๆ เพื่อคงข้อมูลภาพที่เป็นส่วนตัว"

    # feature loop
    - title: "ลบ Metadata"
      content: "ลบหรือแก้ไขคุณสมบัติ metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลข้อมูลไม่ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการซ่อนข้อมูลที่ละเอียดอ่อนในภาพเอกสาร
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  เปิดเอกสารสำหรับการแก้ไข
          using (Redactor redactor  = new Redactor("source.xslx"))
          {
              // กำหนดขนาด, ตำแหน่ง, และสี overlay
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // มุ่งเป้าไปยังพื้นที่ภาพเฉพาะในหน้าที่หนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // ใช้ overlay เพื่อปิดบังภาพ
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ถูกปรับแต่ง
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
    title: "รักษาไฟล์ EXCEL ด้วยการตัดข้อมูล .NET"
    exclude: "EXCEL"
    description: "ใช้ .NET เพื่อปกปิดหรือเอาข้อมูลที่มีความละเอียดอ่อนในไฟล์ EXCEL วิธีที่เชื่อถือได้ในการรักษาความปลอดภัยของเอกสาร"
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