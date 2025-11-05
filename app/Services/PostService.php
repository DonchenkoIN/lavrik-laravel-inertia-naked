<?php

namespace App\Services;

use App\Models\Post;
use Illuminate\Support\Facades\DB;

class PostService
{
   public static function store(array $data): Post
   {
       try {
           DB::beginTransaction();
           $post = Post::create($data);
           DB::commit();
       } catch (\Exception $exception) {
           DB::rollBack();
           abort($exception->getCode(), $exception->getMessage());
       }

       return $post;
   }
}
