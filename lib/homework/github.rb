module Homework
  class Github
    include HTTParty
    base_uri "https://api.github.com"

    def initialize
      @headers = {
        "Authorization" => "token #{ENV["OAUTH_TOKEN_GH"]}",
        "User-Agent"    => "HTTParty"
      }
    end

    def get_user(username)
      Github.get("/users/#{username}", headers: @headers)
    end

    def list_members_by_team_name(org, team_name)
      teams = list_teams(org)
      team = teams.find { |team| team["name"] == team_name }
      list_team_members(team["id"])
    end

    def list_teams(organization)
      Github.get("/orgs/#{organization}/teams", headers: @headers)
    end

    def list_team_members(team_id)
      Github.get("/teams/#{team_id}/members", headers: @headers)
    end
    
    def list_issues(username, repo)
      Github.get("/repos/#{username}/#{repo}/issues", headers: @headers)
    end

    def close_issue(username, repo, number)
      Github.patch("/repos/#{username}/#{repo}/issues/#{number}", headers: @headers,
       body: { "state" => "closed" }.to_json )
    end

    def comment_issue(username, repo, number, comment)
      Github.patch("/repos/#{username}/#{repo}/issues/#{number}/comments", headers: @headers,
         body: { "body" => comment }.to_json )
    end
  end
end
