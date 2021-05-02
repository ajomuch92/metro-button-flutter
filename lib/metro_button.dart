library metro_button;

import 'package:flutter/material.dart';

/// Class used to generate the command button
class CommandButton extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final String tooltip;
  final Function() onTap;
  final Function() onLongTap;
  final bool disabled;
  final bool reverse;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;
  final double radius;
  final Widget icon;

  const CommandButton(
      {Key key,
      @required this.title,
      @required this.onTap,
      this.onLongTap,
      this.tooltip,
      this.subtitle,
      this.disabled = false,
      this.width,
      this.height,
      this.reverse = false,
      this.backgroundColor,
      this.borderColor,
      this.radius = 5.0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width ?? MediaQuery.of(context).size.width * 0.9,
      child: ButtonTheme(
        height: this.height ?? 80.0,
        child: RaisedButton(
          child: Tooltip(
              message: this.tooltip ?? '',
              child: this.reverse
                  ? ListTile(
                      title: this.title,
                      subtitle: this.subtitle,
                      trailing: this.icon,
                    )
                  : ListTile(
                      title: this.title,
                      subtitle: this.subtitle,
                      leading: this.icon,
                    )),
          onPressed: disabled ? null : this.onTap,
          onLongPress: this.onLongTap,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 0),
              side: BorderSide(
                  color: disabled
                      ? Colors.grey[300]
                      : borderColor ?? Colors.grey)),
          color: disabled ? Colors.grey[300] : backgroundColor ?? Colors.grey,
          padding: const EdgeInsets.all(8.0),
          highlightColor: Colors.grey[50],
        ),
      ),
    );
  }
}

/// Class used to generate the shortcut button
class ShortcutButton extends StatelessWidget {
  final Widget title;
  final Widget badge;
  final String tooltip;
  final Function() onTap;
  final Function() onLongTap;
  final bool disabled;
  final double size;
  final Color backgroundColor;
  final Color borderColor;
  final double radius;
  final Widget icon;

  const ShortcutButton(
      {Key key,
      @required this.title,
      @required this.onTap,
      this.onLongTap,
      this.badge,
      this.tooltip,
      this.disabled = false,
      this.size,
      this.backgroundColor,
      this.borderColor,
      this.radius = 5.0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.size ?? 150,
      height: this.size ?? 150,
      child: RaisedButton(
        child: Tooltip(
            message: this.tooltip ?? '',
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [this.icon, this.title],
                  ),
                ),
                Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: this.badge != null
                        ? Container(
                            padding: EdgeInsets.all(1.0),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(3)),
                            child: this.badge,
                          )
                        : Container()),
              ],
            )),
        onPressed: disabled ? null : this.onTap,
        onLongPress: this.onLongTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 0),
            side: BorderSide(
                color:
                    disabled ? Colors.grey[300] : borderColor ?? Colors.grey)),
        color: disabled ? Colors.grey[300] : backgroundColor ?? Colors.grey,
        padding: const EdgeInsets.all(8.0),
        highlightColor: Colors.grey[50],
      ),
    );
  }
}
