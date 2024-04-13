import 'package:articles_app_flutter/common/constants/dur.dart';
import 'package:flutter/material.dart';

class ArticleSwitch extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;

  const ArticleSwitch(
      {super.key, required this.value, required this.onChanged});

  static const iconSize = 30.0;

  @override
  State<ArticleSwitch> createState() => _ArticleSwitchState();
}

class _ArticleSwitchState extends State<ArticleSwitch>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  late bool _currentValue;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Dur.animationDuration);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _currentValue = widget.value;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildIcon(IconData iconData, [Key? key]) => Padding(
        key: key,
        padding: const EdgeInsets.all(4),
        child: Icon(
          iconData,
          size: ArticleSwitch.iconSize,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_currentValue) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
        setState(() {
          _currentValue = !_currentValue;
        });
        widget.onChanged(_currentValue);
      },
      child: Container(
        decoration: ShapeDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            shape: const StadiumBorder()),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Stack(
            children: [
              Row(mainAxisSize: MainAxisSize.min, children: [
                _buildIcon(Icons.text_fields_outlined),
                const SizedBox(width: 4),
                _buildIcon(Icons.camera_alt_outlined),
              ]),
              SizedBox(
                width: 80,
                height: 38,
                child: AnimatedAlign(
                  alignment: _currentValue
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
                  duration: Dur.animationDuration,
                  child: RotationTransition(
                    turns: _animation,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: AnimatedSwitcher(
                        duration: Dur.animationDuration,
                        child: _currentValue
                            ? _buildIcon(
                                Icons.text_fields_outlined, const Key('0'))
                            : _buildIcon(
                                Icons.camera_alt_outlined, const Key('1')),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
