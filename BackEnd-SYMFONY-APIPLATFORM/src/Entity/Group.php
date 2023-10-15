<?php
// src/Entity/Group.php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use ApiPlatform\Core\Annotation\ApiResource;
use Symfony\Component\Serializer\Annotation\Groups;

/**
 * @ApiResource(
 *     normalizationContext={"groups"={"group:read"}},
 *     denormalizationContext={"groups"={"group:write"}},
 *     collectionOperations={
 *         "get",
 *         "post"
 *     },
 *     itemOperations={
 *         "get",
 *         "put",
 *         "delete"
 *     }
 * )
 * @ORM\Entity(repositoryClass="App\Repository\GroupRepository")
 * @ORM\Table(name="`group`")
 */
class Group
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     * @Groups({"group:read"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups({"group:read", "group:write"})
     */
    private $groupName;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups({"group:read", "group:write"})
     */
    private $origin;

    /**
     * @ORM\Column(type="string", length=255)
     * @Groups({"group:read", "group:write"})
     */
    private $city;

    /**
     * @ORM\Column(type="integer", nullable=true)
     * @Groups({"group:read", "group:write"})
     */
    private $date_start;

    /**
     * @ORM\Column(type="integer", nullable=true)
     * @Groups({"group:read","group:write"})
     */
    private $date_separation;

    /**
     * @ORM\Column(type="integer", nullable=true)
     * @Groups({"group:read","group:write"})
     */
    private $members;

    /**
     * @ORM\Column(type="string", nullable=true)
     * @Groups({"group:read","group:write"})
     */
    private $founders;

    /**
     * @ORM\Column(type="string", nullable=true)
     * @Groups({"group:read","group:write"})
     */
    private $musicType;

    /**
     * @ORM\Column(type="string")
     * @Groups({"group:read","group:write"})
     */
    private $description;


    public function __construct()
    {

    }
    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id): void
    {
        $this->id = $id;
    }

    public function getGroupName(): ?string
    {
        return $this->groupName;
    }

    public function setGroupName(string $groupName): self
    {
        $this->groupName = $groupName;
        return $this;
    }

    public function getOrigin(): ?string
    {
        return $this->origin;
    }

    public function setOrigin(string $origin): self
    {
        $this->origin = $origin;
        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(string $city): self
    {
        $this->city = $city;
        return $this;
    }

    public function getDateStart(): ?int
    {
        return $this->date_start;
    }

    public function setDateStart(?int $date_start): self
    {
        $this->date_start = $date_start;
        return $this;
    }

    public function getDateSeparation(): ?int
    {
        return $this->date_separation;
    }

    public function setDateSeparation(?int $date_separation): self
    {
        $this->date_separation = $date_separation;
        return $this;
    }

    public function getMembers(): ?int
    {
        return $this->members;
    }

    public function setMembers(?int $members): self
    {
        $this->members = $members;
        return $this;
    }

    public function getFounders(): ?String
    {
        return $this->founders;
    }

    public function setFounders(?String $founders): self
    {
        $this->founders = $founders;
        return $this;
    }

    public function getMusicType(): ?String
    {
        return $this->musicType;
    }

    public function setMusicType(?String $musicType): self
    {
        $this->musicType = $musicType;
        return $this;
    }

    public function getDescription(): ?String
    {
        return $this->description;
    }

    public function setDescription(String $description): self
    {
        $this->description = $description;
        return $this;
    }

}

