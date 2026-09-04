<?php

namespace App\Service;

use App\Entity\Product;
use Psr\Log\LoggerInterface;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;

class ProductNotificationService
{
    public function __construct(
        private LoggerInterface $logger,
        private MailerInterface $mailer
    ) {
    }

    public function sendCreationNotifications(Product $product, string $operation): void
    {

        $this->sendEmail($product, $operation);
        
        // @TODO: to be implemented
        // $this->sendSms($product);
        // $this->sendSlack($product);
    }


    private function sendEmail(Product $product): void
    {
        $email = (new Email())
            ->from('mailer@kodano.pl')
            ->to('jamjest@gmail.com')
            ->subject('Product '.$operation.': ' . $product->getName())
            ->text(sprintf(
                'Product was '.$operation.', ID: %d, name: %s',
                $product->getId(),
                $product->getName()
            ));

        try {
            $this->mailer->send($email);
        } catch (\Throwable $e) {
            $this->logger->error('Nie udało się wysłać e-maila: ' . $e->getMessage());
        }
    }

    private function sendSms(Product $product, string $operation): void
    {
        throw new Exception('Not implemented!');
    }

    private function sendSlack(Product $product, string $operation): void
    {
        throw new Exception('Not implemented!');
    }
}