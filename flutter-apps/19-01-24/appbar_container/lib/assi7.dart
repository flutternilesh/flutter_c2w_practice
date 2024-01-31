import 'package:flutter/material.dart';

class assi7 extends StatelessWidget {
  const assi7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            children: [
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Maharana_Pratap_By_Surendra_Singh_Shaktawat.jpg/1200px-Maharana_Pratap_By_Surendra_Singh_Shaktawat.jpg",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                "https://m.media-amazon.com/images/I/614BHZ5QQBL._AC_UF1000,1000_QL80_.jpg",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZObMyXnSViLjI3sLIqpvFS99pv-vx_RxXAg&usqp=CAU",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSatN4CD9KILJLBLoxcGPLmRiZxXPGPgQooIQ&usqp=CAU",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.network(
                "https://i0.wp.com/www.opindia.com/wp-content/uploads/2023/11/PM_MOdi_LK_ADVANI2.jpg?resize=696%2C398&ssl=1",
                width: 150,
                height: 300,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
