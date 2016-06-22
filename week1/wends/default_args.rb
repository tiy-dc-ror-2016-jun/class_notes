def pineapple_printer(pineapples = nil)

  pinapple_string = "              \||/
                                   \||/
                                 .<><><>.
                                .<><><><>.
                                '<><><><>'
                         jgs     '<><><>'"

   if pineapples
     pineapples.each do
       puts pinapple_string
     end
   else
     puts pinapple_string
   end
end



pineapple_printer
pineapple_printer(["pineapple","pineapple","pineapple"])
