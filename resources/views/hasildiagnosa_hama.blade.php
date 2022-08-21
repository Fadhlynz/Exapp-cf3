@extends('layout.main')

@section('container')
    <div class="page-content">
        <section class="section">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <h4 class="card-title">{{ $title }}</h4>
                    <a href="#" class="btn btn-secondary me-1 mb-1 mr-3">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-printer-fill" viewBox="0 0 16 16">
                            <path
                                d="M5 1a2 2 0 0 0-2 2v1h10V3a2 2 0 0 0-2-2H5zm6 8H5a1 1 0 0 0-1 1v3a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-3a1 1 0 0 0-1-1z" />
                            <path
                                d="M0 7a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v3a2 2 0 0 1-2 2h-1v-2a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v2H2a2 2 0 0 1-2-2V7zm2.5 1a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z" />
                        </svg> Cetak</a>
                </div>
                <div class="card-body">
                    @foreach ($hypothesyes as $hypothesis)
                        <h6>Data Hama : {{ $hypothesis->name }} </h6>
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
                                    <?php $arrid = 0; ?>
                                    <?php $cf_old = 0; ?>
                                    @foreach ($roles as $key => $role)
                                        @if ($hypothesis->id == $role->hama_id)
                                            <?php $ard = $arrid++; ?>
                                            @if ($request->evidance_value[$ard] != 0)
                                                <tr>
                                                    <td>{{ $role->gejalahama->name }}</td>
                                                    <td class="text-end">{{ $role->value }}</td>
                                                    <td class="text-end">{{ $request->evidance_value[$ard] }}</td>
                                                    <td class="text-end">
                                                        {{ $cfhe = $role->value * $request->evidance_value[$ard] }}</td>
                                                </tr>
                                                <?php $cf_old === 1 ? $cfhe : ($cf_old = $cf_old + $cfhe * (1 - $cf_old)); ?>
                                            @endif
                                        @endif
                                    @endforeach
                                    <tr>
                                        <td colspan="3">CF Combination</td>
                                        <td class="text-end">{{ number_format($cf_old, 2, '.', '') }}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">CF Result (%)</td>
                                        <td class="text-end">{{ number_format($cf_old * 100, 2, '.', '') }} %</td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr>
                        </div>
                        <?php
                        $menu[] = [
                            'id' => $hypothesis->id,
                            'nama' => $hypothesis->name,
                            'hsl' => number_format($cf_old * 100, 2, '.', ''),
                            'slsi' => $hypothesis->srn_hama,
                            'img' => $hypothesis->images,
                        ];
                        ?>
                    @endforeach
                    <?php
                    $b = 0;
                    foreach ($menu as $index => $record) {
                        if ($record['hsl'] > $b) {
                            $a = $record['id'];
                            $b = $record['hsl'];
                            $c = $record['nama'];
                            $d = $record['slsi'];
                            $e = $record['img'];
                        }
                    }
                    
                    ?>
                    <p>
                    <div class="row">
                        <div class="col-md-6">
                            <h6>Konsultasi : </h6>
                            Nama : {{ $request->name }}</br>
                            Hasil Diagnosa : {{ $c }} with value {{ $b }} %<br>
                            Solusi : {{ $d }}
                            <hr>
                            </p>
                        </div>
                        <div class="col-md-6">
                            <?php
                            $path = '/images/hama/' . $e;
                            ?>
                            <img src="{{ $path }}" width="210" height="120" alt="">
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </div>
@endsection
