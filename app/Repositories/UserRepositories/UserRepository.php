<?php

namespace App\Repositories\UserRepositories;

use App\Repositories\UserRepositories\IUserRepository;
use App\Models\User;
use App\Models\Company;
use Illuminate\Database\Eloquent\Collection;

class UserRepository implements IUserRepository
{
    public function getAllUsers() {
        return User::with('company')->get();
    }

    public function getUserById(int $id) {
        return User::with('company')->find($id);
    }

    public function createUser(array $data) {
        $company = Company::firstOrCreate(['name' => $data['company_name']]);
        $user = User::create(array_merge($data, ['company_id' => $company->id]));

        return [
            'user' => $user,
            'company' => $company
        ];
    }

    public function updateUser(int $id, array $data) {
        $user = User::find($id);
        if ($user) {
            if (isset($data['company_name'])) {
                $company = Company::firstOrCreate(['name' => $data['company_name']]);
                $data['company_id'] = $company->id;
            } $user->update($data);
            $user->company;
            return  $user;
        }
        return null;
    }

    public function deleteUser(int $id): bool {
        $user = User::find($id);
        if ($user) return $user->delete();
        return false;
    }

    public function searchUsers(array $search) {
        $query = User::query();

        foreach ($search as $key => $value) {
            if ($key === 'company_name' && $value) {
                $query->whereHas('company', function ($query) use ($value) {
                    $query->where('name', 'like', "%{$value}%");
                });
            } elseif ($value) {
                $query->where($key, 'like', "%{$value}%");
            }
        } return $query->get();
    }
}
