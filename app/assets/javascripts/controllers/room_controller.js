import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    this.element.scrollTo(0, this.element.scrollHeight);
  }
}
