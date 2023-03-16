import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user"
export default class extends Controller {

  static targets = ["submitBtn"];

  submit(){
    this.submitBtnTarget.click()
  }
}
