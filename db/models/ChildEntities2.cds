using { cuid, Country } from '@sap/cds/common';

namespace sap.fe.fsCapApp;

@cds.odata.valuelist
entity ChildEntities2 : cuid {
    stringProperty  : String;
    integerProperty : Integer;
    decimalProperty : Decimal(5, 3);
    country         : Country;
}