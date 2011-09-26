module WorkoutsHelper
  def workout_string(w)
    
    s="#{w.rounds} rounds: "
    w.workout_fundamentals.each do |wf|
      name=Fundamental.find(wf.fundamental_id).try(:name)
      
      count=wf.count.to_s
      distance=wf.distance.to_s
      weight=wf.weight==nil ? " " : " #{wf.weight.to_s}# "
      mod=count+distance+weight

      
      s=s+"#{mod} #{name}, "
    end
    s.chomp(", ")
  end
end
