import 'package:flutter/material.dart';
import 'package:xth_assesment/constants/color_constants.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent({
    super.key,
    required this.title,
    required this.onpressed,
    this.loading = false,
    this.forgroundcolor = Colors.white,
    this.backgroundcolor = ColorConstants.black,
    this.bordercolor = ColorConstants.black,
  });
  final String title;
  final bool loading;
  final Function() onpressed;
  final Color forgroundcolor;
  final Color backgroundcolor;
  final Color bordercolor;

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: widget.bordercolor)
                  // <-- Radius
                  ),
              foregroundColor: widget.forgroundcolor,
              backgroundColor: widget.backgroundcolor,
              disabledBackgroundColor: widget.backgroundcolor,
              disabledForegroundColor: widget.forgroundcolor,
              elevation: 3,
              minimumSize: const Size(double.infinity, 55)),
          onPressed: widget.loading ? null : widget.onpressed,
          child: widget.loading
              ? const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : Text(widget.title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700))),
    );
  }
}
