const quizId = new URLSearchParams(window.location.search).get("id");

let questions = [];
let current = 0;
let answers = [];

// GLOBAL QUIZ TIMER
let timerInterval = null;
let totalSeconds = 0;
let timerStarted = false;

// FETCH QUESTIONS
fetch(`/quiz/get/${quizId}`)
    .then(res => res.json())
    .then(data => {
        questions = data;
        loadQuestion();
    })
    .catch(err => console.error(err));

// LOAD QUESTION
function loadQuestion() {
    const q = questions[current];

    document.getElementById("question").innerText = q.questionTitle;

    const optionsDiv = document.getElementById("options");
    optionsDiv.innerHTML = "";

    [q.option1, q.option2, q.option3, q.option4].forEach(opt => {
        const btn = document.createElement("button");
        btn.className = "option";
        btn.innerText = opt;
        btn.onclick = () => selectOption(opt, btn);
        optionsDiv.appendChild(btn);
    });

    document.getElementById("progressFill").style.width =
        ((current + 1) / questions.length) * 100 + "%";

    startQuizTimer();
}

// SELECT OPTION
function selectOption(opt, btn) {
    document.querySelectorAll(".option")
        .forEach(b => b.classList.remove("selected"));

    btn.classList.add("selected");

    answers[current] = {
        id: questions[current].id,
        response: opt
    };
}

// NEXT QUESTION
function nextQuestion() {
    if (!answers[current]) {
        alert("Please select an option");
        return;
    }

    current++;

    if (current < questions.length) {
        loadQuestion();
    } else {
        stopQuizTimer();
        localStorage.setItem("responses", JSON.stringify(answers));
        localStorage.setItem("totalTime", totalSeconds);
        window.location.href = `result.html?id=${quizId}`;
    }
}

// TIMER FUNCTIONS
function startQuizTimer() {
    if (timerStarted) return;

    timerStarted = true;
    updateTimerUI();

    timerInterval = setInterval(() => {
        totalSeconds++;
        updateTimerUI();
    }, 1000);
}

function stopQuizTimer() {
    if (timerInterval) {
        clearInterval(timerInterval);
        timerInterval = null;
    }
}

function updateTimerUI() {
    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;

    document.getElementById("timer").innerText =
        `${String(minutes).padStart(2, "0")}:${String(seconds).padStart(2, "0")}`;
}
