import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Top Grey Box
             Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Home",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        const Text(
          "cook maid",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        const Text(
          "Treat yourself to a chef-made meal!",
        ),
      ],
    ),

    // Grey Box
    Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          width: 3,
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ],
),
SizedBox(width: 40,),
              // Categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    // All
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(
                          color: const Color.fromARGB(61, 15, 0, 0),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "All",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Vegetarian
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(
                          color: const Color.fromARGB(61, 15, 0, 0),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Vegetarian",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Non Vegetarian
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(
                          color: const Color.fromARGB(61, 15, 0, 0),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Non-Vegetarian",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // First Chef Container
              Container(
                width: double.infinity,
                height: 130,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [

                    // Chef Image
                     Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),


                    const SizedBox(width: 15),

                    // Chef Information
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Ahmad5",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),

                        const Text(
                          "Services : Non-vegetarian",
                        ),

                        const SizedBox(height: 10),

                        // Message Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                          ),
                          child: const Text(
                            "Message",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Second Chef Container
              Container(
                width: double.infinity,
                height: 130,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [

                    // Chef Image
                    Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),


                    const SizedBox(width: 15),

                    // Chef Information
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Text(
                          "Ahmad5",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),

                        const Text(
                          "Services : Non-vegetarian",
                        ),

                        const SizedBox(height: 10),

                        // Message Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown,
                          ),
                          child: const Text(
                            "Message",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
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