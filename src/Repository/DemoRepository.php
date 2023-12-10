<?php

namespace App\Repository;

use App\Entity\Demo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use PhpParser\Node\Expr\Cast\String_;

/**
 * @extends ServiceEntityRepository<Demo>
 *
 * @method Demo|null find($id, $lockMode = null, $lockVersion = null)
 * @method Demo|null findOneBy(array $criteria, array $orderBy = null)
 * @method Demo[]    findAll()
 * @method Demo[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class DemoRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Demo::class);
    }

//    /**
//     * @return Demo[] Returns an array of Demo objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('d.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Demo
//    {
//        return $this->createQueryBuilder('d')
//            ->andWhere('d.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }

    public function findDistinctTypes(): array
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery('
            SELECT DISTINCT d.type
            FROM App\Entity\Demo d
        ');

        return $query->getResult();
    }


    public function findType(): array 
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery('
           SELECT * 
            FROM App\Entity\Demo d WHERE d.type = 
        ');

        return $query->getResult();
    }
    }

