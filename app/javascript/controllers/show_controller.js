import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show"
export default class extends Controller {
  connect() {
    document.getElementById('scrollDownArrow').addEventListener('click', () => {
      scroll-behavior: smooth;   }
    )
  }
}
