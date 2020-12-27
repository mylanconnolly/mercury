import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["textarea"];

  reset() {
    this.element.reset();
    this.element.querySelector("textarea").focus();
    window.scrollTo(0, document.body.scrollHeight);
  }
}
