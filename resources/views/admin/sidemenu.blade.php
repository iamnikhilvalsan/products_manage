<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li
                @if(Route::current()->getName() === 'admin')
                    class="active"
                @endif>
                <a href="{{ route('admin') }}"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a>
            </li>
            <li
                @if(Route::current()->getName() === 'view-products')
                    class="active"
                @endif>
                <a href="{{ route('view-products') }}"><i class="fa fa-th"></i> <span>Products</span></a>
            </li>
        </ul>
    </section>
</aside>