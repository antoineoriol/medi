import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  connect() {
  }

  loading(event) {
    console.log('loading')
    console.log(event.currentTarget)
    event.currentTarget.parentElement.innerHTML = "<div class='d-flex align-items'><div class='lds-heart'><p class='loading-text'>Commence par respirer lentement 🍃</p></div></div>";
  }
}
