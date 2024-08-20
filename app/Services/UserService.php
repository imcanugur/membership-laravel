<?php
namespace App\Services;

use App\Repositories\UserRepositories\IUserRepository;
use App\Models\User;
use Illuminate\Database\Eloquent\Collection;

class UserService
{
    protected $userRepository;

    public function __construct(IUserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function getAllUsers(): Collection
    {
        return $this->userRepository->getAllUsers();
    }

    public function getUserById(int $id): ?User
    {
        return $this->userRepository->getUserById($id);
    }

    public function createUser(array $data)
    {
        return $this->userRepository->createUser($data);
    }

    public function updateUser(int $id, array $data)
    {
        return $this->userRepository->updateUser($id, $data);
    }

    public function deleteUser(int $id): bool
    {
        return $this->userRepository->deleteUser($id);
    }

    public function searchUsers(array $search)
    {
        return $this->userRepository->searchUsers($search);
    }
}
