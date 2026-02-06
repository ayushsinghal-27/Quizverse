const quizId = new URLSearchParams(window.location.search).get("id");
const responses = JSON.parse(localStorage.getItem("responses"));
const totalSeconds = parseInt(localStorage.getItem("totalTime"), 10);

fetch(`/quiz/submit/${quizId}`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(responses)
})
.then(res => res.text())
.then(score => {
    document.getElementById("score").innerText = score;

    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;

    document.getElementById("timeTaken").innerText =
        `Time Taken: ${minutes} min ${seconds} sec`;
});
