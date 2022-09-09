import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myicclyon/src/components/personal_infos_list_component.dart';
import 'package:myicclyon/src/models/person_model.dart';
import 'package:myicclyon/src/utils/constants.dart';
import 'package:myicclyon/src/widgets/personal_infos_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sliver_tools/sliver_tools.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({
    super.key,
    required this.person,
  });
  final PersonModel person;

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Fiche STAR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: () {
                if (kDebugMode) {
                  print("Changer la photo de profil");
                }
              },
              child: CircleAvatar(
                backgroundColor: ColorsConstant.vividPurple,
                radius: 60.0,
                child: Text(
                  "${widget.person.firstName[0].toUpperCase()}${widget.person.lastName[0].toUpperCase()}",
                  style: TextStyle(
                    color: ColorsConstant.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  "${widget.person.firstName} ${widget.person.lastName}",
                  style: TextStyle(
                    fontSize: FontSizeConstants.medium,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Divider(
              thickness: 2.0,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                bottom: 8.0,
              ),
              child: Text(
                "Informations Personnelles",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: FontSizeConstants.medium,
                ),
              ),
            ),
          ),
          PersonalInfosListComponent(
            children: [
              PersonalInfosWidget(
                label: widget.person.phone,
                icon: Icons.phone,
              ),
              PersonalInfosWidget(
                label: widget.person.email,
                icon: Icons.email,
              ),
              PersonalInfosWidget(
                label: "${DateTime.now().year - widget.person.birthYear} ans",
                icon: Icons.calendar_today,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                top: 20.0,
                bottom: 10.0,
              ),
              child: Text(
                "Départements",
                style: TextStyle(
                  fontSize: FontSizeConstants.medium,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          PersonalInfosListComponent(
            children: [
              PersonalInfosWidget(
                label: "Protocole",
                icon: Icons.people,
                iconColor: ColorsConstant.vividPurple,
              ),
              PersonalInfosWidget(
                label: "Solutions Digitales",
                icon: Icons.star,
                iconColor: ColorsConstant.vividRed,
              ),
              PersonalInfosWidget(
                label: "Direction Projets Informatiques",
                icon: Icons.star,
                iconColor: ColorsConstant.vividRed,
              ),
              PersonalInfosWidget(
                label: "Familles d'Impact",
                icon: Icons.people,
                iconColor: ColorsConstant.vividPurple,
              ),
            ],
          ),
        const SliverToBoxAdapter(
          child: SizedBox(height: 50,),
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsConstant.vividPurple,
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 300.0,
                decoration: BoxDecoration(
                  color: ColorsConstant.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${widget.person.firstName} ${widget.person.lastName}",
                          style: TextStyle(
                            fontSize: FontSizeConstants.large,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      QrImage(
                        data: widget.person.token,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.qr_code,
          size: 30.0,
        ),
      ),
    );
  }
}
