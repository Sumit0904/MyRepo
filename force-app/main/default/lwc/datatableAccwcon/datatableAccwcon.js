import { LightningElement, track,wire } from 'lwc';
import getcontacts from '@salesforce/apex/AccountwithRelContacts.getcontacts';
const columns =[ { label: 'Id', fieldName: 'Id' },
{ label: 'Name', fieldName: 'Name', type: 'text', sortable: true },
{ label: 'AccountId', fieldName: 'AccountId', type: 'Id' },
{ label: 'Email', fieldName: 'Email', type: 'email' }];

export default class DatatableAccwcon extends LightningElement {
    @track data = [];
    @track columns = columns;
    @wire(getcontacts,{})
    ApexResponse({ error, data }) {
        if (data) {
            this.data = data;
        } else if (error) {
            //test
        }
    }


}