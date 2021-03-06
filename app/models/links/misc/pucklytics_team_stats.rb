class Links::Misc::PucklyticsTeamStats < Links::Base
  def site_name
    "Pucklytics"
  end

  def description
    "Team Stats"
  end

  def url
    "https://puckalytics.com/#/teams?" \
      "season=#{season.year_start}" \
      "#{season.year_end.to_s[2, 2]}"
  end

  def group
    0
  end

  def position
    2
  end
end
