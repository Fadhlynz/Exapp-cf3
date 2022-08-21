@extends('layout.app')

@section('container')
    {{-- Navbar --}}
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Sipagung</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-link" href="#">About Us</a>
                    <a class="nav-link" href="#">Services</a>
                    <a class="nav-link disabled">Contact</a>

                </div>
                <a href="#" class="btn btn-sm btn-success">Sign Up</a>
            </div>
        </div>
    </nav>
    {{-- End Navbar --}}

    {{-- Content --}}
    <section id="jagung" class="jagung">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h1>Modern Agriculture</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur totam ipsa voluptates, delectus
                        dolores ea commodi assumenda aut, molestiae saepe labore libero voluptatem laboriosam nam voluptate
                        minima blanditiis. Aliquam, pariatur.</p>

                    <button type="button" class="btn btn-success">Get Started</button>
                </div>
                <div class="col-lg-6">
                    <img width="500" src="{{ url('images/farmer2.png') }}" alt="">
                </div>
            </div>
        </div>
    </section>
    {{-- End Content --}}
@endsection
