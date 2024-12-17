//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewCQR: View {
    @State var selectedQuestion: Tab4QuestionCQR = Tab4QuestionCQR.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .hex("592C12"): .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .hex("592C12"): .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionCQR.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewCQR(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionCQR {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionCQR] = [
        Tab4QuestionCQR(
            question: "What planet is known as the Red Planet?",
            hint1: "It’s the fourth planet from the Sun.",
            hint2: "Named after the Roman god of war.",
            answer: "Mars"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of France?",
            hint1: "Known as the City of Love.",
            hint2: "The Eiffel Tower is located here.",
            answer: "Paris"
        ),
        Tab4QuestionCQR(
            question: "How many sides does a triangle have?",
            hint1: "It’s a simple polygon.",
            hint2: "More than 2, less than 4.",
            answer: "3"
        ),
        Tab4QuestionCQR(
            question: "What gas do plants absorb during photosynthesis?",
            hint1: "It’s a key greenhouse gas.",
            hint2: "Its chemical formula is CO2.",
            answer: "Carbon Dioxide"
        ),
        Tab4QuestionCQR(
            question: "What is the square root of 64?",
            hint1: "It’s an even number.",
            hint2: "It’s 8 multiplied by itself.",
            answer: "8"
        ),
        Tab4QuestionCQR(
            question: "What is the largest ocean on Earth?",
            hint1: "It borders Asia and the Americas.",
            hint2: "Its name starts with 'P'.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionCQR(
            question: "Who painted the Mona Lisa?",
            hint1: "He was a famous Italian artist.",
            hint2: "His first name is Leonardo.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionCQR(
            question: "What is the freezing point of water in Celsius?",
            hint1: "It’s a round number.",
            hint2: "It’s below 1.",
            answer: "0"
        ),
        Tab4QuestionCQR(
            question: "What animal is known as the King of the Jungle?",
            hint1: "It’s a big cat.",
            hint2: "It’s known for its mane.",
            answer: "Lion"
        ),
        Tab4QuestionCQR(
            question: "How many continents are there on Earth?",
            hint1: "More than 5 but less than 8.",
            hint2: "The answer is often taught in school.",
            answer: "7"
        ),
        Tab4QuestionCQR(
            question: "What is the main ingredient in guacamole?",
            hint1: "It’s a green fruit.",
            hint2: "It’s often used in salads and on toast.",
            answer: "Avocado"
        ),
        Tab4QuestionCQR(
            question: "Who wrote 'Romeo and Juliet'?",
            hint1: "He was an English playwright.",
            hint2: "His surname starts with 'S'.",
            answer: "William Shakespeare"
        ),
        Tab4QuestionCQR(
            question: "What is the chemical symbol for water?",
            hint1: "It consists of two letters.",
            hint2: "It contains H and O.",
            answer: "H2O"
        ),
        Tab4QuestionCQR(
            question: "What is the smallest prime number?",
            hint1: "It’s less than 3.",
            hint2: "It’s the first prime number.",
            answer: "2"
        ),
        Tab4QuestionCQR(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It’s often used in jewelry.",
            hint2: "It’s made of carbon.",
            answer: "Diamond"
        ),
        Tab4QuestionCQR(
            question: "What galaxy is Earth located in?",
            hint1: "It’s named after a type of candy.",
            hint2: "Its name contains 'Milky'.",
            answer: "Milky Way"
        ),
        Tab4QuestionCQR(
            question: "How many legs does a spider have?",
            hint1: "It’s an even number.",
            hint2: "It’s more than 6.",
            answer: "8"
        ),
        Tab4QuestionCQR(
            question: "What is the largest planet in our solar system?",
            hint1: "It’s a gas giant.",
            hint2: "It’s named after the Roman king of gods.",
            answer: "Jupiter"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Japan?",
            hint1: "It’s one of the most populous cities in the world.",
            hint2: "It starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4QuestionCQR(
            question: "What is the boiling point of water in Celsius?",
            hint1: "It’s a round number.",
            hint2: "It’s ten times 10.",
            answer: "100"
        ),
        Tab4QuestionCQR(
            question: "What is the largest mammal in the world?",
            hint1: "It lives in the ocean.",
            hint2: "It’s a type of whale.",
            answer: "Blue Whale"
        ),
        Tab4QuestionCQR(
            question: "What does the 'E' stand for in E=mc²?",
            hint1: "It’s a form of energy.",
            hint2: "The word starts with 'Energy'.",
            answer: "Energy"
        ),
        Tab4QuestionCQR(
            question: "How many hours are in a day?",
            hint1: "It’s divisible by 8.",
            hint2: "It’s the standard length of a day.",
            answer: "24"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Italy?",
            hint1: "It’s home to the Colosseum.",
            hint2: "It’s often called the Eternal City.",
            answer: "Rome"
        ),
        Tab4QuestionCQR(
            question: "What shape has 4 equal sides and 4 right angles?",
            hint1: "It’s a polygon.",
            hint2: "It’s also called a square.",
            answer: "Square"
        ),
        Tab4QuestionCQR(
            question: "Who discovered gravity?",
            hint1: "He was inspired by a falling apple.",
            hint2: "His surname is Newton.",
            answer: "Isaac Newton"
        ),
        Tab4QuestionCQR(
            question: "What color is created when you mix red and blue?",
            hint1: "It’s a secondary color.",
            hint2: "It starts with 'P'.",
            answer: "Purple"
        ),
        Tab4QuestionCQR(
            question: "How many bones are in the human adult body?",
            hint1: "It’s more than 200.",
            hint2: "It’s exactly 206.",
            answer: "206"
        ),
        Tab4QuestionCQR(
            question: "What is the chemical symbol for gold?",
            hint1: "It has two letters.",
            hint2: "It’s AU.",
            answer: "Au"
        ),
        Tab4QuestionCQR(
            question: "What does a thermometer measure?",
            hint1: "It relates to heat.",
            hint2: "It starts with 'T'.",
            answer: "Temperature"
        ),
        Tab4QuestionCQR(
            question: "How many planets are in our solar system?",
            hint1: "It’s a single-digit number.",
            hint2: "It’s less than 10.",
            answer: "8"
        ),
        Tab4QuestionCQR(
            question: "What is the fastest land animal?",
            hint1: "It’s a large cat.",
            hint2: "It can reach speeds of over 100 km/h.",
            answer: "Cheetah"
        ),
        Tab4QuestionCQR(
            question: "What is the tallest mountain on Earth?",
            hint1: "It’s located in the Himalayas.",
            hint2: "Its name starts with 'E'.",
            answer: "Mount Everest"
        ),
        Tab4QuestionCQR(
            question: "How many sides does a hexagon have?",
            hint1: "It’s more than 5.",
            hint2: "It’s less than 7.",
            answer: "6"
        ),
        Tab4QuestionCQR(
            question: "What is the smallest country in the world?",
            hint1: "It’s a city-state.",
            hint2: "It’s located in Italy.",
            answer: "Vatican City"
        ),
        Tab4QuestionCQR(
            question: "Which metal is liquid at room temperature?",
            hint1: "It starts with 'M'.",
            hint2: "It’s used in thermometers.",
            answer: "Mercury"
        ),
        Tab4QuestionCQR(
            question: "What is the largest desert in the world?",
            hint1: "It’s a cold desert.",
            hint2: "It’s located in Antarctica.",
            answer: "Antarctica"
        ),
        Tab4QuestionCQR(
            question: "What is the longest river in the world?",
            hint1: "It flows through Egypt.",
            hint2: "Its name starts with 'N'.",
            answer: "Nile"
        ),
        Tab4QuestionCQR(
            question: "Who was the first person to walk on the moon?",
            hint1: "It happened in 1969.",
            hint2: "His first name is Neil.",
            answer: "Neil Armstrong"
        ),
        Tab4QuestionCQR(
            question: "What is the largest bird in the world?",
            hint1: "It cannot fly.",
            hint2: "Its name starts with 'O'.",
            answer: "Ostrich"
        ),
        Tab4QuestionCQR(
            question: "How many hearts does an octopus have?",
            hint1: "It’s more than 2.",
            hint2: "It’s exactly 3.",
            answer: "3"
        ),
        Tab4QuestionCQR(
            question: "What is the main gas in the air we breathe?",
            hint1: "It makes up about 78% of the atmosphere.",
            hint2: "It starts with 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionCQR(
            question: "Which planet is closest to the Sun?",
            hint1: "It’s a small rocky planet.",
            hint2: "Its name starts with 'M'.",
            answer: "Mercury"
        ),
        Tab4QuestionCQR(
            question: "What is the chemical symbol for oxygen?",
            hint1: "It’s a single letter.",
            hint2: "It’s 'O'.",
            answer: "O"
        ),
        Tab4QuestionCQR(
            question: "How many grams are in a kilogram?",
            hint1: "It’s a round number.",
            hint2: "It’s 1000.",
            answer: "1000"
        ),
        Tab4QuestionCQR(
            question: "What is the national flower of Japan?",
            hint1: "It blooms in spring.",
            hint2: "It’s the cherry blossom.",
            answer: "Cherry Blossom"
        ),
        Tab4QuestionCQR(
            question: "Who invented the telephone?",
            hint1: "His initials are A.G.B.",
            hint2: "His surname is Bell.",
            answer: "Alexander Graham Bell"
        ),
        Tab4QuestionCQR(
            question: "What is the most spoken language in the world?",
            hint1: "It’s widely spoken in Asia.",
            hint2: "It’s Mandarin Chinese.",
            answer: "Mandarin"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Canada?",
            hint1: "It’s not Toronto or Vancouver.",
            hint2: "It starts with 'O'.",
            answer: "Ottawa"
        ),
        Tab4QuestionCQR(
            question: "What part of the human body contains the most bones?",
            hint1: "It’s at the end of your limbs.",
            hint2: "It’s your hand.",
            answer: "Hand"
        ),
        Tab4QuestionCQR(
            question: "What is the national sport of Japan?",
            hint1: "It involves large wrestlers.",
            hint2: "It’s sumo wrestling.",
            answer: "Sumo"
        ),
        Tab4QuestionCQR(
            question: "What is the closest star to Earth?",
            hint1: "It provides light and heat.",
            hint2: "It’s the Sun.",
            answer: "Sun"
        ),
        Tab4QuestionCQR(
            question: "How many teeth does an adult human have?",
            hint1: "It’s more than 30.",
            hint2: "It’s exactly 32.",
            answer: "32"
        ),
        Tab4QuestionCQR(
            question: "Who painted the ceiling of the Sistine Chapel?",
            hint1: "He was also a sculptor.",
            hint2: "His first name is Michelangelo.",
            answer: "Michelangelo"
        ),
        Tab4QuestionCQR(
            question: "What is the tallest animal in the world?",
            hint1: "It has a long neck.",
            hint2: "It’s a giraffe.",
            answer: "Giraffe"
        ),
        Tab4QuestionCQR(
            question: "What is the hardest-working muscle in the human body?",
            hint1: "It pumps blood.",
            hint2: "It’s the heart.",
            answer: "Heart"
        ),
        Tab4QuestionCQR(
            question: "Which ocean is the deepest?",
            hint1: "It’s the largest ocean.",
            hint2: "It’s the Pacific Ocean.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionCQR(
            question: "What color are emeralds?",
            hint1: "It’s a color found in nature.",
            hint2: "It’s green.",
            answer: "Green"
        ),
        Tab4QuestionCQR(
            question: "What is the largest island in the world?",
            hint1: "It’s covered in ice.",
            hint2: "It’s Greenland.",
            answer: "Greenland"
        ),
        Tab4QuestionCQR(
            question: "What is the smallest unit of matter?",
            hint1: "It starts with 'A'.",
            hint2: "It’s the atom.",
            answer: "Atom"
        ),
        Tab4QuestionCQR(
            question: "Which fruit is known for its high potassium content?",
            hint1: "It’s yellow when ripe.",
            hint2: "It’s a banana.",
            answer: "Banana"
        ),
        Tab4QuestionCQR(
            question: "What does the Richter scale measure?",
            hint1: "It’s related to natural disasters.",
            hint2: "It measures earthquakes.",
            answer: "Earthquakes"
        ),
        Tab4QuestionCQR(
            question: "How many stripes are on the American flag?",
            hint1: "It’s more than 10.",
            hint2: "It’s 13.",
            answer: "13"
        ),
        Tab4QuestionCQR(
            question: "Which planet has a ring system?",
            hint1: "It’s known for its rings.",
            hint2: "It’s Saturn.",
            answer: "Saturn"
        ),
        Tab4QuestionCQR(
            question: "What is the chemical symbol for iron?",
            hint1: "It’s two letters.",
            hint2: "It’s Fe.",
            answer: "Fe"
        ),
        Tab4QuestionCQR(
            question: "How many liters are in a gallon?",
            hint1: "It’s more than 3.",
            hint2: "It’s about 3.78.",
            answer: "3.78"
        ),
        Tab4QuestionCQR(
            question: "Which mammal can fly?",
            hint1: "It’s not a bird.",
            hint2: "It’s a bat.",
            answer: "Bat"
        ),
        Tab4QuestionCQR(
            question: "What is the name of the red planet?",
            hint1: "It’s part of our solar system.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4QuestionCQR(
            question: "What is the boiling point of water in Celsius?",
            hint1: "It’s a round number.",
            hint2: "It’s 100.",
            answer: "100"
        ),
        Tab4QuestionCQR(
            question: "Which instrument is used to measure temperature?",
            hint1: "It starts with 'T'.",
            hint2: "It’s a thermometer.",
            answer: "Thermometer"
        ),
        Tab4QuestionCQR(
            question: "What is the most abundant gas in Earth's atmosphere?",
            hint1: "It’s not oxygen.",
            hint2: "It’s nitrogen.",
            answer: "Nitrogen"
        ),
        Tab4QuestionCQR(
            question: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He’s an English playwright.",
            hint2: "His surname is Shakespeare.",
            answer: "William Shakespeare"
        ),
        Tab4QuestionCQR(
            question: "What is the largest mammal in the world?",
            hint1: "It lives in the ocean.",
            hint2: "It’s the blue whale.",
            answer: "Blue whale"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Italy?",
            hint1: "It’s known for ancient ruins.",
            hint2: "It’s Rome.",
            answer: "Rome"
        ),
        Tab4QuestionCQR(
            question: "Which ocean is the largest?",
            hint1: "It’s between Asia and America.",
            hint2: "It’s the Pacific Ocean.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionCQR(
            question: "What is the square root of 81?",
            hint1: "It’s a whole number.",
            hint2: "It’s 9.",
            answer: "9"
        ),
        Tab4QuestionCQR(
            question: "What type of animal is a Komodo dragon?",
            hint1: "It’s a reptile.",
            hint2: "It’s a lizard.",
            answer: "Lizard"
        ),
        Tab4QuestionCQR(
            question: "How many continents are there on Earth?",
            hint1: "It’s less than 10.",
            hint2: "It’s 7.",
            answer: "7"
        ),
        Tab4QuestionCQR(
            question: "What is the freezing point of water in Celsius?",
            hint1: "It’s a round number.",
            hint2: "It’s 0.",
            answer: "0"
        ),
        Tab4QuestionCQR(
            question: "What is the chemical symbol for gold?",
            hint1: "It’s two letters.",
            hint2: "It’s Au.",
            answer: "Au"
        ),
        Tab4QuestionCQR(
            question: "Which planet is known as the 'Morning Star'?",
            hint1: "It’s named after a goddess.",
            hint2: "It’s Venus.",
            answer: "Venus"
        ),
        Tab4QuestionCQR(
            question: "How many legs does a spider have?",
            hint1: "It’s more than 6.",
            hint2: "It’s 8.",
            answer: "8"
        ),
        Tab4QuestionCQR(
            question: "What is the national animal of Australia?",
            hint1: "It hops.",
            hint2: "It’s the kangaroo.",
            answer: "Kangaroo"
        ),
        Tab4QuestionCQR(
            question: "Which planet is famous for its red appearance?",
            hint1: "It’s named after a Roman god of war.",
            hint2: "It’s Mars.",
            answer: "Mars"
        ),
        Tab4QuestionCQR(
            question: "Who painted the Mona Lisa?",
            hint1: "He was a Renaissance artist.",
            hint2: "His name is Leonardo da Vinci.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionCQR(
            question: "What is the national dish of Japan?",
            hint1: "It involves raw fish.",
            hint2: "It’s sushi.",
            answer: "Sushi"
        ),
        Tab4QuestionCQR(
            question: "Which part of the body has the smallest bones?",
            hint1: "It’s on your head.",
            hint2: "It’s the ear.",
            answer: "Ear"
        ),
        Tab4QuestionCQR(
            question: "How many planets are in our solar system?",
            hint1: "It’s less than 10.",
            hint2: "It’s 8.",
            answer: "8"
        ),
        Tab4QuestionCQR(
            question: "What is the currency of Japan?",
            hint1: "It starts with 'Y'.",
            hint2: "It’s yen.",
            answer: "Yen"
        ),
        Tab4QuestionCQR(
            question: "Who discovered gravity?",
            hint1: "An apple is involved.",
            hint2: "It’s Isaac Newton.",
            answer: "Isaac Newton"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Spain?",
            hint1: "It starts with 'M'.",
            hint2: "It’s Madrid.",
            answer: "Madrid"
        ),
        Tab4QuestionCQR(
            question: "What is the fastest aquatic animal?",
            hint1: "It’s a type of fish.",
            hint2: "It’s the sailfish.",
            answer: "Sailfish"
        ),
        Tab4QuestionCQR(
            question: "What is the smallest bone in the human body?",
            hint1: "It’s in the ear.",
            hint2: "It’s the stapes.",
            answer: "Stapes"
        ),
        Tab4QuestionCQR(
            question: "What does 'H2O' stand for?",
            hint1: "It’s a molecule.",
            hint2: "It’s water.",
            answer: "Water"
        ),
        Tab4QuestionCQR(
            question: "Which planet is the largest in the solar system?",
            hint1: "It’s a gas giant.",
            hint2: "It’s Jupiter.",
            answer: "Jupiter"
        ),
        Tab4QuestionCQR(
            question: "What is the capital of Germany?",
            hint1: "It’s a major European city.",
            hint2: "It’s Berlin.",
            answer: "Berlin"
        ),
        Tab4QuestionCQR(
            question: "Who wrote 'The Theory of Relativity'?",
            hint1: "His initials are A.E.",
            hint2: "It’s Albert Einstein.",
            answer: "Albert Einstein"
        ),
        Tab4QuestionCQR(
            question: "How many players are on a soccer team on the field?",
            hint1: "It’s less than 12.",
            hint2: "It’s 11.",
            answer: "11"
        ),
        Tab4QuestionCQR(
            question: "Which animal is known as the 'King of the Jungle'?",
            hint1: "It’s a large cat.",
            hint2: "It’s the lion.",
            answer: "Lion"
        ),
        Tab4QuestionCQR(
            question: "What is the currency of the United Kingdom?",
            hint1: "It’s not the euro.",
            hint2: "It’s the pound.",
            answer: "Pound"
        ),
        Tab4QuestionCQR(
            question: "Which animal is the symbol of the United States?",
            hint1: "It’s a bird of prey.",
            hint2: "It’s the bald eagle.",
            answer: "Bald eagle"
        ),
        Tab4QuestionCQR(
            question: "What is the hardest natural substance?",
            hint1: "It’s often used in jewelry.",
            hint2: "It’s diamond.",
            answer: "Diamond"
        ),
        Tab4QuestionCQR(
            question: "What is the main ingredient in guacamole?",
            hint1: "It’s a green fruit.",
            hint2: "It’s avocado.",
            answer: "Avocado"
        ),
        Tab4QuestionCQR(
            question: "Which sea creature has three hearts?",
            hint1: "It’s a cephalopod.",
            hint2: "It’s an octopus.",
            answer: "Octopus"
        )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
