//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelCQR: ObservableObject {
    let typeOfGame: GameTypeCQR
    
    var cwrrc = "45245"
    var wrfvwr = 425245
    func vwrgvwrgv() -> String {
        return "vwrgvwrg4246246"
    }
    func wvrgvwvwrgvwrrg() {
        print("rgvvwrgvwrgv")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionCQR]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionCQR {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeCQR) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionCQR.advancedQuestions.shuffled().prefix(20))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 { player2RightAnswers += 1 } else { player1RightAnswers += 1 }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1, 1].randomElement()!
                }
            }
        }
    }
}


enum GameTypeCQR {
    case oneP
    case withC
    case withF
}

struct QuestionCQR {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionCQR] = [
        QuestionCQR(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCQR(
            question: "Which organ in the human body is responsible for filtering blood?",
            correctAnswer: "Kidneys",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionCQR(
            question: "What is the largest animal in the world?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Blue whale", "Giraffe", "Sperm whale"]
        ),
        QuestionCQR(
            question: "Which metal is commonly used for making electrical wires?",
            correctAnswer: "Copper",
            answerOptions: ["Copper", "Iron", "Aluminum", "Silver"]
        ),
        QuestionCQR(
            question: "Which planet orbits the Sun the fastest?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
        ),
        QuestionCQR(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Antarctica"]
        ),
        QuestionCQR(
            question: "Who wrote 'The Testament'?",
            correctAnswer: "Taras Shevchenko",
            answerOptions: ["Lesya Ukrainka", "Ivan Franko", "Taras Shevchenko", "Mykola Khvylovy"]
        ),
        QuestionCQR(
            question: "What gas do plants release during photosynthesis?",
            correctAnswer: "Oxygen",
            answerOptions: ["Carbon dioxide", "Oxygen", "Hydrogen", "Nitrogen"]
        ),
        QuestionCQR(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Munich", "Berlin", "Hamburg", "Cologne"]
        ),
        QuestionCQR(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Hydrogen", "Helium", "Oxygen", "Nitrogen"]
        ),
        QuestionCQR(
            question: "What is the speed of sound in air at sea level?",
            correctAnswer: "343 m/s",
            answerOptions: ["300 m/s", "343 m/s", "400 m/s", "500 m/s"]
        ),
        QuestionCQR(
            question: "Which Nobel Prize category was first awarded in 1969?",
            correctAnswer: "Economic Sciences",
            answerOptions: ["Physics", "Literature", "Economic Sciences", "Medicine"]
        ),
        QuestionCQR(
            question: "What is the primary function of red blood cells?",
            correctAnswer: "To carry oxygen",
            answerOptions: ["To fight infections", "To carry oxygen", "To clot blood", "To regulate temperature"]
        ),
        QuestionCQR(
            question: "Who painted the ceiling of the Sistine Chapel?",
            correctAnswer: "Michelangelo",
            answerOptions: ["Leonardo da Vinci", "Raphael", "Michelangelo", "Donatello"]
        ),
        QuestionCQR(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Kyoto", "Tokyo", "Osaka", "Nagoya"]
        ),
        QuestionCQR(
            question: "What is the term for the study of fungi?",
            correctAnswer: "Mycology",
            answerOptions: ["Entomology", "Mycology", "Botany", "Zoology"]
        ),
        QuestionCQR(
            question: "What is the SI unit of force?",
            correctAnswer: "Newton",
            answerOptions: ["Pascal", "Newton", "Joule", "Watt"]
        ),
        QuestionCQR(
            question: "Which country invented gunpowder?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "Greece", "Persia"]
        ),
        QuestionCQR(
            question: "What is the largest organ in the human body?",
            correctAnswer: "Skin",
            answerOptions: ["Liver", "Heart", "Skin", "Brain"]
        ),
        QuestionCQR(
            question: "What is the boiling point of water at sea level?",
            correctAnswer: "100°C",
            answerOptions: ["90°C", "100°C", "110°C", "120°C"]
        ),
        QuestionCQR(
            question: "What is the chemical formula for table salt?",
            correctAnswer: "NaCl",
            answerOptions: ["KCl", "NaCl", "HCl", "NaOH"]
        ),
        QuestionCQR(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["11", "12", "13", "14"]
        ),
        QuestionCQR(
            question: "What is the largest planet in the Solar System?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Jupiter", "Saturn", "Uranus"]
        ),
        QuestionCQR(
            question: "What is the process plants use to convert sunlight into food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Respiration", "Photosynthesis", "Digestion", "Transpiration"]
        ),
        QuestionCQR(
            question: "What is the smallest unit of life?",
            correctAnswer: "Cell",
            answerOptions: ["Atom", "Cell", "Molecule", "Organ"]
        ),
        QuestionCQR(
            question: "Which planet is the hottest in the Solar System?",
            correctAnswer: "Venus",
            answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
        ),
        QuestionCQR(
            question: "What is the chemical formula for water?",
            correctAnswer: "H₂O",
            answerOptions: ["H₂O", "O₂", "CO₂", "H₂"]
        ),
        QuestionCQR(
            question: "Who is the author of 'The Origin of Species'?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Gregor Mendel", "Charles Darwin", "Carl Linnaeus", "Alfred Wallace"]
        ),
        QuestionCQR(
            question: "What is the name of the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionCQR(
            question: "Which element is represented by the symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Oxalate", "Ozone"]
        ),
        QuestionCQR(
            question: "Which scientist developed the first vaccine for rabies?",
            correctAnswer: "Louis Pasteur",
            answerOptions: ["Alexander Fleming", "Edward Jenner", "Louis Pasteur", "Marie Curie"]
        ),
        QuestionCQR(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Rome", "Paris", "Berlin", "Madrid"]
        ),
        QuestionCQR(
            question: "What is the atomic number of Hydrogen?",
            correctAnswer: "1",
            answerOptions: ["1", "2", "3", "4"]
        ),
        QuestionCQR(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Elephant", "Blue Whale", "Giraffe", "Orca"]
        ),
        QuestionCQR(
            question: "What is the primary ingredient in glass?",
            correctAnswer: "Sand",
            answerOptions: ["Sand", "Silicon", "Salt", "Clay"]
        ),
        QuestionCQR(
            question: "What is the capital city of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Canberra", "Brisbane"]
        ),
        QuestionCQR(
            question: "What is the largest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Tibia", "Humerus", "Pelvis"]
        ),
        QuestionCQR(
            question: "Which gas do plants primarily use during photosynthesis?",
            correctAnswer: "Carbon Dioxide",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionCQR(
            question: "What is the name of the smallest planet in the Solar System?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Mercury", "Mars", "Pluto"]
        ),
        QuestionCQR(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCQR(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Paris", "London", "Berlin", "Madrid"]
        ),
        QuestionCQR(
            question: "Who wrote 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["Charles Dickens", "William Shakespeare", "Jane Austen", "Mark Twain"]
        ),
        QuestionCQR(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionCQR(
            question: "What is the square root of 64?",
            correctAnswer: "8",
            answerOptions: ["6", "7", "8", "9"]
        ),
        QuestionCQR(
            question: "What is the atomic number of oxygen?",
            correctAnswer: "8",
            answerOptions: ["6", "7", "8", "9"]
        ),
        QuestionCQR(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Claude Monet"]
        ),
        QuestionCQR(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Kilimanjaro", "Mount Everest", "Mount Fuji", "K2"]
        ),
        QuestionCQR(
            question: "What is the freezing point of water in Celsius?",
            correctAnswer: "0",
            answerOptions: ["0", "32", "100", "50"]
        ),
        QuestionCQR(
            question: "What is the capital of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Beijing", "Seoul", "Tokyo", "Bangkok"]
        ),
        QuestionCQR(
            question: "Who is the author of '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["Aldous Huxley", "Ray Bradbury", "George Orwell", "Margaret Atwood"]
        ),
        QuestionCQR(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCQR(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Oxygen", "Hydrogen", "Carbon", "Nitrogen"]
        ),
        QuestionCQR(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionCQR(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "CH4"]
        ),
        QuestionCQR(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionCQR(
            question: "Who was the first President of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "George Washington", "Abraham Lincoln", "John Adams"]
        ),
        QuestionCQR(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCQR(
            question: "What is the chemical symbol for iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "I", "In"]
        ),
        QuestionCQR(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Munich", "Frankfurt", "Berlin", "Hamburg"]
        ),
        QuestionCQR(
            question: "What is the longest-running Broadway musical?",
            correctAnswer: "The Phantom of the Opera",
            answerOptions: ["Les Misérables", "The Phantom of the Opera", "Cats", "Wicked"]
        ),
        QuestionCQR(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Onion", "Cucumber"]
        ),
        QuestionCQR(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "San Marino", "Vatican City", "Nauru"]
        ),
        QuestionCQR(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Brisbane", "Canberra"]
        ),
        QuestionCQR(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Venus", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionCQR(
            question: "What is the boiling point of water in Celsius?",
            correctAnswer: "100",
            answerOptions: ["90", "100", "110", "120"]
        ),
        QuestionCQR(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Milan", "Florence", "Rome", "Venice"]
        ),
        QuestionCQR(
            question: "Who is the Greek god of the sea?",
            correctAnswer: "Poseidon",
            answerOptions: ["Zeus", "Hades", "Poseidon", "Apollo"]
        ),
        QuestionCQR(
            question: "What is the most common gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Argon"]
        ),
        QuestionCQR(
            question: "Which element is used in the production of light bulbs?",
            correctAnswer: "Tungsten",
            answerOptions: ["Gold", "Silver", "Copper", "Tungsten"]
        ),
        QuestionCQR(
            question: "What is the largest land animal?",
            correctAnswer: "African Elephant",
            answerOptions: ["African Elephant", "White Rhinoceros", "Giraffe", "Hippopotamus"]
        ),
        QuestionCQR(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionCQR(
            question: "Who was the first woman to fly solo across the Atlantic Ocean?",
            correctAnswer: "Amelia Earhart",
            answerOptions: ["Amelia Earhart", "Bessie Coleman", "Jacqueline Cochran", "Sally Ride"]
        ),
        QuestionCQR(
            question: "What is the capital of Egypt?",
            correctAnswer: "Cairo",
            answerOptions: ["Cairo", "Alexandria", "Luxor", "Giza"]
        ),
        QuestionCQR(
            question: "What is the symbol for potassium?",
            correctAnswer: "K",
            answerOptions: ["P", "Po", "K", "Kr"]
        ),
        QuestionCQR(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Kalahari", "Sahara", "Gobi", "Atacama"]
        ),
        QuestionCQR(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Thomas Edison", "Alexander Graham Bell", "Nikola Tesla", "Benjamin Franklin"]
        ),
        QuestionCQR(
            question: "What is the national sport of Japan?",
            correctAnswer: "Sumo Wrestling",
            answerOptions: ["Sumo Wrestling", "Judo", "Baseball", "Karate"]
        ),
        QuestionCQR(
            question: "What is the capital of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Barcelona", "Seville", "Madrid", "Valencia"]
        ),
        QuestionCQR(
            question: "What is the hardest known material in the world?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionCQR(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "South Korea", "Japan", "Thailand"]
        ),
        QuestionCQR(
            question: "Which fruit is known as the king of fruits?",
            correctAnswer: "Durian",
            answerOptions: ["Mango", "Durian", "Pineapple", "Jackfruit"]
        ),
        QuestionCQR(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound",
            answerOptions: ["Euro", "Dollar", "Pound", "Yen"]
        ),
        QuestionCQR(
            question: "What is the tallest building in the world?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Empire State Building", "Eiffel Tower", "Burj Khalifa", "CN Tower"]
        ),
        QuestionCQR(
            question: "Which organ in the human body is primarily responsible for pumping blood?",
            correctAnswer: "Heart",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionCQR(
            question: "Who was the first man to walk on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Buzz Aldrin", "Neil Armstrong", "Yuri Gagarin", "John Glenn"]
        ),
        QuestionCQR(
            question: "What is the chemical symbol for oxygen?",
            correctAnswer: "O",
            answerOptions: ["O", "Ox", "O2", "O3"]
        ),
        QuestionCQR(
            question: "What is the largest animal in the world?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Elephant", "Giraffe", "Blue Whale", "Shark"]
        ),
        QuestionCQR(
            question: "Who developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Niels Bohr"]
        )
    ]
}
