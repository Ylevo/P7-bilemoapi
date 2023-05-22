<?php

namespace App\Factory;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Zenstruck\Foundry\ModelFactory;
use Zenstruck\Foundry\Proxy;
use Zenstruck\Foundry\RepositoryProxy;

/**
 * @extends ModelFactory<Product>
 *
 * @method        Product|Proxy create(array|callable $attributes = [])
 * @method static Product|Proxy createOne(array $attributes = [])
 * @method static Product|Proxy find(object|array|mixed $criteria)
 * @method static Product|Proxy findOrCreate(array $attributes)
 * @method static Product|Proxy first(string $sortedField = 'id')
 * @method static Product|Proxy last(string $sortedField = 'id')
 * @method static Product|Proxy random(array $attributes = [])
 * @method static Product|Proxy randomOrCreate(array $attributes = [])
 * @method static ProductRepository|RepositoryProxy repository()
 * @method static Product[]|Proxy[] all()
 * @method static Product[]|Proxy[] createMany(int $number, array|callable $attributes = [])
 * @method static Product[]|Proxy[] createSequence(iterable|callable $sequence)
 * @method static Product[]|Proxy[] findBy(array $attributes)
 * @method static Product[]|Proxy[] randomRange(int $min, int $max, array $attributes = [])
 * @method static Product[]|Proxy[] randomSet(int $number, array $attributes = [])
 */
final class ProductFactory extends ModelFactory
{

    const SMARTPHONES = [
        'Asus ZenFone 6',
        'BlackBerry Priv',
        'CAT S62 Pro',
        'Fairphone 2',
        'Goophone X',
        'HTC Desire',
        'HTC Legend',
        'HTC Rezound',
        'Honor 7C',
        'Meizu M6',
        'Meizu 17/Pro',
        'Nexus 4',
        'Nokia C02',
        'Oppo N1 mini',
        'Oppo Reno',
        'Pixel 6a',
        'Pixel 7/Pro',
        'POCO C31',
        'Realme 10/5G',
        'Samsung Galaxy Note 4',
        'Samsung Galaxy C7',
        'Samsung Galaxy A70',
        'Samsung Galaxy A01'
    ];
    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#factories-as-services
     *
     * @todo inject services if required
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#model-factories
     *
     * @todo add your default values here
     */
    protected function getDefaults(): array
    {
        return [
            'description' => self::faker()->text(255),
            'name' => self::faker()->randomElement(self::SMARTPHONES) . ' ' . self::faker()->randomNumber(3),
            'price' => self::faker()->randomNumber(3),
            'releaseDate' => \DateTimeImmutable::createFromMutable(self::faker()->dateTime()),
        ];
    }

    /**
     * @see https://symfony.com/bundles/ZenstruckFoundryBundle/current/index.html#initialization
     */
    protected function initialize(): self
    {
        return $this
            // ->afterInstantiate(function(Product $product): void {})
        ;
    }

    protected static function getClass(): string
    {
        return Product::class;
    }
}
