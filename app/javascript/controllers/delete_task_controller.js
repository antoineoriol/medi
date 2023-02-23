// import { Controller } from "@hotwired/stimulus"

// // Connects to data-controller="delete-task"
// export default class extends Controller {
//   static targets = ["task"];

//   deleteTask(event) {
//     const taskId = event.currentTarget.dataset.taskId;
//     const url = `/tasks/${taskId}`;

//     document.addEventListener("turbo:load", function() {
//       const buttons = document.querySelectorAll('[data-turbo-action="remove"]');
//       buttons.forEach(function(button) {
//         button.addEventListener("ajax:success", function() {
//           this.closest(".widget").remove();
//           document.getElementById("task-" + task.id).remove();
//         });
//       });
//     });
//   }
// }
