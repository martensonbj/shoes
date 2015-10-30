Shoes.app(width: 300, height: 400) do
  background "#FF0000".."#F90"
  border("#000", strokewidth: 5)

  stack(margin: 15) do
    @para = tagline "Guess A Number from 1 - 10!"
    flow do
      @edit = edit_line
      @push_me = button "GO!"
    end
    @push_me.click {
      if @edit.text == "2"
        @para.replace "Well Done!"
      else
        @para.replace "Mwahahaha....guess again"
      end
    }
  end

  fill rgb(255, 0, 255, 0.5)
  stroke rgb(0, 0.6, 0.9)
  strokewidth 0.25

  13.times do
    star(left:   (-5..self.width).rand,
         top:    (-5..self.height).rand,
         points:5,
         radius: (25..50).rand)
  end
end
