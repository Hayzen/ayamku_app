import 'dart:async';

import 'package:flutter/material.dart';

int _start = 180;

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP'),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'kode OTP di sini'),
                maxLength: 6,
                onChanged: (text) {
                  if (text.length == 6) {
                    Navigator.of(context).pushNamed('home-screen');
                  }
                },
              ),
              Text((_start / 60).floor().toString() +
                  ':' +
                  (_start % 60).toString()),
              SizedBox(height: 100),
              FilledButton(
                  onPressed: onClickKirimOTP, child: Text('Kirim Ulang OTP'))
            ],
          )),
    );
  }

  void onClickKirimOTP() {
    const oneSec = const Duration(seconds: 1);
    Timer _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  void onOTPChanged() {}
}
