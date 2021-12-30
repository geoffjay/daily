const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: ["./app/views/**/*.html.erb", "./app/helpers/**/*.rb", "./app/javascript/**/*.js"],
  darkMode: "class",
  plugins: [
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
    require("@tailwindcss/typography"),
  ],
  theme: {
    extend: {
      colors: {
        cobalt: {
          50: "#e2e5eb",
          100: "#c6ccd6",
          200: "#abb2c2",
          300: "#909aaf",
          400: "#76839c",
          500: "#606c85",
          600: "#4c5669",
          700: "#394150",
          800: "#272c37",
          900: "#171a1f",
        },
        gold: {
          50: "#e7e5de",
          100: "#cfcbbc",
          200: "#b7b39b",
          300: "#a19a7b",
          400: "#898363",
          500: "#726c51",
          600: "#5a5640",
          700: "#444031",
          800: "#2f2d21",
          900: "#1b1a13",
        },
        emerald: {
          50: "#dee8e0",
          100: "#bed0c1",
          200: "#9ebaa3",
          300: "#7ea385",
          400: "#648c6b",
          500: "#537358",
          600: "#425c46",
          700: "#324535",
          800: "#223024",
          900: "#141c15",
        },
        crimson: {
          50: "#ebe3e5",
          100: "#d7c7cb",
          200: "#c4acb2",
          300: "#b1929a",
          400: "#9f7981",
          500: "#88616a",
          600: "#6c4e55",
          700: "#523a40",
          800: "#38282c",
          900: "#21181a",
        },
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
};
