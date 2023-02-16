import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "card" ]

  disable() {
    this.element.closest('.card').classList.add('disabled');
    const checkbox = this.element.querySelector(`#disableCard-${this.element.dataset.taskId}`)
    checkbox.checked = !checkbox.checked
    if (this.checked) {
      this.element.querySelector('.card-title h3').innerText = 'Valide';
    } else {
      this.element.querySelector('.card-title h3').innerText = 'Tasks';
      card.classList.remove('disabled');
    }
  }

}


// disable() {
//   const disableCardCheckbox = document.getElementById("disableCard");
//   const cards = document.querySelector(".card");

//   disableCardCheckbox.addEventListener("change", function() {
//     console.log('marcos');
//     for (let i = 0; i < cards.length; i++) {
//       if (this.checked) {
//         cards[i].classList.add("disabled");
//       } else {
//         cards[i].classList.remove("disabled");
//       }
//     }
//   });
// }
