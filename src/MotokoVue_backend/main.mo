persistent actor {
  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  public query func showData(): async Text 
  {
    return "Funkcja z Motoko";
  }
};
