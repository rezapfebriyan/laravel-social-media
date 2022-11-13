<x-app-layout>
    <x-slot name="header">
        <h1 class="font-semibold text-xl">
            Update Your Profile Information
        </h1>
    </x-slot>
    <x-container>
        <div class="flex">
            <div class="w-full lg:w-1/2">
                <x-card>
                    <form action="{{ route('profile.update') }}" method="post">
                        @method('put')
                        @csrf

                        <div class="mb-5">
                            <x-label>Username</x-label>
                            <x-input value="{{ old('username', Auth::user()->username) }}" class="mt-1 w-ful"
                                type="text" name="username" />
                        </div>
                        <div class="mb-5">
                            <x-label>Email</x-label>
                            <x-input value="{{ old('email', Auth::user()->email) }}" class="mt-1 w-ful" type="email"
                                name="email" />
                        </div>
                        <div class="mb-5">
                            <x-label>Name</x-label>
                            <x-input value="{{ old('name', Auth::user()->name) }}" class="mt-1 w-ful" type="text"
                                name="name" />
                        </div>
                        <x-button>Update</x-button>
                    </form>
                </x-card>
            </div>
        </div>
    </x-container>
</x-app-layout>
