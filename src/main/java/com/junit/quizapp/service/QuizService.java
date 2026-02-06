package com.junit.quizapp.service;

import com.junit.quizapp.dao.QuestionDao;
import com.junit.quizapp.dao.QuizDao;
import com.junit.quizapp.model.Question;
import com.junit.quizapp.model.QuestionWrapper;
import com.junit.quizapp.model.Quiz;
import com.junit.quizapp.model.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class QuizService {

    @Autowired
    QuizDao quizDao;

    @Autowired
    QuestionDao questionDao;

    public ResponseEntity<Integer> createQuiz(String category, int numQ, String title) {

        List<Question> questions =
                questionDao.findRandomQuestionsByCategory(category, numQ);

        if (questions.isEmpty()) {
            return new ResponseEntity<>(0, HttpStatus.BAD_REQUEST);
        }

        if (questions.size() < numQ) {
            return new ResponseEntity<>(questions.size(), HttpStatus.BAD_REQUEST);
        }

        Quiz quiz = new Quiz();
        quiz.setTitle(title);
        quiz.setQuestions(questions);

        quiz = quizDao.save(quiz); // ensure ID generated

        return new ResponseEntity<>(quiz.getId(), HttpStatus.CREATED);
    }


    public ResponseEntity<List<QuestionWrapper>> getQuizQuestions(Integer id) {
        Optional<Quiz> quiz = quizDao.findById(id);
        List<Question> questionsFromDB = quiz.get().getQuestions();
        List<QuestionWrapper> questionsForUser = new ArrayList<>();
        for (Question q: questionsFromDB) {
            QuestionWrapper qw = new QuestionWrapper(q.getId(), q.getQuestionTitle(), q.getOption1(), q.getOption2(), q.getOption3(), q.getOption4());
            questionsForUser.add(qw);
        }

        return new ResponseEntity<>(questionsForUser, HttpStatus.OK);
    }


    public ResponseEntity<Integer> calculateResult(Integer id, List<Response> responses) {

        Quiz quiz = quizDao.findById(id).get();
        List<Question> questions = quiz.getQuestions();

        int score = 0;
        int i = 0;
        for (Response response: responses) {
            if (response.getResponse().equals(questions.get(i).getRightAnswer())){
                score++;
            }
            i++;
        }
        return new ResponseEntity<>(score, HttpStatus.OK);
    }
}
