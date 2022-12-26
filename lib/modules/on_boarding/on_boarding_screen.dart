import 'package:e_commerce_app/modules/login/login_screen.dart';
import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/network/local/cache_helper.dart';
import 'package:e_commerce_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  late final String image;
  late final String? text;

  BoardingModel({
    required this.image,
    required this.text,
  });
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/on_boarding_1.png',
        text: 'Welcome to TOKOTO, Let\'s Shop!'),
    BoardingModel(
        image: 'assets/images/on_boarding_2.png',
        text:
            'We help people connect with store \naround United State of America'),
    BoardingModel(
        image: 'assets/images/on_boarding_3.png',
        text: 'We show the easy way to shop. \nJust stay at home with us'),
  ];

  var boardingController = PageController();
  bool isLast = false;


  void submit()
  {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      navigateAndFinish(context, LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              navigateAndFinish(context, LoginScreen());
            },
            child: const Text(
              'SKIP',
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (int index) {
                    if (index == boarding.length - 1) {
                      setState(() {
                        isLast = true;
                        print(isLast);
                      });
                    } else {
                      setState(() {
                        isLast = false;
                        print(isLast);
                      });
                    }
                  },
                  controller: boardingController,
                  itemBuilder: (context, index) =>
                      onBoardingItem(boarding[index]),
                  physics: const BouncingScrollPhysics(),
                  itemCount: boarding.length,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const Spacer(),
                    SmoothPageIndicator(
                      controller: boardingController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.grey,
                        activeDotColor: kPrimaryColor,
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 10,
                        expansionFactor: 4.0,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (isLast) {
                            submit();
                          } else {
                            boardingController.nextPage(
                              duration: const Duration(milliseconds: 1600),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          }
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'muli',
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget onBoardingItem(BoardingModel boarding) => Column(
        children: [
          Text(
            'TOKOTO',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            boarding.text!,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const Spacer(),
          Image(
            height: 250,
            image: ExactAssetImage(
              boarding.image,
            ),
          ),
        ],
      );
}
