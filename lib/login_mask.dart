import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class LoginMask extends StatefulWidget {
  const LoginMask({super.key});

  @override
  State<LoginMask> createState() => _LoginMaskState();
}

class _LoginMaskState extends State<LoginMask> {
  String _username = '';
  String _password = '';
  bool _canLogin = false;

  @override
  Widget build(BuildContext context) {
    return Center(child: SizedBox(
      width: 120,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Willkommen!\n\n\nBitte loggen Sie sich ein:'),
          PlatformTextField(onChanged: _onChangedUsername),
          Text('Username'),
          PlatformTextField(onChanged: _onChangedPassword, obscureText: true),
          Text('Password'),
          PlatformTextButton(child: Text('\n\nLogin'), onPressed: _canLogin ? _onPressed : null)
        ],
      ),
    ),
    );
  }

  @override
  void initState() {
    super.initState();
    _username = '';
    _password = '';
    _canLogin = false;
  }

  void _onChangedUsername(String username) {
    _username = username;
    _checkCanLogin();
  }

  void _onChangedPassword(String password) {
    _password = password;
    _checkCanLogin();
  }

  void _checkCanLogin() {
    setState(() {
      _canLogin = _username.isNotEmpty && _password.isNotEmpty;
    });
  }

  void _onPressed() {
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant LoginMask oldWidget) {
    // TODO: Ressorcen freigeben
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: Aufräumen
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: Ressorcen freigeben
    super.dispose();
  }
}
