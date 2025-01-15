document.getElementById('submitButton').addEventListener('click', () => {
    const firstName = document.getElementById('firstName').value;
    const middleName = document.getElementById('middleName').value;
    const lastName = document.getElementById('lastName').value;
    const mailName = document.getElementById('mailName').value;
    const faculty = document.getElementById('faculty').value;
    const group = document.getElementById('group').value;
    const course = document.getElementById('course').value;

    const output = `
        <p><strong>Имя:</strong> ${firstName}</p>
        <p><strong>Отчество:</strong> ${middleName}</p>
        <p><strong>Фамилия:</strong> ${lastName}</p>
        <p><strong>Почта:</strong> ${mailName}</p>
        <p><strong>Факультет:</strong> ${faculty}</p>
        <p><strong>Группа:</strong> ${group}</p>
        <p><strong>Курс:</strong> ${course}</p>
    `;

    document.getElementById('formOutput').innerHTML = output;
});