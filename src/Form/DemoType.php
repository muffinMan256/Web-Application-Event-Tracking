<?php

namespace App\Form;

use App\Entity\Demo;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class DemoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null,[
                'attr'=> [
                    'class'=>'form-control',
                    'placeholder'=> 'Please add the name of the event'
                ],
                'label' => 'Name of event',
            ])
            ->add('date', DateType::class,[
                'attr'=> ['class' => 'form-control'],
                'input' => 'datetime',
                'label'=> 'Add the date of the event'
            ])
            ->add('time', TimeType::class, [
                'attr'=> ['class' => 'form-control'],
                'input'  => 'datetime',
                'widget' => 'single_text',
            ])
            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the description of the event!"],
                'label' => 'Description of event'
                ])
            ->add('image', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the url of the image!"],
                'label' => 'Image of Event'
                ])
            ->add('capacity', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the maximum capacity for the event!"]
                ])
            ->add('contact', EmailType::class, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the contact email for the event"],
                'label' => 'Contact Email'
                ])
            ->add('phone', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the phone number of the contact pearson"],
                'label' => 'Phone Number'
                ])
            ->add('location', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the location of the event"],
                'label' => 'Location'
                ])
            ->add('street', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the name of the street where the event is located"],
                'label' => 'Street'
                ])
            ->add('number', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the street number of the events location"],
                'label' => 'Street Number'
                ])
            ->add('zip', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the Zip Code of the events location"],
                'label' => 'Zip Code:'
                ])
            ->add('city', null, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the City where the event takes place"],
                'label' => 'City:'
                ])
            ->add('url', UrlType::class, [
                'attr' => ['class' => 'form-control', "placeholder" => "Please insert the Zip Code of the events location"],
                'label' => 'URL',
                
                ])
                ->add('type', ChoiceType::class, [
                    'label' => 'Type',
                    'attr' => ['class' => 'form-control'],
                    'choices' => [
                        'Tech Event' => 'Tech Event',
                        'Sport Event' => 'Sport Event',
                        'Theater' => 'Theater',
                        'Conferece' => 'Conferece',
                        'Food Festival' => 'Food Festival',
                        'Music Event' => 'Music Event',
                        'Other'=> 'Other',
                    ],
                ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Demo::class,
        ]);
    }
}
