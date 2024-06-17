namespace myApp;

entity Employees {
  key ID: UUID;
  employeesID: String(50) @assert.unique @mandatory;
  firstName: String(50);
  lastName: String(50);
  age: Integer;
  position: String(50);
  Performance: Association to many Performance on Performance.employee = $self;
}

entity Performance {
  key ID: UUID;
  performanceID: String(50) @assert.unique @mandatory;
  rating: Decimal;
  comments: String;
  employee: Association to Employees;
}
