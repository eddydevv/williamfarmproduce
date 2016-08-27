produces = JSON.parse(open('db/data/produce.json').read);

produces.each do |produce|
  Produce.create(produce)
end
