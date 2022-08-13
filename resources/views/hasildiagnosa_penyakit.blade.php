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
                <h6>Data penyakit : {{ $hypothesis->name }} </h6>
                <div class="table-responsive">
                    <table class="w-100 table-bordered mb-0 js-serial">
                        <thead>
                            <tr>
                                <th>Gejala Penyakit</th>
                                <th>CF Expert</th>
                                <th>CF User</th>
                                <th>CF(H|E)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $arrid = 0; ?>
                            <?php $cf_old = 0; ?>
                            @foreach ($roles as $key => $role)
                            @if ($hypothesis->id == $role->penyakit_id)
                            <?php $ard = $arrid++; ?>
                            @if ($request->evidance_value[$ard] != 0)
                            <tr>
                                <td>{{ $role->gejalapenyakit->name }}</td>
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
                            'slsi' => $hypothesis->srn_penyakit,
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
                        }
                    }
                    
                    ?>
                <p>
                <h6>Konsultasi : </h6>
                Nama : {{ $request->name }}</br>
                Hasil Diagnosa : {{ $c }} with value {{ $b }} %<br>
                Solusi : {{ $d }}
                <hr>
                </p>
            </div>
        </div>
    </section>
</div>
@endsection