import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ['fileInput','fileFeedback', 'fileName', "submitButton"]

    fileUploaded() {
        console.log("Stimulus controller Works")
        if (this.fileInputTarget.files.length > 0) {
            this.fileNameTarget.textContent = this.fileInputTarget.files[0].name;
            this.fileFeedbackTarget.classList.remove("opacity-0");
            this.fileFeedbackTarget.classList.add("opacity-100");
            this.changeSubmitButtonState()
        } else {
            this.fileFeedbackTarget.classList.remove("opacity-100");
            this.fileFeedbackTarget.classList.add("opacity-0");
            this.fileNameTarget.textContent = "";
        }
    }

    changeSubmitButtonState(){
        this.submitButtonTarget.disabled = false
    }
}
