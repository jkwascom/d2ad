module D2AD
  require 'd2ad/dota-api'
  require 'date'
  require 'json'

  def self.matches(api_key, account_id, matches_requested=5)
    data = JSON.parse(DotaAPI.query(api_key, 'GetMatchHistory', { account_id: account_id, matches_requested: matches_requested }))
    data['result']['matches'].each { |m| puts "#{DateTime.strptime(m['start_time'].to_s, '%s').to_s} #{m['match_id']}" }
    nil
  end

  def self.abilities(api_key, match_id)
    #this assumes we're being called from a script in the 'bin' directory of this gem
    gem_dir = Dir.getwd.chomp('/bin')
    abilities = JSON.parse(File.read(gem_dir + '/lib/d2ad/abilities.json'))
    match_details = JSON.parse(DotaAPI.query(api_key, 'GetMatchDetails', { match_id: match_id }))

    match_details['result']['players'].each do |p|
      puts "\naccount_id: #{p['account_id']}"
      p['ability_upgrades'].each do |u|
        abilities['abilities'].each do |a|
          puts "  #{u['level'].to_s.rjust(2)}: #{a['name']}" if u['ability'].to_s == a['id']
        end
      end
    end

    nil
  end
end
