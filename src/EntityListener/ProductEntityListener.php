<?php

namespace App\EntityListener;

use App\Entity\Product;
use Psr\Log\LoggerInterface;
use Doctrine\Bundle\DoctrineBundle\Attribute\AsEntityListener;
use Doctrine\ORM\Events;
use Doctrine\Persistence\Event\LifecycleEventArgs;

#[AsEntityListener(event: Events::postPersist, entity: Product::class)]
#[AsEntityListener(event: Events::postUpdate, entity: Product::class)]
class ProductEntityListener
{
    public function __construct(
        private LoggerInterface $logger
    ) {
    }

    public function postPersist(Product $product, LifecycleEventArgs
    $event)
    {
        //file_put_contents('bbb',print_r($product,true),FILE_APPEND);
        $this->logger->error('Utworzono nowy produkt', [
            'product_id' => $product->getId(),
            'product_name' => $product->getName(),
        ]);
        file_put_contents('logs/'.date('Ymd-H').'.log',$product->getId().'->'.$product->getName(),FILE_APPEND);

        //echo('dupka');exit();
    }

    public function postUpdate(Conference $conference, LifecycleEventArgs $event)
    {
        file_put_contents('ccc','ccc');
        //echo('pipka');exit();
    }
}