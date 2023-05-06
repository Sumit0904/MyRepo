import { LightningElement,track } from 'lwc';

export default class InputLwcexample extends LightningElement {
    @track message ;

    handleChange(event){
        this.message = event.target.value;
        console.log(message);
    }
}