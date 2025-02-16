# rock scissors paper

com_score <- 0
human_score <- 0
hands <- c("rock", "scissors", "paper")

while (TRUE) {
  com_hand <- sample(hands, 1)
  human_hand <- readline("Choose hammer, scissor, paper or quit: ")
  winner <- ""

  if (human_hand == "quit") {
    print("Result:");
    print(paste("Computer: ", com_score))
    print(paste("Human: ", human_score))
    print(paste("Winner is: ", ifelse(com_score > human_score, "Computer", "Human")))
    break
  }

  if ((human_hand == "rock" && com_hand == "scissors") ||
    (human_hand == "scissors" && com_hand == "paper") ||
    (human_hand == "paper" && com_hand == "rock")) {
    winner <- "Human"
  } else if ((human_hand == "rock" && com_hand == "paper") ||
    (human_hand == "scissors" && com_hand == "rock") ||
    (human_hand == "paper" && com_hand == "scissors")) {
    winner <- "Computer"
  }

  print(paste("Computer: ", com_hand))
  print(paste("Human: ", human_hand))

  if (winner == "Human") {
    print("Human wins!")
    human_score <- human_score + 1
  } else if (winner == "Computer") {
    print("Computer wins!")
    com_score <- com_score + 1
  } else {
    print("Draw!")
  }
}