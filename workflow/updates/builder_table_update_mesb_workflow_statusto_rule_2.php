<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatustoRule2 extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_statusto_rule', function($table)
        {
            $table->integer('user_id');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_statusto_rule', function($table)
        {
            $table->dropColumn('user_id');
        });
    }
}
