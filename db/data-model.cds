namespace my.bookshop;

using {cuid} from '@sap/cds/common';

entity Books {
  key ID    : Integer;
      title : localized String;
      stock : Integer;
}

entity Invoices : cuid {
  key InvoiceNumber  : String;
      fileName       : String;
      fileContent    : LargeBinary;
      qName          : String;
      numberOfCopies : Integer;
}
