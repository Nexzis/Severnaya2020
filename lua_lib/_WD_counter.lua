
function up_cnt(cnt)
local max_value=65534
	if cnt < max_value then 
		cnt=cnt+1
	else 
		cnt=0
	end-- if cnt
	return cnt
  end--
