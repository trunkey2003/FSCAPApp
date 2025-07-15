using { cuid, Country } from '@sap/cds/common';

namespace sap.fe.fsCapApp;

entity Contacts : cuid {
    name         : String;
    phone        : String;
    building     : String;
    country      : Country;
    street       : String;
    city         : String;
    postCode     : String;
    addressLabel : String;
    photoUrl     : String;
}