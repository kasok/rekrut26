<?php

namespace App\EntityListener;

use App\Entity\Product;
use Psr\Log\LoggerInterface;
use App\Service\ProductNotificationService;
use Doctrine\Bundle\DoctrineBundle\Attribute\AsEntityListener;
use Doctrine\ORM\Events;
use Doctrine\Persistence\Event\LifecycleEventArgs;

#[AsEntityListener(event: Events::postPersist, entity: Product::class)]
#[AsEntityListener(event: Events::postUpdate, entity: Product::class)]
class ProductEntityListener
{
    public function __construct(
        private LoggerInterface $logger,
        private ProductNotificationService $notificationService
    ) {
    }

    public function postPersist(Product $product, LifecycleEventArgs
    $event)
    {
        
        $this->logger->info(
            'New product created: '.$product->getId().' => '.$product->getName() 
        ); //u mnie nie działa i nie wiem dlaczego

        file_put_contents(
            'logs/'.date('Ymd-H').'.log',
            date('Y-m-d H:i:s').' New product created: '.$product->getId().' => '.$product->getName()."\n\n",
            FILE_APPEND
        ); //...dlatego loguję po staremu

        $this->notificationService->sendCreationNotifications($product,'created');

        
    }

    public function postUpdate(Product $product, LifecycleEventArgs $event)
    {
        $this->logger->info(
            'Product updated: '.$product->getId().' => '.$product->getName() 
        ); //u mnie nie działa i nie wiem dlaczego

        file_put_contents(
            'logs/'.date('Ymd-H').'.log',
            date('Y-m-d H:i:s').' Product updated: '.$product->getId().' => '.$product->getName()."\n\n",
            FILE_APPEND
        ); //...dlatego loguję po staremu

        $this->notificationService->sendCreationNotifications($product,'updated');
    }
}