<x-app-layout>
    <div class="border-b -mt-8 py-24">
        <x-container>
            <div class="flex">
                <div class="flex-shrink-0 mr-3">
                    <img src="https://i.pravatar.cc/150" alt="{{ $user->name }}"
                        class="rounded-full w-16 h-16 border-2 border-blue-500 p-1">
                </div>
                <div>
                    <h1 class="font-semibold mb-3">{{ $user->name }}</h1>
                    <div class="text-sm text-gray-500">
                        Joined {{ $user->created_at->diffForHumans() }}
                    </div>
                </div>
            </div>
        </x-container>
    </div>
    <div class="border-b">
        <x-container>
            <div class="flex">
                <div class="px-10 py-5 font-semibold text-center border-r border-l">
                    <div class="uppercase text-xs">Status</div>
                    <div class="font-2xl">{{ Auth::user()->statuses->count() }}</div>
                </div>
                <div class="px-10 py-5 font-semibold text-center border-r border-l">
                    <div class="uppercase text-xs">{{ Auth::user()->follows->count() }}</div>
                    <div class="font-2xl">100</div>
                </div>
                <div class="px-10 py-5 font-semibold text-center border-r border-l">
                    <div class="uppercase text-xs">{{ Auth::user()->followers->count() }}</div>
                    <div class="font-2xl">100</div>
                </div>
            </div>
        </x-container>
    </div>
</x-app-layout>
