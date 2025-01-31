require "rspec/snapshot/matchers/match_snapshot"

module RSpec
  module Snapshot
    module Matchers
      def match_snapshot(snapshot_name, config = {})
        MatchSnapShot.new(self.class.metadata, snapshot_name, config)
      end
    end
  end
end

RSpec.configure do |config|
  config.include RSpec::Snapshot::Matchers
end
