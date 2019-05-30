const BASE_URL = "http://localhost:3000"
const USERS_URL = `${BASE_URL}/users`
const QUOTES_URL = `${BASE_URL}/quotes`

//collect and store HTML elements
const allQuoteCard = document.querySelector('#allQuoteCards')
const createQuote = document.querySelector('#createQuote')
const createUser = document.querySelector('#createUser')

// render quotes
function renderQuote(quote){
    //create new card element for each quote
        const quoteCard = document.createElement('div')
        quoteCard.className = 'quoteCard'
        //append card onto ul element to render all cards
        allQuoteCard.append(quoteCard)

        //create seperate elements to append to quoteCard element
        const fullQuote = document.createElement('p')
        fullQuote.innerText = quote.quote
        quoteCard.append(fullQuote)

        const name = document.createElement('p')
        name.innerText = `- ${quote.philosopher_name}`
        quoteCard.append(name)

        //create likes button
        const  likesButton = document.createElement('button')
        likesButton.id = quote.id
        likesButton.innerText = `Likes ${quote.likes}`
        likesButton.addEventListener('click', () => {
            quote.likes++
            likesButton.innerText = `Likes ${quote.likes}`
            incrementLikesServer(quote)
        })
        
        quoteCard.append(likesButton)

        //create delete button
        const  deleteButton = document.createElement('button')
        deleteButton.id = quote.id
        deleteButton.innerText = 'Delete'
        deleteButton.addEventListener('click', () => {
            quoteCard.remove()
            deleteQuote(quote)
        })

        quoteCard.append(deleteButton)
}

// Render quotes 
function renderQuotes(quotes){
    quotes.forEach(quote => {
        renderQuote(quote)
    })
}

//Create quote form
function createQuoteForm(){
     form = document.createElement('form')
     form.id = "createQuoteForm"

     const nameInput = document.createElement('input')
     nameInput.setAttribute('name', 'philosopher')

     const quoteInput = document.createElement('input')
     quoteInput.setAttribute('name', 'quote')

     const submitButton = document.createElement('button')
     submitButton.innerHTML = 'Submit'

     form.append(nameInput, quoteInput)
     form.append(submitButton)
     createQuote.append(form)

    form.addEventListener('submit', e => {
        e.preventDefault(),
        createQuoteServer(e).then(e.target.reset())
    })
}

//Create user form
function createUserForm(){
    userForm = document.createElement('form')

    const nameInput = document.createElement('input')
    nameInput.setAttribute('name', 'name')
    const nameTitle = document.createElement('p')

    const emailInput = document.createElement('input')
    emailInput.setAttribute('name', 'email')

    const submitButton = document.createElement('button')
    submitButton.innerHTML = 'Submit'

    form.append(nameInput, emailInput)
    form.append(submitButton)
    createUser.append(userForm)

   form.addEventListener('submit', e => {
       e.preventDefault(),
       createUserServer(e).then(e.target.reset())
   })
}

function renderUser(user){
        const userCard = document.createElement('div')
        userCard.className = 'userCard'

        createUser.append(userCard)

        const userName = document.createElement('p')
        userName.innerText = user.name
        userCard.append(userName)

        const userEmail = document.createElement('p')
        userEmail.innerText = user.email
        userCard.append(userEmail)
}

function renderUsers(users){
    users.forEach(user => {
        renderUser(user)
    })
}

//Get quotes
function getQuotes(){
    fetch(QUOTES_URL)
    .then(resp => resp.json())
    .then(quotes => renderQuotes(quotes))
}

//Create quote
function createQuoteServer(e){

    const newQuote = e.target.children[0].value
    const newAuthor = e.target.children[1].value

    return fetch(QUOTES_URL, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({philosopher_name: newAuthor, quote:newQuote})
    }).then(resp => resp.json()).then(resp => renderQuote(resp))
}

//Get users
function getUsers(){
    fetch(USERS_URL)
    .then(resp => resp.json())
    .then(users => renderUsers)
}

//Create user
function createUserServer(e){
    debugger
    const newName = e.target.children[0].value
    const newEmail = e.target.children[1].value

    return fetch(USERS_URL, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({name: newName, email:newEmail})
    }).then(resp => resp.json())
}
// .then(resp => renderUser(resp))

//Increment likes onto server
function incrementLikesServer(quote){
    return fetch(`${QUOTES_URL}/${quote.id}`,{
        method: 'PATCH',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(quote)
    }).then(resp => resp.json()).then(quote => console.log(quote))
}

//Delete quote
function deleteQuote(quote){
    return fetch(`${QUOTES_URL}/${quote.id}`, {
        method: 'DELETE',
    })
}

function init(){
    getQuotes()

    createQuoteForm()
    createUserForm()
}

init()

