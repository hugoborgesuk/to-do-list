import { Controller } from "@hotwired/stimulus"

export default class ShowInputController extends Controller {
  connect() {
    console.log("connected");

    const myButton = document.getElementById("my_button");
    let itemsContainer = document.getElementById("form");
    let index = document.querySelectorAll("items").length;

    myButton.addEventListener("click", () => {
      console.log(someString);

      const div = document.createElement("div");
      div.classList.add("items");

      div.innerText =
      '<lable for="list_items_attribute_${index}_name">items</lable>'
      '<input type="text" name="list[items_attributes][${index}][name]" id="list_items_attribute_${index}_name"></input>';

      itemsContainer.appendChild(div);
      index++
    })
  }
}
