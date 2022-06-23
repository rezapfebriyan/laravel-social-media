<x-app-layout>
    <x-container> {{-- isinya akan disesuaikan dgn component container.blade.php --}}
        <div class="grid grid-cols-12 gap-6">
            <div class="col-span-7">
                <div class="border rounded-xl p-5">
                    <form action="{{ route('statuses.store') }}" method="post">
                        @csrf
                        <div class="flex">
                            <div class="flex-shrink-0 mr-3">
                                <img class="w-10 h-10 rounded-full" src="https://i.pravatar.cc/150"
                                    alt="{{ Auth::user()->name }}">
                            </div>
                            <div class="w-full">
                                <div class="font-semibold">
                                    {{ Auth::user()->name }}
                                </div>
                                <div class="my-2">
                                    <textarea name="body" placeholder="What is on your mind ?"
                                        class="form-textarea w-full border-gray-300 rounded-xl resize-none focus:border-blue-500 focus:ring focus:ring-blue-200 transition duration-200"></textarea>
                                </div>
                                <div class="text-right">
                                    <x-button>Post</x-button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="space-y-6 mt-5">
                    <div class="space-y-5">
                        <x-statuses :statuses="$statuses"></x-statuses>
                    </div>
                </div>
            </div>
            <div class="col-span-5">
                <x-card>
                    <h1 class="font-semibold mb-5">Resently follows</h1>
                    <div class="space-y-5">
                        <x-following :users="Auth::user()
                            ->follows()
                            ->limit(5)
                            ->get()"></x-following>
                    </div>
                </x-card>
            </div>
        </div>
    </x-container>
</x-app-layout>
