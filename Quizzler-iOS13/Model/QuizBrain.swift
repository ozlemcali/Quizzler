

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "Siirt, Doğu Anadolu Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Malatya İç Anadolu Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Hatay Akdeniz Bölgesi'ndedir.", a: "Doğru"),
                Question(q: "Manisa Ege Bölgesi'ndedir.", a: "Doğru"),
                Question(q: "Düzce Marmara Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Afyon İç Anadolu Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Çorum Karadeniz Bölgesin'dedir.", a: "Doğru"),
                Question(q: "Bilecik Marmara Bölgesi'ndedir.", a: "Doğru"),
                Question(q: "Kahramanmaraş Güneydoğu Anadolu Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Ardahan Karadeniz Bölgesi'ndedir.", a: "Yanlış"),
                Question(q: "Kırıklareli Marmara Bölgesi'ndedir.", a: "Doğru"),
                Question(q: "Tokat Karadeniz Bölgesi'ndedir.", a: "Doğru")
        
    ]
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer : String)-> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
        
    }
    
    func getScore()->Int{
        return score
        
    }
     
    
    func getQuestionText()->String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
   mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
}
