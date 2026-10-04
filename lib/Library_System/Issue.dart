import 'package:flutter/material.dart';

class Issue extends StatelessWidget {
  const Issue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 30, 153),

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.manage_accounts,
              color: Colors.purple,
            ),
            const SizedBox(width: 10),

            const Text(
              "Issue Books Record",
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(31),
          width: 800,
          height: 500,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),

          child: Column(
            children: [

              // Book Name
              TextField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.book,
                    color: Colors.purple,
                  ),
                  labelText: "Book Name",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  hintText: "Enter your book",
                ),
              ),

              const SizedBox(height: 20),

              // Student Name
              TextField(
                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  labelText: "Student Name",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  hintText: "Enter Name",
                ),
              ),

              const SizedBox(height: 20),

              // Price
              TextField(
                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.money,
                    color: Colors.purple,
                  ),
                  labelText: "Price",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  hintText: "Enter Price",
                ),
              ),

              const SizedBox(height: 20),

              // Issue Date
              TextField(
                readOnly: true,

                decoration: const InputDecoration(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Colors.purple,
                  ),
                  labelText: "Issue Date",
                  labelStyle: TextStyle(
                    color: Colors.purple,
                  ),
                  hintText: "Select Issue Date",
                ),

                onTap: () async {
                  DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030),
                  );

                  if (date != null) {
                    print(
                      "${date.day}/${date.month}/${date.year}",
                    );
                  }
                },
              ),

              const SizedBox(height: 30),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Delete Button
                  ElevatedButton.icon(
                    onPressed: () {},

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),

                    icon: const Icon(
                      Icons.ios_share_outlined,
                      color: Colors.white,
                    ),

                    label: const Text(
                      "Issue Book",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Read Button
                
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}