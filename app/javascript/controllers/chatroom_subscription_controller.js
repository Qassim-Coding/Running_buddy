import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="chatroom-subscription"
export default class extends Controller {
  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages", "messageInput", "messageForm"]

  connect() {
/*     console.log(this.chatroomIdValue)
    console.log(this.messagesTarget)
 */    this.subscription = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }

  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  #insertMessageAndScrollDown(data) {
/*     console.log(data)
 */    const currentUserIsSender = this.currentUserIdValue === data.sender_id
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }

  sendMessage(event) {
    event.preventDefault()
    const message = this.messageInputTarget.value.trim()
    if (message === "") return

    // Assuming you have a form with data-remote="true" and the message input has the name "message[content]"
    const formData = new FormData(this.messageFormTarget)
    fetch(this.messageFormTarget.action, {
      method: "POST",
      body: formData,
      headers: {
        "X-CSRF-Token": document.querySelector("[name=csrf-token]").content
      }
    }).then(response => {
      if (response.ok) {
        this.resetForm()
      }
    })
  }

  handleKeydown(event) {
    if (event.key === "Enter" && !event.shiftKey) {
      event.preventDefault()
      this.sendMessage(event)
    }
  }

  resetForm() { console.log(this.messageInputTarget)
    this.messageInputTarget.value = ""
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.subscription.unsubscribe()
  }
}
