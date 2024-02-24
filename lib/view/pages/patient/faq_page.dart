import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gluco_guide/core/services/extensions.dart';
import 'package:gluco_guide/view/molcules/faq_card.dart';
import 'package:gluco_guide/view/molcules/gluco_guide_app_bar.dart';
import '../../../core/models/faq_data_model.dart';
import '../../../core/services/log_manager.dart';
import '../../../translations/locale_keys.g.dart';
import '../../atoms/app_loading.dart';
import '../../molcules/no_data.dart';

final AutoDisposeFutureProvider<List<FAQData>?>
faqFutureProvider =
FutureProvider.autoDispose<List<FAQData>?>(
        (AutoDisposeFutureProviderRef<List<FAQData>?> ref) {
      List<FAQData> faqList = <FAQData>[
         const FAQData(
            id: 1,
            question: "What is the purpose of this workout and dietation mobile app?",
            answer: "This app is designed to help users achieve their fitness goals by providing personalized workout plans, nutritional guidance, and tracking progress."),
        const FAQData(
            id: 2,
            question: "Can I create a custom workout plan based on my fitness level and goals?",
            answer:
            "Yes, the app allows you to create custom workout plans tailored to your fitness level and specific goals."),
        const FAQData(
            id: 2,
            question: "Can I create a custom workout plan based on my fitness level and goals?",
            answer:
            "Yes, the app allows you to create custom workout plans tailored to your fitness level and specific goals."),
        const FAQData(
            id: 3,
            question: "How does the app track my progress?",
            answer:
            "The app tracks your progress through various features such as workout logs, calorie intake tracking, and body measurements. This data helps you monitor your progress and make necessary adjustments to your workout and diet plans."),
        const FAQData(
            id: 4,
            question: "Is the app suitable for beginners?",
            answer:
            "Absolutely! The app offers beginner-friendly workout plans and provides guidance on proper form and technique. It also offers tips for healthy eating and gradual progression to more advanced workout routines."),
        const FAQData(
            id: 5,
            question: "Can I access the app's features without an internet connection?",
            answer:
            "Some features, like workout plans and basic tracking, can be accessed offline. However, for features like syncing data and accessing additional resources, an internet connection is required."),

        const FAQData(
            id: 6,
            question: "How does the app ensure the accuracy of its nutritional information?",
            answer:
            "The app sources its nutritional information from trusted databases and nutrition experts. It also offers options for custom food entries and scanning barcodes to ensure accuracy in tracking your calorie intake."),
        const FAQData(
            id: 7,
            question: "Are there any social features in the app, like connecting with friends or joining challenges?",
            answer:
            "Yes, the app may include social features such as connecting with friends, joining groups, or participating in challenges to keep you motivated and engaged in your fitness journey."),
        const FAQData(
            id: 8,
            question: "How often should I update my workout and diet plans?",
            answer:
            "The app recommends reviewing and updating your plans periodically to ensure continuous progress and to adapt to any changes in your fitness goals or lifestyle."),
        const FAQData(
            id: 9,
            question: "Is there customer support available if I have questions or issues with the app?",
            answer:
            "The app usually offers customer support through in-app messaging, email, or phone. They can assist you with any questions or issues you may encounter while using the app."),
        const FAQData(
            id: 10,
            question: "How does the app protect my personal information and data privacy?",
            answer:
            "The app follows strict data privacy protocols and encrypts your personal information to ensure its security. It also provides clear guidelines on the type of data it collects and how it's used to improve your experience within the app."),
      ];
      return faqList;
    });
class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlucoGuideAppBar(
          text: LocaleKeys.notifications.tr(),
        ),
        body: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              return ref.watch(faqFutureProvider).when(
                  skipLoadingOnRefresh: false,
                  skipLoadingOnReload: false,
                  data: (List<FAQData?>? faqList) {
                    return faqList?.isEmpty == true
                        ? NoData(
                      title: LocaleKeys.emptyWithInput
                          .tr(args: <String>["Notifications"]),
                    )
                        : ListView.separated(
                        separatorBuilder: (_, __) => context.vSpaceBox16,
                        itemCount: faqList?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          FAQData? faqData =
                          faqList?[index];
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                            child: FaqCard(
                              question: faqData?.question,
                              answer: faqData?.answer,
                            ),
                          );
                        });
                  },
                  error: (Object error, StackTrace stackTrace) {
                    LogManager.logToConsole(error, "error");
                    return const Center(
                      child: Text(
                        "We couldn't load FAQs",
                      ),
                    );
                  },
                  loading: () => const AppLoading());
            }));
  }
}
