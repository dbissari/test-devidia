<?php

namespace App\Http\Controllers;


use App\Http\Requests;
use App\Repositories\ClientRepository;
use App\Repositories\FactureRepository;

class FactureController extends Controller
{
    private $factureRepository;

    private $numberPerPage = 5;

    public function __construct(FactureRepository $factureRepository)
    {
        $this->factureRepository = $factureRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $factures = $this->factureRepository->getPaginate($this->numberPerPage);
        $links = $factures->render();

        return view('facture/index', compact('factures', 'links'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @param ClientRepository $clientRepository
     * @return \Illuminate\Http\Response
     */
    public function create(ClientRepository $clientRepository)
    {
        $clients = $clientRepository->getAll();

        return view('facture/create', compact('clients'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Requests\FactureRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\FactureRequest $request)
    {
        $facture = $this->factureRepository->store($request->all());

        return redirect()
            ->route('facture.index')
            ->with('success','La facture '.$facture->nom.' bien enregistrée');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $facture = $this->factureRepository->getById($id);

        return view('facture/show', compact('facture'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param ClientRepository $clientRepository
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit(ClientRepository $clientRepository, $id)
    {
        $facture = $this->factureRepository->getById($id);
        $clients = $clientRepository->getAll();

        return view('facture/edit', compact('facture', 'clients'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Requests\FactureRequest $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\FactureRequest $request, $id)
    {
        $this->factureRepository->update($id, $request->all());

        return redirect()->route('facture.index')->with('success', 'La facture '.$request->input('nom').' a bien été modifiée.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->factureRepository->destroy($id);

        return redirect()->back();
    }
}
