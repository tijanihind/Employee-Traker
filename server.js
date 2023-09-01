const inquirer = require("inquirer");
const express = require("express");
const con = require("./database/connection");
const {
  answerQuestion,
  view_all_departments,
  view_all_employees,
  view_all_roles,
  add_a_department,
  add_an_employee,
  add_a_role,
  update_an_employee_role,
  quit,
} = require("./extra");

// include connection
con.connect((err) => {
  if (err) return console.log(err);
  console.log("Connected to Database successfully!");
});

const PORT = 3001;
const app = express();

const questions = [
  {
    name: "question",
    message: "What would you like to do?",
    type: "list",
    choices: [
      view_all_departments,
      view_all_employees,
      view_all_roles,
      add_a_department,
      add_an_employee,
      add_a_role,
      update_an_employee_role,
      quit,
    ],
  },
];

function askQuestion() {
  return inquirer
    .prompt(questions)
    .then(({ question }) => {
      answerQuestion(question, askQuestion);
    })
    .catch((err) => console.log(err));
}

askQuestion();

app.listen(PORT, () => {
  //console.log(`Server running on Port ${PORT}`);
});