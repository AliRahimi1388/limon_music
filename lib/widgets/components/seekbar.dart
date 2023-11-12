import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarData {
  final Duration position;
  final Duration duration;

  SeekBarData({required this.position, required this.duration});
}

class SeekBar extends StatefulWidget {
  final Duration position;
  final Duration duration;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekBar({
    super.key,
    required this.position,
    required this.duration,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  State<SeekBar> createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double? dragValue;

  String formatDuration(Duration? duration){
    if(duration==null){
      return '--:--';
    }else{
      String minutes = duration.inMinutes.toString().padLeft(2,'0');
      String seconds = duration.inSeconds.remainder(60).toString().padLeft(2,'0');
      return '$minutes:$seconds';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(formatDuration(widget.position)),
        Expanded(
          child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  trackHeight: 4,
                  thumbShape: const RoundSliderThumbShape(
                    disabledThumbRadius: 4,
                    enabledThumbRadius: 4,
                  ),
                  overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 10,
                  ),
                  activeTrackColor: Colors.white.withOpacity(0.2),
                  inactiveTrackColor: Colors.white,
                  thumbColor: Colors.red,
                  overlayColor: Colors.white),
              child: Slider(
                  min: 0.0,
                  max: widget.duration.inMilliseconds.toDouble(),
                  value: min(
                      dragValue ?? widget.position.inMilliseconds.toDouble(),
                      widget.duration.inMilliseconds.toDouble()),
                  onChanged: (value) {
                    setState(() {
                      dragValue = value;
                    });
                    if (widget.onChanged != null) {
                      widget.onChanged!(Duration(
                        milliseconds: value.round(),
                      ));
                    }
                  },
              onChangeEnd: (value){
                if (widget.onChangeEnd != null) {
                  widget.onChangeEnd!(Duration(
                    milliseconds: value.round(),
                  ));
                }
                dragValue = null;
              },)),
        ),
        Text(formatDuration(widget.duration))
      ],
    );
  }
}
