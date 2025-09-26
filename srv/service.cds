using { skillsmgt as my } from '../db/schema.cds';

@path : '/service/skillsmgtService'
service skillsmgtService
{
    @odata.draft.enabled
    entity Skills as
        projection on my.Skills;
}

annotate skillsmgtService with @requires :
[
    'authenticated-user'
];
