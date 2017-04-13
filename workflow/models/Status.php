<?php namespace Mesb\Workflow\Models;

use Model;

/**
 * Model
 */
class Status extends Model
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
    public $table = 'mesb_workflow_status';

    //  public $belongsToMany = [
    // 'group' =>[
    //         'Backend\Models\UserGroup',
    //         'table' => 'mesb_workflow_grouprule'
    //     // 'key' => 'id',
    //     // 'otherKey' => 'user_group_id'
    //     ]
    //     ];

    //  public $belongsToMany = [
    // '' =>[
    //         'Backend\Models\UserGroup',
    //         'table' => 'mesb_workflow_grouprule'
    //     // 'key' => 'id',
    //     // 'otherKey' => 'user_group_id'
    //     ]
    //     ];

    // public function statusfrom()
    // {
    //     returh $this->belongsToMany('Mesb\Workflow\Models\StatusRule');
    // }

    // public function getStatusFromIdOptions()
    // {

    //     $statuses = StatusTo::all(['display_order', 'status_to_type']);
    //     $statusesOptions = [];

    //     $statuses->each(function($status) use (&$statusesOptions) {
    //         $statusesOptions[$status->display_order] = $status->status_to_type;
    //     });

    //     //var_dump($statusesOptions);
    //     //var_dump($statuses);

    //     return $statusesOptions;

    // public function getStatusToIdOptions() {
    //     $statusfrom = Status::all(['id', 'status_type']);
    //     $statusfromOptions = [];

    //     $statusfrom->each(function($status_id) use (&$statusfromOptions) {
    //         $statusfromOptions[$status_id->id] = $status_id->status_type;
    //     });

    //     return $statusfromOptions;
  // }


    // }
}