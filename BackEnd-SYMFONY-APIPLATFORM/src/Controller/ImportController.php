<?php
namespace App\Controller;

use App\Entity\Category;
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
            $category = new Category();
            $category->setName($row['Nom du groupe']);
            $category->setLibelle($row['Ville']);

            $this->entityManager->persist($category);
        }

        $this->entityManager->flush();

        return new JsonResponse(['message' => 'Data imported successfully']);
    }
}
