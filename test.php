<?php
	echo  date('Y');
	echo '</br>';
	
	echo date('d/m/Y', strtotime('last day of December '.date('Y')));
	echo '</br>';
	echo date('d/m/Y',strtotime('first day of January '.date('Y')));
	echo '</br>';

	echo date('d/m/Y', strtotime('last day of December 2015'));
	echo '</br>';
	echo date('d/m/Y',strtotime('first day of January 2015'));
	echo '</br>';
?>