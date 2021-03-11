<form role="form" action="" method="POST">
    @csrf
    <div class="col-sm-8">
        <div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
            <label for="name">Name <span class="text-danger">(*)</span></label>
            <input type="text" class="form-control" value="{{ old('sl_name',$supplier->sl_name ?? '') }}" name="sl_name"  placeholder="Name ...">
            @if ($errors->first('sl_name'))
                <span class="text-danger">{{ $errors->first('sl_name') }}</span>
            @endif
        </div>
    </div>
    <div class="col-sm-8">
        <div class="form-group {{ $errors->first('sl_phone') ? 'has-error' : '' }}">
            <label for="name">Phone <span class="text-danger">(*)</span></label>
            <input type="number" class="form-control" value="{{ old('sl_phone', $supplier->sl_phone ?? '') }}"  name="sl_phone"  placeholder="Phone ...">
            @if ($errors->first('sl_phone'))
                <span class="text-danger">{{ $errors->first('sl_phone') }}</span>
            @endif
        </div>
    </div>
    <div class="col-sm-8">
        <div class="form-group {{ $errors->first('sl_email') ? 'has-error' : '' }}">
            <label for="name">Email <span class="text-danger">(*)</span></label>
            <input type="email" class="form-control" value="{{ old('sl_email',$supplier->sl_email ?? '') }}"  name="sl_email"  placeholder="Email ...">
            @if ($errors->first('sl_email'))
                <span class="text-danger">{{ $errors->first('sl_email') }}</span>
            @endif
        </div>
    </div>
    <div class="col-sm-8">
        <div class="form-group {{ $errors->first('sl_address') ? 'has-error' : '' }}">
            <label for="name">Address <span class="text-danger">(*)</span></label>
            <input type="text" class="form-control" value="{{ old('sl_address', $supplier->sl_address ?? '') }}"  name="sl_address"  placeholder="Address ...">
            @if ($errors->first('sl_address'))
                <span class="text-danger">{{ $errors->first('sl_address') }}</span>
            @endif
        </div>
    </div>

    <div class="col-sm-8">
        <div class="box-footer text-center">
            <a href="{{ route('admin.ncc.index') }}" class="btn btn-danger">
                {{  __('admin_user.btn_back')}} <i class="fa fa-undo"></i></a>
            <button type="submit" class="btn btn-success">{{  __('admin_user.btn_save')}} <i class="fa fa-save"></i></button>
        </div>
    </div>
</form>