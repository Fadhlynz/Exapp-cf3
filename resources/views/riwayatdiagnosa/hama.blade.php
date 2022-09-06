@extends('layout.main')

@section('container')
    <div class="page-content">
        <section class="section">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Riwayat Diagnosa Hama</h4>
                </div>
                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success alert-dismissible show fade">
                            {{ session('status') }}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    @endif
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <a class="nav-link active" id="data-tab" data-bs-toggle="tab" href="#data" role="tab"
                                aria-controls="data" aria-selected="false">Data</a>
                        </li>
                        <li class="nav-item" role="presentation">
                            <a class="nav-link" id="graph-tab" data-bs-toggle="tab" href="#graph" role="tab"
                                aria-controls="graph" aria-selected="true">Graph</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade active show p-3" id="data" role="tabpanel"
                            aria-labelledby="data-tab">
                            <div class="table-responsive">
                                <table class="table table-striped" id="table">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Tanggal</th>
                                            <th>Nama</th>
                                            <th>Hama Terdiagnosa</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        @forelse ($riwayats as $row)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $row->created_at->format('d M Y, H:m:s') }}</td>
                                                <td>{{ $row->nama }}</td>
                                                <td class="text-end">{{ unserialize($row->cf_max)[1] }} <b>(<span
                                                            class="text-danger">{{ number_format(unserialize($row->cf_max)[0] * 100, 2) }}%</span>)</b>
                                                </td>
                                                <td>
                                                    <a target="_blank" href="{{ route('hasil-hama', $row->id) }}"
                                                        class="btn btn-secondary btn-sm">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                            height="16" fill="currentColor" class="bi bi-eye-fill"
                                                            viewBox="0 0 16 16">
                                                            <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
                                                            <path
                                                                d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
                                                        </svg>
                                                        Detail</a>
                                                    <form action="{{ route('hapus-hasilhama', $row->id) }}" method="post"
                                                        class="d-inline">
                                                        @method('delete')
                                                        @csrf
                                                        <button class="btn btn-danger btn-sm hapus-hasilhama"
                                                            name="{{ $row->name }}" type="submit">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                                height="16" fill="currentColor" class="bi bi-trash"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z" />
                                                                <path fill-rule="evenodd"
                                                                    d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z" />
                                                            </svg> Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @empty
                                            <tr>
                                                <td colspan="5" class="text-center">History Case Not Found</td>
                                            </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade p-3" id="graph" role="tabpanel" aria-labelledby="graph-tab">
                            <canvas id="bar"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
