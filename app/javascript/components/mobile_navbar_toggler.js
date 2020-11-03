const mobileNavbarToggler = () => {
  const openMobileNavbar   = document.querySelector('#mobile-navbar')
  const mainMenu = document.querySelector('#main-menu')
  const closeMobileNavbar   = document.querySelector('#close-mobile-navbar')

  if (openMobileNavbar && mainMenu) {
    mainMenu.addEventListener("click", (event)=> {
      openMobileNavbar.classList.toggle("hidden")
    })
    if (closeMobileNavbar) {
      closeMobileNavbar.addEventListener("click", (event) => {
        openMobileNavbar.classList.toggle("hidden")
      })
    }
  }

};
export { mobileNavbarToggler };
