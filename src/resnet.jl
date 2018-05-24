function resnet_layers()
  weight = Metalhead.weights("resnet.bson")
  weights = Dict{Any ,Any}()
  for ele in keys(weight)
    weights[string(ele)] = convert(Array{Float64, N} where N, weight[ele])
  end
  Mul(a,b,c) = b .* reshape(c, (1,1,size(c)[a],1)) 
  Add(axis, A ,B) = A .+ reshape(B, (1,1,size(B)[1],1)) 

    c_1 = Chain(((x_2,)->meanpool(x_2, (7, 7), pad=(0, 0), stride=(1, 1))), vec, Dense(transpose(weights["gpu_0/pred_w_0"]), weights["gpu_0/pred_b_0"]), vec, softmax)
    c_3 = Conv(weights["gpu_0/res5_2_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_4 = Conv(weights["gpu_0/res5_2_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_5 = Conv(weights["gpu_0/res5_2_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_6 = Conv(weights["gpu_0/res5_1_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_7 = Conv(weights["gpu_0/res5_1_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_8 = Conv(weights["gpu_0/res5_1_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_9 = Conv(weights["gpu_0/res5_0_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_10 = Conv(weights["gpu_0/res5_0_branch2b_w_0"], [0.0], relu, stride=(2, 2), pad=(1, 1))
    c_11 = Conv(weights["gpu_0/res5_0_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_12 = Conv(weights["gpu_0/res4_5_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_13 = Conv(weights["gpu_0/res4_5_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_14 = Conv(weights["gpu_0/res4_5_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_15 = Conv(weights["gpu_0/res4_4_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_16 = Conv(weights["gpu_0/res4_4_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_17 = Conv(weights["gpu_0/res4_4_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_18 = Conv(weights["gpu_0/res4_3_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_19 = Conv(weights["gpu_0/res4_3_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_20 = Conv(weights["gpu_0/res4_3_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_21 = Conv(weights["gpu_0/res4_2_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_22 = Conv(weights["gpu_0/res4_2_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_23 = Conv(weights["gpu_0/res4_2_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_24 = Conv(weights["gpu_0/res4_1_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_25 = Conv(weights["gpu_0/res4_1_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_26 = Conv(weights["gpu_0/res4_1_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_27 = Conv(weights["gpu_0/res4_0_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_28 = Conv(weights["gpu_0/res4_0_branch2b_w_0"], [0.0], relu, stride=(2, 2), pad=(1, 1))
    c_29 = Conv(weights["gpu_0/res4_0_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_30 = Conv(weights["gpu_0/res3_3_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_31 = Conv(weights["gpu_0/res3_3_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_32 = Conv(weights["gpu_0/res3_3_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_33 = Conv(weights["gpu_0/res3_2_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_34 = Conv(weights["gpu_0/res3_2_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_35 = Conv(weights["gpu_0/res3_2_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_36 = Conv(weights["gpu_0/res3_1_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_37 = Conv(weights["gpu_0/res3_1_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_38 = Conv(weights["gpu_0/res3_1_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_39 = Conv(weights["gpu_0/res3_0_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_40 = Conv(weights["gpu_0/res3_0_branch2b_w_0"], [0.0], relu, stride=(2, 2), pad=(1, 1))
    c_41 = Conv(weights["gpu_0/res3_0_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_42 = Conv(weights["gpu_0/res2_2_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_43 = Conv(weights["gpu_0/res2_2_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_44 = Conv(weights["gpu_0/res2_2_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_45 = Conv(weights["gpu_0/res2_1_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_46 = Conv(weights["gpu_0/res2_1_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_47 = Conv(weights["gpu_0/res2_1_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_48 = Conv(weights["gpu_0/res2_0_branch2c_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_49 = Conv(weights["gpu_0/res2_0_branch2b_w_0"], [0.0], relu, stride=(1, 1), pad=(1, 1))
    c_50 = Conv(weights["gpu_0/res2_0_branch2a_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_51 = Conv(weights["gpu_0/conv1_w_0"], [0.0], relu, stride=(2, 2), pad=(3, 3))
    c_52 = Conv(weights["gpu_0/res2_0_branch1_w_0"], [0.0], relu, stride=(1, 1), pad=(0, 0))
    c_53 = Conv(weights["gpu_0/res3_0_branch1_w_0"], [0.0], relu, stride=(2, 2), pad=(0, 0))
    c_54 = Conv(weights["gpu_0/res4_0_branch1_w_0"], [0.0], relu, stride=(2, 2), pad=(0, 0))
    c_55 = Conv(weights["gpu_0/res5_0_branch1_w_0"], [0.0], relu, stride=(2, 2), pad=(0, 0))
    ls = Chain(x_56 -> begin 
            edge_57 = c_51(x_56)
            edge_58 = maxpool(relu.((BatchNorm(getindex(size(edge_57), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_57)), (3, 3), pad=(1, 1), stride=(2, 2))
            edge_59 = c_50(edge_58)
            edge_60 = c_49(relu.((BatchNorm(getindex(size(edge_59), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_59)))
            edge_61 = c_48(relu.((BatchNorm(getindex(size(edge_60), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_60)))
            edge_62 = c_52(edge_58)
            edge_63 = relu.((BatchNorm(getindex(size(edge_61), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_61) + (BatchNorm(getindex(size(edge_62), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_62))
            edge_64 = c_47(edge_63)
            edge_65 = c_46(relu.((BatchNorm(getindex(size(edge_64), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_64)))
            edge_66 = c_45(relu.((BatchNorm(getindex(size(edge_65), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_65)))
            edge_67 = relu.((BatchNorm(getindex(size(edge_66), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_66) + edge_63)
            edge_68 = c_44(edge_67)
            edge_69 = c_43(relu.((BatchNorm(getindex(size(edge_68), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_68)))
            edge_70 = c_42(relu.((BatchNorm(getindex(size(edge_69), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_69)))
            edge_71 = relu.((BatchNorm(getindex(size(edge_70), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_70) + edge_67)
            edge_72 = c_41(edge_71)
            edge_73 = c_40(relu.((BatchNorm(getindex(size(edge_72), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_72)))
            edge_74 = c_39(relu.((BatchNorm(getindex(size(edge_73), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_73)))
            edge_75 = c_53(edge_71)
            edge_76 = relu.((BatchNorm(getindex(size(edge_74), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_74) + (BatchNorm(getindex(size(edge_75), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_75))
            edge_77 = c_38(edge_76)
            edge_78 = c_37(relu.((BatchNorm(getindex(size(edge_77), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_77)))
            edge_79 = c_36(relu.((BatchNorm(getindex(size(edge_78), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_78)))
            edge_80 = relu.((BatchNorm(getindex(size(edge_79), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_79) + edge_76)
            edge_81 = c_35(edge_80)
            edge_82 = c_34(relu.((BatchNorm(getindex(size(edge_81), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_81)))
            edge_83 = c_33(relu.((BatchNorm(getindex(size(edge_82), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_82)))
            edge_84 = relu.((BatchNorm(getindex(size(edge_83), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_83) + edge_80)
            edge_85 = c_32(edge_84)
            edge_86 = c_31(relu.((BatchNorm(getindex(size(edge_85), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_85)))
            edge_87 = c_30(relu.((BatchNorm(getindex(size(edge_86), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_86)))
            edge_88 = relu.((BatchNorm(getindex(size(edge_87), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_87) + edge_84)
            edge_89 = c_29(edge_88)
            edge_90 = c_28(relu.((BatchNorm(getindex(size(edge_89), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_89)))
            edge_91 = c_27(relu.((BatchNorm(getindex(size(edge_90), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_90)))
            edge_92 = c_54(edge_88)
            edge_93 = relu.((BatchNorm(getindex(size(edge_91), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_91) + (BatchNorm(getindex(size(edge_92), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_92))
            edge_94 = c_26(edge_93)
            edge_95 = c_25(relu.((BatchNorm(getindex(size(edge_94), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_94)))
            edge_96 = c_24(relu.((BatchNorm(getindex(size(edge_95), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_95)))
            edge_97 = relu.((BatchNorm(getindex(size(edge_96), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_96) + edge_93)
            edge_98 = c_23(edge_97)
            edge_99 = c_22(relu.((BatchNorm(getindex(size(edge_98), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_98)))
            edge_100 = c_21(relu.((BatchNorm(getindex(size(edge_99), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_99)))
            edge_101 = relu.((BatchNorm(getindex(size(edge_100), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_100) + edge_97)
            edge_102 = c_20(edge_101)
            edge_103 = c_19(relu.((BatchNorm(getindex(size(edge_102), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_102)))
            edge_104 = c_18(relu.((BatchNorm(getindex(size(edge_103), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_103)))
            edge_105 = relu.((BatchNorm(getindex(size(edge_104), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_104) + edge_101)
            edge_106 = c_17(edge_105)
            edge_107 = c_16(relu.((BatchNorm(getindex(size(edge_106), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_106)))
            edge_108 = c_15(relu.((BatchNorm(getindex(size(edge_107), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_107)))
            edge_109 = relu.((BatchNorm(getindex(size(edge_108), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_108) + edge_105)
            edge_110 = c_14(edge_109)
            edge_111 = c_13(relu.((BatchNorm(getindex(size(edge_110), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_110)))
            edge_112 = c_12(relu.((BatchNorm(getindex(size(edge_111), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_111)))
            edge_113 = relu.((BatchNorm(getindex(size(edge_112), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_112) + edge_109)
            edge_114 = c_11(edge_113)
            edge_115 = c_10(relu.((BatchNorm(getindex(size(edge_114), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_114)))
            edge_116 = c_9(relu.((BatchNorm(getindex(size(edge_115), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_115)))
            edge_117 = c_55(edge_113)
            edge_118 = relu.((BatchNorm(getindex(size(edge_116), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_116) + (BatchNorm(getindex(size(edge_117), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_117))
            edge_119 = c_8(edge_118)
            edge_120 = c_7(relu.((BatchNorm(getindex(size(edge_119), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_119)))
            edge_121 = c_6(relu.((BatchNorm(getindex(size(edge_120), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_120)))
            edge_122 = relu.((BatchNorm(getindex(size(edge_121), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_121) + edge_118)
            edge_123 = c_5(edge_122)
            edge_124 = c_4(relu.((BatchNorm(getindex(size(edge_123), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_123)))
            edge_125 = c_3(relu.((BatchNorm(getindex(size(edge_124), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_124)))
            c_1(relu.((BatchNorm(getindex(size(edge_125), 3), ϵ=1.0000001e-5, momentum=0.9))(edge_125) + edge_122))
        end)
  Flux.testmode!(ls)
  return ls
end

struct ResNet <: ClassificationModel{ImageNet.ImageNet1k}
  layers::Chain
end

ResNet() = ResNet(resnet_layers())

Base.show(io::IO, ::ResNet) = print(io, "ResNet()")

Flux.treelike(ResNet)

(m::ResNet)(x) = m.layers(x)
