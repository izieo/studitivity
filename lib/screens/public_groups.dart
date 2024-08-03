import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studitivity/screens/group.dart';

class PublicGroupsView extends StatelessWidget {
  const PublicGroupsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: Get.back,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
              size: 24.0,
            ),
          ),
        ),
        title: const Text(
          'Public Groups',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.search,
                color: Colors.blue,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView(
                  children: const [
                    StudyGroupCard(
                      name: 'Jerry\'s Study Group',
                      pictureUrl: 'https://images.stockcake.com/public/6/c/0/6c059b01-9f0f-4d29-b56e-1cf1bac44156_large/zebras-at-dusk-stockcake.jpg',
                      numOnline: 1,
                      numMembers: 238,
                      members: [
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                        'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                      ],
                    ),
                    SizedBox(height: 20.0),
                    StudyGroupCard(
                      name: 'Izie\'s Study Group',
                      pictureUrl: 'https://images.stockcake.com/public/0/e/c/0ec46d36-1e97-484d-9332-f1bb231b80d2_large/flamingos-at-dusk-stockcake.jpg',
                      numOnline: 120,
                      numMembers: 321,
                      members: [
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                        'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                        'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                        'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga=NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6=MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                      ],
                    ),
                    SizedBox(height: 20.0),
                    StudyGroupCard(
                                      name: 'Gloria\'s Study Group',
                          pictureUrl: 'https://images.stockcake.com/public/2/8/8/288ea098-e768-4db2-81c8-9683ce7e0e5f_large/balloon-at-dusk-stockcake.jpg',
                                      numOnline: 12,
                                      numMembers: 32,
                                      members: [
                            'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?cs=srgb&dl=pexels-moh-adbelghaffar-771742.jpg&fm=jpg&_gl=1*1n4jr4g*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                            'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?cs=srgb&dl=pexels-andrewpersonaltraining-697509.jpg&fm=jpg&_gl=1*85wvqc*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                            'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg&_gl=1*svk2ei*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NzAyOC4wLjAuMA..',
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg&fm=jpg&_gl=1*17z916h*_ga*NzcyNDA1OTcuMTcyMTc5Mzk2Mg..*_ga_8JE65Q40S6*MTcyMTc5Mzk2Mi4xLjEuMTcyMTc5NjA0My4wLjAuMA..',
                                      ],
                                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StudyGroupCard extends StatelessWidget {
  const StudyGroupCard({
    super.key,
    required this.name,
    required this.pictureUrl,
    required this.numOnline,
    required this.numMembers,
    required this.members,
  });

  final String name;
  final String pictureUrl;
  final int numOnline;
  final int numMembers;
  final List<String> members;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const GroupDetailsView()),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          image: DecorationImage(
            image: NetworkImage(pictureUrl),
            fit: BoxFit.cover,
          )
        ),
        width: Get.width * 0.7,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: const EdgeInsets.only(right: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.more_horiz),
                Row(
                  children: [
                    const Icon(Icons.group),
                    const SizedBox(width: 5.0),
                    Text('$numMembers'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  height: 8.0,
                  width: 8.0,
                ),
                const SizedBox(width: 5.0),
                Text('$numOnline online', style: const TextStyle(fontSize: 15.0)),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: members.map((member) => Container(
                            margin: const EdgeInsets.only(right: 5.0),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(member),
                              radius: 15.0,
                            ),
                  )).toList(),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(color: const Color.fromARGB(255, 97, 44, 220))
                  ),
                  child: const Text(
                    'Enter',
                    style: TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 97, 44, 220)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
