        
        ## Clock signal
        set_property PACKAGE_PIN W5 [get_ports clk]							
            set_property IOSTANDARD LVCMOS33 [get_ports clk]
            create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
         set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets rst_IBUF]
          set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets instrument_IBUF[1]]
          set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets play_or_listen_IBUF] 
        ## Switches
        set_property PACKAGE_PIN V17 [get_ports play_or_listen]					
            set_property IOSTANDARD LVCMOS33 [get_ports play_or_listen]
        set_property PACKAGE_PIN V16 [get_ports instrument[0]]					
            set_property IOSTANDARD LVCMOS33 [get_ports instrument[0]]
        set_property PACKAGE_PIN W16 [get_ports instrument[1]]					
            set_property IOSTANDARD LVCMOS33 [get_ports instrument[1]]
        set_property PACKAGE_PIN W17 [get_ports imitate_the_screen]					
            set_property IOSTANDARD LVCMOS33 [get_ports imitate_the_screen]
        
        set_property PACKAGE_PIN U18 [get_ports reset]						
            set_property IOSTANDARD LVCMOS33 [get_ports reset]
        
        set_property PACKAGE_PIN U17 [get_ports change_screen]						
            set_property IOSTANDARD LVCMOS33 [get_ports change_screen]
         
        
        ##Pmod Header JB
        ##Sch name = JB1
        set_property PACKAGE_PIN A14 [get_ports {out_sound[0]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[0]}]
        #Sch name = 
        set_property PACKAGE_PIN A16 [get_ports {out_sound[1]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[1]}]
        #Sch name = 
        set_property PACKAGE_PIN B15 [get_ports {out_sound[2]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[2]}]
        #Sch name = 
        set_property PACKAGE_PIN B16 [get_ports {out_sound[3]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[3]}]
        #Sch name = 
        set_property PACKAGE_PIN A15 [get_ports {out_sound[4]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[4]}]
        #Sch name = 
        set_property PACKAGE_PIN A17 [get_ports {out_sound[5]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[5]}]
        #Sch name = 
        set_property PACKAGE_PIN C15 [get_ports {out_sound[6]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[6]}]
        #Sch name =  
        set_property PACKAGE_PIN C16 [get_ports {out_sound[7]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {out_sound[7]}]
         
        
        
        ##Pmod Header JC
        ##Sch name = JC1
        set_property PACKAGE_PIN K17 [get_ports {inp_notes[6]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[6]}]
        #Sch name = inp_notes2
        set_property PACKAGE_PIN M18 [get_ports {inp_notes[5]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[5]}]
        #Sch name = inp_notes3
        set_property PACKAGE_PIN N17 [get_ports {inp_notes[4]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[4]}]
        #Sch name = inp_notes4
        set_property PACKAGE_PIN P18 [get_ports {inp_notes[3]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[3]}]
        #Sch name = inp_notes7
        set_property PACKAGE_PIN L17 [get_ports {inp_notes[2]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[2]}]
        #Sch name = inp_notes8
        set_property PACKAGE_PIN M19 [get_ports {inp_notes[1]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[1]}]
        #Sch name = inp_notes9
        set_property PACKAGE_PIN P17 [get_ports {inp_notes[0]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {inp_notes[0]}]
        
        
        ##VGA Connector
        set_property PACKAGE_PIN G19 [get_ports {R[0]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {R[0]}]
        set_property PACKAGE_PIN H19 [get_ports {R[1]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {R[1]}]
        set_property PACKAGE_PIN J19 [get_ports {R[2]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {R[2]}]
        set_property PACKAGE_PIN N19 [get_ports {R[3]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {R[3]}]
        set_property PACKAGE_PIN N18 [get_ports {B[0]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]
        set_property PACKAGE_PIN L18 [get_ports {B[1]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]
        set_property PACKAGE_PIN K18 [get_ports {B[2]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]
        set_property PACKAGE_PIN J18 [get_ports {B[3]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]
        set_property PACKAGE_PIN J17 [get_ports {G[0]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {G[0]}]
        set_property PACKAGE_PIN H17 [get_ports {G[1]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {G[1]}]
        set_property PACKAGE_PIN G17 [get_ports {G[2]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {G[2]}]
        set_property PACKAGE_PIN D17 [get_ports {G[3]}]				
            set_property IOSTANDARD LVCMOS33 [get_ports {G[3]}]
        set_property PACKAGE_PIN P19 [get_ports hsync]						
            set_property IOSTANDARD LVCMOS33 [get_ports hsync]
        set_property PACKAGE_PIN R19 [get_ports vsync]						
            set_property IOSTANDARD LVCMOS33 [get_ports vsync]
        
