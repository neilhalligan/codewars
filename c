
[1mFrom:[0m /home/neil/code/neilhalligan/codewars/Ten-PinBowling/ten-pin_bowling.rb @ line 36 Object#bowling_score:

    [1;34m17[0m: [32mdef[0m [1;34mbowling_score[0m(frames)
    [1;34m18[0m:   score = [1;34m0[0m
    [1;34m19[0m:   bonus = [[1;34m1[0m,[1;34m1[0m]
    [1;34m20[0m:   frames.split([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m).each [32mdo[0m |frame|
    [1;34m21[0m:     [32mif[0m frame[[1;34m0[0m] == [31m[1;31m"[0m[31mX[1;31m"[0m[31m[0m
    [1;34m22[0m:       score += [1;34m10[0m * bonus[[1;34m0[0m]
    [1;34m23[0m:       bonus_shuffle(bonus)
    [1;34m24[0m:       bonus.map! { |b| b += [1;34m1[0m }
    [1;34m25[0m:     [32melsif[0m frame[[1;34m1[0m] == [31m[1;31m"[0m[31m/[1;31m"[0m[31m[0m
    [1;34m26[0m:       score += [1;34m10[0m * bonus[[1;34m0[0m]
    [1;34m27[0m:       bonus_shuffle(bonus)
    [1;34m28[0m:       bonus[[1;34m0[0m] += [1;34m1[0m
    [1;34m29[0m:     [32melse[0m
    [1;34m30[0m:       score += frame[[1;34m0[0m].to_i * bonus[[1;34m0[0m]
    [1;34m31[0m:       bonus_shuffle(bonus)
    [1;34m32[0m:       score += frame[[1;34m1[0m].to_i * bonus[[1;34m0[0m] [1;34m# refactor here[0m
    [1;34m33[0m:       bonus_shuffle(bonus)
    [1;34m34[0m:     [32mend[0m
    [1;34m35[0m:     binding.pry
 => [1;34m36[0m:   [32mend[0m
    [1;34m37[0m:   score
    [1;34m38[0m: [32mend[0m

