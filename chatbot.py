from chatterbot import ChatBot
from chatterbot.trainers import ListTrainer
from chatterbot.trainers import ChatterBotCorpusTrainer

chatbot = ChatBot('Job Hunting')
trainingData = open("training.txt",'r')
conversation = []

for x in trainingData:
    y = trainingData.readline()
    conversation.append(x)
    conversation.append(y)
    

trainer = ListTrainer(chatbot)
trainer.train(conversation)
# Training with English Corpus Data 
#trainer_corpus = ChatterBotCorpusTrainer(chatbot)
#trainer_corpus.train(
    #'chatterbot.corpus.english'
#)