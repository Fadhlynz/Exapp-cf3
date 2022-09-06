<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <div class="d-flex justify-content-between">
                <div class="logo">
                    <a href="/">Sipagung
                        <!-- <img src="asset/images/logo/logo.png" alt="Logo" srcset=""></a> -->
                </div>
                <div class="toggler">
                    <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                </div>
            </div>
        </div>
        <div class="sidebar-menu">
            <ul class="menu">
                <li class="sidebar-item {{ $title == 'Home' ? 'active' : '' }} ">
                    <a href="/" class='sidebar-link'>
                        <i class="bi bi-house-door-fill"></i>
                        <span>Home</span>
                    </a>
                </li>
                @if (auth()->check())
                    <li class="sidebar-item {{ $title == 'Dashboard' ? 'active' : '' }} ">
                        <a href="/dashboard" class='sidebar-link'>
                            <i class="bi bi-grid-fill"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>

                    <li
                        class="sidebar-item {{ $title == 'Hama' || $title == 'Gejala Hama' || $title == 'Kondisi Hama' || $title == 'Rules Hama' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-bug-fill"></i>
                            <span>Hama</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Hama' ? 'active' : '' }} ">
                                <a href="{{ route('hama.index') }}">Hama</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Gejala Hama' ? 'active' : '' }} ">
                                <a href="{{ route('gejalahama.index') }}">Gejala Hama</a>
                            </li>
                            {{-- <li class="submenu-item {{ $title == 'Kondisi Hama' ? 'active' : '' }} ">
                                <a href="{{ route('kondisihama.index') }}">Kondisi Hama</a>
                            </li> --}}
                            <li class="submenu-item {{ $title == 'Rules Hama' ? 'active' : '' }} ">
                                <a href="{{ route('rules.hama') }}">Rules Hama</a>
                            </li>
                        </ul>
                    </li>

                    <li
                        class="sidebar-item {{ $title == 'Penyakit' || $title == 'Gejala Penyakit' || $title == 'Kondisi Penyakit' || $title == 'Rules Penyakit' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-bug"></i>
                            <span>Penyakit</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('penyakit.index') }}">Penyakit</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Gejala Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('gejalapenyakit.index') }}">Gejala Penyakit</a>
                            </li>
                            {{-- <li class="submenu-item {{ $title == 'Kondisi Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('kondisipenyakit.index') }}">Kondisi Penyakit</a>
                            </li> --}}
                            <li class="submenu-item {{ $title == 'Rules Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('rules.penyakit') }}">Rules Penyakit</a>
                            </li>
                        </ul>
                    </li>

                    <li
                        class="sidebar-item {{ $title == 'Diagnosa Hama' || $title == 'Diagnosa Penyakit' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-stack"></i>
                            <span>Diagnosa</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('diagnosa-hama') }}">Diagnosa Hama</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('diagnosa-penyakit') }}">Diagnosa Penyakit</a>
                            </li>
                        </ul>
                    </li>

                    <li
                        class="sidebar-item {{ $title == 'Riwayat Diagnosa Hama' || $title == 'Riwayat Diagnosa Penyakit' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-clock-history"></i>
                            <span>Riwayat Diagnosa</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Riwayat Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('riwayatdiagnosa-hama') }}">Hama</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Riwayat Diagnosa Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('riwayatdiagnosa-penyakit') }}">Penyakit</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-title">
                        <hr>
                    </li>

                    <li class="sidebar-item {{ $title == 'Setting' || $title == 'Users' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-gear"></i>
                            <span>Setting</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Setting' ? 'active' : '' }}">
                                <a href="{{ route('setting.index') }}">Setting</a>
                            </li>
                            @if (auth()->user()->level == 'admin')
                                <li class="submenu-item {{ $title == 'User' ? 'active' : '' }}">
                                    <a href="{{ route('user.index') }}">User data</a>
                                </li>
                            @endif
                        </ul>
                    </li>
                @else
                    <li
                        class="sidebar-item {{ $title == 'Diagnosa Hama' || $title == 'Diagnosa Penyakit' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-stack"></i>
                            <span>Diagnosa</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('diagnosa-hama') }}">Diagnosa Hama</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('diagnosa-penyakit') }}">Diagnosa Penyakit</a>
                            </li>
                        </ul>
                    </li>
                    <li
                        class="sidebar-item {{ $title == 'Riwayat Diagnosa Hama' || $title == 'Riwayat Diagnosa Penyakit' ? 'active' : '' }} has-sub">
                        <a href="#" class='sidebar-link'>
                            <i class="bi bi-clock-history"></i>
                            <span>Riwayat Diagnosa</span>
                        </a>
                        <ul class="submenu ">
                            <li class="submenu-item {{ $title == 'Riwayat Diagnosa Hama' ? 'active' : '' }} ">
                                <a href="{{ route('riwayatdiagnosa-hama') }}">Hama</a>
                            </li>
                            <li class="submenu-item {{ $title == 'Riwayat Diagnosa Penyakit' ? 'active' : '' }} ">
                                <a href="{{ route('riwayatdiagnosa-penyakit') }}">Penyakit</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-item {{ $title == 'Post Keterangan' ? 'active' : '' }}">
                        <a href="{{ route('post-keterangan') }}" class='sidebar-link'>
                            <i class="bi bi-stack"></i>
                            <span>Post Keterangan</span>
                        </a>
                    </li>
                    {{--  <li class="sidebar-item {{ $title == 'Login' ? 'active' : '' }} ">
                        <a href="/login" class='sidebar-link'>
                            <i class="bi bi-box-arrow-in-left"></i>
                            <span>Login</span>
                        </a>
                    </li>  --}}
                @endif


                <!-- <li class="sidebar-title">Setting</li> -->

            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>
