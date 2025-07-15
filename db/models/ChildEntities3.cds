using { cuid } from '@sap/cds/common';
using { sap.fe.fsCapApp.RootEntities } from './RootEntities';

namespace sap.fe.fsCapApp;

entity ChildEntities3 : cuid {
    parent : Association to one RootEntities;
    field  : String;
}