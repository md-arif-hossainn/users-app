import 'package:flutter/material.dart';
import 'package:sokrio_users/src/core/core.dart';
import 'package:sokrio_users/src/features/users/domain/entities/user.dart';

class DetailsUserHeader extends StatelessWidget {
  final User user;

  const DetailsUserHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.colorScheme.primary,
            context.colorScheme.primary.withValues(alpha: 0.80),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Hero(
              tag: 'user_avatar_${user.id}',
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(color: Colors.white, width: 1.5),
                  borderRadius: BorderRadiusDirectional.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ExtendedImageBuilder(
                  imgURL: user.avatar,
                  borderRadius: BorderRadius.circular(0),
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              user.fullName,
              style: context.textTheme.titleLarge?.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
