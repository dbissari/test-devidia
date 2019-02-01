<?php

namespace App\Http\Controllers;

use App\Repositories\ClientRepository;

use App\Http\Requests;

class ClientController extends Controller
{
    private $clientRepository;

    private $numberPerPage = 5;

    public function __construct(ClientRepository $clientRepository)
    {
        $this->clientRepository = $clientRepository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $clients = $this->clientRepository->getPaginate($this->numberPerPage);
        $links = $clients->render();

        return view('client/index', compact('clients', 'links'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('client/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Requests\ClientRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\ClientRequest $request)
    {
        $client = $this->clientRepository->store($request->all());

        return redirect()
            ->route('client.index')
            ->with('success','Le client '.$client->nom.' bien enregistré');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $client = $this->clientRepository->getById($id);

        return view('client/show', compact('client'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $client = $this->clientRepository->getById($id);

        return view('client/edit', compact('client'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Requests\ClientRequest $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\ClientRequest $request, $id)
    {
        $this->clientRepository->update($id, $request->all());

        return redirect()->route('client.index')->with('success', 'Le client '.$request->input('nom').' a bien été modifié.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->clientRepository->destroy($id);

        return redirect()->back();
    }
}
