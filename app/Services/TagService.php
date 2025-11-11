<?php

namespace App\Services;

use App\Models\Post;
use App\Models\Tag;
use Illuminate\Support\Facades\DB;

class TagService
{
   public static function store(array $data): Tag
   {
       try {
           DB::beginTransaction();
           $tag = Tag::create($data);
           DB::commit();
       } catch (\Exception $exception) {
           DB::rollBack();
           abort($exception->getCode(), $exception->getMessage());
       }

       return $tag;
   }
}
