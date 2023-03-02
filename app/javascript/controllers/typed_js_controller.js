import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Ton super assistant d’auto-medi(cation). "],
      typeSpeed: 50,
      loop: true
    })
  }
}
