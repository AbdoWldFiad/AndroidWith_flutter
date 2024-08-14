import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_receipte.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
  // @override
  // void initState(){
  //   super.initStat();
  // }
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliveryProgressPage'),
      backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _builtButtonNavBar(context),
      body: const Column(
        children: [
          MyReceipte()
        ],
      ),
    );
  }

  //custom button Nav Bar to message / Call delivery
  Widget _builtButtonNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // profile of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle),
            child: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.person)),
          ),
          //driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hossam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary)),
              Text("Driver",style: TextStyle(color: Theme.of(context).colorScheme.primary))
            ]),
          const Spacer(),
          Row(
            children: [
              //message driver
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: (){},
                    icon:  Icon(Icons.message_outlined,color: Theme.of(context).colorScheme.primary,)),
              ),
              const SizedBox(width: 15),
              // call driver
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    shape: BoxShape.circle),
                child: IconButton(
                    onPressed: (){},
                    icon:  const Icon(Icons.call,color: Colors.green,)),
              ),
            ],
          )

        ],
      ),
    );
  }
}
