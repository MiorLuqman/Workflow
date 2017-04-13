<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatusrule extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_statusrule', function($table)
        {
            $table->dropColumn('user_group_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_statusrule', function($table)
        {
            $table->integer('user_group_id');
        });
    }
}
