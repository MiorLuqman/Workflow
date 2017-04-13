<?php namespace Mesb\Workflow\Models;

use Model;
use Mesb\Workflow\Models\Status;

/**
 * Model
 */
class StatusRule extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Validation
     */
    public $rules = [
    ];

    public $belongsTo = [
    'status_id' => ['Mesb\Workflow\Models\Status',
    'table' => 'mesb_workflow_status_rule',
    'key' => 'statusfrom_id',
    'otherKey' => 'id'
    ]
    ];


    public $belongsToMany = [
        'statusto_id' => ['Mesb\Workflow\Models\Status',
        'table' => 'mesb_workflow_statusto_rule',
        'key' => 'status_from_id',
        'otherKey' => 'status_to_id'
        ],

        'group_id' => ['Backend\Models\UserGroup',
        'table' => 'mesb_workflow_group_rule',
        'key' => 'status_from_to_id',
        'otherKey' => 'user_group_id'
        ]
        ];



    /*
     * Disable timestamps by default.
     * Remove this line if timestamps are defined in the database table.
     */
    public $timestamps = false;

    /**
     * @var string The database table used by the model.
     */
    public $table = 'mesb_workflow_status_rule';

    public function getStatusIdOptions() {
        $statusfrom = Status::all(['id', 'status_type']);
        $statusfromOptions = [];

        $statusfrom->each(function($status_id) use (&$statusfromOptions) {
            $statusfromOptions[$status_id->id] = $status_id->status_type;
        });

        return $statusfromOptions;
    }

    //  public function getStatusIdOptions() {
    //     $statusfrom = Status::all(['id', 'status_type']);
    //     $statusfromOptions = [];

    //     $statusfrom->each(function($status_id) use (&$statusfromOptions) {
    //         $statusfromOptions[$status_id->id] = $status_id->status_type;
    //     });

    //     return $statusfromOptions;
    // }
}