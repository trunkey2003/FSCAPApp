using { cuid } from '@sap/cds/common';
using { sap.common.Region } from '../common';
using { sap.fe.fsCapApp.RootEntities } from './RootEntities';

namespace sap.fe.fsCapApp;

entity AssignedRegions : cuid {
    root   : Association to one RootEntities;
    region : Region;
}