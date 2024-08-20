<?php

namespace App\Repositories\UserRepositories;

interface IUserRepository
{
    public function getAllUsers();
    public function getUserById(int $id);
    public function createUser(array $data);
    public function updateUser(int $id, array $data);
    public function deleteUser(int $id): bool;
    public function searchUsers(array $search);
}
