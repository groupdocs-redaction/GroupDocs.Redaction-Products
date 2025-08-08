
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:57
draft: false
lang: th
format: Docx
product: "Redaction"
product_tag: "redaction"
platform: ".NET"
platform_tag: "net"

############################# Head ############################
head_title: "ครอบครองภาพใน DOCX ด้วย overlay โดยใช้ C#"
head_description: "ใช้ GroupDocs.Redaction for .NET เพื่อปิดภาพที่มีความละเอียดอ่อนในไฟล์ DOCX ด้วย overlay สีสัน ปกป้องข้อมูลส่วนตัวในขณะที่ยังคงรักษาเค้าโครงเอกสารไว้อย่างไม่เปลี่ยนแปลง"

############################# Header ############################
title: "ปิดบังภาพที่มีความละเอียดอ่อนในเอกสาร DOCX ด้วย overlay โดยใช้ .NET" 
description: "รักษาความปลอดภัยข้อมูลส่วนตัวและข้อมูลทางธุรกิจในไฟล์ DOCX โดยใช้ C# เครื่องมือของเราช่วยให้การปกป้องข้อมูลทำได้ง่ายและเชื่อถือได้"
subtitle: "ฟีเจอร์ของ GroupDocs.Redaction for .NET" 

############################# About ############################
about:
    enable: true
    title: "เรียนรู้เกี่ยวกับ GroupDocs.Redaction for .NET"
    link: "/redaction/net/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for .NET มอบเครื่องมือให้กับนักพัฒนาที่ใช้ C# ในการซ่อนหรือทำลายเนื้อหาในไฟล์ DOCX ปกป้องเอกสารด้วยการคลุมข้อความ, รูปภาพ, และ metadata ในหลายประเภท

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลในไฟล์ Docx"
    content: |
      GroupDocs.Redaction for .NET: สร้างมาเพื่อช่วยแอปพลิเคชัน .NET ของคุณในการรักษาความปลอดภัยเอกสาร ตัดข้อมูลที่มีความละเอียดอ่อนด้วยขั้นตอนเพียงไม่กี่ขั้นตอน
      
      1. สร้าง Redactor และระบุเส้นทางไปยังไฟล์ Docx ของคุณ
      2. กำหนดการตั้งค่าการตัดข้อมูลให้ตรงกับความต้องการของคุณ
      3. เลือกพื้นที่ภาพและเลือกสี overlay
      4. ดำเนินการการตัดข้อมูลและบันทึกไฟล์
   
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
        // ครอบคลุมพื้นที่ภาพที่มีความละเอียดอ่อนใน DOCX

        // โหลดไฟล์ผ่าน constructor Redactor
        using (Redactor redactor  = new Redactor("input.docx"))
        {
            // ตั้งค่าสีและขนาด overlay
            Size replacement_size = new Size(100, 100);
            var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);

            // กำหนดพื้นที่การตัด
            Point replacement_point = new Point(200, 200);
            var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
            
            // ใช้ overlay และบันทึกเอกสาร
            redactor.Apply(redaction);
            redactor.Save();
        }
        
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ตัดเนื้อหาในไฟล์"
  description: "ด้วย GroupDocs.Redaction for .NET คุณสามารถซ่อนหรือลบเนื้อหาที่มีความละเอียดอ่อนในหลายประเภทไฟล์ ทำให้เอกสารปลอดภัยในขณะที่คงการอ่านง่าย"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการแก้ไขที่ยืดหยุ่น"
  features:
    # feature loop
    - title: "แก้ไขข้อความได้ง่าย"
      content: "ค้นหาและแทนที่ข้อความส่วนตัวทั่วทั้งเอกสารของคุณเพื่อเพิ่มความปลอดภัย"

    # feature loop
    - title: "ปกปิดภาพ"
      content: "ใช้ overlay ในภาพทั้งหมดหรือเลือกส่วนเฉพาะเพื่อป้องกันข้อมูลภาพ"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือเปลี่ยนแปลง Metadata ที่ซ่อนอยู่เพื่อหลีกเลี่ยงการรั่วไหลของข้อมูลโดยไม่ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ใช้ overlay เพื่อซ่อนรายละเอียดภาพ"
      content: |
        ตัวอย่างนี้แสดงถึงวิธีซ่อนพื้นที่ละเอียดอ่อนในภาพเอกสาร
      code:
        title: "C#"
        content: |
          ```csharp {style=abap}
          //  โหลดเอกสารที่คุณต้องการตัด
          using (Redactor redactor  = new Redactor("source.docx"))
          {
              // ระบุพารามิเตอร์ overlay: ขนาด, ตำแหน่ง, สี
              Size replacement_size = new Size(300, 30);
              var replacement_options = new RegionReplacementOptions(Color.Blue, replacement_size);
              Point replacement_point = new Point(20, 125);
              var redaction = new ImageAreaRedaction(replacement_point, replacement_options);
 
              // ตั้งเป้าหมายพื้นที่เฉพาะในหน้าหนึ่ง
              redaction.Filters = new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new Point(0, 300), new Size(600, 600))
              };

              // วาง overlay บนภาพ
              redactor.Apply(redaction);

              // บันทึกไฟล์ที่อัปเดต
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
    title: "ปกป้องไฟล์ DOCX ด้วยการตัดข้อมูล .NET"
    exclude: "DOCX"
    description: "ใช้ .NET เพื่อซ่อนหรือลบข้อมูลที่มีความละเอียดอ่อนในไฟล์ DOCX เหมาะสำหรับการรักษาความปลอดภัยเอกสารที่เป็นความลับ"
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