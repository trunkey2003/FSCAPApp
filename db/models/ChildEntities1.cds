using { cuid } from '@sap/cds/common';
using { sap.common.Criticality } from '../common';
using { sap.fe.fsCapApp.RootEntities } from './RootEntities';
using { sap.fe.fsCapApp.GrandChildEntities } from './GrandChildEntities';

namespace sap.fe.fsCapApp;

entity ChildEntities1 : cuid {
    parent           : Association to one RootEntities;
    field            : String;
    fieldWithPerCent : Decimal(5, 2);
    booleanProperty  : Boolean default false;
    criticalityValue : Association to one Criticality;
    grandChildren    : Composition of many GrandChildEntities on grandChildren.parent = $self;
}