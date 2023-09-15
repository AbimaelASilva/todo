import 'package:flutter/material.dart';

import '../components/pro_rounded_container.dart';
import '../colors/pro_colors.dart';

class HomeTodo extends StatelessWidget {
  const HomeTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProColors.grey,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: ProColors.purple,
                height: 222,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                      backgroundColor: ProColors.white, // <-- Button color
                      foregroundColor: Colors.red, // <-- Splash color
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: ProColors.purple,
                      size: 16,
                    ),
                  ),
                  const Text(
                    'October 20, 2022',
                    style: TextStyle(
                        color: ProColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 56,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 96),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'My Todo List',
                    style: TextStyle(
                        color: ProColors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 158, right: 16, left: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProRoundedContainer(
                      children: [
                        _todoRow(
                          icon: Icons.calendar_month,
                          description: 'Abimael, remove trash!',
                          time: '10:00pm',
                        ),
                        const Divider(
                          height: 0.1,
                        ),
                        _todoRow(
                          icon: Icons.access_time,
                          description: 'Jiu-Jitsu',
                          time: '4:00pm',
                          colorBackgroundIcon: ProColors.green,
                        ),
                        const Divider(
                          height: 0.1,
                        ),
                        _todoRow(
                          icon: Icons.list_alt_outlined,
                          description: 'Study lesson',
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Completed',
                        style: TextStyle(
                            color: ProColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: ProRoundedContainer(
                        children: [
                          _todoRow(
                            icon: Icons.list_alt_outlined,
                            description: 'Study lesson',
                            isMarked: true,
                          ),
                          const Divider(
                            height: 0.1,
                          ),
                          _todoRow(
                              icon: Icons.access_time,
                              description: 'Jiu-Jitsu',
                              time: '4:00pm',
                              colorBackgroundIcon: ProColors.green,
                              isMarked: true),
                          _todoRow(
                              icon: Icons.access_time,
                              description: 'Jiu-Jitsu',
                              time: '4:00pm',
                              colorBackgroundIcon: ProColors.green,
                              isMarked: true),
                          _todoRow(
                              icon: Icons.access_time,
                              description: 'Jiu-Jitsu',
                              time: '4:00pm',
                              colorBackgroundIcon: ProColors.green,
                              isMarked: true),
                          _todoRow(
                              icon: Icons.access_time,
                              description: 'Jiu-Jitsu',
                              time: '4:00pm',
                              colorBackgroundIcon: ProColors.green,
                              isMarked: true),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _todoRow({
    required IconData icon,
    required String description,
    String? time,
    Color? colorBackgroundIcon,
    bool? isMarked,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: colorBackgroundIcon ?? ProColors.grey,
                    shape: BoxShape.circle),
                child: Icon(
                  icon,
                  size: 24,
                  color: isMarked != null ? ProColors.greyMedium : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: TextStyle(
                        color:
                            isMarked != null ? ProColors.grey : ProColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: isMarked != null
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (time != null)
                      Text(
                        time,
                        style: TextStyle(
                          color: isMarked != null
                              ? ProColors.grey
                              : ProColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          decoration: isMarked != null
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 1.4,
            child: Checkbox(
              value: isMarked ?? false,
              onChanged: (value) {},
              activeColor: ProColors.purple,
            ),
          )
        ],
      ),
    );
  }
}
