import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    // لمنع التطبيق من الظهور في أعلى الشاشة أو الشريط العلوي الموجود في كل جهاز جوال
    // والذي يكون فيه معلومات الأبراج والساعة ... إلخ
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(

        // لإضافة حواف إبتدائية ومنع العناصر للوصول لحواف الشاشة
        // باختصار إضافة هوامش
        child: Padding(
          padding: const EdgeInsets.all(8),


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //========================================================================
              //====================== تصميم هوية للتطبيق في الأعلى =====================
              //========================================================================
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        colors: [Colors.deepPurple.shade400, Colors.teal.shade400],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.9),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(2, 4),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [

                        // شعار الجمعية
                        Image.asset(
                          'assets/images/cropped_logo.png',
                          fit: BoxFit.contain,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 20),

                        //  إضافة حقائق عن الجمعية على شكل نص
                        Text(
                          'مجتمع تقني بلا حدود',
                          style: GoogleFonts.zain(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        //  إضافة حقائق عن الجمعية على شكل نص
                        Text(
                          'أول مجتمع تقني متخصص في منطقة الجوف',
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // إضافة أيقونة توحي بلمسة برمجية وأن الجمعية تخصصية في مجال التقنية
                  // بسبب هذه الأيقونة فقط تم استخدام Stack لوضعها أمام الــ Container
                  Positioned(
                    // لإزاحة الأيقومة إلى الجهة اليسرى
                    left: 0,
                    child: Icon(
                      Icons.code_rounded,
                      size: 100,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),


              //========================================================================
              //=============================== القسم الأول =============================
              //================================ الأخبار ================================
              //========================================================================

              // العنوان الفرعي الأول
              // تم وضعه داخل Align ليتم إجبار النص بالظهور في بداية السطر
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'نظرة سريعة',
                    style: GoogleFonts.cairo(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),

              // محتويات العنوان الفرعي الأول
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 1.5,
                      blurRadius: 1,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),

                child: Row(
                  children: [

                    // تصميم أيقونة توضيحية لمحتويات هذا القسم
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepPurple.shade50,
                      child: Icon(Icons.newspaper, color: Colors.deepPurple),
                    ),
                    SizedBox(width: 10),

                    // تم إضافة Expanded Widget لمنع تداخل الكتابة مع الأيقونة التي تم تصمصمها سابقا
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'آخر الأخبار',
                            style: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'أقامت جمعية ترميز ورشة عمل لأعضاء المجتمع لتعلم مبادئ Flutter',
                            style: GoogleFonts.cairo(fontSize: 14),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),


              // القسم الثاني من العنوان الفرعي الأول بنفس الأفكار السابقة
              // باختصار نص + لصق
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.9),
                      spreadRadius: 1,
                      blurRadius: 1.5,
                      offset: Offset(2, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.teal.shade50,
                      child: Icon(
                        Icons.event_available_sharp,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الفعاليات القادمة',
                            style: GoogleFonts.cairo(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'تم دعوة أعضاء الجمعية لحضور ورشة عن Packet Tracer وذلك في الأسبوع القادم',
                            style: GoogleFonts.cairo(fontSize: 14),
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),


              //========================================================================
              //============================== القسم الثاني ============================
              //========================== الأحداث وتفعيل الأزرار ========================
              //========================================================================

              // العنوان الفرعي الثاني
              // توضيح مفهوم الأحداث المرتبطة بالأزرار
              // لذا لا تستخدم فعليا بهذا الشكل ولكن لغرض التمرين
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'تعرف على المجتمع',
                    style: GoogleFonts.cairo(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.deepPurple.shade800,
                            Colors.deepPurple.shade200,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {

                          // عرض مربع حوار يحيوي نتائج عملية طلبها المستخدم وتحتاج إلى لفت انتباهه
                          // بحيث تظهر كرسالة في صندوق ويتم إغلاقة إما بإضافة زر في جزء actions
                          // أو بالضغط على أي مكان خارج حدود الرسالة ويتم إخفائها
                          // يمكن أيضا إضافة خبارات أخرى مثل حفظ، تراجع أو الخيارات المعتادة في التطبيقات في جزء actions
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  'تواصل معنا',
                                  style: GoogleFonts.cairo(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal.shade700,
                                  ),
                                ),
                                content: Text(
                                  'عن طريق إرسال رسالة خاصة عبر منصة إكس على حساب الجمعية الرسمي',
                                  style: GoogleFonts.cairo(
                                    fontSize: 14,
                                    color: Colors.deepPurple.shade700,
                                  ),
                                ),
                                actions: [
                                  IconButton(
                                      onPressed: (){Navigator.pop(context);},
                                      icon: Icon(Icons.arrow_forward, color: Colors.teal),
                                  ),
                                ],
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.contact_phone_rounded,
                          size: 20,
                          color: Colors.white,
                        ),
                        iconAlignment: IconAlignment.end,
                        label: Text(
                          'تواصل معنا',
                          style: GoogleFonts.cairo(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),

                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.teal.shade800, Colors.teal.shade200],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton.icon(
                        onPressed: () {

                          // التعرف فقط على شريط SnackBar لعرض الإشعارات التوضيحية للمستخدم
                          // سواء لتوضيح نجاح عملية أو توضيح خطأ ... إلخ
                          // من مميزاتها أن تكون عائمة وتختفي بعد عدد من الثواني
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'أول جمعية عمومية تقنية غير ربحية في منطقة الجوف',
                                style: GoogleFonts.cairo(fontSize: 14),
                                softWrap: true,
                              ),

                              backgroundColor: Colors.deepPurple.shade700,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              duration: Duration(seconds: 3),
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(15),
                              elevation: 5,
                              dismissDirection: DismissDirection.horizontal,
                            ),
                          );
                        },
                        iconAlignment: IconAlignment.end,
                        icon: Icon(Icons.info, size: 20, color: Colors.white),
                        label: Text(
                          'عن الجمعية',
                          style: GoogleFonts.cairo(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
