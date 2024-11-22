import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class TaskScreen extends StatefulWidget {
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Name'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: IconButton(
              icon: Icon(Icons.notifications_none_outlined,size: 30,),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task 1',
              style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              '7 Sub-Tasks',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilterChip(label: Text('All'), onSelected: (_) {}),
                FilterChip(label: Text('Completed'), onSelected: (_) {}),
                FilterChip(label: Text('Pending'), onSelected: (_) {}),
                FilterChip(label: Text('InProgress'), onSelected: (_) {}),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  bool isCompleted = index < 6;
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(right:5 ),
                      child: Icon(
                        isCompleted
                            ? Icons.library_books_outlined
                            : Icons.library_books_outlined,
                        color: isCompleted ? Colors.green : Colors.grey,
                      ),
                    ),
                    title: Text('sub-task description'),
                    subtitle: Text('2 hours'),
                    
                  );

},
              ),
              
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home_outlined,size: 30,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.grid_view_outlined,size: 30,),
              onPressed: () {},
            ),
            SizedBox(width: 90),
            IconButton(
              icon: Icon(Icons.person_outline,size: 30,),
              onPressed: () {},
            ),


            SizedBox(width: 0),
            IconButton(
              icon: Icon(Icons.settings,size: 25,),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
