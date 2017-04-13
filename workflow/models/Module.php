<?php namespace Mesb\Workflow\Models;

use Model;
use Mesb\Workflow\Models\StatusRule;

/**
 * Model
 */
class Module extends Model
{
    use \October\Rain\Database\Traits\Validation;

    /*
     * Validation
     */
    public $rules = [
    ];


    public $belongsToMany =[
        'rule' => ['Mesb\Workflow\Models\StatusRule', 
        'table' => 'mesb_workflow_rule_workflow',
        'key' => 'module_id',
        'otherKey' => 'rule_id'
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
    public $table = 'mesb_workflow_module';

    public function getRuleIdOptions()
    {
       
        $rules = StatusRule::all(['id', 'id']);
        $rulesOptions = [];

        $rules->each(function($rule) use (&$rulesOptions) {
            $rulesOptions[$rule->id] = $rule->id;
        });

        //var_dump($statusesOptions);
        //var_dump($statuses);

        return $rulesOptions;
    }
}