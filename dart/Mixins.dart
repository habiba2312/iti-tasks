/*
Task:
Create two mixins:
• Logger → has a method log(String msg) that prints [LOG]: msg.
• Printer → has a method printData(String data) that prints [DATA]: data.
Create a class Report that uses both mixins and adds its own method
generateReport().
• Test by creating a Report object, logging messages, and printing data
*/
mixin Logger {
  void log(String msg) {
    print("[LOG]: $msg");
  }
}
mixin Printer {
  void printData(String data) {
    print("[DATA]: $data");
  }
}
class Report with Logger, Printer {
  void generateReport() {
    print("Generating report");
  }
}

void main() {
  Report report = Report();

  report.generateReport();        
  report.log("Report started");   
  report.printData("Report data");
}

