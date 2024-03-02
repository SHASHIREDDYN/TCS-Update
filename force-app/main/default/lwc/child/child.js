import { LightningElement, api } from 'lwc';

export default class Child extends LightningElement 
{
 
    Uppercase='default value';

    @api
    get itemname(){
        return this.Uppercase;
    }

    set itemname(value){
      this.Uppercase=value.toUpperCase();
    }
}