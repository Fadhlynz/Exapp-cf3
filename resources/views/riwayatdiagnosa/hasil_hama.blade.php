@extends('layout.main')

@section('container')
    <div class="page-content">
        <section class="section">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">{{ $title }}</h4>
                </div>
                <div class="card-body">
                    @foreach ($hypothesyes as $hypothesis)
                        <h6>Data Hama : {{ $hypothesis['nama'] }} </h6>
                        <div class="table-responsive">
                            <table class="w-100 table-bordered mb-0 js-serial">
                                <thead>
                                    <tr>
                                        <th>Gejala Hama</th>
                                        <th>CF Expert</th>
                                        <th>CF User</th>
                                        <th>CF(H|E)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($evidences as $evidence)
                                        <tr>
                                            <td class="text-end">{{ $evidence['gejala'] }} </td>
                                            @foreach ($kondisi as $kond)
                                                <td class="text-end">{{ $kond['cf_pakar'] }} </td>
                                                <td class="text-end">{{ $kond['cf_user'] }} </td>
                                            @endforeach
                                        </tr>
                                    @endforeach
                                    <tr>
                                        <td colspan="3">CF Combination</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">CF Result (%)</td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    </div>
@endsection
