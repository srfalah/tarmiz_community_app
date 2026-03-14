import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JoinCommunityPage extends StatefulWidget {
  const JoinCommunityPage({super.key});

  @override
  State<JoinCommunityPage> createState() => _JoinCommunityPageState();
}

class _JoinCommunityPageState extends State<JoinCommunityPage> {
  // controller لقراءة مدخلات المستخدم في مربع النص
  final TextEditingController emailController = TextEditingController();

  // في flutter تستخدم المتغيرات المنطقة كثيرا لتفعيل أحداث الأزرار
  // والفكرة هنا أن نتأكد من موافقة المستخدم على الشروط والأحكام مثلا
  bool agreeToTerms = false;
  bool receiveNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //==================================================================
            //=============== تصميم هوية الصفحة الحالية في الأعلى ===============
            //==================================================================
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple.shade400,
                        Colors.teal.shade400,
                      ],
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
                      const Icon(
                        Icons.campaign_rounded,
                        color: Colors.white,
                        size: 100,
                      ),

                      const SizedBox(height: 12),

                      Text(
                        'سجل معنا في جمعية ترميز',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        'أدخل بريدك الإلكتروني لتصلك آخر الأخبار',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.cairo(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.95),
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ),

                Positioned(
                  // لإزاحة الأيقومة إلى الجهة اليسرى
                  left: 0,
                  top: 2,
                  child: Icon(
                    Icons.code_rounded,
                    size: 100,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // =================================================================
            // ====================== مربع نص إدخال البيانات ===================
            // =================================================================
            Text(
              'البريد الالكتروني',
              style: GoogleFonts.cairo(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.cairo(fontSize: 15, color: Colors.black87),
              decoration: InputDecoration(
                hintText: 'example@email.com',
                hintStyle: GoogleFonts.cairo(color: Colors.grey[500]),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Color(0xFF5B3FD8),
                ),
                // تنسيق حدود الحقل في حالاته المختلفة
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Color(0xFF5B3FD8),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),

            // =================================================================
            // ========================== خيارات الموافقة ======================
            // =================================================================
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 14,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: 0,
                children: [
                  CheckboxListTile(
                    value: agreeToTerms,
                    contentPadding: EdgeInsets.only(right: 15, top: 15),
                    visualDensity: const VisualDensity(vertical: -4),
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'أوافق على جميع الشروط والأحكام',
                      style: GoogleFonts.cairo(
                        fontSize: 13,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onChanged: (value) {
                      // تحديث حالة الاختيار عند الضغط
                      setState(() {
                        agreeToTerms = value ?? false;
                      });
                    },
                  ),

                  CheckboxListTile(
                    value: receiveNotifications,
                    contentPadding: EdgeInsets.only(right: 15, bottom: 15),
                    visualDensity: const VisualDensity(vertical: -4),
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      'أوافق على الاشتراك بالقائمة البريدية',
                      style: GoogleFonts.cairo(
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                    ),
                    onChanged: (value) {
                      // تحديث حالة الاختيار عند الضغط
                      setState(() {
                        receiveNotifications = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            // =================================================================
            // ======================== أزرار التحكم والتحقق ===================
            // =================================================================
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 52,

                    // بداية زر التسجيل ========================================
                    child: ElevatedButton.icon(
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();

                        // التأكد من صحة البيانات المدخلة
                        final email = emailController.text.trim();

                        // 1. التأكد من أن الحقل ليس فارغاً
                        if (email.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'فضلاً أدخل البريد الالكتروني',
                                style: GoogleFonts.zain(),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }

                        // 2. التأكد من وجود علامات البريد الصحيحة
                        if (!email.contains('@') || !email.contains('.')) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'البريد الالكتروني غير صحيح',
                                style: GoogleFonts.zain(),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }

                        // 3. التأكد من الموافقة على الشروط
                        if (!agreeToTerms) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'يجب الموافقة على شروط الاتفاقية',
                                style: GoogleFonts.zain(),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }

                        // إظهار رسالة النجاح في حال اكتملت الشروط
                        // تم استخدام Dialog ويمكن استبداله بــ SnackBar
                        // أو بأي طريقة أخرى من طرق الإشعارات
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                'تم التسجيل',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: Text(
                                // بديلة if الشرطية في البرمجة الحديثة وخطواتها كالتالي
                                //  القيمة المنطقية
                                //  ?
                                // النتيجة إذا كانت القيمة true
                                // :
                                // النتيجة إذا كانت القيمة false
                                // مثال
                                // bool doYouLoveFlutter = true;
                                // doYouLoveFlutter ? 'يا عيني عليك' :
                                // 'طيب ليش'
                                receiveNotifications
                                    ? 'تم تسجيل بريدك بنجاح وستصلك آخر أخبار وفعاليات الجمعية'
                                    : 'تم حفظ بريدك بنجاح دون إرسال آخر التحديثات',
                                style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  height: 1.7,
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text(
                                    'إغلاق',
                                    style: GoogleFonts.cairo(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xFF5B3FD8),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.send_rounded, color: Colors.white),
                      label: const Text(
                        'تسجيل',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple.shade500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),

                    // نهاية زر التسجيل ========================================
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: SizedBox(
                    height: 52,

                    // بداية زر إعادة التعيين ==================================
                    child: OutlinedButton.icon(
                      onPressed: () {
                        FocusScope.of(context).unfocus();

                        // إعادة تعيين كافة الحقول للحالة الافتراضية
                        setState(() {
                          emailController.clear();
                          agreeToTerms = false;
                          receiveNotifications = true;
                        });
                      },
                      icon: const Icon(
                        Icons.refresh_rounded,
                        color: Colors.teal,
                      ),
                      label: Text(
                        'إعادة تعيين',
                        style: GoogleFonts.cairo(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.teal),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),

                    // نهاية زر إعادة التعيين ==================================
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
