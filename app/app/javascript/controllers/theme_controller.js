import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="theme"
export default class extends Controller {
  // This handles a dark/light theme toggle, it doesn't work perfectly but it's
  // good enough for me for now.

  static values = { mode: { type: String, default: "light" } };

  initialize() {
    if (localStorage.getItem("theme") === "dark") {
      this.setDark();
    } else {
      this.setLight();
    }
  }

  toggle() {
    if (this.modeValue === "dark") {
      this.modeValue = "light";
      this.setLight();
    } else {
      this.modeValue = "dark";
      this.setDark();
    }
  }

  setDark() {
    const darkIcon = document.getElementById("theme-toggle-dark-icon");
    const lightIcon = document.getElementById("theme-toggle-light-icon");

    lightIcon.classList.add("hidden");
    darkIcon.classList.remove("hidden");
    document.documentElement.classList.add("dark");
    document.documentElement.classList.remove("light");

    localStorage.setItem("theme", "dark")
  }

  setLight() {
    const darkIcon = document.getElementById("theme-toggle-dark-icon");
    const lightIcon = document.getElementById("theme-toggle-light-icon");

    darkIcon.classList.add("hidden");
    lightIcon.classList.remove("hidden");
    document.documentElement.classList.add("light");
    document.documentElement.classList.remove("dark");

    localStorage.setItem("theme", "light")
  }
}
