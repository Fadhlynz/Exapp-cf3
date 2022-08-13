@extends('layout.main')

@section('container')
    <div class="page-content">
        <section class="section">
            <h2>{{ $title }}</h2>
            <p class="text-subtitle text-muted"> Bootstrap JavaScript modal plugin to add dialogs to your site
                for lightboxes, user notifications, or completely
                custom content</p>

            {{-- Data Hama --}}
            <div class="row">
                <h3>Data Hama</h3>
                @foreach ($hamas as $hama)
                    <div class="col-xl-4 col-md-6 col-sm-12">
                        <div class="card">
                            <div class="card-content">
                                <img src="{{ url('images/hama/', $hama->images) }}" class="card-img-top img-fluid"
                                    alt="singleminded">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $hama->name }}</h5>
                                    {{-- Detail Button --}}
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#detailHamaModal{{ $hama->id }}">
                                        Detail
                                    </button>

                                    {{-- Saran Button --}}
                                    <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                        data-bs-target="#saranHamaModal{{ $hama->id }}">
                                        Saran
                                    </button>

                                    {{-- Detail Modal --}}
                                    <div class="modal fade" id="detailHamaModal{{ $hama->id }}" tabindex="-1"
                                        role="dialog" aria-labelledby="detailModalTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="detailModalTitle">Detail Hama</h5>
                                                    <button type="button" class="close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                        <i data-feather="x"></i>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>{{ $hama->det_hama }}</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-light-secondary"
                                                        data-bs-dismiss="modal">
                                                        <i class="bx bx-x d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">Kembali</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    {{-- Saran Modal --}}
                                    <div class="modal fade" id="saranHamaModal{{ $hama->id }}" tabindex="-1"
                                        role="dialog" aria-labelledby="saranModalTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="saranModalTitle">Saran Hama</h5>
                                                    <button type="button" class="close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                        <i data-feather="x"></i>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>{{ $hama->srn_hama }}</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-light-secondary"
                                                        data-bs-dismiss="modal">
                                                        <i class="bx bx-x d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">Kembali</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            {{-- Data Penyakit --}}
            <div class="row mt-2">
                <h3>Data Penyakit</h3>
                @foreach ($penyakits as $penyakit)
                    <div class="col-xl-4 col-md-6 col-sm-12">
                        <div class="card">
                            <div class="card-content">
                                <img src="{{ url('images/penyakit/', $penyakit->images) }}" class="card-img-top img-fluid"
                                    alt="singleminded">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $penyakit->name }}</h5>
                                    {{-- Detail Button --}}
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#detailPenyakitModal{{ $penyakit->id }}">
                                        Detail
                                    </button>

                                    {{-- Saran Button --}}
                                    <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                        data-bs-target="#saranPenyakitModal{{ $penyakit->id }}">
                                        Saran
                                    </button>

                                    {{-- Detail Modal --}}
                                    <div class="modal fade" id="detailPenyakitModal{{ $penyakit->id }}" tabindex="-1"
                                        role="dialog" aria-labelledby="detailPenyakitModalTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="detailPenyakitModalTitle">Detail Penyakit
                                                    </h5>
                                                    <button type="button" class="close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                        <i data-feather="x"></i>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>{{ $penyakit->det_penyakit }}</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-light-secondary"
                                                        data-bs-dismiss="modal">
                                                        <i class="bx bx-x d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">Kembali</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    {{-- Saran Modal --}}
                                    <div class="modal fade" id="saranPenyakitModal{{ $penyakit->id }}" tabindex="-1"
                                        role="dialog" aria-labelledby="saranModalTitle" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="saranModalTitle">Saran Penyakit</h5>
                                                    <button type="button" class="close" data-bs-dismiss="modal"
                                                        aria-label="Close">
                                                        <i data-feather="x"></i>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>{{ $penyakit->srn_penyakit }}</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-light-secondary"
                                                        data-bs-dismiss="modal">
                                                        <i class="bx bx-x d-block d-sm-none"></i>
                                                        <span class="d-none d-sm-block">Kembali</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
    </div>
@endsection
