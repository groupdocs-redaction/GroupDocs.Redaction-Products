
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ซ่อนภาพใน PDF ด้วย overlay โดยใช้ C#"
head_description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถปกป้องภาพที่มีความละเอียดอ่อนในไฟล์ PDF โดยการเพิ่ม overlay สีสันต่างๆ ปกป้องข้อมูลส่วนตัวโดยไม่เปลี่ยนโครงร่างเอกสาร"

############################# Header ############################
title: "ปกป้องภาพที่มีความละเอียดอ่อนในเอกสาร PDF ด้วย overlay โดยใช้ .NET" 
description: "รักษาความปลอดภัยข้อมูลทางธุรกิจและส่วนบุคคลในไฟล์ PDF โดยใช้ C# เครื่องมือของเราช่วยให้คุณบรรลุการปกป้องข้อมูลอย่างมีประสิทธิภาพ"
subtitle: "ฟีเจอร์ของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือที่มีประสิทธิภาพให้กับนักพัฒนาที่ใช้ C# ในการซ่อนหรือทำลายเนื้อหาในไฟล์ PDF ปกป้องเอกสารโดยการคลุมข้อความ, รูปภาพ, และ metadata ข้ามรูปแบบหลายประเภท

############################# Steps ############################
steps:
    enable: true
    title: "รักษาความปลอดภัยข้อมูลธุรกิจในเอกสาร Pdf"
    content: |
      GroupDocs.Redaction for .NET: ออกแบบมาเพื่อช่วยแอปพลิเคชัน .NET ของคุณในการปกป้องเอกสาร ทำการตัดข้อมูลส่วนบุคคลได้อย่างรวดเร็ว
      
      1. สร้างอินสแตนซ์ Redactor และระบุเส้นทางไปยังไฟล์ Pdf ที่คุณต้องการให้มีความปลอดภัย
      2. ปรับตั้งค่าการตัดข้อมูลเพื่อให้ได้ผลลัพธ์ที่คุณต้องการ
      3. เลือกพื้นที่ภาพและตั้งค่าสี overlay
      4. ดำเนินการไฟล์และบันทึกเอกสารที่ถูกตัด
   
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
        // ซ่อนเนื้อหาภาพที่มีความละเอียดอ่อนใน PDF

        // โหลดไฟล์โดยใช้ constructor Redactor
        using (Redactor redactor  = new Redactor("input.pdf"))
        {
            // กำหนดค่าสีและขนาด overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // เลือกพื้นที่สำหรับการตัดข้อมูล
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay กับภาพแล้วบันทึกไฟล์
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ตัดเนื้อหาในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนหรือลบเนื้อหาในหลากหลายรูปแบบไฟล์ ปกป้องข้อมูลที่มีความลับในขณะที่ทำให้เอกสารอ่านง่ายและแชร์ได้"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ฟีเจอร์การแก้ไขขั้นสูง"
  features:
    # feature loop
    - title: "แก้ไขข้อความได้ทุกที่"
      content: "ค้นหาและแทนที่ข้อความที่มีความละเอียดอ่อนทั่วทั้งเอกสารของคุณเพื่อรักษาข้อมูลส่วนตัวให้ปลอดภัย"

    # feature loop
    - title: "ปกป้องภาพ"
      content: "ใช้ overlay ในภาพทั้งหมดหรือตามพื้นที่ที่เลือกเพื่อซ่อนข้อมูลภาพที่มีความละเอียดอ่อน"

    # feature loop
    - title: "จัดการ Metadata"
      content: "ลบหรือแก้ไข metadata ที่ซ่อนอยู่เพื่อป้องกันการเผยแพร่ข้อมูลโดยบังเอิญ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ overlay เพื่อซ่อนข้อมูลภาพ"
      content: |
        ตัวอย่างนี้แสดงให้เห็นถึงวิธีการคลุมข้อมูลที่มีความละเอียดอ่อนในภาพเอกสาร
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสารสำหรับการตัดข้อมูล
          using (Redactor redactor  = new Redactor("source.pdf"))
          {
              // ตั้งค่าการ overlay: ขนาด, ตำแหน่ง, และสี
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // กำหนดพื้นที่เฉพาะของภาพในหน้าที่หนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // ใช้ overlay เพื่อซ่อนภาพ
              redactor.Apply(redaction);

              // บันทึกเอกสารที่ถูกตัด
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
    title: "รักษาเนื้อหา PDF ด้วยการตัดข้อมูล .NET"
    exclude: "PDF"
    description: "ใช้ .NET เพื่อซ่อนหรือลบเนื้อหาที่มีความละเอียดอ่อนในไฟล์ PDF เป็นวิธีที่มีประสิทธิภาพในการรักษาความปลอดภัยของเอกสารทางการและเอกสารที่เป็นความลับ"
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