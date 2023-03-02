import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  connect() {
  }

  loading(event) {
    console.log('loading')
    console.log(event.currentTarget)
    event.currentTarget.parentElement.innerHTML = "<div class='lds-heart'><div></div></div><div><h3 class='text-center'>Reprenez Votre Souffle ! Medi est la pour vous ...</h3></div>";
  }
}
