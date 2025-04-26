require "LRPSFramework/LRPSFramework.rb"

def new_moon
  LRPS_Framework::LunarCalender.new_moon

  LRPS_Framework::Player.text_parser
end

def waxing_crescent
  LRPS_Framework::LunarCalender.waning_crescent

  LRPS_Framework::Player.text_parser
end

def first_quarter
  LRPS_Framework::LunarCalender.first_quarter

  LRPS_Framework::Player.text_parser
end

def waxing_gibbous
  LRPS_Framework::LunarCalender.waxing_gibbous

  LRPS_Framework::Player.text_parser
end

def full_moon
  LRPS_Framework::LunarCalender.full_moon

  LRPS_Framework::Player.text_parser
end

def waning_gibbous
  LRPS_Framework::LunarCalender.waning_gibbous

  LRPS_Framework::Player.text_parser
end

def last_quarter
  LRPS_Framework::LunarCalender.last_quarter

  LRPS_Framework::Player.text_parser
end

def waning_crescent
  LRPS_Framework::LunarCalender.waning_crescent

  LRPS_Framework::Player.text_parser
end

##############################################################################################
#                                 Lunar Cycle Gameloop                                       #
##############################################################################################
def lunar_cycle
  lunar_phases = [0, 1, 2, 3, 4, 5, 6, 7]

  # The current lunar phase mod 7
  current_phase  = $current_phase % 7
  #$current_phase = $current_phase + 1 % 7

  if    current_phase == lunar_phases[0]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: New Moon. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    new_moon
  elsif current_phase == lunar_phases[1]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    waxing_crescent
  elsif current_phase == lunar_phases[2]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: First Quarter. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    first_quarter
  elsif current_phase == lunar_phases[3]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    waxing_gibbous
  elsif current_phase == lunar_phases[4]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Full_moon. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    full_moon
  elsif current_phase == lunar_phases[5]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    waning_gibbous
  elsif current_phase == lunar_phases[6]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Last Quarter. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    last_quarter
  elsif current_phase == lunar_phases[7]
    puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Crescent. Réinitialisation des statistiques du joueur...\e[0m"

    sleep(1)

    waning_crescent
  end

  sleep(1.5)
end
