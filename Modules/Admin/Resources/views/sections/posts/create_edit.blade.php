@extends('admin::layouts.master')

@section('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('public/assets/admin/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css') }}"/>

@stop

@section('content')

        <div class="row">
            <div class="col-md-12">
                <!-- BEGIN EXAMPLE TABLE PORTLET-->
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption font-dark">
                            <i class="icon-settings font-dark"></i>
                            <span class="caption-subject bold uppercase">@if(isset($post)) Edit @else Add New {{\Request::get('post_type')}} @endif</span>
                        </div> 
                        <div class="actions">
                            <div class="btn-group btn-group-devided" data-toggle="buttons">
                                <label class="btn btn-transparent dark btn-outline btn-circle btn-sm ">
                                    <input type="checkbox" name="screen-options" class="toggle" id="screen-options">Screen Options</label>
                                <label class="btn btn-transparent dark btn-outline btn-circle btn-sm">
                                    <input type="radio" name="options" class="toggle" id="option2">Help</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group screen-options">
                        <label>Boxes</label>
                        <div class="md-checkbox-inline">
                            <div class="md-checkbox">
                                <input type="checkbox" id="languages" class="md-check" checked>
                                <label for="languages">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Languages</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="categories" class="md-check" checked>
                                <label for="categories">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Categories</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="tags" class="md-check" checked>
                                <label for="tags">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Tags</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="featured_image" class="md-check" checked>
                                <label for="featured_image">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Featured Image</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="featured_image_2" class="md-check" checked>
                                <label for="featured_image_2">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Featured Image 2</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="excerpt" class="md-check" checked>
                                <label for="excerpt">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Excerpt</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="slug" class="md-check">
                                <label for="slug">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Slug</label>
                            </div>
                            <div class="md-checkbox">
                                <input type="checkbox" id="author" class="md-check">
                                <label for="author">
                                    <span></span>
                                    <span class="check"></span>
                                    <span class="box"></span>Author</label>
                            </div>
                        </div>
                    </div>
                    <!-- BEGIN PAGE BASE CONTENT -->
                    <?php 
                        $id = e(\Request::get('id')); 
                        if(isset($action)) {
                            $get_parameters = ($action == 'add') ? "lang=" . $current_lang : "lang=" . $current_lang . "&id=" . $id ;
                        }

                        $post_titleVal = (isset($post)) ? (Request::route()->getName()!='admin.post.add.get' ? (isset($post->translate($current_lang, true)->post_title) ? $post->translate($current_lang, true)->post_title : '') : old('post_title')) : old('post_title'); 
                        $post_contentVal = (isset($post)) ? (Request::route()->getName()!='admin.post.add.get' ? (isset($post->translate($current_lang, true)->post_content) ? $post->translate($current_lang, true)->post_content : '') : old('post_content')) : old('post_content'); 
                        $post_excerptVal = (isset($post)) ? (Request::route()->getName()!='admin.post.add.get' ? (isset($post->translate($current_lang, true)->post_excerpt) ? $post->translate($current_lang, true)->post_excerpt : '') : old('post_excerpt')) : old('post_excerpt'); 

                    ?>
                    <form  class="form-horizontal" method="post" enctype="multipart/form-data" action="@if(isset($action) && $action == 'edit'){{ route('admin.posts.edit.post', [$post->id, 'post_type='.\Request::get('post_type'), 'lang='. $current_lang]) }} @else  {{ route('admin.posts.add.post', 'post_type='.\Request::get('post_type').'&'.$get_parameters) }} @endif">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                        <input type="hidden" name="current_lang" value="{{ $current_lang }}">
                        <input type="hidden" name="post_type" value="@if(\Request::get('post_type') != null){{\Request::get('post_type')}}@else'post'@endif">
                        @if(isset($post))
                        <input type="hidden" name="id" value="{{ $id }}">
                        @endif
                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group {{ $errors->has('post_title') ? ' has-error' : '' }}">
                                    <div class="col-md-12">
                                        <input type="text" name="post_title" class="form-control" maxlength="255" placeholder="Enter Title here" value="{{$post_titleVal}}">
                                        @if ($errors->has('post_title'))
                                            <span class="help-block">{{ $errors->first('post_title') }}</span>
                                        @endif
                                    </div>
                                </div>
                                
                                <div class="form-group {{ $errors->has('slug') ? ' has-error block' : '' }} slug">
                                    <div class="col-md-12">
                                        <input type="text" name="slug" class="form-control" maxlength="255" placeholder="Enter slug here" value="@if(isset($post)){{trim($post->slug)}}@else{{old('slug')}}@endif">
                                        @if ($errors->has('slug'))
                                            <span class="help-block">{{ $errors->first('slug') }}</span>
                                        @endif
                                    </div>
                                </div>

                                <br>
                                <div class="form-group {{ $errors->has('post_content') ? ' has-error' : '' }}">
                                    <div class="col-md-12">
                                        <textarea name="post_content" class="ckeditor form-control"  rows="6">{{$post_contentVal}}</textarea>
                                        @if ($errors->has('post_content'))
                                            <span class="help-block">{{ $errors->first('post_content') }}</span>
                                        @endif
                                    </div>
                                </div>      

                                <br><br>
                                <div class="form-group {{ $errors->has('post_excerpt') ? ' has-error' : '' }} excerpt">
                                    <div class="col-md-12">
                                        <textarea name="post_excerpt" class="form-control" rows="6" placeholder="Enter post excerpt here">{{$post_excerptVal}}</textarea>
                                        @if ($errors->has('post_excerpt'))
                                            <span class="help-block">{{ $errors->first('post_excerpt') }}</span>
                                        @endif
                                    </div>
                                </div>

                                
                                <div class="form-group {{ $errors->has('author') ? ' has-error' : '' }} author">
                                    <div class="col-md-12">
                                        <input type="text" name="author" class="form-control" maxlength="255" placeholder="Author" value="@if(isset($post)){{trim($post->author)}}@else{{old('author')}}@endif">
                                        @if ($errors->has('author'))
                                            <span class="help-block">{{ $errors->first('author') }}</span>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">  
                                @include('admin::partials.sidebar_post')
                            </div>
                        </div>
                    </form>
                    <!-- END PAGE BASE CONTENT -->
                </div>
            </div>
                    <div class="modal fade" id="full" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-full">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                    <h4 class="modal-title">Modal Title</h4>
                                </div>
                                <div class="modal-body"> Modal body goes here </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn dark btn-outline" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn green">Save changes</button>
                                </div>
                            </div>
                            <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->

@stop
@section('scripts')
<script src="{{ asset('public/assets/admin/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/assets/admin/global/plugins/ckeditor/ckeditor.js') }}" type="text/javascript"></script>
@stop