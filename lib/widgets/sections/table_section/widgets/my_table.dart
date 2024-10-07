import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:teachable_landing_page/widgets/sections/table_section/widgets/start_video_button.dart';

class MyTable extends StatefulWidget {
  final String title;
  final List<String> rows;
  final Map<int, bool> previewMap;
  const MyTable({
    required this.title,
    required this.rows,
    this.previewMap = const {},
    super.key,
  });

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  Map<int, bool> hoveringMap = {};
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 710,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // title
          Container(
            color: const Color(0xFFEFEFF4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF36414D),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 2, color: Colors.white),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.rows.length,
            itemBuilder: (context, index) {
              bool isPreview = widget.previewMap[index] ?? false;
              bool isHovering = hoveringMap[index] ?? false;
              return Column(
                children: [
                  InkWell(
                    onTap: () {},
                    onHover: (hovering) {
                      setState(() {
                        hoveringMap[index] = hovering;
                      });
                    },
                    child: Container(
                      color: isHovering
                          ? const Color(0xFFE5E6E8)
                          : const Color(0xFFF9FAFD),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            const Icon(
                              CupertinoIcons.play_rectangle,
                              color: Color(0xFF15998F),
                              // size: 24,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              flex: 10,
                              child: Text(
                                widget.rows[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF36414D),
                                ),
                              ),
                            ),
                            const Spacer(),
                            StartVideoButton(isPreview: isPreview),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Divider(height: 2, color: Colors.white),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
