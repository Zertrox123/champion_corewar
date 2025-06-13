        .name "El destructor"
        .comment "The one who's indestructible"


        sti r1, %:live, %1
        and r1, r1, r1
        xor r2, r2, r2
        add r2, r2, r2
        ld	%10, r8
        ld	%1000, r9
        ld	%500, r10
        live    %1
        ld %0, r11
        fork %:live

live:   live %1
        fork %:attack
        fork %:live
        zjmp %:live

attack:	st	    r8, 1000
        sti     r8, r9, %100
        sti     r8, r9, %200
        sti     r8, r9, %300
        sti     r8, r9, %500
        sti     r8, r9, %1000
        sti     r8, r9, %2500
        sti     r8, r9, %4500
	    aff	    r1
        sub     r9, r10, r9
	    add     r6, r7, r7
	    sti	    r7, r7, r1
        live    %1
        ld      %0, r11
        zjmp    %5000
