package com.sap.cds.cds.services.handlers;

import cds.gen.invoiceservice.InvoiceReleaseInvoiceContext;
import com.sap.cds.services.handler.annotations.After;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.sap.cds.services.handler.EventHandler;

import cds.gen.invoiceservice.InvoiceService_;

@Component
@Service(InvoiceService_.CDS_NAME)
public class InvoiceServiceHandler implements EventHandler {
    @After(event = InvoiceReleaseInvoiceContext.CDS_NAME)
    public void releaseInvoice(InvoiceReleaseInvoiceContext context) {
        var invoiceContext = context;
        var vcapServices = System.getenv("VCAP_SERVICES");

    }
}
