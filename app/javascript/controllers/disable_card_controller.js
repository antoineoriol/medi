// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static targets = [ "card" ]

//   connect(){
//     console.log('hello from disable card controller')
//   }

//   disable() {
//     this.element.closest('.card').classList.add('disabled');
//     const checkbox = this.element.querySelector(`#disableCard-${this.element.dataset.taskId}`)
//     // checkbox.checked = !checkbox.checked
//   }

  // updateStatus() {
  //   const taskId = this.element.dataset.taskId
  //   const status = this.element.querySelector(`#disableCard-${taskId}`).checked

  //   fetch(`/questions/:question_id/answers/:answer_id/tasks/${taskId}`, {
  //     method: 'PATCH',
  //     headers: {
  //       'Content-Type': 'application/json',
  //       'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
  //     },
  //     body: JSON.stringify({ task: { status: status } })
  //   })
  //   .then(response => response.json())
  //   .then(data => {
  //     console.log(data)
  //     // handle the updated data, such as updating the task's UI or any other necessary updates
  //   })
  //   .catch(error => {
  //     console.error(error)
  //     // handle any errors that may occur during the AJAX request
  //   })
  // }
// }
