import '../../modules/login/login_screen.dart';
import '../network/local/cache_helper.dart';
import 'components.dart';

dynamic token = '';
dynamic onBoarding = '';


void removeToken(context)
{
  CacheHelper.removeData(
    key: 'token',
  ).then(
        (value) {
      navigateAndFinish(context, LoginScreen());
    },
  );
}