import 'package:flutter/material.dart';

class SpotifyPremiumOffer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Background Image with Overlay Text
            Stack(
              children: [
                // Background Image
                Container(

                  height: 300,
                  width: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner.jpg"), // Your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Foreground Content
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 160),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Premium Label
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/spoti.png", // Use Spotify logo if you want
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 6),
                          const Text(
                            "Premium",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),

                      // Offer Heading
                      const Text(
                        "Listen without limits. Try 3 \n months of Premium Individual \n for ₹139 with Spotify.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Limited Time Offer Button
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.notifications_active,
                                color: Colors.blue, size: 18),
                            SizedBox(width: 6),
                            Text(
                              "Limited time offer",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 🔹 Try Offer Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Try 3 months for ₹139",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 Offer Description Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "₹139 for 3 months, then ₹139 per month after. Offer only available if you \n haven’t tried Premium before and you subscribe via Spotify. Offers via \n Google Play may differ. Terms apply.\n\nOffer ends 23 September 2025.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 Why Join Premium Section
            Container(
              width: 400,
              height: 280,
              color: Color(0xFF333333),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Why join Premium?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.music_off,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Ad-free music listening',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.download,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Download to listen offline',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.shuffle,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Play songs in any order',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.headset_outlined,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('High audio quality',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.groups,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Listen with friends in real time',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.playlist_play,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text('Listen with friends in real time',style: TextStyle(color: Colors.white,fontSize: 10),)
                      ],
                    ),

                  ],
                ),
              ),
              


            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Text('Available plans',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
              ,

            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                height: 450,
                color: Color(0xFF333333),

                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/spoti.png", // Use Spotify logo if you want
                          height: 15,
                          width: 15,

                        ),
                        const SizedBox(width: 6),
                        const Text(
                          "Premium",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Individual',style: TextStyle(
                          color: Color(0xFFF7CAD0),
                          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),


              ),
            )



            // 🔹 Features List



          ],
        ),
      ),
    );
  }

  // 🔹 Helper Widget for Features
//   static Widget _buildFeature(IconData icon, String text) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//       child: Row(
//         children: [
//           Icon(icon, color: Colors.white, size: 22),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Text(
//               text,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
}
