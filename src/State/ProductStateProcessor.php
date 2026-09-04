<?php

namespace App\State;

use App\Entity\Product;

use Psr\Log\LoggerInterface;

use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;

final class ProductStateProcessor implements ProcessorInterface
{

    public function __construct(
        private LoggerInterface $logger
    ) {}


    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): mixed
    {
        
        //echo('liiii');exit();
        file_put_contents('aaa.txt',print_r($operation,true),FILE_APPEND);
        $this->logger->error('bardzo brzydki');
        return $data;
    }


}
