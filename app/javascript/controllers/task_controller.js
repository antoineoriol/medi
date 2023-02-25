import { Controller } from "@hotwired/stimulus"
import { patch } from '@rails/request.js'

// Connects to data-controller="task"
export default class extends Controller {

  static targets = [ "card", "score", "result" ]

  connect() {
    this.cardsLength = this.cardTarget.children.length
    console.log("coucou")
    const score = Math.round((100 / this.cardsLength)*100) / 100
    console.log(this.cardsLength)
    this.scoreTargets.forEach((scoreTarget) => {
      scoreTarget.innerText = score
    })
    this.calculate()
  }

  async update(event) {
    await patch(event.target.dataset.url);
    this.calculate()
  }

  // calculate(){
  //   let result = 0;
  //   this.scoreTargets.forEach(score => {
  //     if (score.closest('.card').querySelector('input').checked) {
  //       result += parseInt(score.innerText)
  //     }
  //   })

  //   this.resultTarget.innerText = `Nombre de points : ${result}%`
  // }

  calculate(){
    let result = 0;
    this.scoreTargets.forEach(score => {
      if (score.closest('.card').querySelector('input').checked) {
        result += parseInt(score.innerText)
      }
    })
    console.log(result)
    let progress = Math.ceil(result)
    this.resultTarget.innerText = `${progress}%`

    let progressBar = this.targets.find("result")
    let width = progress + "%"
    progressBar.setAttribute("aria-valuenow", progress)
    progressBar.style.width = width
  }

}
