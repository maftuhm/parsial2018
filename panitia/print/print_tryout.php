<?php
    // get the HTML
    require_once '../../functions/config.php';
    ob_start();
    if (isset($_GET['peserta'])=='fix') {

        include(dirname(__FILE__).'/res/print_tryout_fix.php');
    }else{
    
        include(dirname(__FILE__).'/res/print_tryout.php');        
    }
    $content = ob_get_clean();

    // convert to PDF
    require_once(dirname(__FILE__).'/../html2pdf/html2pdf.class.php');
    try
    {
        $html2pdf = new HTML2PDF('P','F4','en', false, 'ISO-8859-15',array(1,0));
        $html2pdf->pdf->SetDisplayMode('fullpage');
//      $html2pdf->pdf->SetProtection(array('print'), 'spipu');
        $html2pdf->writeHTML($content, isset($_GET['vuehtml']));
        $html2pdf->Output('Data_Tryout_SBMPTN.pdf');
    }
    catch(HTML2PDF_exception $e) {
        echo $e;
        exit;
    }
