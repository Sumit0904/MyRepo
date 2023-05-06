import { LightningElement,api } from 'lwc';

export default class Childcomp extends LightningElement {

    @api headerlabel = "This Label is from ChildComp";

}