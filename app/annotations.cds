using { myAppSrv } from '../srv/service.cds';

annotate myAppSrv.Employees with @UI.DataPoint #firstName: {
  Value: firstName,
  Title: 'First Name',
};
annotate myAppSrv.Employees with @UI.DataPoint #lastName: {
  Value: lastName,
  Title: 'Last Name',
};
annotate myAppSrv.Employees with @UI.DataPoint #age: {
  Value: age,
  Title: 'Age',
};
annotate myAppSrv.Employees with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#firstName', ID: 'FirstName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#lastName', ID: 'LastName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#age', ID: 'Age' }
];
annotate myAppSrv.Employees with @UI.HeaderInfo: {
  TypeName: 'Employee',
  TypeNamePlural: 'Employees',
  Title: { Value: employeesID }
};
annotate myAppSrv.Employees with {
  ID @UI.Hidden
};
annotate myAppSrv.Employees with @UI.Identification: [{ Value: employeesID }];
annotate myAppSrv.Employees with {
  employeesID @Common.Label: 'Id';
  firstName @Common.Label: 'First Name';
  lastName @Common.Label: 'Last Name';
  age @Common.Label: 'Age';
  position @Common.Label: 'Position';
  Performance @Common.Label: 'Performances'
};
annotate myAppSrv.Employees with {
  ID @Common.Text: { $value: employeesID, ![@UI.TextArrangement]: #TextOnly };
};
annotate myAppSrv.Employees with @UI.SelectionFields: [
  employeesID
];
annotate myAppSrv.Employees with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: employeesID },
    { $Type: 'UI.DataField', Value: firstName },
    { $Type: 'UI.DataField', Value: lastName },
    { $Type: 'UI.DataField', Value: age },
    { $Type: 'UI.DataField', Value: position }
];
annotate myAppSrv.Employees with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: employeesID },
    { $Type: 'UI.DataField', Value: firstName },
    { $Type: 'UI.DataField', Value: lastName },
    { $Type: 'UI.DataField', Value: age },
    { $Type: 'UI.DataField', Value: position }
]};
annotate myAppSrv.Employees with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];
annotate myAppSrv.Performance with {
  employee @Common.ValueList: {
    CollectionPath: 'Employees',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: employee_ID,
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'employeesID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'firstName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'lastName'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'position'
      },
    ],
  }
};
annotate myAppSrv.Performance with @UI.DataPoint #rating: {
  Value: rating,
  Title: 'Rating',
};
annotate myAppSrv.Performance with @UI.DataPoint #comments: {
  Value: comments,
  Title: 'Comments',
};
annotate myAppSrv.Performance with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#rating', ID: 'Rating' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#comments', ID: 'Comments' }
];
annotate myAppSrv.Performance with @UI.HeaderInfo: {
  TypeName: 'Performance',
  TypeNamePlural: 'Performances',
  Title: { Value: performanceID }
};
annotate myAppSrv.Performance with {
  ID @UI.Hidden
};
annotate myAppSrv.Performance with @UI.Identification: [{ Value: performanceID }];
annotate myAppSrv.Performance with {
  performanceID @Common.Label: 'Id';
  rating @Common.Label: 'Rating';
  comments @Common.Label: 'Comments';
  employee @Common.Label: 'Employee'
};
annotate myAppSrv.Performance with {
  ID @Common.Text: { $value: performanceID, ![@UI.TextArrangement]: #TextOnly };
  employee @Common.Text: { $value: employee.employeesID, ![@UI.TextArrangement]: #TextOnly };
};
annotate myAppSrv.Performance with @UI.SelectionFields: [
  employee_ID
];
annotate myAppSrv.Performance with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: performanceID },
    { $Type: 'UI.DataField', Value: rating },
    { $Type: 'UI.DataField', Value: comments },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
];
annotate myAppSrv.Performance with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ID },
    { $Type: 'UI.DataField', Value: performanceID },
    { $Type: 'UI.DataField', Value: rating },
    { $Type: 'UI.DataField', Value: comments },
    { $Type: 'UI.DataField', Label: 'Employee', Value: employee_ID }
]};
annotate myAppSrv.Performance with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];