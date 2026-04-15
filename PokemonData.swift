import Foundation

struct PokemonData {
    static let gen1: [PokemonEntry] = [
        PokemonEntry(name: "Bulbasaur", type1: "Grass", type2: "Poison", evolutionStage: 1, colors: ["Green"]),
        PokemonEntry(name: "Ivysaur", type1: "Grass", type2: "Poison", evolutionStage: 2, colors: ["Green"]),
        PokemonEntry(name: "Venusaur", type1: "Grass", type2: "Poison", evolutionStage: 3, colors: ["Green"]),

        PokemonEntry(name: "Charmander", type1: "Fire", type2: nil, evolutionStage: 1, colors: ["Orange"]),
        PokemonEntry(name: "Charmeleon", type1: "Fire", type2: nil, evolutionStage: 2, colors: ["Red"]),
        PokemonEntry(name: "Charizard", type1: "Fire", type2: "Flying", evolutionStage: 3, colors: ["Orange", "Blue"]),

        PokemonEntry(name: "Squirtle", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Wartortle", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Blue"]),
        PokemonEntry(name: "Blastoise", type1: "Water", type2: nil, evolutionStage: 3, colors: ["Blue", "Brown"]),

        PokemonEntry(name: "Caterpie", type1: "Bug", type2: nil, evolutionStage: 1, colors: ["Green"]),
        PokemonEntry(name: "Metapod", type1: "Bug", type2: nil, evolutionStage: 2, colors: ["Green"]),
        PokemonEntry(name: "Butterfree", type1: "Bug", type2: "Flying", evolutionStage: 3, colors: ["White", "Purple"]),

        PokemonEntry(name: "Weedle", type1: "Bug", type2: "Poison", evolutionStage: 1, colors: ["Brown", "Yellow"]),
        PokemonEntry(name: "Kakuna", type1: "Bug", type2: "Poison", evolutionStage: 2, colors: ["Yellow"]),
        PokemonEntry(name: "Beedrill", type1: "Bug", type2: "Poison", evolutionStage: 3, colors: ["Yellow", "Black"]),

        PokemonEntry(name: "Pidgey", type1: "Normal", type2: "Flying", evolutionStage: 1, colors: ["Brown", "Cream"]),
        PokemonEntry(name: "Pidgeotto", type1: "Normal", type2: "Flying", evolutionStage: 2, colors: ["Brown", "Cream"]),
        PokemonEntry(name: "Pidgeot", type1: "Normal", type2: "Flying", evolutionStage: 3, colors: ["Brown", "Cream"]),

        PokemonEntry(name: "Rattata", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Raticate", type1: "Normal", type2: nil, evolutionStage: 2, colors: ["Brown"]),

        PokemonEntry(name: "Spearow", type1: "Normal", type2: "Flying", evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Fearow", type1: "Normal", type2: "Flying", evolutionStage: 2, colors: ["Brown"]),

        PokemonEntry(name: "Ekans", type1: "Poison", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Arbok", type1: "Poison", type2: nil, evolutionStage: 2, colors: ["Purple"]),

        PokemonEntry(name: "Pikachu", type1: "Electric", type2: nil, evolutionStage: 2, colors: ["Yellow"]),
        PokemonEntry(name: "Raichu", type1: "Electric", type2: nil, evolutionStage: 3, colors: ["Yellow", "Brown"]),

        PokemonEntry(name: "Sandshrew", type1: "Ground", type2: nil, evolutionStage: 1, colors: ["Yellow"]),
        PokemonEntry(name: "Sandslash", type1: "Ground", type2: nil, evolutionStage: 2, colors: ["Yellow"]),

        PokemonEntry(name: "NidoranF", type1: "Poison", type2: nil, evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Nidorina", type1: "Poison", type2: nil, evolutionStage: 2, colors: ["Blue"]),
        PokemonEntry(name: "Nidoqueen", type1: "Poison", type2: "Ground", evolutionStage: 3, colors: ["Blue"]),

        PokemonEntry(name: "NidoranM", type1: "Poison", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Nidorino", type1: "Poison", type2: nil, evolutionStage: 2, colors: ["Purple"]),
        PokemonEntry(name: "Nidoking", type1: "Poison", type2: "Ground", evolutionStage: 3, colors: ["Purple"]),

        PokemonEntry(name: "Clefairy", type1: "Normal", type2: nil, evolutionStage: 2, colors: ["Pink"]),
        PokemonEntry(name: "Clefable", type1: "Normal", type2: nil, evolutionStage: 3, colors: ["Pink"]),

        PokemonEntry(name: "Vulpix", type1: "Fire", type2: nil, evolutionStage: 1, colors: ["Orange"]),
        PokemonEntry(name: "Ninetales", type1: "Fire", type2: nil, evolutionStage: 2, colors: ["Yellow", "Cream"]),

        PokemonEntry(name: "Jigglypuff", type1: "Normal", type2: nil, evolutionStage: 2, colors: ["Pink"]),
        PokemonEntry(name: "Wigglytuff", type1: "Normal", type2: nil, evolutionStage: 3, colors: ["Pink"]),

        PokemonEntry(name: "Zubat", type1: "Poison", type2: "Flying", evolutionStage: 1, colors: ["Purple", "Blue"]),
        PokemonEntry(name: "Golbat", type1: "Poison", type2: "Flying", evolutionStage: 2, colors: ["Purple", "Blue"]),

        PokemonEntry(name: "Oddish", type1: "Grass", type2: "Poison", evolutionStage: 1, colors: ["Blue", "Green"]),
        PokemonEntry(name: "Gloom", type1: "Grass", type2: "Poison", evolutionStage: 2, colors: ["Blue", "Red"]),
        PokemonEntry(name: "Vileplume", type1: "Grass", type2: "Poison", evolutionStage: 3, colors: ["Red", "Blue"]),

        PokemonEntry(name: "Paras", type1: "Bug", type2: "Grass", evolutionStage: 1, colors: ["Orange", "Brown"]),
        PokemonEntry(name: "Parasect", type1: "Bug", type2: "Grass", evolutionStage: 2, colors: ["Red", "Orange"]),

        PokemonEntry(name: "Venonat", type1: "Bug", type2: "Poison", evolutionStage: 1, colors: ["Purple", "Brown"]),
        PokemonEntry(name: "Venomoth", type1: "Bug", type2: "Poison", evolutionStage: 2, colors: ["Purple", "White"]),

        PokemonEntry(name: "Diglett", type1: "Ground", type2: nil, evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Dugtrio", type1: "Ground", type2: nil, evolutionStage: 2, colors: ["Brown"]),

        PokemonEntry(name: "Meowth", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Yellow", "Cream"]),
        PokemonEntry(name: "Persian", type1: "Normal", type2: nil, evolutionStage: 2, colors: ["Yellow", "Cream"]),

        PokemonEntry(name: "Psyduck", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Yellow"]),
        PokemonEntry(name: "Golduck", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Blue"]),

        PokemonEntry(name: "Growlithe", type1: "Fire", type2: nil, evolutionStage: 1, colors: ["Orange", "Cream"]),
        PokemonEntry(name: "Arcanine", type1: "Fire", type2: nil, evolutionStage: 2, colors: ["Orange", "Cream"]),

        PokemonEntry(name: "Poliwag", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Poliwhirl", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Blue"]),
        PokemonEntry(name: "Poliwrath", type1: "Water", type2: "Fighting", evolutionStage: 3, colors: ["Blue", "White"]),

        PokemonEntry(name: "Abra", type1: "Psychic", type2: nil, evolutionStage: 1, colors: ["Yellow", "Brown"]),
        PokemonEntry(name: "Kadabra", type1: "Psychic", type2: nil, evolutionStage: 2, colors: ["Yellow", "Brown"]),
        PokemonEntry(name: "Alakazam", type1: "Psychic", type2: nil, evolutionStage: 3, colors: ["Yellow", "Brown"]),

        PokemonEntry(name: "Machop", type1: "Fighting", type2: nil, evolutionStage: 1, colors: ["Gray", "Blue"]),
        PokemonEntry(name: "Machoke", type1: "Fighting", type2: nil, evolutionStage: 2, colors: ["Gray", "Blue"]),
        PokemonEntry(name: "Machamp", type1: "Fighting", type2: nil, evolutionStage: 3, colors: ["Gray", "Blue"]),

        PokemonEntry(name: "Bellsprout", type1: "Grass", type2: "Poison", evolutionStage: 1, colors: ["Green", "Yellow"]),
        PokemonEntry(name: "Weepinbell", type1: "Grass", type2: "Poison", evolutionStage: 2, colors: ["Green", "Yellow"]),
        PokemonEntry(name: "Victreebel", type1: "Grass", type2: "Poison", evolutionStage: 3, colors: ["Green", "Yellow"]),

        PokemonEntry(name: "Tentacool", type1: "Water", type2: "Poison", evolutionStage: 1, colors: ["Blue", "Red"]),
        PokemonEntry(name: "Tentacruel", type1: "Water", type2: "Poison", evolutionStage: 2, colors: ["Blue", "Red"]),

        PokemonEntry(name: "Geodude", type1: "Rock", type2: "Ground", evolutionStage: 1, colors: ["Brown", "Gray"]),
        PokemonEntry(name: "Graveler", type1: "Rock", type2: "Ground", evolutionStage: 2, colors: ["Brown", "Gray"]),
        PokemonEntry(name: "Golem", type1: "Rock", type2: "Ground", evolutionStage: 3, colors: ["Brown", "Gray"]),

        PokemonEntry(name: "Ponyta", type1: "Fire", type2: nil, evolutionStage: 1, colors: ["Yellow", "Orange"]),
        PokemonEntry(name: "Rapidash", type1: "Fire", type2: nil, evolutionStage: 2, colors: ["Yellow", "Cream"]),

        PokemonEntry(name: "Slowpoke", type1: "Water", type2: "Psychic", evolutionStage: 1, colors: ["Pink"]),
        PokemonEntry(name: "Slowbro", type1: "Water", type2: "Psychic", evolutionStage: 2, colors: ["Pink", "Gray"]),

        PokemonEntry(name: "Magnemite", type1: "Electric", type2: nil, evolutionStage: 1, colors: ["Gray"]),
        PokemonEntry(name: "Magneton", type1: "Electric", type2: nil, evolutionStage: 2, colors: ["Gray"]),

        PokemonEntry(name: "Farfetchd", type1: "Normal", type2: "Flying", evolutionStage: 1, colors: ["Brown", "Cream"]),
        PokemonEntry(name: "Doduo", type1: "Normal", type2: "Flying", evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Dodrio", type1: "Normal", type2: "Flying", evolutionStage: 2, colors: ["Brown"]),

        PokemonEntry(name: "Seel", type1: "Water", type2: nil, evolutionStage: 1, colors: ["White"]),
        PokemonEntry(name: "Dewgong", type1: "Water", type2: "Ice", evolutionStage: 2, colors: ["White"]),

        PokemonEntry(name: "Grimer", type1: "Poison", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Muk", type1: "Poison", type2: nil, evolutionStage: 2, colors: ["Purple"]),

        PokemonEntry(name: "Shellder", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Cloyster", type1: "Water", type2: "Ice", evolutionStage: 2, colors: ["Purple", "Blue"]),

        PokemonEntry(name: "Gastly", type1: "Ghost", type2: "Poison", evolutionStage: 1, colors: ["Purple", "Black"]),
        PokemonEntry(name: "Haunter", type1: "Ghost", type2: "Poison", evolutionStage: 2, colors: ["Purple", "Black"]),
        PokemonEntry(name: "Gengar", type1: "Ghost", type2: "Poison", evolutionStage: 3, colors: ["Purple"]),

        PokemonEntry(name: "Onix", type1: "Rock", type2: "Ground", evolutionStage: 1, colors: ["Gray"]),
        PokemonEntry(name: "Drowzee", type1: "Psychic", type2: nil, evolutionStage: 1, colors: ["Yellow", "Brown"]),
        PokemonEntry(name: "Hypno", type1: "Psychic", type2: nil, evolutionStage: 2, colors: ["Yellow", "Brown"]),

        PokemonEntry(name: "Krabby", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Orange"]),
        PokemonEntry(name: "Kingler", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Orange"]),

        PokemonEntry(name: "Voltorb", type1: "Electric", type2: nil, evolutionStage: 1, colors: ["Red", "White"]),
        PokemonEntry(name: "Electrode", type1: "Electric", type2: nil, evolutionStage: 2, colors: ["Red", "White"]),

        PokemonEntry(name: "Exeggcute", type1: "Grass", type2: "Psychic", evolutionStage: 1, colors: ["Pink"]),
        PokemonEntry(name: "Exeggutor", type1: "Grass", type2: "Psychic", evolutionStage: 2, colors: ["Yellow", "Brown"]),

        PokemonEntry(name: "Cubone", type1: "Ground", type2: nil, evolutionStage: 1, colors: ["Brown", "Cream"]),
        PokemonEntry(name: "Marowak", type1: "Ground", type2: nil, evolutionStage: 2, colors: ["Brown", "Cream"]),

        PokemonEntry(name: "Hitmonlee", type1: "Fighting", type2: nil, evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Hitmonchan", type1: "Fighting", type2: nil, evolutionStage: 1, colors: ["Brown", "Purple"]),

        PokemonEntry(name: "Lickitung", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Pink"]),
        PokemonEntry(name: "Koffing", type1: "Poison", type2: nil, evolutionStage: 1, colors: ["Purple"]),
        PokemonEntry(name: "Weezing", type1: "Poison", type2: nil, evolutionStage: 2, colors: ["Purple", "Gray"]),

        PokemonEntry(name: "Rhyhorn", type1: "Ground", type2: "Rock", evolutionStage: 1, colors: ["Gray"]),
        PokemonEntry(name: "Rhydon", type1: "Ground", type2: "Rock", evolutionStage: 2, colors: ["Gray"]),

        PokemonEntry(name: "Chansey", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Pink"]),
        PokemonEntry(name: "Tangela", type1: "Grass", type2: nil, evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Kangaskhan", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Brown"]),

        PokemonEntry(name: "Horsea", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Seadra", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Blue"]),

        PokemonEntry(name: "Goldeen", type1: "Water", type2: nil, evolutionStage: 1, colors: ["White", "Orange"]),
        PokemonEntry(name: "Seaking", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Orange", "White"]),

        PokemonEntry(name: "Staryu", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Brown", "Yellow"]),
        PokemonEntry(name: "Starmie", type1: "Water", type2: "Psychic", evolutionStage: 2, colors: ["Purple", "Brown"]),

        PokemonEntry(name: "MrMime", type1: "Psychic", type2: nil, evolutionStage: 1, colors: ["Pink", "White"]),
        PokemonEntry(name: "Scyther", type1: "Bug", type2: "Flying", evolutionStage: 1, colors: ["Green"]),
        PokemonEntry(name: "Jynx", type1: "Ice", type2: "Psychic", evolutionStage: 1, colors: ["Purple", "Red"]),
        PokemonEntry(name: "Electabuzz", type1: "Electric", type2: nil, evolutionStage: 1, colors: ["Yellow", "Black"]),
        PokemonEntry(name: "Magmar", type1: "Fire", type2: nil, evolutionStage: 1, colors: ["Red", "Yellow"]),

        PokemonEntry(name: "Pinsir", type1: "Bug", type2: nil, evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Tauros", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Brown"]),

        PokemonEntry(name: "Magikarp", type1: "Water", type2: nil, evolutionStage: 1, colors: ["Red", "Yellow"]),
        PokemonEntry(name: "Gyarados", type1: "Water", type2: "Flying", evolutionStage: 2, colors: ["Blue"]),

        PokemonEntry(name: "Lapras", type1: "Water", type2: "Ice", evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Ditto", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Purple"]),

        PokemonEntry(name: "Eevee", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Brown", "Cream"]),
        PokemonEntry(name: "Vaporeon", type1: "Water", type2: nil, evolutionStage: 2, colors: ["Blue"]),
        PokemonEntry(name: "Jolteon", type1: "Electric", type2: nil, evolutionStage: 2, colors: ["Yellow"]),
        PokemonEntry(name: "Flareon", type1: "Fire", type2: nil, evolutionStage: 2, colors: ["Orange", "Yellow"]),

        PokemonEntry(name: "Porygon", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Pink", "Blue"]),
        PokemonEntry(name: "Omanyte", type1: "Rock", type2: "Water", evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Omastar", type1: "Rock", type2: "Water", evolutionStage: 2, colors: ["Blue"]),
        PokemonEntry(name: "Kabuto", type1: "Rock", type2: "Water", evolutionStage: 1, colors: ["Brown"]),
        PokemonEntry(name: "Kabutops", type1: "Rock", type2: "Water", evolutionStage: 2, colors: ["Brown"]),

        PokemonEntry(name: "Aerodactyl", type1: "Rock", type2: "Flying", evolutionStage: 1, colors: ["Purple", "Gray"]),
        PokemonEntry(name: "Snorlax", type1: "Normal", type2: nil, evolutionStage: 1, colors: ["Blue", "Cream"]),

        PokemonEntry(name: "Articuno", type1: "Ice", type2: "Flying", evolutionStage: 1, colors: ["Blue"]),
        PokemonEntry(name: "Zapdos", type1: "Electric", type2: "Flying", evolutionStage: 1, colors: ["Yellow"]),
        PokemonEntry(name: "Moltres", type1: "Fire", type2: "Flying", evolutionStage: 1, colors: ["Orange", "Yellow"]),

        PokemonEntry(name: "Dratini", type1: "Dragon", type2: nil, evolutionStage: 1, colors: ["Blue", "White"]),
        PokemonEntry(name: "Dragonair", type1: "Dragon", type2: nil, evolutionStage: 2, colors: ["Blue", "White"]),
        PokemonEntry(name: "Dragonite", type1: "Dragon", type2: "Flying", evolutionStage: 3, colors: ["Orange", "Cream"]),

        PokemonEntry(name: "Mewtwo", type1: "Psychic", type2: nil, evolutionStage: 1, colors: ["Purple", "White"]),
        PokemonEntry(name: "Mew", type1: "Psychic", type2: nil, evolutionStage: 1, colors: ["Pink"])
    ]
}