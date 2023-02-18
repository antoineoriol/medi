import { Controller } from "@hotwired/stimulus"
import { patch } from '@rails/request.js'

// Connects to data-controller="task"
export default class extends Controller {

  connect(){
    console.log('hello from task controller')
  }

  async update(event) {
    await patch(event.target.dataset.url);
  }
}
