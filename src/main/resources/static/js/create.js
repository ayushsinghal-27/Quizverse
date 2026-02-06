function createQuiz() {
    const categoryInput = document.getElementById("category");
    const numQInput = document.getElementById("numQ");
    const titleInput = document.getElementById("title");

    const category = categoryInput.value;
    const numQ = numQInput.value;
    const title = titleInput.value;

    //  FRONTEND VALIDATION
    if (!category || !numQ || !title) {
        showPopup("Fill the fields");
        return;
    }

    console.log("Creating quiz:", category, numQ, title);

    fetch(`/quiz/create?category=${encodeURIComponent(category)}&numQ=${numQ}&title=${encodeURIComponent(title)}`, {
        method: "POST"
    })
    .then(async res => {
        const text = await res.text();
        if (!res.ok) {
            showPopup(text);
            throw new Error(text);
        }
        return text;
    })
    .then(id => {
        window.location.href = `quiz.html?id=${id}`;
    })
    .catch(err => {
        console.error("Error:", err);
    });
}
