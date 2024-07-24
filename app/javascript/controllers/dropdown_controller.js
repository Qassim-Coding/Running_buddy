import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dropdown"
export default class extends Controller {
  static targets = ["head", "list"]
  connect() {
    console.log("coucou")
    console.log(this.listTarget)
  }
  toggleList() {
    this.listTarget.classList.toggle("d-none")
  }
}
