import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_buttom.dart';
import 'package:fruits_hub/core/widgets/custom_form_text_field.dart';
import 'package:fruits_hub/core/widgets/custom_or_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomFormTextField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomFormTextField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.text,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور ؟',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل دخول',
            ),
            const SizedBox(
              height: 33,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'لا تمتلك حساب؟',
                    style: AppTextStyles.semiBold16.copyWith(
                      color: AppColors.kLightGray,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: AppTextStyles.semiBold16.copyWith(
                      color: AppColors.kLightGray,
                    ),
                  ),
                  TextSpan(
                    text: 'قم بإنشاء حساب',
                    style: AppTextStyles.semiBold16
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 33,
            ),
            const CustomOrWidget(),
          ],
        ),
      ),
    );
  }
}
