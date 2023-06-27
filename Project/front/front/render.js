function renderModal(oneUser) {
    return `<div class = "fade" id = "fade">
                <div class = "modal" id = "modal">
                <img src="${oneUser.image_url}" class="userModalImg"/>
                    <div class = "modalHeader">
                        <div class = "info"> 
                            <div class = "userModalName">${oneUser.name}</div>
                            <div class = "userLogin">
                                <p>Titles: ${oneUser.titles} </p>
                                <p>Nationality: ${oneUser.nationality} </p>
                                <p>Wins: ${oneUser.wins} </p>
                                <p>Podiums: ${oneUser.podiums} </p>
                                <p>Career Points: ${oneUser.career_points} </p>
                                <p>Teams: ${oneUser.all_teams} </p>
                                </div>
                            </div>
                    </div> 
            </div> `
}

function render(user) {
    return `
     <div class="card" onclick = "createModal(${user.id})"s>
        </button>
      
         <img src="${user.image_url}" class="usrImg"/>
         <h3 class = "usrName" id = "name">
            ${user.name}
         </h3>
         <h4 class = "usrName id = "name">
         Titles: ${user.titles}
         </h4>
     </div>`
}

export {render,renderModal};