; ModuleID = 'Code_4.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

@g1 = global i32 0, align 4
@g2 = global float 0.000000e+00, align 4
@g3 = global i8 97, align 1

define i32 @main() nounwind {
  %1 = alloca i32, align 4
  %alpha_1 = alloca i32, align 4
  %alpha_2 = alloca i32, align 4
  %alpha_3 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %y3 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 10, i32* %alpha_1, align 4
  store i32 5, i32* %alpha_2, align 4
  store i32 2, i32* %alpha_3, align 4
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
  store i32 0, i32* %y2, align 4
  br label %12

; <label>:12                                      ; preds = %18, %11
  %13 = load i32* %y2, align 4
  %14 = load i32* %alpha_2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %21

; <label>:16                                      ; preds = %12
  %17 = call i32 @C2()
  br label %18

; <label>:18                                      ; preds = %16
  %19 = load i32* %y2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %y2, align 4
  br label %12

; <label>:21                                      ; preds = %12
  store i32 0, i32* %y3, align 4
  br label %22

; <label>:22                                      ; preds = %28, %21
  %23 = load i32* %y3, align 4
  %24 = load i32* %alpha_3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %31

; <label>:26                                      ; preds = %22
  %27 = call i32 @C3()
  br label %28

; <label>:28                                      ; preds = %26
  %29 = load i32* %y3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %y3, align 4
  br label %22

; <label>:31                                      ; preds = %22
  %32 = load i32* %1
  ret i32 %32
}

define i32 @C1() nounwind {
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %7, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 100
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %1
  %5 = load i32* @g1, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @g1, align 4
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
  %i = alloca i32, align 4
  %r = alloca float, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %9, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 50
  br i1 %3, label %4, label %12

; <label>:4                                       ; preds = %1
  %5 = load float* @g2, align 4
  %6 = fpext float %5 to double
  %7 = fadd double %6, 1.000000e-01
  %8 = fptrunc double %7 to float
  store float %8, float* @g2, align 4
  br label %9

; <label>:9                                       ; preds = %4
  %10 = load i32* %i, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %i, align 4
  br label %1

; <label>:12                                      ; preds = %1
  ret i32 0
}

define i32 @C3() nounwind {
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %6, %0
  %2 = load i32* %i, align 4
  %3 = icmp slt i32 %2, 25
  br i1 %3, label %4, label %9

; <label>:4                                       ; preds = %1
  %5 = load i8* @g3, align 1
  store i8 %5, i8* %c, align 1
  br label %6

; <label>:6                                       ; preds = %4
  %7 = load i32* %i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %i, align 4
  br label %1

; <label>:9                                       ; preds = %1
  ret i32 0
}
