<?php
namespace App\Controller;

use App\Entity\Group;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;
use Doctrine\ORM\EntityManagerInterface;

class ImportController
{
    private $entityManager;
    private $serializer;

    public function __construct(EntityManagerInterface $entityManager, SerializerInterface $serializer)
    {
        $this->entityManager = $entityManager;
        $this->serializer = $serializer;
    }

    /**
     * @Route("/api/upload", methods={"POST"})
     */
    public function uploadFile(Request $request): JsonResponse 
    {
        $data = json_decode($request->getContent(), true);

        // À ce stade, $data contient les données du fichier Excel en format JSON + Facile à traiter
        foreach ($data as $row) {
            $group = new Group();

            $group->setGroupName($row['Nom du groupe']);
            $group->setOrigin($row['Origine']);
            $group->setCity($row['Ville']);
            $group->setDateStart($row['Année début']);
            $group->setDateSeparation($row['Année séparation'] ?? null);
            $group->setFounders($row['Fondateurs'] ?? null);
            $group->setMembers($row['Membres'] ?? null);
            $group->setMusicType($row['Courant musical'] ?? null);
            $group->setDescription($row['Présentation']);



            $this->entityManager->persist($group);
        }

        $this->entityManager->flush();

        return new JsonResponse(['message' => 'Data imported successfully']);
    }
}
