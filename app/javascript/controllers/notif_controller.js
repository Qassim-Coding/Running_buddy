import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

// Connects to data-controller="notif"
export default class extends Controller {
  connect() {
    console.log("coucou")
    console.log(this.element.innerText.trim())
    if (this.element.innerText.trim() === 'relationship accepted!') {
      Swal.fire({
        title: "New Running Buddy",
        text: "🥳 Congratulations you are now Running Buddies! You can schedule meetings and talk to eachother! 🥳",
        icon: "success"
      });
    }

  }
}
