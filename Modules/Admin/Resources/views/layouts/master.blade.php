        @include('admin::partials.header')
        <!-- BEGIN HEADER & CONTENT DIVIDER -->
        <div class="clearfix"> </div>
        <!-- END HEADER & CONTENT DIVIDER -->
        <!-- BEGIN CONTAINER -->
        <div class="page-container">
            <div class="page-sidebar-wrapper">
                <!-- BEGIN SIDEBAR -->
                @include('admin::partials.sidebar')
                <!-- END SIDEBAR -->
            </div>
            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">

                    @if (Session::has('success'))
                        <div class="alert alert-success alert-dismissible" role="alert">
                            {{ Session::get('success') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                    @endif
                    @if (Session::has('failed'))
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            {{ Session::get('failed') }}
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                    @endif

                    @yield('content')
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->

            <!-- BEGIN QUICK SIDEBAR -->
            @include('admin::partials.quick_sidebar')
            <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
        @include('admin::partials.footer')