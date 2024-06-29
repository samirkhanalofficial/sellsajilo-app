import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sellsajilo/config/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              if (width >= 900) const Expanded(child: LogoContainer()),
              SizedBox(
                width: width >= 900 ? 500 : width,
                child: ListView(
                  children: [
                    if (width < 900) const LogoContainer(),
                    const LoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: width >= 900 ? height : null,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 72,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
          )),
      child: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 213,
          height: 140,
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          vertical: 72,
        ),
        decoration: const BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
            )),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 2,
          ),
          children: [
            if (width >= 900)
              const SizedBox(
                height: 100,
              ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  color: AppColors.primary,
                  fontSize: 26,
                ),
                children: const [
                  TextSpan(
                    text: "Reach ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "millions by\nCreating ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: "website ",
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                          ),
                          TextSpan(text: "instantly"),
                          TextSpan(
                              text:
                                  "\nEnter your mobile number to get started.",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Mobile Number:",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 18,
                      ),
                      child: Image.asset("assets/images/nepal-flag.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "+977    | ",
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "98XXXXXXXX",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                ),
                text: "You agree to our",
                children: const [
                  TextSpan(
                    text: " Terms & Conditions",
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                  TextSpan(
                    text: "\nand ",
                  ),
                  TextSpan(
                    text: "Privacy Policies",
                    style: TextStyle(
                      color: AppColors.primary,
                    ),
                  ),
                  TextSpan(text: " by signing in.")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
