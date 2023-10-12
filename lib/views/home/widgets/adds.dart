import 'package:flutter/material.dart';

class Adds extends StatefulWidget {
  static String routeName = "/Adds";

  final List adds;

  const Adds({super.key, required this.adds});

  @override
  State<Adds> createState() => AddsState();
}

class AddsState extends State<Adds> {
  int selectIndex = 0;

  Widget _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.adds.length; i++) {
      list.add(i == selectIndex ? indicator(true) : indicator(false));
    }
    return Container(
      height: 181,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: list,
      ),
    );
  }

  Widget indicator(bool isActive) {
    return SizedBox(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        height: 4.0,
        width: isActive ? 16 : 4.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          color: isActive ? const Color(0XFF101010) : const Color(0xFFBDBDBD),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            height: 181,
            decoration: const BoxDecoration(
              color: Color(0xFFE7E7E7),
              borderRadius: BorderRadius.all(Radius.circular(32)),
            ),
            child: PageView.builder(
              itemBuilder: (context, index) {
                final data = widget.adds[index];
                return SpecialOfferWidget(context, data: data, index: index);
              },
              itemCount: widget.adds.length,
              allowImplicitScrolling: true,
              onPageChanged: (value) {
                setState(() => selectIndex = value);
              },
            ),
          ),
          _buildPageIndicator()
        ]),
      ],
    );
  }
}

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget(
    this.context, {
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  final dynamic data;
  final BuildContext context;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['discount'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const SizedBox(height: 12),
                Text(
                  data['title'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 12),
                Text(
                  data['detail'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        Image.asset(data['icon']),
      ],
    );
  }
}
