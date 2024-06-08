class Table {
  int tableNumber;
  int capacity;
  TableStatus status;

  Table(this.tableNumber, this.capacity, this.status);

  @override
  String toString() {
    return "Table Number: $tableNumber, Capacity: $capacity, Status: ${status.toStatusString()}";
  }
}

enum TableStatus { empty, occupied, reserved }

extension TableStatusExtension on TableStatus {
  String toStatusString() {
    switch (this) {
      case TableStatus.empty:
        return "Empty";
      case TableStatus.occupied:
        return "Occupied";
      case TableStatus.reserved:
        return "Reserved";
    }
  }
}

void main(List<String> args) {
  Table table1 = Table(1, 5, TableStatus.empty);
  Table table2 = Table(2, 7, TableStatus.occupied);
  Table table3 = Table(3, 3, TableStatus.reserved);

  print(table1);
  print(table2);
  print(table3);
}
