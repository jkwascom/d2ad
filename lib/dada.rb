module DADA
  require 'dada/dota-api'
  require 'date'
  require 'json'

  def self.matches(api_key, account_id, matches_requested=5)
    data = JSON.parse(DotaAPI.query(api_key, 'GetMatchHistory', { account_id: account_id, matches_requested: matches_requested }))
    data['result']['matches'].each { |m| puts "#{DateTime.strptime(m['start_time'].to_s, '%s').to_s} #{m['match_id']}" }
    nil
  end

  def self.abilities(api_key, match_id)
    a_uri = 'https://raw.github.com/kronusme/dota2-api/master/data/abilities.json'
    a_data = JSON.parse(Net::HTTP.get(URI(a_uri)))

    m_data = JSON.parse(DotaAPI.query(api_key, 'GetMatchDetails', { match_id: match_id }))

    m_data['result']['players'].each do |p|
      puts "\naccount_id: #{p['account_id']}"
      p['ability_upgrades'].each do |u|
        a_data['abilities'].each do |a|
          puts "  #{u['level'].to_s.rjust(2)}: #{a['name']}" if u['ability'].to_s == a['id']
        end
      end
    end

    nil
  end
end
