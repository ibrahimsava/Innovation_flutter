import 'dart:io';

class Etudiant {
  String nom;
  int age;
  double note;

  // constructeur

  Etudiant(this.age, this.nom, this.note);

  dynamic estAdmin(double note) {
    if (note >= 10) {
      return "Admin";
    } else {
      return "Refuse";
    }
  }

  dynamic afficher() {
    var status = estAdmin(note);
    return "l'age est $age et son status est $status";
  }
}

class CompteBancaire {
  String _titulaire;
  double _solde;

  // constructeur
  CompteBancaire(this._solde, this._titulaire);

  // Le GETTER : crée une propriété virtuelle "solde" (sans le _)
  double get solde => _solde;

  double montant() {
    if (_solde > 0) ;
    return _solde;
  }
}


class Produit {
  String nom;
  double prix;
  int stock;

  // constructeur
  Produit(this.nom, this.prix, this.stock);

  bool estDisponible() => stock > 0;
}



class Panier {
  List<Produit> _produits = [];

void  ajouterProduit(Produit p){

  }
}


class Animl {
  String nom;
  String type;
   

  // constructeur
   Animl(this.nom, this.type);

dynamic bruit(){
  return "je suis un $type";
}

}



void main() {
  var Etudiant1 = Etudiant(12, "Ibrahim", 9);
  var Etudiant2 = Etudiant(15, "Moussa", 18);

  print(Etudiant1.afficher());
  print(Etudiant2.afficher());

  var  Chien= Animl("Rex", "Chien");
  var Mouton=  Animl("boubi", "Mouton");

  print(Chien.bruit());
  print(Mouton.bruit());

}

