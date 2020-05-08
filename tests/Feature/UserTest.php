<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\User;
use Illuminate\Support\Facades\Event;

class UserTest extends TestCase
{
    use RefreshDatabase;
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function actingAsAdmin(): void
    {
        $this->actingAs(factory(User::class)->create([
            'mail_address' => 'lanhdd@lifetimetech.vn',
        ]));
    }

    protected function setUp(): void
    {
        parent::setUp();
        Event::fake();
    }
    public function testExample()
    {
        $this->assertTrue(true);
    }
    public function onlyUsersList()
    {
        $response = $this->get('/users')
            ->assertRedirect('/login');
    }

    public function authenticatedUsers()
    {
        $this->actingAs(factory(User::class)->create());
        $response = $this->get('/users')
            ->assertOk();
    }

    public function usersAdded()
    {
        $this->actingAsAdmin();

        $response = $this->post('/users', $this->data());

        $this->assertCount(1, User::all());
    }

    public function nameRequired()
    {
        $this->actingAsAdmin();

        $response = $this->post('/users', array_merge($this->data(), ['name' => '']));
        $response->assertSessionHasErrors('name');

        $this->assertCount(0, User::all());
    }

    public function nameCharacters()
    {
        $this->actingAsAdmin();

        $response = $this->post('/users', array_merge($this->data(), ['mail_address' => '']));
        $response->assertSessionHasErrors('mail_address');

        $this->assertCount(0, User::all());
    }

    public function mailRequired()
    {
        $this->actingAsAdmin();

        $response = $this->post('/users', array_merge($this->data(), ['name' => 'a']));
        $response->assertSessionHasErrors('name');

        $this->assertCount(0, User::all());
    }

    private function data()
    {
        return [
            'name' => 'Test user',
            'mail_address' => 'lanhdd@lifetimetech.vn',
            'address' => 'Phuc Tho - Ha Noi',
        ];
    }
}
