<?php
namespace App\Http\Controllers;

use App\Http\Requests\UserCreate;
use App\Http\Requests\UserUpdate;
use App\Http\Requests\UserDelete;
use App\Services\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{
    protected $userService;

    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    public function index() {
        try {
            $users = $this->userService->getAllUsers();
            return response()->json(['status' => true, 'data' => $users]);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function store(UserCreate $request)
    {
        try {
            $validatedData = $request->validated();
            $user = $this->userService->createUser($validatedData);

            return response()->json(['status' => true, 'data' => $user], 201);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function show($id) {
        try {
            $user = $this->userService->getUserById($id);
            if ($user) {
                return response()->json(['status' => true, 'data' => $user]);
            }
            return response()->json(['status' => false, 'message' => 'User not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function update(UserUpdate $request, $id) {
        try {
            $user = $this->userService->updateUser($id, $request->validated());
            if ($user) {
                return response()->json(['status' => true, 'data' => $user]);
            }
            return response()->json(['status' => false, 'message' => 'User not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function destroy($id) {
        try {
            if ($this->userService->deleteUser($id)) {
                return response()->json(['status' => true, 'message' => 'User deleted']);
            }
            return response()->json(['status' => false, 'message' => 'User not found'], 404);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }

    public function search(Request $request) {
        try {
            $search = $request->only(['name', 'surname', 'email', 'phone', 'company_name']);
            $users = $this->userService->searchUsers($search);

            return response()->json(['status' => true, 'data' => $users], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => false, 'message' => $e->getMessage()], 500);
        }
    }
}
