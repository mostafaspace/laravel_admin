
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                <div class="page-sidebar navbar-collapse collapse">
                    <!-- BEGIN SIDEBAR MENU -->
                    <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                    <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                    <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                    <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                    <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
                    <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
   
                        <li class="nav-item @if(Request::route()->getName() == 'admin.home.get') start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="icon-home"></i>
                                <span class="title">Dashboard</span>
                                <span class="arrow @if (Request::route()->getName() == 'admin.home.get') open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item @if(Request::route()->getName() == 'admin.home.get') start active open @endif">
                                    <a href="{{ route('admin.home.get') }}" class="nav-link ">
                                        <i class="icon-bar-chart"></i>
                                        <span class="title">Dashboard</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(\Request::get('post_type') == 'post') start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-thumb-tack"></i>
                                <span class="title">Posts</span>
                                <span class="arrow @if(\Request::get('post_type') == 'post') open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.get' && \Request::get('post_type') == 'post') start active open @endif">
                                    <a href="{{ route('admin.posts.get','post_type=post') }}" class="nav-link ">
                                        <span class="title">All Posts</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.add.get' && \Request::get('post_type') == 'post') start active open @endif">
                                    <a href="{{ route('admin.posts.add.get', 'post_type=post') }}" class="nav-link ">
                                        <span class="title">Add New Post</span>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li class="nav-item  @if(\Request::get('post_type') == 'page') start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-file-o"></i>
                                <span class="title">Pages</span>
                                <span class="arrow @if(\Request::get('post_type') == 'page') open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.get' && \Request::get('post_type') == 'page') start active open @endif">
                                    <a href="{{ route('admin.posts.get','post_type=page') }}" class="nav-link ">
                                        <span class="title">All Pages</span>
                                       
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.add.get' && \Request::get('post_type') == 'page') start active open @endif">
                                    <a href="{{ route('admin.posts.add.get','post_type=page') }}" class="nav-link ">
                                        <span class="title">Add New Page</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(\Request::get('post_type') == 'gallery') start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-camera"></i>
                                <span class="title">Gallery</span>
                                <span class="arrow @if(\Request::get('post_type') == 'gallery') open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.get' && \Request::get('post_type') == 'gallery') start active open @endif">
                                    <a href="{{ route('admin.posts.get','post_type=gallery') }}" class="nav-link ">
                                        <span class="title">All Photos</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.posts.add.get' && \Request::get('post_type') == 'gallery') start active open @endif">
                                    <a href="{{ route('admin.posts.add.get','post_type=gallery') }}" class="nav-link ">
                                        <span class="title">Add New Photo</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(Request::is('admin/users/*') or Request::is('admin/users')) start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-users"></i>
                                <span class="title">Users</span>
                                <span class="arrow @if(Request::is('admin/users/*') or Request::is('admin/users')) open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.users.get') start active open @endif">
                                    <a href="{{ route('admin.users.get') }}" class="nav-link ">
                                        <span class="title">All Users</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.users.add.get') start active open @endif">
                                    <a href="{{ route('admin.users.add.get') }}" class="nav-link ">
                                        <span class="title">Add New User</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(Request::is('admin/media/*') or Request::is('admin/media')) start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-file-image-o"></i>
                                <span class="title">Media</span>
                                <span class="arrow @if(Request::is('admin/media/*') or Request::is('admin/media')) open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.media.get') start active open @endif">
                                    <a href="{{ route('admin.media.get') }}" class="nav-link ">
                                        <span class="title">All Media</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.media.add.get') start active open @endif">
                                    <a href="{{ route('admin.media.add.get') }}" class="nav-link ">
                                        <span class="title">Add New Media</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(Request::is('admin/comments/*') or Request::is('admin/comments')) start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-commenting-o"></i>
                                <span class="title">Comments</span>
                                <span class="arrow @if(Request::is('admin/comments/*') or Request::is('admin/comments')) open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.comments.get') start active open @endif">
                                    <a href="{{ route('admin.comments.get') }}" class="nav-link ">
                                        <span class="title">All Comments</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item  @if(Request::is('admin/contact/*') or Request::is('admin/contact')) start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-envelope-o"></i>
                                <span class="title">Contact</span>
                                <span class="arrow @if(Request::is('admin/contact/*') or Request::is('admin/contact')) open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.contact.get') start active open @endif">
                                    <a href="{{ route('admin.contact.get') }}" class="nav-link ">
                                        <span class="title">All Contact Forms</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::route()->getName() == 'admin.contact.add.get') start active open @endif">
                                    <a href="{{ route('admin.contact.add.get') }}" class="nav-link ">
                                        <span class="title">Add New Contact Form</span>
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li class="nav-item  @if(Request::is('admin/settings/*')) start active open @endif">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <i class="fa fa-cogs"></i>
                                <span class="title">Settings</span>
                                <span class="arrow @if(Request::is('admin/settings/*')) open @endif"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item  @if(Request::is('admin/settings/languages') or Request::is('admin/settings/languages/*')) start active open @endif">
                                    <a href="{{ route('admin.languages.get') }}" class="nav-link ">
                                        <span class="title">Languages</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::is('admin/settings/menus') or Request::is('admin/settings/menus/*')) start active open @endif">
                                    <a href="{{ route('admin.menus.get') }}" class="nav-link ">
                                        <span class="title">Menus</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::is('admin/settings/category') or Request::is('admin/settings/category/*')) start active open @endif">
                                    <a href="{{ route('admin.category.get') }}" class="nav-link ">
                                        <span class="title">Categories</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::is('admin/settings/tags') or Request::is('admin/settings/tags/*')) start active open @endif">
                                    <a href="{{ route('admin.tags.get') }}" class="nav-link ">
                                        <span class="title">Tags</span>
                                    </a>
                                </li>
                                <li class="nav-item  @if(Request::is('admin/settings/editor') or Request::is('admin/settings/editor/*')) start active open @endif">
                                    <a href="{{ route('admin.editor.get') }}" class="nav-link ">
                                        <i class="fa fa-pencil-square-o"></i>
                                        <span class="title">Editor</span>
                                    </a>
                                </li>

                                <li class="nav-item  @if(Request::is('admin/settings/location/*')) start active open @endif">
                                    <a href="javascript:;" class="nav-link nav-toggle">
                                        <i class="fa fa-map-marker"></i>
                                        <span class="title">Locations</span>
                                        <span class="arrow @if(Request::is('admin/settings/location/*')) open @endif"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  @if(Request::is('admin/settings/location/country/*') OR Request::is('admin/settings/location/country')) start active open @endif">
                                             <a href="javascript:;" class="nav-link nav-toggle">
                                                <span class="title">Countries</span>
                                                <span class="arrow @if(Request::is('admin/settings/location/country/*') OR Request::is('admin/settings/location/country')) open @endif"></span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.country.get') start active open @endif">
                                                    <a href="{{ route('admin.country.get') }}" class="nav-link ">
                                                        <span class="title">All Countries</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.country.add.get') start active open @endif">
                                                    <a href="{{ route('admin.country.add.get') }}" class="nav-link ">
                                                        <span class="title">Add New Country</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item  @if(Request::is('admin/settings/location/city/*') OR Request::is('admin/settings/location/city')) start active open @endif">
                                             <a href="javascript:;" class="nav-link nav-toggle">
                                                <span class="title">Cities</span>
                                                <span class="arrow @if(Request::is('admin/settings/location/city/*') OR Request::is('admin/settings/location/city')) open @endif"></span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.city.get') start active open @endif">
                                                    <a href="{{ route('admin.city.get') }}" class="nav-link ">
                                                        <span class="title">All Cities</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.city.add.get') start active open @endif">
                                                    <a href="{{ route('admin.city.add.get') }}" class="nav-link ">
                                                        <span class="title">Add New City</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item  @if(Request::is('admin/settings/location/zone/*') OR Request::is('admin/settings/location/zone')) start active open @endif">
                                             <a href="javascript:;" class="nav-link nav-toggle">
                                                <span class="title">Zones</span>
                                                <span class="arrow @if(Request::is('admin/settings/location/zone/*') OR Request::is('admin/settings/location/zone')) open @endif"></span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.zone.get') start active open @endif">
                                                    <a href="{{ route('admin.zone.get') }}" class="nav-link ">
                                                        <span class="title">All Zones</span>
                                                    </a>
                                                </li>
                                                <li class="nav-item  @if(Request::route()->getName() == 'admin.zone.add.get') start active open @endif">
                                                    <a href="{{ route('admin.zone.add.get') }}" class="nav-link ">
                                                        <span class="title">Add New Zone</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  @if(Request::is('admin/settings/permissions/*') OR Request::is('admin/settings/permissions')) start active open @endif">
                                    <a href="javascript:;" class="nav-link nav-toggle">
                                        <i class="fa fa-unlock-alt"></i>
                                        <span class="title">Permissions</span>
                                        <span class="arrow @if(Request::is('admin/settings/permissions/*') OR Request::is('admin/settings/permissions')) open @endif"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  @if(Request::route()->getName() == 'admin.permissions.get') start active open @endif">
                                            <a href="{{ route('admin.permissions.get') }}" class="nav-link ">
                                                <span class="title">All Permissions</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  @if(Request::route()->getName() == 'admin.permissions.add.get') start active open @endif">
                                            <a href="{{ route('admin.permissions.add.get') }}" class="nav-link ">
                                                <span class="title">Add New Permission</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item  @if(Request::is('admin/settings/roles/*') OR Request::is('admin/settings/roles')) start active open @endif">
                                    <a href="javascript:;" class="nav-link nav-toggle">
                                        <i class="fa fa-user-secret"></i>
                                        <span class="title">Roles</span>
                                        <span class="arrow @if(Request::is('admin/settings/roles/*') OR Request::is('admin/settings/roles')) open @endif"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  @if(Request::route()->getName() == 'admin.roles.get') start active open @endif">
                                            <a href="{{ route('admin.roles.get') }}" class="nav-link ">
                                                <span class="title">All Roles</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  @if(Request::route()->getName() == 'admin.roles.add.get') start active open @endif">
                                            <a href="{{ route('admin.roles.add.get') }}" class="nav-link ">
                                                <span class="title">Add New Role</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>


                            </ul>
                        </li>
                        

                       

                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
                