import { LightningElement } from 'lwc';
import { showToastEvent } from 'lightning/platformShowToastEvent'; 

export default class Showtoastmessage extends LightningElement {
    mytitle ="Salesforce Toast";
    
    Handleclick(){
            this.showToast(this.mytitle);
          
    }
    showToast(firstfunctionargument) { 
        const event = new showToastEvent(
        { 
        title: firstfunctionargument, message: 'Toast Message', 
        variant: 'success', });

        this.dispatchEvent(event);
        }
       

}