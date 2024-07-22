import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="notif"
export default class extends Controller {
  connect() {
    console.log("coucou")
    if (this.element.innerText === 'relationship accepted!') {
      Swal.fire({
        title: "Relationship accepted",
        text: "",
        icon: "success"
      });
    }

  }
}
