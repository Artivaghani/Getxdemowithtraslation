import 'package:get/get.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'getstatmag': 'Get started',
          'login': 'Sign In',
          'emailhint': 'Email',
          'passhint': 'Password',
          'welmsg': 'Welcome Back!',
          'loginstext': 'Please sign in to your account',
          'forgotpass': 'Forgot Password?',
          'signupmsg': 'Don\'t have a Acoount?',
          'signup': ' Sign Up',
          'logout': 'Logout',
          'emailerrormsg': 'Enter valid email id',
          'passerrormsg': 'Enter valid password'
        },
        'hi_IN': {
          'getstatmag': 'शुरू करो',
          'login': 'दाखिल करना',
          'emailhint': 'ईमेल',
          'passhint': 'कुंजिका',
          'welmsg': 'वापसी पर स्वागत है!',
          'loginstext': 'कृपया अपने खाते में साइन इन करें',
          'forgotpass': 'पासवर्ड भूल गए?',
          'signupmsg': 'आपके पास खाता नहीं है?',
          'signup': 'साइन अप करें',
          'logout': 'लॉग आउट',
          'emailerrormsg': 'मान्य ईमेल आईडी दर्ज करें',
          'passerrormsg': 'वैध पासवर्ड दर्ज करें'
        }
      };
}
