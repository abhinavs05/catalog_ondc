import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_app/COSNT/const.dart';

class profileScreen extends StatelessWidget{
  const profileScreen ({Key? key}) : super (key : key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Information
              Text(
                'Username: ${usern32ame}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Score: ${score}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Achievements: ${achievements}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),

              // Pie Chart
              Container(
                height: 200,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        color: Colors.blue,
                        title: 'Score',
                        radius: 60,
                        titleStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      PieChartSectionData(
                        color: Colors.green,
                       // value: achievements.toDouble(),
                        title: 'Achievements',
                        radius: 60,
                        titleStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    centerSpaceRadius: 40,
                    sectionsSpace: 0,
                  ),
                ),
              ),

              SizedBox(height: 16),

              // Table
              DataTable(
                columns: [
                  DataColumn(label: Text('Category')),
                  DataColumn(label: Text('Value')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Username')),
                    DataCell(Text(usern32ame)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Score')),
                    DataCell(Text(score.toString())),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Achievements')),
                    DataCell(Text(achievements.toString())),

                    
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



  