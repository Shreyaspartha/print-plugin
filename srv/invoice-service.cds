using my.bookshop as my from '../db/data-model';

service InvoiceService {

    entity Invoice as
        projection on my.Invoices {
            ID,
            InvoiceNumber,
            fileContent @print.fileContent,
            fileName    @print.fileName,
            qName,
            numberOfCopies,
        }
        actions {
            @print
            action releaseInvoice( @print.fileName fileName: String, @print.fileContent fileContent: String, @print.queue qname : String, @print.numberOfCopies numberOfCopies : Integer);
        }
}