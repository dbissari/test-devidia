<?php


class ClientTableSeeder extends \Illuminate\Database\Seeder
{
    public function run()
    {
        DB::table('clients')->delete();
        for ($i=0; $i<25; $i++)
        {
            $date = $this->randDate();
            DB::table('clients')->insert([
                'nom'=>'Nom et prénoms numéro '.$i,
                'telephone'=>'002289066302'.$i,
                'email'=>'Emailcomplet'.$i.'@devidia.com',
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