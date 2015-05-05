def create_character(character)
  character = create_character(
                  first_name: "Thurgar",
                  last_name: "Baneswolfe",
                  klass: "Cleric",
                  hitpoints: 108,
                  weapon: "Quarterstaff")
end


def describe_character(character: @character)
  @character = create_character(
      first_name: "Thurgar",
      last_name: "Baneswolfe",
      klass: "Cleric",
      hitpoints: 108,
      weapon: "Quarterstaff")

  description = describe_character(character: @character)
      # "#{first_name last_name}, the #{klass} wields a #{weapon}."


  if hitpoints >= 100
    description = describe_character(character: @character.update(hitpoints: 100))
    return description
    # return "#{first_name} appears quite healthy."
  end


  if hitpoints < 100
    description = describe_character(character: @character.update(hitpoints: 84))
    return description
    # return "#{first_name} appears lightly wounded"
  end


  if hitpoints < 75
    description = describe_character(character: @character.update(hitpoints: 72))
    return description
    # return "#{first_name} appears moderately wounded"
  end


  if hitpoints < 50
    description = describe_character(character: @character.update(hitpoints: 49))
    return description
    # return "#{first_name} appears badly wounded"
  end


  if hitpoints < 25
    description = describe_character(character: @character.update(hitpoints: 24))
    return description
    # return "#{first_name} appears close to death"
  end


  if hitpoints < 1
    description = describe_character(character: @character.update(hitpoints: 0))
    return description
    # return "#{first_name last_name}, the #{klass} is dead. Beside the corpse lies a #{weapon}"
  end



end


def hit_character
  hitpoints = @hitpoints
  @character = create_character(first_name: "Thurgar",
                                last_name: "Baneswolfe",
                                klass: "Cleric",
                                hitpoints: 108,
                                weapon: "Quarterstaff")

  hit_character(character: @character, damage: 10)

  return "#{first_name last_name}, the #{klass} recieved #{damage} points of damage!"
  hitpoints -= damage

end