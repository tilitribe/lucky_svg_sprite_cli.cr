require "yaml"
require "../spec_helper"

describe LuckySvgSpriteCli::VERSION do
  it "returns the current version" do
    LuckySvgSpriteCli::VERSION.should eq(`git describe --abbrev=0 --tags`.strip)
  end

  describe "shard.yml" do
    it "matches the current version" do
      info = YAML.parse(File.read("./shard.yml"))
      version = info["version"]
      LuckySvgSpriteCli::VERSION.should eq("v#{version}")
    end
  end
end
