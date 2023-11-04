//
//  FinalPage.swift
//  dietPlanner
//
//  Created by Student on 26/10/23.
//  Copyright © 2023 Lovely Profesional University. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
class FinalPage: UIViewController {

    var firstname : String = ""
    var age : String = ""
    var bmi : String = ""
    var category : String = ""
    
    var vlc : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let song_url = Bundle.main.path(forResource: "fmab", ofType: "mp3")
            try vlc = AVAudioPlayer(contentsOf: NSURL(string: song_url!)! as URL)
            vlc.play()
        } catch
        {}
        
        welcomename.text = "Welcome \(firstname)"
        let bbmi = Int(bmi) ?? 24
        let aage = Int(age) ?? 30
        
        if bbmi < 18 && aage < 24 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Oatmeal with almond butter, chia seeds, and sliced bananas A glass of fortified plant-based milk"
            mainText2.text = "Quinoa and black bean salad with lots of colorful vegetables A side of hummus and whole-grain pita"
            mainText3.text = "Greek yogurt with honey and mixed berries Mixed nuts"
            mainText4.text = "Baked sweet potato with chickpea and spinach curry A side of steamed broccoli"
        }
        else if bbmi < 25 && bbmi > 18  && aage < 24 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled tofu with bell peppers and tomatoes Whole-grain toast"
            mainText2.text = "Lentil and vegetable stir-fry with brown rice a side ofmixed greens"
            mainText3.text = "Sliced cucumber and carrot sticks with hummus A piece of fruit (apple or pear)"
            mainText4.text = "Baked portobello mushrooms stuffed with quinoa and herbs Steamed asparagus"
        }
        else if bbmi < 30 && bbmi > 25  && aage < 24 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Whole-grain cereal with almond milk and mixed  berries Green tea"
            mainText2.text = "Mixed vegetable and tofu stir-fry with a light ginger-soy sauce A side of steamed bok choy"
            mainText3.text = "Sliced bell peppers and cherry tomatoes with guacamole Greek yogurt with a drizzle of honey"
            mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
        }
        else if bbmi > 30  && aage < 24 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with plant-based protein powder, spinach,and a banana Whole-grain toast with avocado"
            mainText2.text = "Chickpea and vegetable curry with brown rice A side of sautéed kale"
            mainText3.text = "Sliced apples with almond butter A handful of mixed nuts"
            mainText4.text = "Baked cauliflower steaks with quinoa and roasted Brussels sprouts A side salad with a light vinaigrette dressing"
        }
        else if bbmi < 19 && aage > 24 && aage < 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Oatmeal with almond butter, chia seeds, and fresh berries A glass of fortified plant-based milk"
            mainText2.text = "Quinoa and black bean salad with lots of vegetables A side of hummus and whole-grain pita"
            mainText3.text = "Greek yogurt with honey and sliced banana Mixed nuts"
            mainText4.text = "Baked sweet potato with chickpea and spinach curry A side of steamed broccoli"
        }
        else if bbmi < 25 && bbmi > 19  && aage > 24 && aage < 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled tofu with sautéed spinach, tomatoes, and whole-grain toast Freshly squeezed orange juice"
            mainText2.text = "Lentil and vegetable stir-fry with brown rice A side of kimchi"
            mainText3.text = "Sliced cucumber and carrot sticks with hummus A handful of grapes"
            mainText4.text = "Baked portobello mushrooms stuffed with quinoa and herbs Grilled asparagus"
        }
        else if bbmi < 30 && bbmi > 25  && aage > 24 && aage < 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Green smoothie with kale, banana, and chia seeds Whole-grain toast with avocado"
            mainText2.text = "Mixed vegetable and tofu stir-fry with a ginger-soy sauce A side of steamed bok choy"
            mainText3.text = "Sliced bell peppers with guacamole Greek yogurt with a drizzle of honey"
            mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
        }
        else if bbmi > 30  && aage > 24 && aage < 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with plant-based protein powder, mixed berries,and spinach Whole-grain toast with almond butter"
            mainText2.text = "Chickpea and vegetable curry with brown rice A side of mixed greens"
            mainText3.text = "Sliced apples with almond butter A handful of almonds"
            mainText4.text = "Baked cauliflower steaks with quinoa and sautéed kale A side of roasted Brussels sprouts"
        }
        else if bbmi < 19 && aage > 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Oatmeal with chopped nuts, dried fruits, and a drizzle of honey A glass of fortified plant-based milk"
            mainText2.text = "Lentil and vegetable soup with whole-grain bread A side salad with a light vinaigrette dressing"
            mainText3.text = "Greek yogurt with sliced bananas Carrot and celery sticks with hummus    "
            mainText4.text = "Baked sweet potato with a chickpea and vegetable curry Steamed broccoli"
        }
        else if bbmi < 25 && bbmi > 19  && aage > 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled tofu with spinach, tomatoes, and whole-grain toast Freshly squeezed orange juice"
            mainText2.text = "Quinoa and black bean salad with lots of vegetable A side of guacamole with whole-grain crackers"
            mainText3.text = "Sliced cucumber and cherry tomatoes Greek yogurt with a drizzle of honey"
            mainText4.text = "Stuffed bell peppers with brown rice, black beans, and a tomato sauce Steamed asparagus"
        }
        else if bbmi < 30 && bbmi > 25  && aage > 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Whole-grain cereal with almond milk and mixed berries Green tea"
            mainText2.text = "Chickpea and vegetable stir-fry with brown rice A side of kimchi"
            mainText3.text = "Sliced apples with almond butter Mixed nuts"
            mainText4.text = "Baked cauliflower steaks with quinoa and sautéed kale Roasted Brussels sprouts"
        }
        else if bbmi > 30  && aage > 45 && category == "veg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with plant-based protein powder, spinach, and almond butter Whole-grain toast"
            mainText2.text = "Mixed vegetable and tofu stir-fry with a ginger-soy sauce A side of steamed bok choy"
            mainText3.text = "Sliced bell peppers with hummus Greek yogurt with pineapple chunks"
            mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
        }
        else if bbmi < 19 && aage < 24 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk"
            mainText2.text = "Grilled chicken breast with quinoa and mixed vegetables A side salad with vinaigrette dressing"
            mainText3.text = "Greek yogurt with honey and mixed berries Almonds"
            mainText4.text = "Baked salmon with a lemon-dill sauce Steamed broccoli and brown rice"
        }
        else if bbmi < 25 && bbmi > 19  && aage < 24 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Omelette with mushrooms, bell peppers, and cheese Whole-grain toast"
            mainText2.text = "Tuna salad with mixed greens and a whole-grain roll Sliced cucumber and cherry tomatoes"
            mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
            mainText4.text = "Grilled shrimp with quinoa and roasted asparagus A side salad with a light dressing"
        }
        else if bbmi < 30 && bbmi > 25  && aage < 24 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
            mainText2.text = "Turkey and avocado wrap with a side of mixed greens A fruit salad"
            mainText3.text = "Sliced apples with peanut butter Mixed nuts"
            mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
        }
        else if bbmi > 30  && aage < 24 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with whey protein, banana, and spinach Whole-grain toast"
            mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
            mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
            mainText4.text = "Baked cod with a side of quinoa and mixed vegetables Roasted Brussels sprouts"
        }
        else if bbmi < 19 && aage > 24 && aage < 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk"
            mainText2.text = "Grilled chicken breast with quinoa and mixed vegetables A side salad with vinaigrette dressing"
            mainText3.text = "Greek yogurt with honey and mixed berries Almonds"
            mainText4.text = "Baked salmon with a lemon-dill sauce Steamed broccoli and brown rice"
        }
        else if bbmi < 25 && bbmi > 19  && aage > 24 && aage < 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Omelette with mushrooms, bell peppers, and cheese Whole-grain toast"
            mainText2.text = "Tuna salad with mixed greens and a whole-grain roll Sliced cucumber and cherry tomatoes"
            mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
            mainText4.text = "Grilled shrimp with quinoa and roasted asparagus A side salad with a light dressing"
        }
        else if bbmi < 30 && bbmi > 25  && aage > 24 && aage < 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
            mainText2.text = "Turkey and avocado wrap with a side of mixed greens A fruit salad"
            mainText3.text = "Sliced apples with peanut butter Mixed nuts"
            mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
        }
        else if bbmi > 30  && aage > 24 && aage < 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with whey protein, banana, and spinach Whole-grain toast"
            mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
            mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
            mainText4.text = "Baked cod with a side of quinoa and mixed vegetables Roasted Brussels sprouts"
        }
        else if bbmi < 19 && aage > 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk or fortified plant-based milk"
            mainText2.text = "Grilled chicken breast with quinoa and steamed broccoli A side salad with vinaigrette dressing"
            mainText3.text = "Greek yogurt with honey and mixed berries Almonds or walnuts"
            mainText4.text = "Baked salmon with a lemon-dill sauce Sautéed asparagus and brown rice"
        }
        else if bbmi < 25 && bbmi > 19  && aage > 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Omelette with tomatoes, mushrooms, and cheese Whole-grain toast"
            mainText2.text = "Grilled shrimp with a quinoa salad and mixed greens A side of sliced cucumber and cherry tomatoes"
            mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
            mainText4.text = "Baked cod with a side of quinoa and roasted Brussels sprouts A side salad with a light dressing"
        }
        else if bbmi < 30 && bbmi > 25  && aage > 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
            mainText2.text = "Turkey and avocado sandwich with whole-grain bread A side of mixed greens with balsamic vinaigrette"
            mainText3.text = "Sliced apples with peanut butter Mixed nuts or seeds"
            mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
        }
        else if bbmi > 30  && aage > 45 && category == "nonveg"
        {
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with whey protein, spinach, and almond butter Whole-grain toast"
            mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
            mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
            mainText4.text = "Grilled salmon with quinoa and mixed vegetables Roasted asparagus"
        }else{
            l1.text = "Break Fast :"
            l2.text = "Lunch :"
            l3.text = "Snacks :"
            l4.text = "Dinner :"
            mainText.text = "Protein smoothie with whey protein, spinach, and almond butter Whole-grain toast"
            mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
            mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
            mainText4.text = "Grilled salmon with quinoa and mixed vegetables Roasted asparagus"
        }
    }
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var mainText2: UILabel!
    @IBOutlet weak var mainText3: UILabel!
    @IBOutlet weak var mainText4: UILabel!
    @IBOutlet weak var mainText5: UILabel!
    
    @IBOutlet weak var welcomename: UILabel!
    
    @IBOutlet weak var segmentDiet: UISegmentedControl!
    
    @IBAction func segmentAction(_ sender: Any) {
        
        if segmentDiet.selectedSegmentIndex == 0
        {
            mainText5.text = ""
            let bbmi = Int(bmi) ?? 24
            let aage = Int(age) ?? 30
            if bbmi < 18 && aage < 24 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Oatmeal with almond butter, chia seeds, and sliced bananas A glass of fortified plant-based milk"
                mainText2.text = "Quinoa and black bean salad with lots of colorful vegetables A side of hummus and whole-grain pita"
                mainText3.text = "Greek yogurt with honey and mixed berries Mixed nuts"
                mainText4.text = "Baked sweet potato with chickpea and spinach curry A side of steamed broccoli"
            }
            else if bbmi < 25 && bbmi > 18  && aage < 24 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled tofu with bell peppers and tomatoes Whole-grain toast"
                mainText2.text = "Lentil and vegetable stir-fry with brown rice a side ofmixed greens"
                mainText3.text = "Sliced cucumber and carrot sticks with hummus A piece of fruit (apple or pear)"
                mainText4.text = "Baked portobello mushrooms stuffed with quinoa and herbs Steamed asparagus"
            }
            else if bbmi < 30 && bbmi > 25  && aage < 24 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Whole-grain cereal with almond milk and mixed  berries Green tea"
                mainText2.text = "Mixed vegetable and tofu stir-fry with a light ginger-soy sauce A side of steamed bok choy"
                mainText3.text = "Sliced bell peppers and cherry tomatoes with guacamole Greek yogurt with a drizzle of honey"
                mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
            }
            else if bbmi > 30  && aage < 24 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with plant-based protein powder, spinach,and a banana Whole-grain toast with avocado"
                mainText2.text = "Chickpea and vegetable curry with brown rice A side of sautéed kale"
                mainText3.text = "Sliced apples with almond butter A handful of mixed nuts"
                mainText4.text = "Baked cauliflower steaks with quinoa and roasted Brussels sprouts A side salad with a light vinaigrette dressing"
            }
            else if bbmi < 19 && aage > 24 && aage < 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Oatmeal with almond butter, chia seeds, and fresh berries A glass of fortified plant-based milk"
                mainText2.text = "Quinoa and black bean salad with lots of vegetables A side of hummus and whole-grain pita"
                mainText3.text = "Greek yogurt with honey and sliced banana Mixed nuts"
                mainText4.text = "Baked sweet potato with chickpea and spinach curry A side of steamed broccoli"
            }
            else if bbmi < 25 && bbmi > 19  && aage > 24 && aage < 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled tofu with sautéed spinach, tomatoes, and whole-grain toast Freshly squeezed orange juice"
                mainText2.text = "Lentil and vegetable stir-fry with brown rice A side of kimchi"
                mainText3.text = "Sliced cucumber and carrot sticks with hummus A handful of grapes"
                mainText4.text = "Baked portobello mushrooms stuffed with quinoa and herbs Grilled asparagus"
            }
            else if bbmi < 30 && bbmi > 25  && aage > 24 && aage < 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Green smoothie with kale, banana, and chia seeds Whole-grain toast with avocado"
                mainText2.text = "Mixed vegetable and tofu stir-fry with a ginger-soy sauce A side of steamed bok choy"
                mainText3.text = "Sliced bell peppers with guacamole Greek yogurt with a drizzle of honey"
                mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
            }
            else if bbmi > 30  && aage > 24 && aage < 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with plant-based protein powder, mixed berries,and spinach Whole-grain toast with almond butter"
                mainText2.text = "Chickpea and vegetable curry with brown rice A side of mixed greens"
                mainText3.text = "Sliced apples with almond butter A handful of almonds"
                mainText4.text = "Baked cauliflower steaks with quinoa and sautéed kale A side of roasted Brussels sprouts"
            }
            else if bbmi < 19 && aage > 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Oatmeal with chopped nuts, dried fruits, and a drizzle of honey A glass of fortified plant-based milk"
                mainText2.text = "Lentil and vegetable soup with whole-grain bread A side salad with a light vinaigrette dressing"
                mainText3.text = "Greek yogurt with sliced bananas Carrot and celery sticks with hummus    "
                mainText4.text = "Baked sweet potato with a chickpea and vegetable curry Steamed broccoli"
            }
            else if bbmi < 25 && bbmi > 19  && aage > 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled tofu with spinach, tomatoes, and whole-grain toast Freshly squeezed orange juice"
                mainText2.text = "Quinoa and black bean salad with lots of vegetable A side of guacamole with whole-grain crackers"
                mainText3.text = "Sliced cucumber and cherry tomatoes Greek yogurt with a drizzle of honey"
                mainText4.text = "Stuffed bell peppers with brown rice, black beans, and a tomato sauce Steamed asparagus"
            }
            else if bbmi < 30 && bbmi > 25  && aage > 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Whole-grain cereal with almond milk and mixed berries Green tea"
                mainText2.text = "Chickpea and vegetable stir-fry with brown rice A side of kimchi"
                mainText3.text = "Sliced apples with almond butter Mixed nuts"
                mainText4.text = "Baked cauliflower steaks with quinoa and sautéed kale Roasted Brussels sprouts"
            }
            else if bbmi > 30  && aage > 45 && category == "veg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with plant-based protein powder, spinach, and almond butter Whole-grain toast"
                mainText2.text = "Mixed vegetable and tofu stir-fry with a ginger-soy sauce A side of steamed bok choy"
                mainText3.text = "Sliced bell peppers with hummus Greek yogurt with pineapple chunks"
                mainText4.text = "Butternut squash and lentil soup A side salad with a light vinaigrette"
            }
            else if bbmi < 19 && aage < 24 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk"
                mainText2.text = "Grilled chicken breast with quinoa and mixed vegetables A side salad with vinaigrette dressing"
                mainText3.text = "Greek yogurt with honey and mixed berries Almonds"
                mainText4.text = "Baked salmon with a lemon-dill sauce Steamed broccoli and brown rice"
            }
            else if bbmi < 25 && bbmi > 19  && aage < 24 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Omelette with mushrooms, bell peppers, and cheese Whole-grain toast"
                mainText2.text = "Tuna salad with mixed greens and a whole-grain roll Sliced cucumber and cherry tomatoes"
                mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
                mainText4.text = "Grilled shrimp with quinoa and roasted asparagus A side salad with a light dressing"
            }
            else if bbmi < 30 && bbmi > 25  && aage < 24 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
                mainText2.text = "Turkey and avocado wrap with a side of mixed greens A fruit salad"
                mainText3.text = "Sliced apples with peanut butter Mixed nuts"
                mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
            }
            else if bbmi > 30  && aage < 24 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with whey protein, banana, and spinach Whole-grain toast"
                mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
                mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
                mainText4.text = "Baked cod with a side of quinoa and mixed vegetables Roasted Brussels sprouts"
            }
            else if bbmi < 19 && aage > 24 && aage < 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk"
                mainText2.text = "Grilled chicken breast with quinoa and mixed vegetables A side salad with vinaigrette dressing"
                mainText3.text = "Greek yogurt with honey and mixed berries Almonds"
                mainText4.text = "Baked salmon with a lemon-dill sauce Steamed broccoli and brown rice"
            }
            else if bbmi < 25 && bbmi > 19  && aage > 24 && aage < 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Omelette with mushrooms, bell peppers, and cheese Whole-grain toast"
                mainText2.text = "Tuna salad with mixed greens and a whole-grain roll Sliced cucumber and cherry tomatoes"
                mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
                mainText4.text = "Grilled shrimp with quinoa and roasted asparagus A side salad with a light dressing"
            }
            else if bbmi < 30 && bbmi > 25  && aage > 24 && aage < 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
                mainText2.text = "Turkey and avocado wrap with a side of mixed greens A fruit salad"
                mainText3.text = "Sliced apples with peanut butter Mixed nuts"
                mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
            }
            else if bbmi > 30  && aage > 24 && aage < 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with whey protein, banana, and spinach Whole-grain toast"
                mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
                mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
                mainText4.text = "Baked cod with a side of quinoa and mixed vegetables Roasted Brussels sprouts"
            }
            else if bbmi < 19 && aage > 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Scrambled eggs with spinach and whole-grain toast A glass of milk or fortified plant-based milk"
                mainText2.text = "Grilled chicken breast with quinoa and steamed broccoli A side salad with vinaigrette dressing"
                mainText3.text = "Greek yogurt with honey and mixed berries Almonds or walnuts"
                mainText4.text = "Baked salmon with a lemon-dill sauce Sautéed asparagus and brown rice"
            }
            else if bbmi < 25 && bbmi > 19  && aage > 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Omelette with tomatoes, mushrooms, and cheese Whole-grain toast"
                mainText2.text = "Grilled shrimp with a quinoa salad and mixed greens A side of sliced cucumber and cherry tomatoes"
                mainText3.text = "Cottage cheese with pineapple chunks Carrot and celery sticks with hummus"
                mainText4.text = "Baked cod with a side of quinoa and roasted Brussels sprouts A side salad with a light dressing"
            }
            else if bbmi < 30 && bbmi > 25  && aage > 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Greek yogurt with granola and mixed berries A glass of water or herbal tea"
                mainText2.text = "Turkey and avocado sandwich with whole-grain bread A side of mixed greens with balsamic vinaigrette"
                mainText3.text = "Sliced apples with peanut butter Mixed nuts or seeds"
                mainText4.text = "Baked chicken thighs with sweet potato and steamed green beans A side salad with a vinaigrette dressing"
            }
            else if bbmi > 30  && aage > 45 && category == "nonveg"
            {
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with whey protein, spinach, and almond butter Whole-grain toast"
                mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
                mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
                mainText4.text = "Grilled salmon with quinoa and mixed vegetables Roasted asparagus"
            }else{
                l1.text = "Break Fast :"
                l2.text = "Lunch :"
                l3.text = "Snacks :"
                l4.text = "Dinner :"
                mainText.text = "Protein smoothie with whey protein, spinach, and almond butter Whole-grain toast"
                mainText2.text = "Beef stir-fry with broccoli, brown rice, and a ginger-soy sauce A side of sautéed spinach"
                mainText3.text = "Cottage cheese with tomato and basil Sliced bell peppers with guacamole"
                mainText4.text = "Grilled salmon with quinoa and mixed vegetables Roasted asparagus"
            }
            
        }else if segmentDiet.selectedSegmentIndex == 1
        {
            let aage = Int(age) ?? 24
            let bbmi = Int(bmi) ?? 24
            if aage < 25 && bbmi < 19
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-up: 5-10 minutes of light cardio (jumping jacks, jogging in place). Strength Training (2-3 times a week): Push-ups: 2 sets of 10-12 reps. Bodyweight squats: 2 sets of 10-12 reps. Planks: Hold for 20-30 seconds, 2 sets. Cardio (3-4 times a week): Jump rope or jumping jacks: 15-20 minutes. Cool-down: Stretching exercises for 10-15 minutes."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage < 25 && bbmi > 19 && bbmi < 25
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-up: 5-10 minutes of light cardio (skipping, jogging). Strength Training (2-3 times a week): Push-ups: 3 sets of 10-15 reps. Bodyweight squats: 3 sets of 12-15 reps. Planks: Hold for 30-40 seconds, 2-3 sets. Cardio (3-4 times a week): Running or brisk walking: 20-30 minutes. Cool-down: Stretching exercises for 15-20 minutes."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage < 25 && bbmi > 25 && bbmi < 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-up: 5-10 minutes of light cardio (jumping jacks, high knees). Strength Training (2-3 times a week): Push-ups: 2 sets of 8-10 reps. Bodyweight squats: 2 sets of 10-12 reps. Planks: Hold for 20-30 seconds, 2 sets. Cardio (3-4 times a week): Jump rope or stationary cycling: 15-20 minutes. Cool-down: Stretching exercises for 10-15 minutes."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage < 25 && bbmi > 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-up: 5-10 minutes of light cardio (marching in place, leg swings). Strength Training (2-3 times a week): Modified push-ups (knees on the ground): 2 sets of 8-10 reps. Bodyweight squats: 2 sets of 10-12 reps. Planks: Hold for 20-30 seconds, 2 sets. Cardio (3-4 times a week): Low-impact aerobics or swimming: 20-30 minutes. Cool-down: Stretching exercises for 10-15 minutes."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 25 && aage < 45 && bbmi < 19
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes):Jumping jacks , Arm circles , Leg swings , High knees Cardio: Jump rope for 10-15 minutes Strength: Push-ups (10-12 reps) Bodyweight squats (12-15 reps) Planks (hold for 30 seconds) Cool-Down (5-10 minutes): Stretching exercises for major muscle groups: hamstrings, quadriceps, chest, shoulders, and back."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 25 && aage < 45 && bbmi > 19 && bbmi < 25
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes):Jumping jacks , Arm circles , Leg swings , High knees Cardio: Jog in place for 15-20 minutes Strength: Push-ups (12-15 reps) Lunges (12-15 reps per leg) Russian twists (12-15 reps per side) Cool-Down (5-10 minutes): Stretching exercises for major muscle groups: hamstrings, quadriceps, chest, shoulders, and back."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 25 && aage < 45 && bbmi > 25 && bbmi < 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes):Jumping jacks , Arm circles , Leg swings , High knees Cardio: High knees in place for 15-20 minutes Strength: Wall sits (hold for 30-45 seconds) Dumbbell curls (8-10 reps with light weights) Modified push-ups (as many as you can) Cool-Down (5-10 minutes): Stretching exercises for major muscle groups: hamstrings, quadriceps, chest, shoulders, and back."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 25 && aage < 45 && bbmi > 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes):Jumping jacks , Arm circles , Leg swings , High knees Cardio: Burpees for 15-20 minutes Strength: Bodyweight squats (15-20 reps) Planks (hold for 45 seconds to 1 minute) Bent-over dumbbell rows (8-10 reps with light weights) Cool-Down (5-10 minutes): Stretching exercises for major muscle groups: hamstrings, quadriceps, chest, shoulders, and back."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 45 && bbmi < 19
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes): Start with light cardio exercises to raise your heart rate and warm up your muscles. Options include marching in place, high knees, arm circles, or light jumping jacks. Bodyweight Squats (Legs): Stand with feet shoulder-width apart. Lower your body by bending your knees, as if you're sitting in a chair. Keep your back straight and chest up. Perform 3 sets of 10-12 reps. Push-Ups (Chest, Shoulders, Triceps): Start with modified push-ups (knees on the ground if necessary). Keep your body in a straight line. Perform 3 sets of 8-10 reps. Planks (Core): Hold a plank position on your forearms and toes. Aim for 3 sets, holding for 20-30 seconds each. Standing Leg Raises (Balance and Leg Strength): Hold onto a sturdy support for balance. Lift one leg to the side, keeping it straight. Perform 3 sets of 10-12 reps per leg."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 45 && bbmi > 19 && bbmi < 25
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Lunges (Legs): Step forward with one foot and lower your body. Alternate legs for 3 sets of 10-12 reps per leg. Dumbbell Rows (Back, Biceps): Use household objects as dumbbells. Bend at the waist, keeping your back straight, and row the weights toward your hips. Perform 3 sets of 10-12 reps. Side Leg Raises (Hip Abductors): Stand with one hand on a sturdy support for balance. Raise one leg to the side. Perform 3 sets of 10-12 reps per leg. Plank (Core): Hold a plank position on your forearms and toes. Aim for 3 sets, holding for 30-45 seconds each."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 45 && bbmi > 25 && bbmi < 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes): Start with light cardio exercises to raise your heart rate and warm up your muscles. Options include marching in place, high knees, arm circles, or light jumping jacks. Wall Push-Ups (Chest, Shoulders, Triceps): Stand arms-length away from a wall. Perform push-ups against the wall. Aim for 3 sets of 10-12 reps. Chair Squats (Legs): Use a sturdy chair. Sit down and stand up without fully sitting. Perform 3 sets of 10-12 reps. Bent Knee Bridges (Glutes, Lower Back): Lie on your back with knees bent. Lift your hips off the ground. Perform 3 sets of 12-15 reps. Standing March (Low Impact Cardio): March in place for 5-10 minutes to raise your heart rate."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else if aage > 45 && bbmi > 30
            {
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes): Start with light cardio exercises to raise your heart rate and warm up your muscles. Options include marching in place, high knees, arm circles, or light jumping jacks. Seated Leg Lifts (Legs): Sit on a sturdy chair and extend one leg. Lift it as high as you comfortably can. Perform 3 sets of 10-12 reps per leg. Standing Wall Angels (Shoulders, Back): Stand with your back against a wall. Raise your arms to form a y shape. Perform 3 sets of 10-12 reps. Seated March (Low Impact Cardio): Sit in a chair and march in place. March for 5-10 minutes to raise your heart rate. Chair Dips (Triceps, Chest): Use a sturdy chair. Place your hands on the edge of the chair and dip your body down. Perform 3 sets of 10-12 reps."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }else{
                l1.text = ""
                l2.text = ""
                l3.text = ""
                l4.text = ""
                mainText5.text = "Warm-Up (5-10 minutes): Start with light cardio exercises to raise your heart rate and warm up your muscles. Options include marching in place, high knees, arm circles, or light jumping jacks. Seated Leg Lifts (Legs): Sit on a sturdy chair and extend one leg. Lift it as high as you comfortably can. Perform 3 sets of 10-12 reps per leg. Standing Wall Angels (Shoulders, Back): Stand with your back against a wall. Raise your arms to form a Y shape. Perform 3 sets of 10-12 reps. Seated March (Low Impact Cardio): Sit in a chair and march in place. March for 5-10 minutes to raise your heart rate. Chair Dips (Triceps, Chest): Use a sturdy chair. Place your hands on the edge of the chair and dip your body down. Perform 3 sets of 10-12 reps."
                mainText.text = ""
                mainText2.text = ""
                mainText3.text = ""
                mainText4.text = ""
            }
            
        }
        
        
    }
    
}
