<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;

class UserPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
        return $user->role==1||$user->role==0;
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\User  $model
     * @return mixed
     */
    public function view(User $user, User $model)
    {
        //
        return $user->role ==1 || $user->role == 0;
    }

    /**
     * Determine whether the user can create models.
     * Check role 1 create
     *
     * @param  \App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
        return ($user->role == 1);
    }

    /**
     * Determine whether the user can update the model.
     * Check role 1 update
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\User  $model
     * @return mixed
     */
    public function update(User $user, User $model)
    {
        return ($user->role == 1);
    }

    /**
     * Determine whether the user can delete the model.
     * Check role 1 delete
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\User  $model
     * @return mixed
     */

    public function forceDelete(User $user, User $model)
    {
        return $user->role == 1;
    }
}
