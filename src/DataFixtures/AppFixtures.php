<?php

namespace App\DataFixtures;

use App\Factory\ClientFactory;
use App\Factory\ProductFactory;
use App\Factory\UserFactory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        ClientFactory::createMany(5);
        ProductFactory::createMany(40);
        UserFactory::createMany(80, function () {
            return [
                'client' => ClientFactory::random(),
            ];
        });

        $manager->flush();
    }
}
