<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatustoRule extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_statusto_rule', function($table)
        {
            $table->increments('id')->unsigned(false)->change();
            $table->renameColumn('status_id', 'status_from_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_statusto_rule', function($table)
        {
            $table->increments('id')->unsigned()->change();
            $table->renameColumn('status_from_id', 'status_id');
        });
    }
}
