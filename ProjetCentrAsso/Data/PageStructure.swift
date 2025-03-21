//
//  PageStructure.swift
//  ProjetCentrAsso
//
//  Created by apprenant77 on 07/03/2025.
//

import SwiftUI
import MapKit

struct ListDiscussion: Identifiable {
    let id = UUID()
    let pseudo : String
    let dateLastMessage : String
    let pdp : String
    let lastMessage : String
    let conversationPseudo : String
    
}

let listDiscussion1 = ListDiscussion(pseudo: "Sarah", dateLastMessage: "Aujourd'hui", pdp: "sarahpdp", lastMessage: "À plus tard !", conversationPseudo : "ConversationSarah")
let listDiscussion2 = ListDiscussion(pseudo: "John", dateLastMessage: "Hier", pdp: "johnpdp", lastMessage: "Ça roule ?", conversationPseudo : "ConversationJohn")
let listDiscussion3 = ListDiscussion(pseudo: "Sue-Lee", dateLastMessage: "08/03/25", pdp: "sueleepdp", lastMessage: "Bien arrivé !", conversationPseudo : "ConversationSue-Lee")
let listDiscussion4 = ListDiscussion(pseudo: "Maël", dateLastMessage: "02/03/25", pdp: "maelpdp", lastMessage: "On se capte ?", conversationPseudo: "ConversationMael")
let listDiscussion5 = ListDiscussion(pseudo: "Alain", dateLastMessage: "26/02/25", pdp: "alainpdp", lastMessage: "Bonne nuit !", conversationPseudo : "ConversationAlain")
let listDiscussion6 = ListDiscussion(pseudo: "Sylvain", dateLastMessage: "21/02/25", pdp: "sylvainpdp", lastMessage: "Haha trop drôle !", conversationPseudo : "ConversationSylvain")
let listDiscussion7 = ListDiscussion(pseudo: "Samuel", dateLastMessage: "08/01/25", pdp: "samuelpdp", lastMessage: "Ok, top !", conversationPseudo : "ConversationSamuel")

var arrayDiscussion = [listDiscussion1,listDiscussion2,listDiscussion3,listDiscussion4,listDiscussion5,listDiscussion6,listDiscussion7 ]

let ConversationSarah = [
    "Salut Sarah, comment tu vas ?",
    "Coucou ! Ça va bien, et toi ?",
    "Nickel ! T’as fait quoi aujourd’hui ?",
    "J’ai bossé un peu et regardé une série.",
    "Ah cool, c’était quoi comme série ?",
    "Un thriller, super prenant !",
    "Faudra que tu me donnes le titre !"
]

let ConversationJohn = [
    "Yo John, ça roule ?",
    "Yes, tranquille et toi ?",
    "Pareil, t’as prévu quoi ce soir ?",
    "Rien de spécial, un peu de gaming.",
    "Tu joues à quoi en ce moment ?",
    "Warzone, j’essaie de m’améliorer 😆",
    "Faut qu’on se fasse une partie un de ces jours !"
]

let ConversationSueLee = [
    "Hello Sue-Lee ! Bien arrivée ?",
    "Yes, c’était un long trajet mais ça va !",
    "T’as pris quoi comme transport ?",
    "L’avion, un vol de 12h… épuisant.",
    "Ah ouais, tu dois être claquée !",
    "Grave, mais je vais bien dormir ce soir !",
    "Repose-toi bien alors 😉"
]

let ConversationMael = [
    "Yo Maël, dispo pour discuter ?",
    "Yes, qu’est-ce qui se passe ?",
    "Je voulais ton avis sur un projet.",
    "Vas-y, raconte !",
    "C’est une app de discussion en SwiftUI.",
    "Ah stylé ! Tu veux ajouter quoi comme features ?",
    "Je pensais aux notifications et aux statuts en ligne."
]

let ConversationAlain = [
    "Salut Alain, t’as passé une bonne journée ?",
    "Oui, plutôt calme, et toi ?",
    "Pareil, pas grand-chose aujourd’hui.",
    "Des fois, ça fait du bien un peu de tranquillité.",
    "C’est clair, surtout en semaine !",
    "Bon, je vais me coucher. Bonne nuit !",
    "Bonne nuit à toi aussi !"
]

let ConversationSylvain = [
    "Hey Sylvain, comment ça va ?",
    "Bien bien, et toi ?",
    "Super ! Toujours en forme pour rigoler ?",
    "Évidemment 😆 T’as une blague pour moi ?",
    "Hmm… Pourquoi les plongeurs plongent-ils toujours en arrière ?",
    "Je sais pas, pourquoi ?",
    "Parce que sinon ils tombent dans le bateau ! 😂"
]

let ConversationSamuel = [
    "Yo Samuel, ça fait longtemps !",
    "Yes, comment tu vas ?",
    "Bien bien, et toi ?",
    "Pareil ! T’as du nouveau depuis la dernière fois ?",
    "Ouais, j’ai changé de taf !",
    "Ah sérieux ? Félicitations !",
    "Merci, ça me change du quotidien d’avant."
]

struct PageStructure: View {
    var body: some View {
        Text("Hello World")
    }
}

struct SearchBar: View {
    @Binding var textfield: String
    var body: some View {
            TextField(textfield, text: $textfield)
                .padding(7)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)
            
            if !textfield.isEmpty {
                Button(action: {
                    textfield = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
    }

struct Story: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let background: String
    let pdp: String
    let text1: String
    let text2: String
    var rotationDegrees1: Int
    var rotationDegrees2: Int
    let duration: TimeInterval
    let asso: Association
}
let story1 = Story(name: "Asso2MangeursDeViande", image: "", background: "barbec", pdp: "sarahpdp", text1: "Barbeuc A \n L'ANCIENNE \n Avec les \n OG's", text2: "", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association1)

let story2 = Story(name: "KlubLektur59", image: "imgBB", background: "imgAA", pdp: "johnpdp", text1: "", text2: "", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association2)

let story3 = Story(name: "LesKiffeurs2Megots", image: "imgS", background: "imgV", pdp: "imgD", text1: "Encore une belle récolte 😋\n un pas de plus vers \n une planète propre !", text2: "", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association3)

let story4 = Story(name: "LesSupersDogo", image: "imgR", background: "imgGG", pdp: "maelpdp", text1: "", text2: "Serrage de patte avec \n mon shab @Franck_02", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association4)

let story5 = Story(name: "Les Liens du Temps", image: "", background: "LesliensduTemps", pdp: "firstLike", text1: "Une belle soirée \n dans une belle ambiance", text2: "Venez nombreux \n tous les lundis à la salle communale", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association5)

let story6 = Story(name: "DarkStories", image: "", background: "darkStorie", pdp: "darkStorie", text1: "Petite séance photo pour promouvoir l'asso", text2: "", rotationDegrees1:2,rotationDegrees2:9, duration: 5, asso: association6)

var stories = [story1, story2, story3, story4, story5, story6]

struct Association: Identifiable {
    let id = UUID()
    let name: String
    let pdp: String
}

let association1 = Association(name: "Asso2MangeursDeViande", pdp: "sarahpdp")
let association2 = Association(name: "KlubLektur59", pdp: "johnpdp")
let association3 = Association(name: "LesKiffeurs2Megots", pdp: "imgD")
let association4 = Association(name: "LesSupersDogo", pdp: "maelpdp")
let association5 = Association(name: "AmirLechiengue", pdp: "imgF")
let association6 = Association(name: "DarkStories", pdp: "darkStorie")

var associations = [association1, association2, association3, association4, association5, association6]


struct CameraView: UIViewControllerRepresentable {
    
    // Propriétés pour gérer l'image capturée et la fermeture de la vue
    @Binding var isImagePicked: Bool
    @Binding var pickedImage: UIImage?
    
    // Créer l'UIImagePickerController
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera // Définir l'appareil photo comme source
        picker.delegate = context.coordinator // Définir le coordinator pour la gestion des actions
        return picker
    }
    
    // Mettre à jour l'UIImagePickerController (ceci n'est pas nécessaire ici)
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    // Étape 2 : Créer un coordinator pour gérer les événements du contrôleur UIImagePickerController
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var parent: CameraView
        
        init(parent: CameraView) {
            self.parent = parent
        }
        
        // Lorsque l'utilisateur a pris une photo
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.pickedImage = image // Stocker l'image capturée
            }
            parent.isImagePicked = true // Indiquer que l'image a été capturée
            picker.dismiss(animated: true) // Fermer le contrôleur de l'appareil photo
        }
        
        // Si l'utilisateur annule la prise de photo
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isImagePicked = false
            picker.dismiss(animated: true) // Fermer le contrôleur de l'appareil photo
        }
    }
    
    // Créer un coordinateur pour gérer les événements
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
}

let ListPublication = ["publication1", "publication2", "publication3", "publication4", "publication5"]

struct Santé: Identifiable {
    let id = UUID()
    let image: String
}

struct Environnement: Identifiable {
    let id = UUID()
    let image: String
}

struct Juridique: Identifiable {
    let id = UUID()
    let image: String
}

var santé = [
    Santé(image: "imgCoeur"),
    Santé(image: "femmechien"),
    Santé(image: "imgdoctoresse"),
]

var environnement = [
    Environnement(image: "imgplage"),
    Environnement(image: "imgmainplanet"),
]

var juridique = [
    Juridique(image: "imgsignature"),
    Juridique(image: "imgjugefamille"),
]


struct MapAssociation: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let coordinate: CLLocationCoordinate2D
    let description: String
    let capacite: String
}

let mapAssociations = [
    MapAssociation(name: "Association Santé", category: "Santé", coordinate: CLLocationCoordinate2D(latitude: 50.6300, longitude: 3.0720), description: "Cette association est dédiée à la santé et au bien-être.", capacite: "(31/50)"),
    MapAssociation(name: "Association Sociale", category: "Sociale", coordinate: CLLocationCoordinate2D(latitude: 50.6340, longitude: 3.0795), description: "Une association qui aide les plus démunis.", capacite: "(9/15)"),
    MapAssociation(name: "Association Éducative", category: "Éducative", coordinate: CLLocationCoordinate2D(latitude: 50.6390, longitude: 3.0700), description: "Organisation dédiée à promouvoir l'éducation.", capacite: "(2/20)"),
    MapAssociation(name: "Association Autre", category: "Autre", coordinate: CLLocationCoordinate2D(latitude: 50.6335, longitude: 3.0725), description: "Association pour divers projets.", capacite: "(5/10)")
]


struct GradientView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottom)
        }
        .ignoresSafeArea()
    }
}


