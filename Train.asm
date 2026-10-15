# Train Reservation System - GNU Assembly
# File: train_booking.s
# Roll No: 3121

.section .data
seat_available: .byte 1      # 1 = Seat khali hai
ticket_valid:   .byte 1      # 1 = Ticket ID valid
train_open:     .byte 1      # 1 = Train booking open hai

msg_confirm:    .asciz "Train Ticket Confirmed!\n"
msg_waiting:    .asciz "Seat Not Available - Waiting List!\n"
msg_entry:      .asciz "Entry Allowed in Train!\n"
msg_no_entry:   .asciz "Entry Denied!\n"

seat_booked:    .byte 0

.section .text
.globl _start

_start:
    # === 1. AND Gate - Ticket Booking Logic ===
    # Booking = Seat_Available AND Ticket_Valid AND Train_Open
    
    movb seat_available, %al
    movb ticket_valid, %bl
    andb %bl, %al               # AL = Seat AND Ticket (AND Gate)
    
    movb train_open, %bl
    andb %bl, %al               # AL = AL AND Train_Open
    
    cmp
