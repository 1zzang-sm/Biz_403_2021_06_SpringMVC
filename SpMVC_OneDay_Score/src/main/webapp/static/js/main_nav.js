document.addEventListener("DOMContentLoaded", () => {
  const nav = document.querySelector("nav#m_menu");

  nav.addEventListener("click", (e) => {
    let tagName = e.target.tagName;
    if (tagName === "LI") {
      let menuText = e.target.textContent;
      let urlPath = `${rootPath}`;

      if (menuText === "Home") {
        urlPath += "/";
      } else if (menuText === "학생정보") {
        urlPath += "/student";
        alert("aaa");
      }

      location.href = urlPath;
    }
  });
});
