<?php
/*------------------------------------------------------------------*/
//Return the conection stream
function openConnection($database_name = 'proami', $exit = true)
{
    $connection = pg_connect("host=labsmart.florianopolis.ifsc.edu.br port=5432 dbname=$database_name user=smartifsc_website password=51KTrPq3205 connect_timeout=1");
    if ($connection) {
        return $connection;
    } else {
        if ($exit) {
            echo json_encode(null);
            // finaliza o script que chamou essa função, sem ler as próximas linhas do script.
            exit();
        } else {
            return $connection;
        }
    }
}

/*------------------------------------------------------------------*/
//Close the connection stream
function closeConnection($connection)
{
    pg_close($connection);
}

/*------------------------------------------------------------------*/
function insert_data ($connection, $data){
    $SQLquery = "
        INSERT INTO raw_data (
          uid,
          linevoltagea,
          linevoltageb,
          linevoltagec,
          linecurrentn,
          linecurrenta,
          linecurrentb,
          linecurrentc,
          activepowert,
          activepowera,
          activepowerb,
          activepowerc,
          reactivepowert,
          reactivepowera,
          reactivepowerb,
          reactivepowerc,
          apparentpowert,
          apparentpowera,
          apparentpowerb,
          apparentpowerc,
          fundamentalpowert,
          fundamentalpowera,
          fundamentalpowerb,
          fundamentalpowerc,
          harmonicpowert,
          harmonicpowera,
          harmonicpowerb,
          harmonicpowerc,
          powerfactort,
          powerfactora,
          powerfactorb,
          powerfactorc,
          uanglea,
          uangleb,
          uanglec,
          panglea,
          pangleb,
          panglec,
          frequency,
          temp,
          apenergyt,
          apenergya,
          apenergyb,
          apenergyc,
          anenergyt,
          anenergya,
          anenergyb,
          anenergyc,
          rpenergyt,
          rpenergya,
          rpenergyb,
          rpenergyc,
          rnenergyt,
          rnenergya,
          rnenergyb,
          rnenergyc,
          saenergyt,
          senergya,
          senergyb,
          senergyc,
          apenergytf,
          apenergyaf,
          apenergybf,
          apenergycf,
          anenergytf,
          anenergyaf,
          anenergybf,
          anenergycf,
          apenergyth,
          apenergyah,
          apenergybh,
          apenergych,
          anenergyth,
          anenergyah,
          anenergybh,
          anenergych,
          received_time
        )
        VALUES(
            '{$data->UID}',
            {$data->LineVoltageA},
          	{$data->LineVoltageB},
          	{$data->LineVoltageC},
          	{$data->LineCurrentN},
          	{$data->LineCurrentA},
          	{$data->LineCurrentB},
          	{$data->LineCurrentC},
          	{$data->ActivePowerT},
          	{$data->ActivePowerA},
          	{$data->ActivePowerB},
          	{$data->ActivePowerC},
          	{$data->ReactivePowerT},
          	{$data->ReactivePowerA},
          	{$data->ReactivePowerB},
          	{$data->ReactivePowerC},
          	{$data->ApparentPowerT},
          	{$data->ApparentPowerA},
          	{$data->ApparentPowerB},
          	{$data->ApparentPowerC},
          	{$data->FundamentalPowerT},
          	{$data->FundamentalPowerA},
          	{$data->FundamentalPowerB},
          	{$data->FundamentalPowerC},
          	{$data->HarmonicPowerT},
          	{$data->HarmonicPowerA},
          	{$data->HarmonicPowerB},
          	{$data->HarmonicPowerC},
          	{$data->PowerFactorT},
          	{$data->PowerFactorA},
          	{$data->PowerFactorB},
          	{$data->PowerFactorC},
          	{$data->UangleA},
          	{$data->UangleB},
          	{$data->UangleC},
          	{$data->PAngleA},
          	{$data->PAngleB},
          	{$data->PAngleC},
          	{$data->Frequency},
            {$data->Temp},
            {$data->APenergyT},
            {$data->APenergyA},
            {$data->APenergyB},
            {$data->APenergyC},
            {$data->ANenergyT},
            {$data->ANenergyA},
            {$data->ANenergyB},
            {$data->ANenergyC},
            {$data->RPenergyT},
            {$data->RPenergyA},
            {$data->RPenergyB},
            {$data->RPenergyC},
            {$data->RNenergyT},
            {$data->RNenergyA},
            {$data->RNenergyB},
            {$data->RNenergyC},
            {$data->SAenergyT},
            {$data->SenergyA},
            {$data->SenergyB},
            {$data->SenergyC},
            {$data->APenergyTF},
            {$data->APenergyAF},
            {$data->APenergyBF},
            {$data->APenergyCF},
            {$data->ANenergyTF},
            {$data->ANenergyAF},
            {$data->ANenergyBF},
            {$data->ANenergyCF},
            {$data->APenergyTH},
            {$data->APenergyAH},
            {$data->APenergyBH},
            {$data->APenergyCH},
            {$data->ANenergyTH},
            {$data->ANenergyAH},
            {$data->ANenergyBH},
            {$data->ANenergyCH},
            '{$data->ReceivedTime}'
        )";
    //echo ($SQLquery);
    if (pg_query ($connection, $SQLquery))
        return "sucess";
    else
        return pg_last_error($connection);
}

/*

linevoltagea,linevoltageb,linevoltagec,linecurrentn,linecurrenta,linecurrentb,linecurrentc,activepowert,activepowera,activepowerb,activepowerc,reactivepowert,reactivepowera,reactivepowerb,reactivepowerc,apparentpowert,apparentpowera,apparentpowerb,apparentpowerc,fundamentalpowert,fundamentalpowera,fundamentalpowerb,fundamentalpowerc,harmonicpowert,harmonicpowera,harmonicpowerb,harmonicpowerc,powerfactort,powerfactora,powerfactorb,powerfactorc,uanglea,uangleb,uanglec,panglea,pangleb,panglec,frequency,temp,apenergyt,apenergya,apenergyb,apenergyc,anenergyt,anenergya,anenergyb,anenergyc,rpenergyt,rpenergya,rpenergyb,rpenergyc,rnenergyt,rnenergya,rnenergyb,rnenergyc,saenergyt,senergya,senergyb,senergyc,apenergytf,apenergyaf,apenergybf,apenergycf,anenergytf,anenergyaf,anenergybf,anenergycf,apenergyth,apenergyah,apenergybh,apenergych,anenergyth,anenergyah,anenergybh,anenergych,received_time)
*/

/*
{
	"UID": "000001",
	"LineVoltageA": 0.554,
	"LineVoltageB": 0.048,
	"LineVoltageC": 0.058,
	"LineCurrentN": 0.0010,
	"LineCurrentA": 0.0018,
	"LineCurrentB": 0.0018,
	"LineCurrentC": 0.0018,
	"ActivePowerT": 0.000,
	"ActivePowerA": -0.000,
	"ActivePowerB": 0.000,
	"ActivePowerC": -0.000,
	"ReactivePowerT": 0.000,
	"ReactivePowerA": -0.000,
	"ReactivePowerB": 0.000,
	"ReactivePowerC": -0.000,
	"ApparentPowerT": 0.00,
	"ApparentPowerA": 0.00,
	"ApparentPowerB": 0.00,
	"ApparentPowerC": 0.00,
	"FundamentalPowerT": 0.00,
	"FundamentalPowerA": -0.00,
	"FundamentalPowerB": -0.00,
	"FundamentalPowerC": -0.00,
	"HarmonicPowerT": 0.00,
	"HarmonicPowerA": 0.00,
	"HarmonicPowerB": 0.00,
	"HarmonicPowerC": 0.00,
	"PowerFactorT": 0.67,
	"PowerFactorA": -0.33,
	"PowerFactorB": -0.00,
	"PowerFactorC": -1.00,
	"UangleA": 0.00,
	"UangleB": 163.20,
	"UangleC": 128.30,
	"PAngleA": 344.10,
	"PAngleB": 56.50,
	"PAngleC": 0.00,
	"Frequency": 0.00,
	"Temp": 27.00,
	"APenergyT": 0.0000,
	"APenergyA": 0.0000,
	"APenergyB": 0.0000,
	"APenergyC": 0.0000,
	"ANenergyT": 0.0000,
	"ANenergyA": 0.0000,
	"ANenergyB": 0.0000,
	"ANenergyC": 0.0000,
	"RPenergyT": 0.0000,
	"RPenergyA": 0.0000,
	"RPenergyB": 0.0000,
	"RPenergyC": 0.0000,
	"RNenergyT": 0.0000,
	"RNenergyA": 0.0000,
	"RNenergyB": 0.0000,
	"RNenergyC": 0.0000,
	"SAenergyT": 0.0000,
	"SenergyA": 0.0000,
	"SenergyB": 0.0000,
	"SenergyC": 0.0000,
	"APenergyTF": 0.0000,
	"APenergyAF": 0.0000,
	"APenergyBF": 0.0000,
	"APenergyCF": 0.0000,
	"ANenergyTF": 0.0000,
	"ANenergyAF": 0.0000,
	"ANenergyBF": 0.0000,
	"ANenergyCF": 0.0000,
	"APenergyTH": 0.0000,
	"APenergyAH": 0.0000,
	"APenergyBH": 0.0000,
	"APenergyCH": 0.0000,
	"ANenergyTH": 0.0000,
	"ANenergyAH": 0.0000,
	"ANenergyBH": 0.0000,
	"ANenergyCH": 0.0000
}

*/


?>
