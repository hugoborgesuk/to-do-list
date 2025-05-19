import { Controller } from "@hotwired/stimulus"

export default class ShowInputController extends Controller {
  connect() {
    console.log("connected");

    const myButton = document.getElementById("my_button");
    let itemsContainer = document.getElementById("form");
    let index = document.querySelectorAll(".items").length || 0;

    myButton.addEventListener("click", () => {
      console.log(myButton);

      const div = document.createElement("div");
      div.classList.add("items");

      div.innerHTML =
      `<lable for="list_items_attribute_${index}_name">items</lable>
      <input type="text" name="list[items_attributes][${index}][name]" id="list_items_attribute_${index}_name"></input>
      <button type="button" class="btn btn-danger" data-action="click->remove-input#remove">Delete</button>`;

      itemsContainer.appendChild(div);
      index++
    })
  }
}
