<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231015160837 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `group` ADD origin VARCHAR(255) NOT NULL, ADD city VARCHAR(255) NOT NULL, ADD date_start INT DEFAULT NULL, ADD date_separation INT DEFAULT NULL, ADD members INT DEFAULT NULL, ADD founders VARCHAR(255) DEFAULT NULL, ADD music_type VARCHAR(255) NOT NULL, ADD description VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE `group` DROP origin, DROP city, DROP date_start, DROP date_separation, DROP members, DROP founders, DROP music_type, DROP description');
    }
}
