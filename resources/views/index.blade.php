@extends('layout.app')

@section('container')
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
            <a href="{{ route('home') }}" class="logo d-flex align-items-center">
                <img src="{{ asset('flex-start/img/logo.png') }}" alt="">
                <span>Sipagung</span>
            </a>
            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="{{ route('home') }}">Beranda</a></li>
                    <li class="dropdown"><a href="#"><span>Diagnosa</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a target="_blank" href="{{ route('diagnosa-hama') }}">Diagnosa Hama</a></li>
                            <li><a target="_blank" href="{{ route('diagnosa-penyakit') }}">Diagnosa Penyakit</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#"><span>Riwayat Diagnosa</span> <i
                                class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a target="_blank" href="{{ route('riwayatdiagnosa-hama') }}">Riwayat Diagnosa Hama</a></li>
                            <li><a target="_blank" href="{{ route('riwayatdiagnosa-penyakit') }}">Riwayat Diagnosa
                                    Penyakit</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="{{ route('post-keterangan') }}">Post Keterangan</a></li>
                    <li><a class="nav-link scrollto" href="{{ route('about') }}">Tentang</a></li>
                    <li><a class="getstarted scrollto" href="{{ route('login') }}">Login</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div>
    </header><!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="hero d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-flex flex-column justify-content-center">
                    <h1 data-aos="fade-up">Sistem Pakar Diagnosa Hama dan Penyakit pada Tanaman Jagung</h1>
                    <h2 data-aos="fade-up" data-aos-delay="400">Sistem yang digunakan untuk mempermudah dalam mendiagnosa
                        hama maupun penyakit pada tanaman Jagung</h2>
                    <div data-aos="fade-up" data-aos-delay="600">
                        <div class="text-center text-lg-start">
                            <a target="_blank" href="{{ route('diagnosa-hama') }}"
                                class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                                <span>Mulai Diagnosa</span>
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
                    <img src="{{ asset('flex-start/img/farmer.png') }}" class="img-fluid" alt="">
                </div>
            </div>
        </div>
    </section><!-- End Hero -->
@endsection
