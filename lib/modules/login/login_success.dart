import 'package:e_commerce_app/layout/home_layout_screen.dart';
import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import '../../shared/styles/colors.dart';


class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('LoginSuccess')),
      ),
      body: Column(
        children: [
          const Spacer(),
          const Image(
            image: ExactAssetImage(
              'assets/images/success.png',
            ),
          ),
          const Spacer(),
          Text(
            'Login Success',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: Colors.black,
                  fontSize: 25,
                ),
          ),
          const Spacer(),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: IconButton(
              color: kPrimaryColor,
              onPressed: ()
              {
                navigateAndFinish(context, HomeLayoutScreen());
              },
              icon: const Text(
                'Back To Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'muli',
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
