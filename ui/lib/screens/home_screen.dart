import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kantungku/shared/theme/app_theme.dart';
import 'package:kantungku/shared/widget/bottom_nav_bar/main_navbar.dart';
import 'package:kantungku/shared/widget/home_screen/card_reminder.dart';
import 'package:kantungku/shared/widget/home_screen/list_wallet_balance.dart';
import 'package:kantungku/shared/widget/home_screen/section_tittle.dart';

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        backgroundColor: colorScheme.primary,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/UNUSA_0.png"),
                      backgroundColor: colorScheme.onPrimary,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Welcome Galeh!",
                      style: textTheme.bodyLarge!.copyWith(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Text("Total Dana:",
                    style: textTheme.bodyMedium!.copyWith(color: Colors.white)),
                Text("IDR 300.000.000",
                    style: textTheme.bodyMedium!
                        .copyWith(color: Colors.white, fontSize: 20.0)),
              ],
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.leaderboard,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            _ListPantauFitur(),
          ],
        ),
      ),
      bottomNavigationBar: const MainNavbar(),
    );
  }
}

class _ListPantauFitur extends StatelessWidget {
  const _ListPantauFitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Daftar kategori dana',
          action: 'lihat semua',
          onPressed: () {},
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListWalletWithBalance(icon: Icons.money, label: "30.000"),
            ListWalletWithBalance(icon: Icons.money, label: "30.000"),
            ListWalletWithBalance(icon: Icons.money, label: "30.000"),
            ListWalletWithBalance(icon: Icons.money, label: "30.000"),
          ],
        ),
        const SizedBox(height: 16.0),
        SectionTitle(
          title: 'Pengingat Pembayaran',
          action: 'Detail',
          onPressed: () {},
        ),
        const CardReminder(
          label: "Pengingat Pembayaran",
          icon: Icons.add_alert,
        ),
        const SizedBox(height: 16.0),
        SectionTitle(
          title: 'Riwayat Transaksi',
          action: 'Detail',
          onPressed: () {},
        ),
        const CardReminder(
          label: "Riwayat Transaksi",
          icon: Icons.monetization_on_outlined,
        ),
        const SizedBox(height: 16.0),
        SectionTitle(
          title: 'Bajetmu',
          action: 'Detail',
          onPressed: () {},
        ),
        const CardReminder(
          label: "Atur Bajet",
          icon: Icons.offline_pin,
        ),
        const SizedBox(height: 16.0),
        SectionTitle(
          title: 'Simpanan',
          action: 'Detail',
          onPressed: () {},
        ),
        const CardReminder(
          label: "Uang Simpanan",
          icon: Icons.account_balance_wallet,
        ),
      ],
    );
  }
}
