class Links::Season::NhlPenaltyKill < Links::Base

  def site_name
    "NHL.com"
  end

  def description
    "Penalty Kill"
  end

  def url
    "http://www.nhl.com/stats/player?" \
    "team=#{team.abbreviation}&season=#{season}&" \
    "gameType=#{game_type}&report=penaltykill"
  end

  def group
    0
  end

  def position
    7
  end

end
