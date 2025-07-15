using { cuid } from '@sap/cds/common';
using { sap.fe.fsCapApp.ChildEntities1 } from './ChildEntities1';

namespace sap.fe.fsCapApp;

entity GrandChildEntities : cuid {
    parent : Association to one ChildEntities1;
    field  : String;
}