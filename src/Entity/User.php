<?php

namespace App\Entity;

use ApiPlatform\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Metadata\ApiFilter;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Delete;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Put;
use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: UserRepository::class)]
#[ApiResource(
    securityMessage: "Hey that's not your user."
)]
#[Get(
    normalizationContext: ['groups' => ['user:read']],
    security: 'is_fully_authenticated() and object.getClient() == user')]
#[GetCollection(
    paginationItemsPerPage: 10,
    normalizationContext: ['groups' => ['users:read']])]
#[Post(denormalizationContext: ['groups' => ['user:new']],
    security: 'is_fully_authenticated() and object.getClient() == user')]
#[Delete(
    security: 'is_fully_authenticated() and object.getClient() == user')]
class User
{
    #[Groups(['user:read', 'users:read'])]
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[Groups(['user:read', 'users:read', 'user:new'])]
    #[ApiFilter(SearchFilter::class, strategy : 'partial')]
    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $firstname = null;

    #[Groups(['user:read', 'users:read', 'user:new'])]
    #[ApiFilter(SearchFilter::class, strategy : 'partial')]
    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $lastname = null;

    #[Groups(['user:read', 'user:new'])]
    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $phoneNumber = null;

    #[Groups(['user:read', 'user:new'])]
    #[ApiFilter(SearchFilter::class, strategy : 'partial')]
    #[Assert\NotBlank()]
    #[ORM\Column(length: 255)]
    private ?string $email = null;

    #[ORM\ManyToOne(inversedBy: 'users')]
    #[ORM\JoinColumn(nullable: false)]
    private ?Client $client = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    public function setFirstname(string $firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getPhoneNumber(): ?string
    {
        return $this->phoneNumber;
    }

    public function setPhoneNumber(string $phoneNumber): self
    {
        $this->phoneNumber = $phoneNumber;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getClient(): ?Client
    {
        return $this->client;
    }

    public function setClient(?Client $client): self
    {
        $this->client = $client;

        return $this;
    }
}
