
module fulladder(fa_s, fa_c, in_x, in_y, in_z);
	input in_x, in_y, in_z;
	output fa_s, fa_c;
	
	assign fa_s=in_x^in_y^in_z;
	assign fa_c=(in_x&in_y)|((in_x^in_y)&in_z);
	
endmodule

module lab2(s,c,a,b,cin);
	input cin;
	input [3:0] a,b;
	output [3:0] s,c;
	
	fulladder fa1(s[0],c[0],a[0],b[0],cin);
	fulladder fa2(s[1],c[1],a[1],b[1],c[0]);
	fulladder fa3(s[2],c[2],a[2],b[2],c[1]);
	fulladder fa4(s[3],c[3],a[3],b[3],c[2]);
     
endmodule 

