import {render,renderModal} from "./render.js";

async function getData() {

    const res = await fetch(`http://localhost:8080/drivers`, { method: 'GET' });

    const parse = await res.json();

    return parse;
}

function getAllUser() {
    const promise = getData();
    promise.then((data) => {
        console.log(data);
        data.forEach(eachUser => {
            content.innerHTML += render(eachUser);
        })
    })
}

window.searchBar = () => {

    const input = document.getElementById("input");
    let inputValue = input.value;
    if(inputValue === ""){
        alert("Input team's name.")
    }
    else if(inputValue){
    content.innerHTML = "";
    const promise = getUserByName(inputValue);
    promise.then((data) => {
        console.log(data);
        data.forEach(eachUser => {
            content.innerHTML += render(eachUser);
        })
    })
    }
}

window.showDrivers = () => {
    const input = document.getElementById("input");
    let inputValue = input.value;
    if(inputValue === ""){
        getAllUser();
    }
    else if(inputValue){
        content.innerHTML = "";
        getAllUser();
    }
}

window.searchTeam = () => {
    const input = document.getElementById("inputTeam");
    let inputValue = input.value;
    if(inputValue === ""){
        alert("Input team's name.")
    }
    else if(inputValue){
    content.innerHTML = "";
    const promise = getUserByTeam(inputValue);
    promise.then((data) => {
        console.log(data);
        data.forEach(eachUser => {
            content.innerHTML += render(eachUser);
        })
    })
    }
}

async function getUser(id) {

    const res = await fetch(`http://localhost:8080/driverId?id=${id}`, { method: 'GET' });

    const parse = await res.json();

    return parse;
}

async function getUserByName(id) {

    const res = await fetch(`http://localhost:8080/driver?id=${id}`, { method: 'GET' });

    const parse = await res.json();

    return parse;
}

async function getUserByTeam(id) {

    const res = await fetch(`http://localhost:8080/team?id=${id}`, { method: 'GET' });

    const parse = await res.json();

    return parse;
}

let openModal = false;

window.createModal = (id) => {
    const userPromise = getUser(id);

    userPromise.then(eachUser => {
        content.innerHTML += renderModal(eachUser);
    })

    openModal = !openModal;
    document.addEventListener('mousedown', listener);
}

window.closeModal = () => {
    const modalEl = document.getElementById('modal');
    const fadeEl = document.getElementById('fade');
    modalEl.remove();
    fadeEl.remove();
    openModal = !openModal;
}

function listener(e) {
    if (openModal) {
        const modalEl = document.getElementById('modal');
        const fadeEl = document.getElementById('fade');

        if (!modalEl.contains(e.target)) {
            modalEl.remove();
            fadeEl.remove();

            document.removeEventListener('click', listener);
            openModal = !openModal;
        }
    }
}

