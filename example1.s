TEXT runtime.main(SB) /usr/local/Cellar/go/1.12.1/libexec/src/runtime/proc.go
  proc.go:110		0x1024680		65488b0c2530000000	MOVQ GS:0x30, CX				
  proc.go:110		0x1024689		483b6110		CMPQ 0x10(CX), SP				
  proc.go:110		0x102468d		0f8667030000		JBE 0x10249fa					
  proc.go:110		0x1024693		4883ec40		SUBQ $0x40, SP					
  proc.go:110		0x1024697		48896c2438		MOVQ BP, 0x38(SP)				
  proc.go:110		0x102469c		488d6c2438		LEAQ 0x38(SP), BP				
  proc.go:111		0x10246a1		65488b042530000000	MOVQ GS:0x30, AX				
  proc.go:111		0x10246aa		4889442430		MOVQ AX, 0x30(SP)				
  proc.go:115		0x10246af		488b4830		MOVQ 0x30(AX), CX				
  proc.go:115		0x10246b3		488b09			MOVQ 0(CX), CX					
  proc.go:115		0x10246b6		48c7813001000000000000	MOVQ $0x0, 0x130(CX)				
  proc.go:121		0x10246c1		48c7059c9a090000ca9a3b	MOVQ $0x3b9aca00, runtime.maxstacksize(SB)	
  proc.go:127		0x10246cc		c605bc730b0001		MOVB $0x1, runtime.mainStarted(SB)		
  proc.go:130		0x10246d3		488d0dd6ce0400		LEAQ go.func.*+477(SB), CX			
  proc.go:130		0x10246da		48890c24		MOVQ CX, 0(SP)					
  proc.go:130		0x10246de		e87d270200		CALL runtime.systemstack(SB)			
  proc.go:3541		0x10246e3		65488b042530000000	MOVQ GS:0x30, AX				
  proc.go:3541		0x10246ec		488b4030		MOVQ 0x30(AX), AX				
  proc.go:141		0x10246f0		90			NOPL						
  proc.go:3541		0x10246f1		ff8074020000		INCL 0x274(AX)					
  proc.go:3502		0x10246f7		65488b042530000000	MOVQ GS:0x30, AX				
  proc.go:3503		0x1024700		488b4830		MOVQ 0x30(AX), CX				
  proc.go:3542		0x1024704		90			NOPL						
  proc.go:3503		0x1024705		90			NOPL						
  runtime2.go:206	0x1024706		4889c2			MOVQ AX, DX					
  runtime2.go:206	0x1024709		48898168010000		MOVQ AX, 0x168(CX)				
  proc.go:3504		0x1024710		90			NOPL						
  proc.go:3504		0x1024711		488b4230		MOVQ 0x30(DX), AX				
  runtime2.go:244	0x1024715		488982d8000000		MOVQ AX, 0xd8(DX)				
  proc.go:143		0x102471c		488b442430		MOVQ 0x30(SP), AX				
  proc.go:143		0x1024721		488b4030		MOVQ 0x30(AX), AX				
  proc.go:143		0x1024725		488d0db4c90900		LEAQ runtime.m0(SB), CX				
  proc.go:143		0x102472c		4839c8			CMPQ CX, AX					
  proc.go:143		0x102472f		0f85aa020000		JNE 0x10249df					
  proc.go:147		0x1024735		e856230200		CALL runtime.init(SB)				
  proc.go:148		0x102473a		e8f1730100		CALL runtime.nanotime(SB)			
  proc.go:148		0x102473f		48833c2400		CMPQ $0x0, 0(SP)				
  proc.go:148		0x1024744		0f847a020000		JE 0x10249c4					
  proc.go:153		0x102474a		c644242701		MOVB $0x1, 0x27(SP)				
  proc.go:154		0x102474f		c7042408000000		MOVL $0x8, 0(SP)				
  proc.go:154		0x1024756		488d055bce0400		LEAQ go.func.*+485(SB), AX			
  proc.go:154		0x102475d		4889442408		MOVQ AX, 0x8(SP)				
  proc.go:154		0x1024762		488d442427		LEAQ 0x27(SP), AX				
  proc.go:154		0x1024767		4889442410		MOVQ AX, 0x10(SP)				
  proc.go:154		0x102476c		e8ffd4ffff		CALL runtime.deferproc(SB)			
  proc.go:154		0x1024771		85c0			TESTL AX, AX					
  proc.go:154		0x1024773		0f85cf010000		JNE 0x1024948					
  proc.go:161		0x1024779		e8b2730100		CALL runtime.nanotime(SB)			
  proc.go:161		0x102477e		488b0424		MOVQ 0(SP), AX					
  proc.go:161		0x1024782		48890517740b00		MOVQ AX, runtime.runtimeInitTime(SB)		
  proc.go:163		0x1024789		e862d2feff		CALL runtime.gcenable(SB)			
  proc.go:165		0x102478e		488d05eb450300		LEAQ runtime.types+41568(SB), AX		
  proc.go:165		0x1024795		48890424		MOVQ AX, 0(SP)					
  proc.go:165		0x1024799		48c744240800000000	MOVQ $0x0, 0x8(SP)				
  proc.go:165		0x10247a2		e889f8fdff		CALL runtime.makechan(SB)			
  proc.go:165		0x10247a7		488b442410		MOVQ 0x10(SP), AX				
  proc.go:165		0x10247ac		833d3d740b0000		CMPL $0x0, runtime.writeBarrier(SB)		
  proc.go:165		0x10247b3		0f857e010000		JNE 0x1024937					
  proc.go:165		0x10247b9		48890530bf0900		MOVQ AX, runtime.main_init_done(SB)		
  proc.go:166		0x10247c0		803dc5720b0000		CMPB $0x0, runtime.iscgo(SB)			
  proc.go:166		0x10247c7		746f			JE 0x1024838					
  proc.go:167		0x10247c9		48833da7be090000	CMPQ $0x0, __cgo_thread_start(SB)		
  proc.go:167		0x10247d1		0f84d2010000		JE 0x10249a9					
  proc.go:171		0x10247d7		48833da9be090000	CMPQ $0x0, runtime._cgo_setenv(SB)		
  proc.go:171		0x10247df		0f84a9010000		JE 0x102498e					
  proc.go:174		0x10247e5		48833da3be090000	CMPQ $0x0, runtime._cgo_unsetenv(SB)		
  proc.go:174		0x10247ed		0f8480010000		JE 0x1024973					
  proc.go:178		0x10247f3		48833d75be090000	CMPQ $0x0, __cgo_notify_runtime_init_done(SB)	
  proc.go:178		0x10247fb		0f8457010000		JE 0x1024958					
  proc.go:183		0x1024801		90			NOPL						
  proc.go:1873		0x1024802		31c0			XORL AX, AX					
  proc.go:1873		0x1024804		488d0d35740b00		LEAQ runtime.newmHandoff+32(SB), CX		
  proc.go:1873		0x102480b		ba01000000		MOVL $0x1, DX					
  proc.go:1873		0x1024810		f00fb111		LOCK CMPXCHGL DX, 0(CX)				
  proc.go:1873		0x1024814		0f94c1			SETE CL						
  proc.go:1873		0x1024817		84c9			TESTL CL, CL					
  proc.go:1873		0x1024819		0f85fa000000		JNE 0x1024919					
  proc.go:184		0x102481f		488b054abe0900		MOVQ __cgo_notify_runtime_init_done(SB), AX	
  proc.go:184		0x1024826		48890424		MOVQ AX, 0(SP)					
  proc.go:184		0x102482a		48c744240800000000	MOVQ $0x0, 0x8(SP)				
  proc.go:184		0x1024833		e8b8ecfdff		CALL runtime.cgocall(SB)			
  proc.go:188		0x1024838		488b0581cd0400		MOVQ go.func.*+493(SB), AX			
  proc.go:188		0x102483f		488d157acd0400		LEAQ go.func.*+493(SB), DX			
  proc.go:188		0x1024846		ffd0			CALL AX						
  proc.go:189		0x1024848		488b05a1be0900		MOVQ runtime.main_init_done(SB), AX		
  proc.go:189		0x102484f		48890424		MOVQ AX, 0(SP)					
  proc.go:189		0x1024853		e8c802feff		CALL runtime.closechan(SB)			
  proc.go:191		0x1024858		c644242700		MOVB $0x0, 0x27(SP)				
  proc.go:192		0x102485d		e82e830000		CALL runtime.unlockOSThread(SB)			
  proc.go:194		0x1024862		803d22720b0000		CMPB $0x0, runtime.isarchive(SB)		
  proc.go:194		0x1024869		0f859a000000		JNE 0x1024909					
  proc.go:194		0x102486f		803d17720b0000		CMPB $0x0, runtime.islibrary(SB)		
  proc.go:194		0x1024876		0f858d000000		JNE 0x1024909					
  proc.go:200		0x102487c		488b0545cd0400		MOVQ go.func.*+501(SB), AX			
  proc.go:200		0x1024883		488d153ecd0400		LEAQ go.func.*+501(SB), DX			
  proc.go:200		0x102488a		ffd0			CALL AX						
  proc.go:209		0x102488c		8b054e720b00		MOVL runtime.runningPanicDefers(SB), AX		
  proc.go:209		0x1024892		85c0			TESTL AX, AX					
  proc.go:209		0x1024894		7435			JE 0x10248cb					
  proc.go:209		0x1024896		31c0			XORL AX, AX					
  proc.go:211		0x1024898		eb1f			JMP 0x10248b9					
  proc.go:211		0x102489a		4889442428		MOVQ AX, 0x28(SP)				
  proc.go:215		0x102489f		90			NOPL						
  proc.go:265		0x10248a0		90			NOPL						
  proc.go:266		0x10248a1		488d05d8cc0400		LEAQ go.func.*+429(SB), AX			
  proc.go:266		0x10248a8		48890424		MOVQ AX, 0(SP)					
  proc.go:266		0x10248ac		e82f250200		CALL runtime.mcall(SB)				
  proc.go:211		0x10248b1		488b442428		MOVQ 0x28(SP), AX				
  proc.go:211		0x10248b6		48ffc0			INCQ AX						
  proc.go:211		0x10248b9		483de8030000		CMPQ $0x3e8, AX					
  proc.go:211		0x10248bf		7d0a			JGE 0x10248cb					
  proc.go:212		0x10248c1		8b0d19720b00		MOVL runtime.runningPanicDefers(SB), CX		
  proc.go:212		0x10248c7		85c9			TESTL CX, CX					
  proc.go:212		0x10248c9		75cf			JNE 0x102489a					
  proc.go:218		0x10248cb		8b0507720b00		MOVL runtime.panicking(SB), AX			
  proc.go:218		0x10248d1		85c0			TESTL AX, AX					
  proc.go:218		0x10248d3		7516			JNE 0x10248eb					
  proc.go:222		0x10248d5		c7042400000000		MOVL $0x0, 0(SP)				
  proc.go:222		0x10248dc		e82f710100		CALL runtime.exit(SB)				
  proc.go:225		0x10248e1		31c0			XORL AX, AX					
  proc.go:225		0x10248e3		c70000000000		MOVL $0x0, 0(AX)				
  proc.go:225		0x10248e9		ebf6			JMP 0x10248e1					
  proc.go:219		0x10248eb		0f57c0			XORPS X0, X0					
  proc.go:219		0x10248ee		0f110424		MOVUPS X0, 0(SP)				
  proc.go:219		0x10248f2		66c74424100810		MOVW $0x1008, 0x10(SP)				
  proc.go:219		0x10248f9		48c744241801000000	MOVQ $0x1, 0x18(SP)				
  proc.go:219		0x1024902		e879020000		CALL runtime.gopark(SB)				
  proc.go:219		0x1024907		ebcc			JMP 0x10248d5					
  proc.go:197		0x1024909		90			NOPL						
  proc.go:197		0x102490a		e8f1dbffff		CALL runtime.deferreturn(SB)			
  proc.go:197		0x102490f		488b6c2438		MOVQ 0x38(SP), BP				
  proc.go:197		0x1024914		4883c440		ADDQ $0x40, SP					
  proc.go:197		0x1024918		c3			RET						
  proc.go:1876		0x1024919		488d0580ce0400		LEAQ go.func.*+973(SB), AX			
  proc.go:1876		0x1024920		48890424		MOVQ AX, 0(SP)					
  proc.go:1876		0x1024924		48c744240800000000	MOVQ $0x0, 0x8(SP)				
  proc.go:1876		0x102492d		e8ce3a0000		CALL runtime.newm(SB)				
  proc.go:183		0x1024932		e9e8feffff		JMP 0x102481f					
  proc.go:165		0x1024937		488d3db2bd0900		LEAQ runtime.main_init_done(SB), DI		
  proc.go:165		0x102493e		e84d440200		CALL runtime.gcWriteBarrier(SB)			
  proc.go:165		0x1024943		e978feffff		JMP 0x10247c0					
  proc.go:154		0x1024948		90			NOPL						
  proc.go:154		0x1024949		e8b2dbffff		CALL runtime.deferreturn(SB)			
  proc.go:154		0x102494e		488b6c2438		MOVQ 0x38(SP), BP				
  proc.go:154		0x1024953		4883c440		ADDQ $0x40, SP					
  proc.go:154		0x1024957		c3			RET						
  proc.go:179		0x1024958		488d0574ba0400		LEAQ go.string.*+13427(SB), AX			
  proc.go:179		0x102495f		48890424		MOVQ AX, 0(SP)					
  proc.go:179		0x1024963		48c744240825000000	MOVQ $0x25, 0x8(SP)				
  proc.go:179		0x102496c		e84fe5ffff		CALL runtime.throw(SB)				
  proc.go:179		0x1024971		0f0b			UD2						
  proc.go:175		0x1024973		488d05d49b0400		LEAQ go.string.*+5614(SB), AX			
  proc.go:175		0x102497a		48890424		MOVQ AX, 0(SP)					
  proc.go:175		0x102497e		48c744240815000000	MOVQ $0x15, 0x8(SP)				
  proc.go:175		0x1024987		e834e5ffff		CALL runtime.throw(SB)				
  proc.go:175		0x102498c		0f0b			UD2						
  proc.go:172		0x102498e		488d05a7970400		LEAQ go.string.*+4572(SB), AX			
  proc.go:172		0x1024995		48890424		MOVQ AX, 0(SP)					
  proc.go:172		0x1024999		48c744240813000000	MOVQ $0x13, 0x8(SP)				
  proc.go:172		0x10249a2		e819e5ffff		CALL runtime.throw(SB)				
  proc.go:172		0x10249a7		0f0b			UD2						
  proc.go:168		0x10249a9		488d0534a30400		LEAQ go.string.*+7556(SB), AX			
  proc.go:168		0x10249b0		48890424		MOVQ AX, 0(SP)					
  proc.go:168		0x10249b4		48c744240819000000	MOVQ $0x19, 0x8(SP)				
  proc.go:168		0x10249bd		e8fee4ffff		CALL runtime.throw(SB)				
  proc.go:168		0x10249c2		0f0b			UD2						
  proc.go:149		0x10249c4		488d053da00400		LEAQ go.string.*+6824(SB), AX			
  proc.go:149		0x10249cb		48890424		MOVQ AX, 0(SP)					
  proc.go:149		0x10249cf		48c744240817000000	MOVQ $0x17, 0x8(SP)				
  proc.go:149		0x10249d8		e8e3e4ffff		CALL runtime.throw(SB)				
  proc.go:149		0x10249dd		0f0b			UD2						
  proc.go:144		0x10249df		488d05ac9d0400		LEAQ go.string.*+6194(SB), AX			
  proc.go:144		0x10249e6		48890424		MOVQ AX, 0(SP)					
  proc.go:144		0x10249ea		48c744240816000000	MOVQ $0x16, 0x8(SP)				
  proc.go:144		0x10249f3		e8c8e4ffff		CALL runtime.throw(SB)				
  proc.go:144		0x10249f8		0f0b			UD2						
  proc.go:110		0x10249fa		e8b1250200		CALL runtime.morestack_noctxt(SB)		
  proc.go:110		0x10249ff		e97cfcffff		JMP runtime.main(SB)				
  :-1			0x1024a04		cc			INT $0x3					
  :-1			0x1024a05		cc			INT $0x3					
  :-1			0x1024a06		cc			INT $0x3					
  :-1			0x1024a07		cc			INT $0x3					
  :-1			0x1024a08		cc			INT $0x3					
  :-1			0x1024a09		cc			INT $0x3					
  :-1			0x1024a0a		cc			INT $0x3					
  :-1			0x1024a0b		cc			INT $0x3					
  :-1			0x1024a0c		cc			INT $0x3					
  :-1			0x1024a0d		cc			INT $0x3					
  :-1			0x1024a0e		cc			INT $0x3					
  :-1			0x1024a0f		cc			INT $0x3					

TEXT runtime.main.func1(SB) /usr/local/Cellar/go/1.12.1/libexec/src/runtime/proc.go
  proc.go:130		0x1045f10		65488b0c2530000000	MOVQ GS:0x30, CX			
  proc.go:130		0x1045f19		483b6110		CMPQ 0x10(CX), SP			
  proc.go:130		0x1045f1d		7631			JBE 0x1045f50				
  proc.go:130		0x1045f1f		4883ec18		SUBQ $0x18, SP				
  proc.go:130		0x1045f23		48896c2410		MOVQ BP, 0x10(SP)			
  proc.go:130		0x1045f28		488d6c2410		LEAQ 0x10(SP), BP			
  proc.go:131		0x1045f2d		488d0564b80200		LEAQ go.func.*+965(SB), AX		
  proc.go:131		0x1045f34		48890424		MOVQ AX, 0(SP)				
  proc.go:131		0x1045f38		48c744240800000000	MOVQ $0x0, 0x8(SP)			
  proc.go:131		0x1045f41		e8ba24feff		CALL runtime.newm(SB)			
  proc.go:132		0x1045f46		488b6c2410		MOVQ 0x10(SP), BP			
  proc.go:132		0x1045f4b		4883c418		ADDQ $0x18, SP				
  proc.go:132		0x1045f4f		c3			RET					
  proc.go:130		0x1045f50		e85b100000		CALL runtime.morestack_noctxt(SB)	
  proc.go:130		0x1045f55		ebb9			JMP runtime.main.func1(SB)		
  :-1			0x1045f57		cc			INT $0x3				
  :-1			0x1045f58		cc			INT $0x3				
  :-1			0x1045f59		cc			INT $0x3				
  :-1			0x1045f5a		cc			INT $0x3				
  :-1			0x1045f5b		cc			INT $0x3				
  :-1			0x1045f5c		cc			INT $0x3				
  :-1			0x1045f5d		cc			INT $0x3				
  :-1			0x1045f5e		cc			INT $0x3				
  :-1			0x1045f5f		cc			INT $0x3				

TEXT runtime.main.func2(SB) /usr/local/Cellar/go/1.12.1/libexec/src/runtime/proc.go
  proc.go:154		0x1045f60		65488b0c2530000000	MOVQ GS:0x30, CX			
  proc.go:154		0x1045f69		483b6110		CMPQ 0x10(CX), SP			
  proc.go:154		0x1045f6d		7626			JBE 0x1045f95				
  proc.go:154		0x1045f6f		4883ec08		SUBQ $0x8, SP				
  proc.go:154		0x1045f73		48892c24		MOVQ BP, 0(SP)				
  proc.go:154		0x1045f77		488d2c24		LEAQ 0(SP), BP				
  proc.go:155		0x1045f7b		488b442410		MOVQ 0x10(SP), AX			
  proc.go:155		0x1045f80		803800			CMPB $0x0, 0(AX)			
  proc.go:155		0x1045f83		7509			JNE 0x1045f8e				
  proc.go:155		0x1045f85		488b2c24		MOVQ 0(SP), BP				
  proc.go:155		0x1045f89		4883c408		ADDQ $0x8, SP				
  proc.go:155		0x1045f8d		c3			RET					
  proc.go:156		0x1045f8e		e8fd6bfeff		CALL runtime.unlockOSThread(SB)		
  proc.go:156		0x1045f93		ebf0			JMP 0x1045f85				
  proc.go:154		0x1045f95		e816100000		CALL runtime.morestack_noctxt(SB)	
  proc.go:154		0x1045f9a		ebc4			JMP runtime.main.func2(SB)		
  :-1			0x1045f9c		cc			INT $0x3				
  :-1			0x1045f9d		cc			INT $0x3				
  :-1			0x1045f9e		cc			INT $0x3				
  :-1			0x1045f9f		cc			INT $0x3				

TEXT main.main(SB) /Users/ying.chen/developments/go/src/github.com/yingchen0706/golearn/example1.go
  example1.go:3		0x104ea70		65488b0c2530000000	MOVQ GS:0x30, CX			
  example1.go:3		0x104ea79		483b6110		CMPQ 0x10(CX), SP			
  example1.go:3		0x104ea7d		762d			JBE 0x104eaac				
  example1.go:3		0x104ea7f		4883ec18		SUBQ $0x18, SP				
  example1.go:3		0x104ea83		48896c2410		MOVQ BP, 0x10(SP)			
  example1.go:3		0x104ea88		488d6c2410		LEAQ 0x10(SP), BP			
  example1.go:4		0x104ea8d		90			NOPL					
  example1.go:4		0x104ea8e		488d056bac0000		LEAQ runtime.types+44000(SB), AX	
  example1.go:8		0x104ea95		48890424		MOVQ AX, 0(SP)				
  example1.go:8		0x104ea99		488d0520c50200		LEAQ main.statictmp_0(SB), AX		
  example1.go:8		0x104eaa0		4889442408		MOVQ AX, 0x8(SP)			
  example1.go:8		0x104eaa5		e8463efdff		CALL runtime.gopanic(SB)		
  example1.go:8		0x104eaaa		0f0b			UD2					
  example1.go:3		0x104eaac		e8ff84ffff		CALL runtime.morestack_noctxt(SB)	
  example1.go:3		0x104eab1		ebbd			JMP main.main(SB)			
  :-1			0x104eab3		cc			INT $0x3				
  :-1			0x104eab4		cc			INT $0x3				
  :-1			0x104eab5		cc			INT $0x3				
  :-1			0x104eab6		cc			INT $0x3				
  :-1			0x104eab7		cc			INT $0x3				
  :-1			0x104eab8		cc			INT $0x3				
  :-1			0x104eab9		cc			INT $0x3				
  :-1			0x104eaba		cc			INT $0x3				
  :-1			0x104eabb		cc			INT $0x3				
  :-1			0x104eabc		cc			INT $0x3				
  :-1			0x104eabd		cc			INT $0x3				
  :-1			0x104eabe		cc			INT $0x3				
  :-1			0x104eabf		cc			INT $0x3				

TEXT main.init(SB) <autogenerated>
  <autogenerated>:1	0x104eac0		65488b0c2530000000	MOVQ GS:0x30, CX			
  <autogenerated>:1	0x104eac9		483b6110		CMPQ 0x10(CX), SP			
  <autogenerated>:1	0x104eacd		763a			JBE 0x104eb09				
  <autogenerated>:1	0x104eacf		4883ec08		SUBQ $0x8, SP				
  <autogenerated>:1	0x104ead3		48892c24		MOVQ BP, 0(SP)				
  <autogenerated>:1	0x104ead7		488d2c24		LEAQ 0(SP), BP				
  <autogenerated>:1	0x104eadb		0fb605a0cf0800		MOVZX main.initdone.(SB), AX		
  <autogenerated>:1	0x104eae2		80f801			CMPL $0x1, AL				
  <autogenerated>:1	0x104eae5		7609			JBE 0x104eaf0				
  <autogenerated>:1	0x104eae7		488b2c24		MOVQ 0(SP), BP				
  <autogenerated>:1	0x104eaeb		4883c408		ADDQ $0x8, SP				
  <autogenerated>:1	0x104eaef		c3			RET					
  <autogenerated>:1	0x104eaf0		7507			JNE 0x104eaf9				
  <autogenerated>:1	0x104eaf2		e83931fdff		CALL runtime.throwinit(SB)		
  <autogenerated>:1	0x104eaf7		0f0b			UD2					
  <autogenerated>:1	0x104eaf9		c60582cf080002		MOVB $0x2, main.initdone.(SB)		
  <autogenerated>:1	0x104eb00		488b2c24		MOVQ 0(SP), BP				
  <autogenerated>:1	0x104eb04		4883c408		ADDQ $0x8, SP				
  <autogenerated>:1	0x104eb08		c3			RET					
  <autogenerated>:1	0x104eb09		e8a284ffff		CALL runtime.morestack_noctxt(SB)	
  <autogenerated>:1	0x104eb0e		ebb0			JMP main.init(SB)			
TEXT main.main(SB) /Users/ying.chen/developments/go/src/github.com/yingchen0706/golearn/example1.go
  example1.go:3		0x104ea70		65488b0c2530000000	MOVQ GS:0x30, CX			
  example1.go:3		0x104ea79		483b6110		CMPQ 0x10(CX), SP			
  example1.go:3		0x104ea7d		762d			JBE 0x104eaac				
  example1.go:3		0x104ea7f		4883ec18		SUBQ $0x18, SP				
  example1.go:3		0x104ea83		48896c2410		MOVQ BP, 0x10(SP)			
  example1.go:3		0x104ea88		488d6c2410		LEAQ 0x10(SP), BP			
  example1.go:4		0x104ea8d		90			NOPL					
  example1.go:4		0x104ea8e		488d056bac0000		LEAQ runtime.types+44000(SB), AX	
  example1.go:8		0x104ea95		48890424		MOVQ AX, 0(SP)				
  example1.go:8		0x104ea99		488d0520c50200		LEAQ main.statictmp_0(SB), AX		
  example1.go:8		0x104eaa0		4889442408		MOVQ AX, 0x8(SP)			
  example1.go:8		0x104eaa5		e8463efdff		CALL runtime.gopanic(SB)		
  example1.go:8		0x104eaaa		0f0b			UD2					
  example1.go:3		0x104eaac		e8ff84ffff		CALL runtime.morestack_noctxt(SB)	
  example1.go:3		0x104eab1		ebbd			JMP main.main(SB)			
  :-1			0x104eab3		cc			INT $0x3				
  :-1			0x104eab4		cc			INT $0x3				
  :-1			0x104eab5		cc			INT $0x3				
  :-1			0x104eab6		cc			INT $0x3				
  :-1			0x104eab7		cc			INT $0x3				
  :-1			0x104eab8		cc			INT $0x3				
  :-1			0x104eab9		cc			INT $0x3				
  :-1			0x104eaba		cc			INT $0x3				
  :-1			0x104eabb		cc			INT $0x3				
  :-1			0x104eabc		cc			INT $0x3				
  :-1			0x104eabd		cc			INT $0x3				
  :-1			0x104eabe		cc			INT $0x3				
  :-1			0x104eabf		cc			INT $0x3				
