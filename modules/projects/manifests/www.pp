class projects::www {

  include php::composer

  php::project { 'www':
    source        => 'StEdwardsTeam/freshform_www',
    mysql         => true,
    nginx         => 'projects/shared/drupal.nginx.conf.erb',
    php           => '5.4.41',
  }
}