import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset-form"
export default class extends Controller {
  connect() {
    console.log('Reset form');
  }
  reset() {
    this.element.reset()
  }
}
