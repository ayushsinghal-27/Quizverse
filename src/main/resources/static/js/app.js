function createQuiz() {
    const category = document.getElementById("category").value;
    const numQ = document.getElementById("numQ").value;
    const title = document.getElementById("title").value;

    console.log("Creating quiz:", category, numQ, title);

    fetch(`/quiz/create?category=${encodeURIComponent(category)}&numQ=${numQ}&title=${encodeURIComponent(title)}`, {
        method: "POST"
    })
    .then(response => {
        console.log("Status:", response.status);
        return response.text();
    })
    .then(quizId => {
        console.log("Quiz ID received:", quizId);

        if (!quizId || isNaN(quizId)) {
            alert("Invalid quiz id returned");
            return;
        }

        window.location.href = `quiz.html?id=${quizId}`;
    })
    .catch(error => {
        console.error("Fetch error:", error);
        alert("Error creating quiz");
    });
}
