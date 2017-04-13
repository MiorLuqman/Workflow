<?php namespace Mesb\Workflow\Models;

use Model;

/**
 * Model
 */
class StatusTo extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Validation
     */
    public $rules = [
    ];

    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'mesb_workflow_statusto';

    // public function statusto()
    // {
    //     retunr $this->belongsToMany('Mesb\Workflow\Models\StatusRule');
    // }
}