<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatusRule extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->integer('group_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->dropColumn('group_id');
        });
    }
}
