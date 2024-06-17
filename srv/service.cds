using { myApp } from '../db/schema.cds';

service myAppSrv {
  @odata.draft.enabled
  entity Employees as projection on myApp.Employees;
  @odata.draft.enabled
  entity Performance as projection on myApp.Performance;
}