
`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif



module MakeReset0 (
		  CLK,
		  RST,
                  ASSERT_IN,
		  ASSERT_OUT,

                  OUT_RST
                  );

   parameter          init = 1 ;

   input              CLK ;
   input              RST ;
   input              ASSERT_IN ;
   output             ASSERT_OUT ;

   output             OUT_RST ;

   assign OUT_RST = !ASSERT_IN;

endmodule // MakeReset0
