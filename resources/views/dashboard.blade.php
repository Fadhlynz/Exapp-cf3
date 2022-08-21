@extends('layout.main')

@section('container')
    <div class="page-content">
        <section class="row">
            <div class="col-12 col-lg-12">
                <div class="row">
                    <div class="col-6 col-lg-3 col-md-6">
                        <a href="{{ route('user.index') }}">
                            <div class="card">
                                <div class="card-body px-3 py-4-5">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="stats-icon blue">
                                                <i class="iconly-boldUser"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <h6 class="text-muted font-semibold">User</h6>
                                            <h6 class="font-extrabold mb-0">{{ $count_user }}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <a href="{{ route('gejalahama.index') }}">
                            <div class="card">
                                <div class="card-body px-3 py-4-5">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="stats-icon purple">
                                                <i class="iconly-boldSearch"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <h6 class="text-muted font-semibold">Gejala Hama</h6>
                                            <h6 class="font-extrabold mb-0">{{ $count_evidence }}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <a href="{{ route('hama.index') }}">
                            <div class="card">
                                <div class="card-body px-3 py-4-5">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="stats-icon red">
                                                <i class="iconly-boldStar"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <h6 class="text-muted font-semibold">Data Hama</h6>
                                            <h6 class="font-extrabold mb-0">{{ $count_hypotesis }}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <a href="{{ route('riwayatdiagnosa-hama') }}">
                            <div class="card">
                                <div class="card-body px-3 py-4-5">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="stats-icon green">
                                                <i class="iconly-boldTime-Circle"></i>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <h6 class="text-muted font-semibold">Kondisi Hama</h6>
                                            <h6 class="font-extrabold mb-0">{{ $count_history }}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section class="row">
            <div class="col-12 col-lg-12">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Riwayat Hasil Diagnosa Hama</h4>
                            </div>
                            <div class="card-body px-3 py-0-5">
                                <div class="row">
                                    <div class="table-responsive">
                                        <table class="table table-striped" id="table">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Name</th>
                                                    <th>Hasil Diagnosa</th>
                                                    <th>Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @forelse ($histores as $history)
                                                    <tr>
                                                        <td>{{ $loop->iteration }}</td>
                                                        <td>{{ $history->name }}</td>
                                                        <td class="text-end">{{ $history->value }} %</td>
                                                        <td>{{ date_format($history->created_at, 'd/m/Y') }}</td>
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
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Graph of Hypothesis</h4>
                            </div>
                            <div class="card-body px-3 py-0-5">
                                <div class="row">
                                    <canvas id="bar"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <script src="{{ asset('mazer/vendors/chartjs/Chart.min.js') }}"></script>
    <script>
        var chartColors = {
            red: 'rgb(255, 99, 132)',
            orange: 'rgb(255, 159, 64)',
            yellow: 'rgb(255, 205, 86)',
            green: 'rgb(75, 192, 192)',
            info: '#41B1F9',
            blue: '#3245D1',
            purple: 'rgb(153, 102, 255)',
            grey: '#EBEFF6'
        };

        var ctxBar = document.getElementById("bar").getContext("2d");
        var myBar = new Chart(ctxBar, {
            type: 'pie',
            data: {
                labels: [
                    @foreach ($hypotesis as $hypo)
                        "{{ $hypo->name }}",
                    @endforeach
                ],
                datasets: [{
                    label: 'Hypothesis',
                    backgroundColor: [
                        chartColors.red,
                        chartColors.orange,
                        chartColors.yellow,
                        chartColors.green,
                        chartColors.blue,
                        chartColors.indigo,
                        chartColors.violet,
                    ],
                    data: [
                        @foreach ($hypotesis as $hypo)
                            {{ $history->where('hama_id', $hypo->id)->count() }},
                        @endforeach
                    ]
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Chart.js Pie Chart'
                    }
                }
            },
        });
    </script>
@endsection
