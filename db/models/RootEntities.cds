// db/models/RootEntities.cds
using { cuid, managed } from '@sap/cds/common';
using { sap.fe.fsCapApp.rootBasis } from './rootBasis'; 
using { sap.fe.fsCapApp.ChildEntities1 } from './ChildEntities1'; 
using { sap.fe.fsCapApp.ChildEntities2 } from './ChildEntities2'; 
using { sap.fe.fsCapApp.ChildEntities3 } from './ChildEntities3'; 
using { sap.fe.fsCapApp.ChartDataEntities } from './ChartDataEntities'; 
using { sap.fe.fsCapApp.AssignedRegions } from './AssignedRegions'; 


namespace sap.fe.fsCapApp;

entity RootEntities : cuid, managed, rootBasis {
    childEntities1  : Composition of many ChildEntities1 on childEntities1.parent = $self;
    association2one : Association to one ChildEntities2;
    childEntities3  : Composition of many ChildEntities3 on childEntities3.parent = $self;
    chartEntities   : Composition of many ChartDataEntities on chartEntities.parent = $self;
    regions         : Composition of many AssignedRegions on regions.root = $self;
}