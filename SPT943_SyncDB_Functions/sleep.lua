function sleep( n);		-- секунды
	local t0 = os.clock();
	while os.clock() - t0 <= n do end
end

--print(os.time());
--sleep( 5);
--print(os.time());
