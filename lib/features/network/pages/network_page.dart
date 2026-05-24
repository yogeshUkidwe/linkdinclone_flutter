import 'package:flutter/material.dart';
import 'package:linkdinclone/pages/main/network/widgets/single_network_user_widget.dart';

import '../../../data/network_entity.dart';
import '../../theme/styles.dart';
class NetworkPage extends StatelessWidget {
   NetworkPage({key});
  List<NetworkEntity> networkData = NetworkEntity.networkData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Invitations (0)",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: linkedInBlackText),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: linkedInMediumGrey86888ATextColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyDividerLineClr,
            ),
            const SizedBox(
              height: 15,
            ),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Manage my network",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: linkedInBlackText),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: linkedInMediumGrey86888ATextColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyDividerLineClr,
            ),
            const SizedBox(
              height: 15,
            ),



            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: networkData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  childAspectRatio: 0.6),
              itemBuilder: (context, index) {
                final network = networkData[index];
                return SingleNetworkUserWidget(network: network);
              },
            )
          ],
        ),
      ),
    );