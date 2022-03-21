<?xml version="1.0" encoding="UTF-8"?>
<system name="$${FILENAME}">
 <component
   name="$${FILENAME}"
   displayName="$${FILENAME}"
   version="1.0"
   description=""
   tags=""
   categories="System" />
 <parameter name="bonusData"><![CDATA[bonusData 
{
   element $${FILENAME}
   {
      datum _originalDeviceFamily
      {
         value = "Cyclone V";
         type = "String";
      }
   }
   element Sys_Clk
   {
      datum _sortIndex
      {
         value = "0";
         type = "int";
      }
   }
   element VGA_Alpha_Blender
   {
      datum _sortIndex
      {
         value = "6";
         type = "int";
      }
   }
   element VGA_Char_Buffer
   {
      datum _sortIndex
      {
         value = "5";
         type = "int";
      }
   }
   element VGA_Controller
   {
      datum _sortIndex
      {
         value = "8";
         type = "int";
      }
   }
   element VGA_Dual_Clock_FIFO
   {
      datum _sortIndex
      {
         value = "7";
         type = "int";
      }
   }
   element VGA_PLL
   {
      datum _sortIndex
      {
         value = "1";
         type = "int";
      }
   }
   element VGA_Pixel_DMA
   {
      datum _sortIndex
      {
         value = "2";
         type = "int";
      }
   }
   element VGA_Pixel_FIFO
   {
      datum _sortIndex
      {
         value = "3";
         type = "int";
      }
   }
   element VGA_Pixel_RGB_Resampler
   {
      datum _sortIndex
      {
         value = "4";
         type = "int";
      }
   }
}
]]></parameter>
 <parameter name="clockCrossingAdapter" value="HANDSHAKE" />
 <parameter name="device" value="5CSEMA5F31C6" />
 <parameter name="deviceFamily" value="Cyclone V" />
 <parameter name="deviceSpeedGrade" value="6" />
 <parameter name="fabricMode" value="QSYS" />
 <parameter name="generateLegacySim" value="false" />
 <parameter name="generationId" value="0" />
 <parameter name="globalResetBus" value="false" />
 <parameter name="hdlLanguage" value="VERILOG" />
 <parameter name="hideFromIPCatalog" value="false" />
 <parameter name="lockedInterfaceDefinition" value="" />
 <parameter name="maxAdditionalLatency" value="1" />
 <parameter name="projectName">DE1_SoC_Computer.qpf</parameter>
 <parameter name="sopcBorderPoints" value="false" />
 <parameter name="systemHash" value="0" />
 <parameter name="testBenchDutName" value="" />
 <parameter name="timeStamp" value="0" />
 <parameter name="useTestBenchNamingPattern" value="false" />
 <instanceScript></instanceScript>
 <interface
   name="char_buffer_control_slave"
   internal="VGA_Char_Buffer.avalon_char_control_slave"
   type="avalon"
   dir="end" />
 <interface
   name="char_buffer_slave"
   internal="VGA_Char_Buffer.avalon_char_buffer_slave"
   type="avalon"
   dir="end" />
 <interface
   name="pixel_dma_control_slave"
   internal="VGA_Pixel_DMA.avalon_control_slave"
   type="avalon"
   dir="end" />
 <interface
   name="pixel_dma_master"
   internal="VGA_Pixel_DMA.avalon_pixel_dma_master"
   type="avalon"
   dir="start" />
 <interface name="sys_clk" internal="Sys_Clk.clk_in" type="clock" dir="end" />
 <interface
   name="sys_reset"
   internal="Sys_Clk.clk_in_reset"
   type="reset"
   dir="end" />
 <interface
   name="vga"
   internal="VGA_Controller.external_interface"
   type="conduit"
   dir="end" />
 <interface
   name="vga_pll_ref_clk"
   internal="VGA_PLL.ref_clk"
   type="clock"
   dir="end" />
 <interface
   name="vga_pll_ref_reset"
   internal="VGA_PLL.ref_reset"
   type="reset"
   dir="end" />
 <module name="Sys_Clk" kind="clock_source" version="15.0" enabled="1">
  <parameter name="clockFrequency" value="50000000" />
  <parameter name="clockFrequencyKnown" value="false" />
  <parameter name="inputClockFrequency" value="0" />
  <parameter name="resetSynchronousEdges" value="NONE" />
 </module>
 <module
   name="VGA_Alpha_Blender"
   kind="altera_up_avalon_video_alpha_blender"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLK_CLOCK_RATE" value="0" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="mode" value="Normal" />
 </module>
 <module
   name="VGA_Char_Buffer"
   kind="altera_up_avalon_video_character_buffer_with_dma"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLK_CLOCK_RATE" value="0" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="color_bits" value="1-bit" />
  <parameter name="enable_transparency" value="true" />
  <parameter name="resolution" value="80 x 60" />
  <parameter name="vga_device" value="On-board VGA DAC" />
 </module>
 <module
   name="VGA_Controller"
   kind="altera_up_avalon_video_vga_controller"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLK_CLOCK_RATE" value="25000000" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="board" value="DE1-SoC" />
  <parameter name="device" value="VGA Connector" />
  <parameter name="resolution" value="VGA 640x480" />
  <parameter name="underflow_flag" value="false" />
 </module>
 <module
   name="VGA_Dual_Clock_FIFO"
   kind="altera_up_avalon_video_dual_clock_buffer"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLOCK_STREAM_IN_CLOCK_RATE" value="0" />
  <parameter name="AUTO_CLOCK_STREAM_OUT_CLOCK_RATE" value="25000000" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="color_bits" value="10" />
  <parameter name="color_planes" value="3" />
 </module>
 <module
   name="VGA_PLL"
   kind="altera_up_avalon_video_pll"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_DEVICE" value="5CSEMA5F31C6" />
  <parameter name="AUTO_DEVICE_SPEEDGRADE" value="6" />
  <parameter name="camera" value="5MP Digital Camera" />
  <parameter name="device_family" value="Cyclone V" />
  <parameter name="gui_refclk" value="50.0" />
  <parameter name="gui_resolution" value="VGA 640x480" />
  <parameter name="lcd">7" LCD on VEEK-MT and MTL Module</parameter>
  <parameter name="lcd_clk_en" value="false" />
  <parameter name="vga_clk_en" value="true" />
  <parameter name="video_in_clk_en" value="false" />
 </module>
 <module
   name="VGA_Pixel_DMA"
   kind="altera_up_avalon_video_pixel_buffer_dma"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLK_CLOCK_RATE" value="0" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="addr_mode" value="X-Y" />
  <parameter name="back_start_address" value="134217728" />
  <parameter name="color_space" value="8-bit RGB" />
  <parameter name="image_height" value="480" />
  <parameter name="image_width" value="640" />
  <parameter name="start_address" value="134217728" />
 </module>
 <module
   name="VGA_Pixel_FIFO"
   kind="altera_up_avalon_video_dual_clock_buffer"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLOCK_STREAM_IN_CLOCK_RATE" value="0" />
  <parameter name="AUTO_CLOCK_STREAM_OUT_CLOCK_RATE" value="0" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="color_bits" value="8" />
  <parameter name="color_planes" value="1" />
 </module>
 <module
   name="VGA_Pixel_RGB_Resampler"
   kind="altera_up_avalon_video_rgb_resampler"
   version="15.0"
   enabled="1">
  <parameter name="AUTO_CLK_CLOCK_RATE" value="0" />
  <parameter name="AUTO_DEVICE_FAMILY" value="Cyclone V" />
  <parameter name="alpha" value="1023" />
  <parameter name="input_type" value="8-bit RGB" />
  <parameter name="output_type" value="30-bit RGB" />
 </module>
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Alpha_Blender.avalon_blended_source"
   end="VGA_Dual_Clock_FIFO.avalon_dc_buffer_sink" />
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Char_Buffer.avalon_char_source"
   end="VGA_Alpha_Blender.avalon_foreground_sink" />
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Pixel_FIFO.avalon_dc_buffer_source"
   end="VGA_Pixel_RGB_Resampler.avalon_rgb_sink" />
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Dual_Clock_FIFO.avalon_dc_buffer_source"
   end="VGA_Controller.avalon_vga_sink" />
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Pixel_DMA.avalon_pixel_source"
   end="VGA_Pixel_FIFO.avalon_dc_buffer_sink" />
 <connection
   kind="avalon_streaming"
   version="15.0"
   start="VGA_Pixel_RGB_Resampler.avalon_rgb_source"
   end="VGA_Alpha_Blender.avalon_background_sink" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Pixel_DMA.clk" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Pixel_RGB_Resampler.clk" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Char_Buffer.clk" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Alpha_Blender.clk" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Pixel_FIFO.clock_stream_in" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Dual_Clock_FIFO.clock_stream_in" />
 <connection
   kind="clock"
   version="15.0"
   start="Sys_Clk.clk"
   end="VGA_Pixel_FIFO.clock_stream_out" />
 <connection
   kind="clock"
   version="15.0"
   start="VGA_PLL.vga_clk"
   end="VGA_Controller.clk" />
 <connection
   kind="clock"
   version="15.0"
   start="VGA_PLL.vga_clk"
   end="VGA_Dual_Clock_FIFO.clock_stream_out" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Pixel_DMA.reset" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Pixel_RGB_Resampler.reset" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Char_Buffer.reset" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Alpha_Blender.reset" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Pixel_FIFO.reset_stream_in" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Dual_Clock_FIFO.reset_stream_in" />
 <connection
   kind="reset"
   version="15.0"
   start="Sys_Clk.clk_reset"
   end="VGA_Pixel_FIFO.reset_stream_out" />
 <connection
   kind="reset"
   version="15.0"
   start="VGA_PLL.reset_source"
   end="VGA_Controller.reset" />
 <connection
   kind="reset"
   version="15.0"
   start="VGA_PLL.reset_source"
   end="VGA_Dual_Clock_FIFO.reset_stream_out" />
 <interconnectRequirement for="$system" name="qsys_mm.clockCrossingAdapter" value="HANDSHAKE" />
 <interconnectRequirement for="$system" name="qsys_mm.enableEccProtection" value="FALSE" />
 <interconnectRequirement for="$system" name="qsys_mm.insertDefaultSlave" value="FALSE" />
 <interconnectRequirement for="$system" name="qsys_mm.maxAdditionalLatency" value="1" />
</system>
