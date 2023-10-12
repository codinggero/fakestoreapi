import 'package:flutter/material.dart';
import '/package.dart';

class Profile extends StatefulWidget {
  static String routeName = "/Profile";

  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isDark = false;

  get datas => [
        {
          'title': 'Edit Profile',
          'icon': Icon(Fonts.user_pen.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Adress',
          'icon': Icon(Fonts.location_dot.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Notification',
          'icon': Icon(Fonts.bell.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Payment',
          'icon': Icon(Fonts.money_bill.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Security',
          'icon': Icon(Fonts.shield_exclamation.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Language',
          'icon': Icon(Fonts.language.light),
          'onTap': () {},
          'trailing': SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'English (US)',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF212121)),
                ),
                const SizedBox(width: 16),
                Icon(Fonts.arrow_right.light)
              ],
            ),
          ),
        },
        {
          'title': 'Dark Mode',
          'icon': Icon(Fonts.lightbulb.light),
          'onTap': () {},
          'trailing': Switch(
            value: _isDark,
            activeColor: const Color(0xFF212121),
            onChanged: (value) {
              setState(() {
                _isDark = !_isDark;
              });
            },
          ),
        },
        {
          'title': 'Help Center',
          'icon': Icon(Fonts.handshake_angle.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Invite Friends',
          'icon': Icon(Fonts.share_nodes.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'onTap': () {}
        },
        {
          'title': 'Logout',
          'icon': Icon(Fonts.right_from_bracket.light),
          'trailing': Icon(Fonts.chevron_right.light),
          'titleColor': const Color(0xFFF75555),
          'onTap': () {}
        },
      ];

  Widget buildBody() {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 10.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final option = datas[index];
            return ListTile(
              leading: option['icon'],
              title: Text(
                option['title'],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: option['titleColor'],
                ),
              ),
              trailing: option['trailing'],
              onTap: option['onTap'],
            );
          },
          childCount: datas.length,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverList(
              delegate: SliverChildListDelegate.fixed([
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ProfileHeader(),
                ),
              ]),
            ),
            buildBody(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Picture(
                Assets.images.logo,
                width: 40,
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                iconSize: 28,
                icon: Icon(Fonts.circle_ellipsis.light),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Stack(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: Picture.imageProvider(Assets.images.user),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Icon(Fonts.user_pen.light),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          '${UserModel.username}'.cap(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 8),
        Text(
          '${UserModel.phone}'.cap(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const SizedBox(height: 20),
        Container(
          color: const Color(0xFFEEEEEE),
          height: 1,
          padding: const EdgeInsets.symmetric(horizontal: 24),
        )
      ],
    );
  }
}
