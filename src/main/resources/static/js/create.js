function createQuiz() {
    const category = document.getElementById("category").value.trim();
    const numQ = document.getElementById("numQ").value.trim();
    const title = document.getElementById("title").value.trim();

    if (!category || !numQ || !title) {
        showPopup("Fill the fields");
        return;
    }

    fetch(`/quiz/create?category=${encodeURIComponent(category)}&numQ=${numQ}&title=${encodeURIComponent(title)}`, {
        method: "POST"
    })
    .then(async res => {
        const text = await res.text();

        if (!res.ok) {
            // 🔥 MAX QUESTION HANDLING
            showPopup(`Only ${text} questions available in category '${category}'`);
            throw new Error(text);
        }

        return text;
    })
    .then(quizId => {
        window.location.href = `quiz.html?id=${quizId}`;
    })
    .catch(err => console.error(err));
}
