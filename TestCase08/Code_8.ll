; ModuleID = 'Code_8.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

define i32 @main() nounwind {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 @C1()
  %3 = call i32 @C2()
  ret i32 0
}

define i32 @C1() nounwind {
  %l1 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %l1, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 50
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load i32* %l1, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %l1, align 4
  br label %7

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %i, align 4
  br label %1

; <label>:10                                      ; preds = %1
  ret i32 0
}

define i32 @C2() nounwind {
  %l2 = alloca double, align 8
  %y = alloca i32, align 4
  store double 0.000000e+00, double* %l2, align 8
  store i32 0, i32* %y, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %y, align 4
  %3 = icmp slt i32 %2, 500
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load double* %l2, align 8
  %6 = fadd double %5, 1.000000e+00
  store double %6, double* %l2, align 8
  br label %7

; <label>:7                                       ; preds = %4
  %8 = load i32* %y, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %y, align 4
  br label %1

; <label>:10                                      ; preds = %1
  ret i32 0
}
