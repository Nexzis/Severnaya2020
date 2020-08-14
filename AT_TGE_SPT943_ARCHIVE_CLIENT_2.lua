	require ("./SPT943_Browser_Functions/init");
	require ("./SPT943_Browser_Functions/uploadData");
	require ("./SPT943_Browser_Functions/cb");

	local tClient = { "SPT943_2_TTable.", "VZLET311_2_TTable."};
	
	for i = 1, #tClient do
		init( tClient[ i]);
	end

	Core[tClient[ 1].."DeviceType"] = "Прибор учёта тепловой энергии СПТ943";

	for i = 1, #tClient do
		Core.onExtChange( { tClient[ i].."GasTemplateReports.GasTemplateChanged"}, cbGazTemplateComboBox, tClient[ i]);
		Core.onExtChange( { tClient[ i].."ComboBox[0].O_CHANGED"}, cbArchiveSelectCombobox, tClient[ i]);
		Core.onExtChange( { tClient[ i].."Button[0].O_PRESSED"}, cbUploadData, tClient[ i]);
		Core.onExtChange( { tClient[ i].."EO_CONTENT_READY"}, cbContentReady, tClient[ i]);
	end

	Core.waitEvents();
