import 'package:flutter/material.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';
import 'package:sokrio_users/src/features/users/presentation/widgets/details_info_card.dart';

class DetailsInfoList extends StatelessWidget {
  final User user;

  const DetailsInfoList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          DetailsInfoCard(
            title: 'Email',
            value: user.email,
          ),
          DetailsInfoCard(
            title: 'First Name',
            value: user.firstName,
          ),
          DetailsInfoCard(
            title: 'Last Name',
            value: user.lastName,
          ),
          DetailsInfoCard(
            title: 'User ID',
            value: '#${user.id}',
          ),
        ],
      ),
    );
  }
}
