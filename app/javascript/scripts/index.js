doucument.addEventListener("turbolinks:load", ()=>{

    const closeBtn = doucument.querySelector("#flashColoseBtn")
    closeBtn.addEventListener("click", (e) =>{
        e.target.parentElement.remove()
    })

})

