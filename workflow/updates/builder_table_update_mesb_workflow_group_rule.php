<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowGroupRule extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_group_rule', function($table)
        {
            $table->renameColumn('status_rule_id', 'status_from_to_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_group_rule', function($table)
        {
            $table->renameColumn('status_from_to_id', 'status_rule_id');
        });
    }
}
