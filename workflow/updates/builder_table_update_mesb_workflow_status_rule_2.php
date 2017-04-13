<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatusRule2 extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->renameColumn('status_id', 'statusfrom_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->renameColumn('statusfrom_id', 'status_id');
        });
    }
}
