using my.bookshop as my from '../db/data-model';

service CatalogService {
    @readonly
    entity Authors as projection on my.Authors;

    @readonly
    entity Books   as projection on my.Books {
        *,
        author.name as author_name
    };

    function totalStock() returns Integer;
}

/*using my.bookshop as my from '../db/data-model';

service CatalogService {
    @readonly entity Books as projection on my.Books;
}
*/
