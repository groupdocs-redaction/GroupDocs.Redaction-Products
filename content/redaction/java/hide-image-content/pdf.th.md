
---
############################# Static ############################
layout: "format"
date:  2025-08-08T14:46:54
draft: false
lang: th
format: Pdf
product: "Redaction"
product_tag: "redaction"
platform: "Java"
platform_tag: "java"

############################# Head ############################
head_title: "ปกภาพใน PDF ด้วย Overlay ใช้งาน Java"
head_description: "ด้วย GroupDocs.Redaction for Java คุณสามารถซ่อนภาพส่วนตัวในไฟล์ PDF โดยใช้ Overlay สีที่ซ่อนไว้ ปกป้องภาพที่ละเอียดอ่อนในขณะที่รักษาการออกแบบเอกสารของคุณไว้"

############################# Header ############################
title: "ซ่อนภาพลับในไฟล์ PDF ด้วย Overlay ใช้งาน Java" 
description: "ปกป้องข้อมูลส่วนตัวและธุรกิจในไฟล์ PDF ด้วย Java เครื่องมือของเราช่วยให้การปรับแต่งภาพเป็นเรื่องที่มีประสิทธิภาพ"
subtitle: "คุณสมบัติของ GroupDocs.Redaction for Java" 

############################# About ############################
about:
    enable: true
    title: "เกี่ยวกับ GroupDocs.Redaction for Java"
    link: "/redaction/java/"
    link_title: "เรียนรู้เพิ่มเติม"
    picture: "about_redaction.svg" # 480 X 400
    content: |
       GroupDocs.Redaction for Java เสนอเครื่องมือที่มีประสิทธิภาพสำหรับนักพัฒนา Java ในการซ่อนหรือลบเนื้อหาในไฟล์ PDF ปกปิดข้อความ ภาพ และ Metadata เพื่อรักษาความปลอดภัยเอกสารของคุณในหลากหลายรูปแบบ

############################# Steps ############################
steps:
    enable: true
    title: "ปกป้องข้อมูลธุรกิจในไฟล์ Pdf"
    content: |
      GroupDocs.Redaction for Java ช่วยให้แอปพลิเคชัน Java ของคุณสามารถรักษาความปลอดภัยเอกสารได้ ปกปิดภาพส่วนตัวในไม่กี่ขั้นตอน
      
      1. เริ่มต้น Redactor และกำหนดเส้นทางไปยังไฟล์ Pdf ของคุณ
      2. เลือกการตั้งค่าการปรับแต่งเพื่อผลลัพธ์ที่ดีที่สุด
      3. เลือกพื้นที่ของภาพและเลือกสี Overlay
      4. ประมวลผลและบันทึกไฟล์ที่ปลอดภัย
   
    code:
      platform: "java"
      copy_title: "คัดลอก"
      result_enable: true
      result_link: "/examples/redaction/redaction_all.pdf"
      result_title: "การลบข้อมูลตัวอย่าง"
      install:
        command: |
          <dependencies>
            <dependency>
              <groupId>com.groupdocs</groupId>
              <artifactId>groupdocs-redaction</artifactId>
              <version>{0}</version>
            </dependency>
          </dependencies>

          <repositories>
            <repository>
              <id>repository.groupdocs.com</id>
              <name>GroupDocs Repository</name>
              <url>https://repository.groupdocs.com/repo/</url>
            </repository>
          </repositories>
        copy_tip: "คลิ๊กเพื่อคัดลอก"
        copy_done: "คัดลอกแล้ว"
      links:
        #  loop
        - title: "ตัวอย่างเพิ่มเติม"
          link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
        #  loop
        - title: "เอกสารประกอบ"
          link: "https://docs.groupdocs.com/redaction/java/"
          
      content: |
        ```java {style=abap}
        // ปกปิดภาพที่ละเอียดอ่อนใน PDF

        // โหลดไฟล์ด้วย Redactor
        final Redactor redactor = new Redactor("input.pdf");
        try
        {
            // กำหนดสี Overlay และมิติ
            java.awt.Dimension replacement_size = new java.awt.Dimension(100, 100);
            RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);

            // เลือกพื้นที่ที่ต้องการปรับแต่ง
            java.awt.Point replacement_point = new java.awt.Point(200, 200);
            ImageAreaRedaction redaction = 
                new ImageAreaRedaction(replacement_point, replacement_options);

            // ใช้ Overlay และบันทึกไฟล์
            RedactorChangeLog result = redactor.apply(redaction);
            redactor.save();
        }
        finally { redactor.close(); }
        ```            


############################# More features ############################
more_features:
  enable: true
  title: "ซ่อนเนื้อหาในเอกสาร"
  description: "ด้วย GroupDocs.Redaction for Java คุณสามารถซ่อนหรือลบข้อมูลที่ละเอียดอ่อนในรูปแบบไฟล์ต่างๆ ปกป้องข้อมูลส่วนตัวในขณะที่ทำให้ไฟล์อ่านง่ายและแจกจ่ายได้"
  image: "/img/redaction/features_image_hide.webp" # 500x500 px
  image_description: "ตัวเลือกการปรับแต่งที่มีประสิทธิภาพ"
  features:
    # feature loop
    - title: "แก้ไขข้อความได้ทุกที่"
      content: "ค้นหาและแทนที่คำที่ละเอียดอ่อนในเอกสารของคุณ เพื่อรักษาความปลอดภัยของเนื้อหาที่เป็นส่วนตัว"

    # feature loop
    - title: "ซ่อนภาพ"
      content: "เพิ่ม Overlay ในภาพหรือบางส่วนของภาพ เพื่อให้ไม่เปิดเผยข้อมูลที่ละเอียดอ่อน"

    # feature loop
    - title: "ทำความสะอาด Metadata"
      content: "ลบหรือแก้ไขข้อมูล Metadata ที่ซ่อนอยู่เพื่อป้องกันการรั่วไหลของข้อมูลที่ไม่ได้ตั้งใจ"
      
  code_samples_ext:
    # code sample ext loop
    - title: "ปกปิดข้อมูลภาพด้วย Overlay"
      content: |
        ตัวอย่างนี้แสดงวิธีการซ่อนภาพที่ละเอียดอ่อนในเอกสารโดยใช้ Overlay
      code:
        title: "Java"
        content: |
          ```java {style=abap}
          //  เปิดเอกสารสำหรับการแก้ไข
          final Redactor redactor = new Redactor("source.pdf");
          try
          {
              // กำหนดขนาดสีและตำแหน่งของ Overlay
              java.awt.Dimension replacement_size = new java.awt.Dimension(300, 30);
              RegionReplacementOptions replacement_options = 
                new RegionReplacementOptions(java.awt.Color.BLUE, replacement_size);
              java.awt.Point replacement_point = new java.awt.Point(20, 125);
              ImageAreaRedaction redaction = new ImageAreaRedaction(replacement_point, replacement_options);

              // เลือกพื้นที่ของภาพที่จะปรับแต่งในหน้าแรก
              redaction.setFilters(new RedactionFilter[] {
                  new PageRangeFilter(PageSeekOrigin.Begin, 0, 1),
                  new PageAreaFilter(new java.awt.Point(0, 300), new java.awt.Dimension(600, 600))
              });

              // เพิ่ม Overlay เพื่อปกปิดข้อมูลที่ละเอียดอ่อน
              redactor.apply(redaction);

              // บันทึกเอกสารที่อัปเดต
              SaveOptions save_options = new SaveOptions();
              save_options.setAddSuffix(true);
              save_options.setRasterizeToPDF(false);
              redactor.save(save_options);
          }
          finally { redactor.close(); }
          ```
        platform: "net"
        copy_title: "คัดลอก"
        install:
          command: |
            <dependencies>
              <dependency>
                <groupId>com.groupdocs</groupId>
                <artifactId>groupdocs-redaction</artifactId>
                <version>{0}</version>
              </dependency>
            </dependencies>
            <repositories>
              <repository>
                <id>repository.groupdocs.com</id>
                <name>GroupDocs Repository</name>
                <url>https://repository.groupdocs.com/repo/</url>
              </repository>
            </repositories>
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
            link: "https://github.com/groupdocs-redaction/GroupDocs.Redaction-for-Java/"
          #  loop
          - title: "เอกสารประกอบ"
            link: "https://docs.groupdocs.com/redaction/java/"


############################# Actions ############################

actions:
  enable: true
  title: "พร้อมเริ่มต้นหรือยัง?"
  description: "ลองฟีเจอร์ของ GroupDocs.Redaction ฟรี หรือขอใบอนุญาต"
  items:
    #  loop
    - title: "ดาวน์โหลด Maven"
      link: "https://releases.groupdocs.com/redaction/java/"
      color: "red"
        #  loop
    - title: "การออกใบอนุญาต"
      link: "https://purchase.groupdocs.com/pricing/redaction/java/"
      color: "light"


############################# More Formats #####################
more_formats:
    enable: true
    title: "ปกป้องไฟล์ PDF ด้วยการปรับแต่ง Java"
    exclude: "PDF"
    description: "ใช้ Java เพื่อซ่อนหรือลบข้อมูลที่ละเอียดอ่อนในไฟล์ PDF เหมาะสำหรับการรักษาความปลอดภัยเอกสารทางการและเอกสารที่เป็นส่วนตัว"
    items: 
        # format loop 1
        - name: "ลบข้อมูลใน PDF"
          format: "PDF"
          link: "/redaction/java/hide-image-content//pdf/"
          description: "รูปแบบเอกสารที่พกพา Adobe"

        # format loop 2
        - name: "ลบข้อมูลใน Word"
          format: "WORD"
          link: "/redaction/java/hide-image-content//word/"
          description: "เอกสาร MS Word และ Open Office"
          
        # format loop 3
        - name: "ลบข้อมูลใน Excel"
          format: "EXCEL"
          link: "/redaction/java/hide-image-content//excel/"
          description: "ไฟล์ตารางข้อมูล MS Excel และ Open Office"

        # format loop 4
        - name: "ลบข้อมูลใน PowerPoint"
          format: "POWERPOINT"
          link: "/redaction/java/hide-image-content//powerpoint/"
          description: "การนำเสนอ MS PowerPoint และ Open Office"

        # format loop 5
        - name: "ลบข้อมูลในรูปภาพ"
          format: "IMAGE"
          link: "/redaction/java/hide-image-content//image/"
          description: "รูปแบบภาพที่นิยม"

        # format loop 6
        - name: "ลบข้อมูลในรูปถ่าย"
          format: "PHOTO"
          link: "/redaction/java/hide-image-content//photo/"
          description: "รูปถ่าย"

        # format loop 7
        - name: "ลบข้อมูลใน DOCX"
          format: "DOCX"
          link: "/redaction/java/hide-image-content//docx/"
          description: "เอกสาร Microsoft Word Open XML"
          
        # format loop 8
        - name: "ลบข้อมูลใน XLSX"
          format: "XLSX"
          link: "/redaction/java/hide-image-content//xlsx/"
          description: "ตารางข้อมูล Microsoft Excel Open XML"
          
        # format loop 9
        - name: "ลบข้อมูลใน PPTX"
          format: "PPTX"
          link: "/redaction/java/hide-image-content//pptx/"
          description: "การเสนอ PowerPoint Open XML"

        # format loop 10
        - name: "ลบข้อมูลใน JPEG"
          format: "JPEG"
          link: "/redaction/java/hide-image-content//jpeg/"
          description: "ภาพ JPEG"


---