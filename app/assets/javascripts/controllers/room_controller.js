import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    window.scrollTo(0, document.body.scrollHeight);
  }
}
