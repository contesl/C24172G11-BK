const userForm = document.querySelector("#userForm")

let users = [] //para guardar los usuarios

/*cuando levanta la pagina traigo los usuarios y los muestro*/
window.addEventListener("DOMContentLoaded", async () => {
    const response = await fetch('http://127.0.0.1:5000/api/users', {
        method: 'GET'
    })
    const data = await response.json()
    users = data
    renderUser(users)
});

/*queda capturando el evento submit, ademas activa asincronia*/
userForm.addEventListener('submit', async e => {
    e.preventDefault() /*para poder monitorearlo*/

    const username = userForm['username'].value
    const password = userForm['password'].value
    const email = userForm['email'].value

    /*ahora enviamos los datos al backend con fetch
     como la api esta en el mismo server no hace falta poner una dir completa
     hay que enviarlos en json y nos va a devolver un json por eso 
     hacemos el fetch guardando en una constante
     */
    const response = await fetch('http://127.0.0.1:5000/api/users', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            username: username,
            password: password,
            email: email
        })
    })
    /*await sirve para que se quede esperando porque es asincrono*/
    const data = await response.json()

    users.push(data) /*para que al hacer el create luego aparezca en la lista general*/

    renderUser(users) /*para mostrarlo en la lista*/

    userForm.reset() /*para limpiar el formulario*/
})

function renderUser(users) {
    const userList = document.querySelector('#userList')
    userList.innerHTML = ''
    users.forEach(user => {
        const userItem = document.createElement('li')
        userItem.classList = 'list-group-item list-group-item-dark my-2'
        userItem.innerHTML = `
        <header class='d-flex justify-contest-between align-items-center'>
            <h3>${user.username}</h3>
            <div>
                <button class='btn btn-danger btn-sm'>delete</button>
                <button class='btn btn-secondary btn-sm'>edit</button>
            </div>

        </header>
        <p>${user.email}</p>
        `
        userList.append(userItem)
    })
}
