; ModuleID = 'Code_1.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

@g1 = global i32 0, align 4

define i32 @main() nounwind {
  %1 = alloca i32, align 4
  %alpha_1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 1, i32* %alpha_1, align 4
  store i32 0, i32* %y1, align 4
  br label %2

; <label>:2                                       ; preds = %8, %0
  %3 = load i32* %y1, align 4
  %4 = load i32* %alpha_1, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %2
  %7 = call i32 @C1()
  br label %8

; <label>:8                                       ; preds = %6
  %9 = load i32* %y1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %y1, align 4
  br label %2

; <label>:11                                      ; preds = %2
  %12 = load i32* %1
  ret i32 %12
}

define i32 @C1() nounwind {
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %1
  %5 = load i32* @g1, align 4
  store i32 %5, i32* %x, align 4
  br label %6

; <label>:6                                       ; preds = %4
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret i32 0
}
