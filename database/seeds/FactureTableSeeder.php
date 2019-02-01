<?php


class FactureTableSeeder extends \Illuminate\Database\Seeder
{
    public function run()
    {
        DB::table('factures')->delete();
        for ($i=0; $i<100; $i++)
        {
            $date = $this->randDate();
            DB::table('factures')->insert([
                'client_id'=>rand(1,25),
                'nom'=>'Nom complet de facture '.$i,
                'created_at'=>$date,
                'updated_at'=>$date
            ]);
        }
    }

    public function randDate()
    {
        return \Carbon\Carbon::createFromDate(null, rand(1,12), rand(1,28));
    }
}