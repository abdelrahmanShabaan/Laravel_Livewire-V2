
<div>
<div class="flex items-center justify-end py-4 text-right">
        <x-jet-button wire:click="showCreateModal">
            {{ __('Create post') }}
        </x-jet-button>
    </div>
    <table class="w-full divide-y divide-gray-200">
        <thead>
            <tr>
                <th class="px-6 py-3 border-b-2 border-gray-200 text-left text-blue-500 tracking-wider">id</th>
                <th class="px-6 py-3 border-b-2 border-gray-200 text-left text-blue-500 tracking-wider">Image</th>
                <th class="px-6 py-3 border-b-2 border-gray-200 text-left text-blue-500 tracking-wider">Title</th>
                <th class="px-6 py-3 border-b-2 border-gray-200 text-left text-blue-500 tracking-wider">Action</th>
            </tr>
        </thead>
        <tbody class="bg-white divide-y divide-gray-200">
            @forelse($posts as $post)
            <tr>
            <th>id</th>
                <td  class="px-6 py-3 border-b border-gray-200">{{$post->id}}</td>
                <td class="px-6 py-3 border-b border-gray-200"><img src="{{ asset('images/' . $post->image) }}" alt="{{ $post->title }}" width="80"></td>
                <td  class="px-6 py-3 border-b border-gray-200">{{$post->title}}</td>
                <td  class="px-6 py-3 border-b border-gray-200">
                    

        <x-jet-button class="btn btn-primary">
            {{ __('Edit') }}
        </x-jet-button>

        <x-jet-button class="btn btn-danger">
            {{ __('Delete') }}
        </x-jet-button>

                </td>
            </tr>
            @empty
            <tr>
            <td class="px-6 py-3 border-b border-gray-200" colspan="4">No posts found!</td>
            </tr>
            @endforelse
        </tbody>
    </table>
    <div class="pt-4">
        {{ $posts->links() }}
    </div>

</div>

