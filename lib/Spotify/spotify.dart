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
            // 🔹 Banner Section
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/banner.jpg"),
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
                            "assets/images/spoti.png",
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
                        "Listen without limits. Try 3 \nmonths of Premium Individual \nfor ₹139 with Spotify.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Limited Time Offer Tag
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
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF7CAD0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // Elliptical shape
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    elevation: 0,
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
                "₹139 for 3 months, then ₹139 per month after. Offer only available if you \n"
                    "haven’t tried Premium before and you subscribe via Spotify. Offers via \n"
                    "Google Play may differ. Terms apply.\n\nOffer ends 23 September 2025.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 Why Join Premium Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF333333),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Why join Premium?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),
                  _buildFeature(Icons.music_off, "Ad-free music listening"),
                  _buildFeature(Icons.download, "Download to listen offline"),
                  _buildFeature(Icons.shuffle, "Play songs in any order"),
                  _buildFeature(Icons.headset_outlined, "High audio quality"),
                  _buildFeature(Icons.groups, "Listen with friends in real time"),
                  _buildFeature(Icons.playlist_play, "Organise listening queue"),
                ],
              ),
            ),

            // 🔹 Available Plans Heading
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Available plans',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),

            // 🔹 Premium Individual Plan Card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // 🔹 Main Card Container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Premium Label
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/spoti.png",
                              height: 18,
                              width: 18,
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
                        const SizedBox(height: 10),

                        const Text(
                          'Individual',
                          style: TextStyle(
                            color: Color(0xFFF7CAD0),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          '₹139 for 3 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '₹139/month after',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        // const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            height: 0.2,
                            width: double.infinity, // You can adjust based on your design
                            color: Colors.white,
                          ),
                        ),

                        const Text('• 1 Premium account',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Cancel anytime',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Subscribe or one-time payment',
                            style: TextStyle(color: Colors.white)),

                        const SizedBox(height: 15),

                        // Pink Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF7CAD0),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Try 3 months for ₹139',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Transparent Button with White Border
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            child: const Text(
                              'One-time payment',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('₹139 for 3 months, then ₹139 per month after.'
                            'Offer only available \n if you haven’t tried Premium before.'
                            'and you subscribe via Spotify.\n Offers via Google Play may differ.For up to 6 family memebers \n residing at the same address.Terms apply'
                          ,style: TextStyle(color: Colors.grey,fontSize: 10),)
                      ],
                    ),
                  ),

                  // 🔹 Pink Top-Left Tag
                  Positioned(
                    top: 2,
                    left: -1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF7CAD0), // Pink color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),

                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        '₹139 for 3 months',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // 🔹 Main Card Container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Premium Label
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/spoti.png",
                              height: 18,
                              width: 18,
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
                        const SizedBox(height: 10),

                        const Text(
                          'Family',
                          style: TextStyle(
                              color: Color(0xFF6CB4EE),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          '₹299 for 2 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '₹299/month after',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        // const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            height: 0.2,
                            width: double.infinity, // You can adjust based on your design
                            color: Colors.white,
                          ),
                        ),

                        const Text('• Up to 6 Premium accounts',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Control content marked as explicit',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Cancel anytime',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Subscribe or one-time payment',
                            style: TextStyle(color: Colors.white)),

                        const SizedBox(height: 15),

                        // Pink Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6CB4EE),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Try 2 months for ₹299',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Transparent Button with White Border
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            child: const Text(
                              'One-time payment',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('₹139 for 3 months, then ₹139 per month after.'
                            'Offer only available \n if you haven’t tried Premium before.'
                          'and you subscribe via Spotify.\n Offers via Google Play may differ.For up to 6 family memebers \n residing at the same address.Terms apply'
                          ,style: TextStyle(color: Colors.grey,fontSize: 10),)
                      ],
                    ),
                  ),

                  // 🔹 Pink Top-Left Tag
                  Positioned(
                    top: 2,
                    left: -1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: const BoxDecoration(
                        color: Color(0xFF6CB4EE), // Pink color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),

                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        '₹299 for 2 months',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // 🔹 Main Card Container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Premium Label
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/spoti.png",
                              height: 18,
                              width: 18,
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
                        const SizedBox(height: 10),

                        const Text(
                          'Duo',
                          style: TextStyle(
                            color: Color(0xFFE4D00A),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          '₹179 for 2 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '₹179/month after',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        // const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            height: 0.2,
                            width: double.infinity, // You can adjust based on your design
                            color: Colors.white,
                          ),
                        ),

                        const Text('• 2 Premium accounts',
                            style: TextStyle(color: Colors.white)),

                        const Text('• Cancel anytime',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Subscribe or one-time payment',
                            style: TextStyle(color: Colors.white)),

                        const SizedBox(height: 15),

                        // Pink Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE4D00A),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Try 2 months for ₹179',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Transparent Button with White Border
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(color: Colors.white, width: 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                            child: const Text(
                              'One-time payment',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('₹139 for 3 months, then ₹139 per month after.'
                            'Offer only available \n if you haven’t tried Premium before.'
                            'and you subscribe via Spotify.\n Offers via Google Play may differ.For up to 6 family memebers \n residing at the same address.Terms apply'
                          ,style: TextStyle(color: Colors.grey,fontSize: 10),)
                      ],
                    ),
                  ),

                  // 🔹 Pink Top-Left Tag
                  Positioned(
                    top: 2,
                    left: -1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE4D00A), // Pink color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),

                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        '₹179 for 2 months',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  // 🔹 Main Card Container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF333333),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Premium Label
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/spoti.png",
                              height: 18,
                              width: 18,
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
                        const SizedBox(height: 10),

                        const Text(
                          'Student',
                          style: TextStyle(
                            color: Color(0xFFEE82EE),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),

                        const Text(
                          '₹69 for 2 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          '₹69/month after',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                        // const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            height: 0.2,
                            width: double.infinity, // You can adjust based on your design
                            color: Colors.white,
                          ),
                        ),

                        const Text('• 1 verified Premium accounts',
                            style: TextStyle(color: Colors.white)),

                        const Text('• Discount for eligible students',
                            style: TextStyle(color: Colors.white)),
                        const Text('• Cancel anytime',
                            style: TextStyle(color: Colors.white)),

                        const SizedBox(height: 15),

                        // Pink Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEE82EE),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Try 2 months for ₹69',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),

                        // Transparent Button with White Border
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: OutlinedButton(
                        //     onPressed: () {},
                        //     style: OutlinedButton.styleFrom(
                        //       side: const BorderSide(color: Colors.white, width: 1),
                        //       shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(40),
                        //       ),
                        //       padding: const EdgeInsets.symmetric(vertical: 14),
                        //     ),
                        //     child: const Text(
                        //       'One-time payment',
                        //       style: TextStyle(
                        //         fontSize: 16,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 10,),
                        Text('₹139 for 3 months, then ₹139 per month after.'
                            'Offer only available \n if you haven’t tried Premium before.'
                            'and you subscribe via Spotify.\n Offers via Google Play may differ.For up to 6 family memebers \n residing at the same address.Terms apply'
                          ,style: TextStyle(color: Colors.grey,fontSize: 10),)
                      ],
                    ),
                  ),

                  // 🔹 Pink Top-Left Tag
                  Positioned(
                    top: 2,
                    left: -1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: const BoxDecoration(
                        color: Color(0xFFEE82EE), // Pink color
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),

                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        '₹179 for 2 months',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )



          ],
        ),
      ),
    );
  }

  // 🔹 Helper Widget for Features
  Widget _buildFeature(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
