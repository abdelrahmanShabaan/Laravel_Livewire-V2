<?php

namespace App\Http\Livewire;

use App\Models\Post;
use Livewire\Component;
use Livewire\WithPagination;

class Posts extends Component
{

    use WithPagination;

    public function all_posts()
    {
        return Post::orderByDesc('id')->paginate(5);
    }
    public function render()
    {
        return view('livewire.posts' ,[

            'posts' => $this->all_posts()
        ]);




    }
}
