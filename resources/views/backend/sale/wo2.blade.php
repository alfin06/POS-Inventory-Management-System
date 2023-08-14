<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />
    <title>{{$general_setting->site_title}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <style type="text/css">
        * {
            font-size: 12pt;
            line-height: 20px;
            font-family: 'Ubuntu', sans-serif;
            text-transform: capitalize;
        }
        .btn {
            padding: 7px 10px;
            text-decoration: none;
            border: none;
            display: block;
            text-align: center;
            margin: 7px;
            cursor:pointer;
        }

        .btn-info {
            background-color: #999;
            color: #FFF;
        }

        .btn-primary {
            background-color: #6449e7;
            color: #FFF;
            width: 100%;
        }
        td,
        th,
        tr,
        table {
            border-collapse: collapse;
        }
        tr {border-bottom: 1px solid #ddd;}
        td,th {padding: 0px 0;width: 50%;}

        table {width: 100%; }
        tfoot tr th:first-child {text-align: left;}

        .centered {
            text-align: center;
            align-content: center;
        }
        small{font-size:11px;}

        @media print {
            * {
                font-size:12pt;
                line-height: 20px;
            }
            td,th {padding: 5px 0;}
            .hidden-print {
                display: none !important;
            }
            @page { margin: 1.5cm 0.5cm 0.5cm; }
            @page:first { margin-top: 0.5cm; }
            tbody::after {
                content: ''; display: block;
                page-break-after: always;
                page-break-inside: avoid;
                page-break-before: avoid;        
            }
        }
    </style>
  </head>
<body>

<div style="max-width:1654px;margin:0">
    @if(preg_match('~[0-9]~', url()->previous()))
        @php $url = '../../pos'; @endphp
    @else
        @php $url = url()->previous(); @endphp
    @endif
    <div class="hidden-print">
        <table>
            <tr>
                <td><a href="{{$url}}" class="btn btn-info"><i class="fa fa-arrow-left"></i> {{trans('file.Back')}}</a> </td>
                <td><button onclick="window.print();" class="btn btn-primary"><i class="dripicons-print"></i> {{trans('file.Print')}}</button></td>
            </tr>
        </table>
        <br>
    </div>
        
    <div id="receipt-data">
        <div style="text-align:left;">
            <div style="float:right;">
                <p>Tangerang, {{date($general_setting->date_format, strtotime($lims_sale_data->created_at->toDateString()))}}</p>
                <p style="margin-top:-10px;">Kepada Yth,<br/>{{$lims_customer_data->company_name}}</p>
            </div>
            <h1>BERKAT FURNITURE</h1>
            <p style="margin-top:-10px;">Ruko Fiera Graha Raya Boulevard FRB 12</p>
            <p style="margin-top:-10px;">Tel : 021-29861740</p>
        </div>
        <div class="row">
            <h2>Surat Jalan No. : 
            <?php 
                $ref = explode("-", $lims_sale_data->reference_no);
                echo $ref[0];
            ?>
            </h2>
        </div>
        <div class="row">
            <p>D.H. Bersama ini kendaraan ................................................................... No. .............................................. kami mengirimkan barang2 tsb ke alamat Tuan sbb:</p>
        </div>
        <table class="table-data">
            <thead>
                <tr>
                    <th style="width:10%;">BANYAKNYA</th>
                    <th style="width:45%;">NAMA BARANG</th>
                    <th style="width:45%;">Keterangan</th>
                </tr>
            </thead>
            <tbody class="centered">
                <?php 
                $total_product_tax = 0;
                $count = 0;
                ?>
                @foreach($lims_product_sale_data as $key => $product_sale_data)
                <?php 
                    $lims_product_data = \App\Product::find($product_sale_data->product_id);
                    if($product_sale_data->variant_id) {
                        $variant_data = \App\Variant::find($product_sale_data->variant_id);
                        $product_name = $lims_product_data->name.' ['.$variant_data->name.']';
                    }
                    elseif($product_sale_data->product_batch_id) {
                        $product_batch_data = \App\ProductBatch::select('batch_no')->find($product_sale_data->product_batch_id);
                        $product_name = $lims_product_data->name.' ['.trans("file.Batch No").':'.$product_batch_data->batch_no.']';
                    }
                    else
                        $product_name = $lims_product_data->name;

                    if($product_sale_data->imei_number) {
                        $product_name .= '<br>'.trans('IMEI or Serial Numbers').': '.$product_sale_data->imei_number;
                    }
                    $count++;
                ?>
                <tr>
                    <td style="width:10%;">{{$product_sale_data->qty}}</td>
                    <td style="width:45%;">{!!$product_name!!}</td>
                    <td style="width:45%;">&nbsp;</td>
                </tr>
                @endforeach
                <?php 
                while ($count <= 8) {
                ?>
                <tr>
                    <td style="width:10%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                </tr>
                <?php
                $count++;
                }
                ?>
                <tr style="border:none;">
                    <td style="text-align:center;" colspan="3"><b>Catatan:</b></td>
                </tr>
                <tr style="border:none;">
                    <td style="text-align:center;" colspan="3">Barang yang sudah diambil tidak</td>
                </tr>
                <tr style="border:none;">
                    <td style="text-align:center;" colspan="3">dapat dikembalikan/ditukar.</td>
                </tr>
                <tr style="border:none;">
                    <td style="width:10%;">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr style="border:none;">
                    <td style="width:10%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                </tr>
                <tr style="border:none;">
                    <td colspan="2">Tanda Terima,</td>
                    <td>Hormat Kami,</td>
                </tr>
                <tr style="border:none;">
                    <td style="width:10%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                </tr>
                <tr style="border:none;">
                    <td style="width:10%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                    <td style="width:45%;">&nbsp;</td>
                </tr>
                <tr style="border:none;">
                    <td colspan="2">____________________</td>
                    <td>____________________</td>
                </tr>
            </tbody>
            <!-- </tfoot> -->
        </table>
    </div>
</div>

<script type="text/javascript">
    localStorage.clear();
    function auto_print() {     
        window.print()
    }
    setTimeout(auto_print, 1000);
</script>

</body>
</html>
