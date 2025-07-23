import 'package:flutter/material.dart';

class VoiceRecorder extends StatefulWidget {
  const VoiceRecorder({super.key});

  @override
  State<VoiceRecorder> createState() => _VoiceRecorderState();
}

class _VoiceRecorderState extends State<VoiceRecorder>
    with TickerProviderStateMixin {
  bool _isRecording = false;
  bool _hasRecording = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.2,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleRecording() {
    setState(() {
      _isRecording = !_isRecording;
      if (_isRecording) {
        _animationController.repeat(reverse: true);
      } else {
        _animationController.stop();
        _animationController.reset();
        _hasRecording = true;
      }
    });

    // TODO: Implement actual speech recording logic
    if (_isRecording) {
      print('Started recording...');
    } else {
      print('Stopped recording...');
    }
  }

  void _playRecording() {
    // TODO: Implement playback logic
    print('Playing recording...');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Playing recording (placeholder)')),
    );
  }

  void _deleteRecording() {
    setState(() {
      _hasRecording = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recording deleted')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!_hasRecording) ...[
          // Recording Button
          GestureDetector(
            onTap: _toggleRecording,
            child: AnimatedBuilder(
              animation: _scaleAnimation,
              builder: (context, child) {
                return Transform.scale(
                  scale: _isRecording ? _scaleAnimation.value : 1.0,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: _isRecording ? Colors.red : Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: (_isRecording ? Colors.red : Colors.blue)
                              .withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Icon(
                      _isRecording ? Icons.stop : Icons.mic,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _isRecording ? 'Recording...' : 'Tap to record your coffee notes',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ] else ...[
          // Playback Controls
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: _playRecording,
                icon: const Icon(Icons.play_arrow),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
              IconButton(
                onPressed: _deleteRecording,
                icon: const Icon(Icons.delete),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
              ),
              IconButton(
                onPressed: _toggleRecording,
                icon: const Icon(Icons.mic),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Recording ready • Tap play to listen',
            style: TextStyle(
              color: Colors.green,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ],
    );
  }
}
