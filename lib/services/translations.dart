import '/package.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'en': {
        'email': 'Email',
        'password': 'Password',
        'signin_btn': 'Sign In',
        'create_an_account': 'Create An Account?',
        'firstname': 'First Name',
        'lastname': 'Last Name',
        'username': 'Username',
        'phone': 'Phone',
        'signup_btn': 'Sign Up',
        'back_to_signin': 'Already have an account?',
      },
    };
  }
}
