<?php

namespace App\Repository;

use App\Entity\Demo;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
namespace App\Controller;

use App\Entity\Demo;
use App\Form\DemoType;
use App\Repository\DemoRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/')]
class DemoController extends AbstractController
{
    #[Route('/', name: 'app_demo_index', methods: ['GET'])]
    public function index(Request $request, DemoRepository $demoRepository): Response
    {
        $typeFilter = $request->query->get('type');
        
        // If a type filter is provided, use the filterByType method
        if ($typeFilter) {
            $filteredDemos = $demoRepository->findBy(['type' => $typeFilter]);

            return $this->render('demo/filter_by_type.html.twig', [
                'filteredDemos' => $filteredDemos,
                'filterType' => $typeFilter,
                'availableTypes' => $demoRepository->findDistinctTypes(),
            ]);
        }

        // If no type filter, show all events
        return $this->render('demo/index.html.twig', [
            'demos' => $demoRepository->findAll(),
            'availableTypes' => $demoRepository->findDistinctTypes(),
        ]);
    }

    #[Route('/new', name: 'app_demo_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $demo = new Demo();
        $form = $this->createForm(DemoType::class, $demo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($demo);
            $entityManager->flush();
            $this->addFlash('success', 'Entry successfully added!');
            return $this->redirectToRoute('app_demo_index', [], Response::HTTP_SEE_OTHER);
        }
        else{
            $this->addFlash('error', 'There was an error!');
        }

        return $this->render('demo/new.html.twig', [
            'demo' => $demo,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_demo_show', methods: ['GET'])]
    public function show(Demo $demo): Response
    {
        return $this->render('demo/show.html.twig', [
            'demo' => $demo,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_demo_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Demo $demo, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(DemoType::class, $demo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_demo_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('demo/edit.html.twig', [
            'demo' => $demo,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_demo_delete', methods: ['POST'])]
    public function delete(Request $request, Demo $demo, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$demo->getId(), $request->request->get('_token'))) {
            $entityManager->remove($demo);
            $entityManager->flush();
            $this->addFlash('success', 'Entry successfully deleted!');

        }
        else{
            $this->addFlash('error', 'There was an error!');
        }

        return $this->redirectToRoute('app_demo_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/type/{type}', name: 'app_demo_filter_by_type', methods: ['GET'])]
public function filterByType(string $type, DemoRepository $demoRepository): Response
{
    $filteredDemos = $demoRepository->findBy(['type' => $type]);

    if (empty($filteredDemos)) {
        return $this->render('demo/no_results.html.twig', [
            'filterType' => $type,
        ]);
    }

    return $this->render('demo/filter_by_type.html.twig', [
        'filteredDemos' => $filteredDemos,
        'filterType' => $type,
    ]);
}

}
