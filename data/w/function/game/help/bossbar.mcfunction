$bossbar set stage name [{"text":"$(time) "},{"score":{"name":"time","objective":"game"}},{"text":" | Time Remaining: "},{"score":{"name":"remaining","objective":"timer"}},{text:"s | Stage: $(stage)"}]


$execute if data storage w:temp state{time:"Night"} run bossbar set stage name [{"text":"$(moon) $(time) "},{"score":{"name":"time","objective":"game"}},{"text":" | Time Remaining: "},{"score":{"name":"remaining","objective":"timer"}},{text:"s | Stage: $(stage)"}]