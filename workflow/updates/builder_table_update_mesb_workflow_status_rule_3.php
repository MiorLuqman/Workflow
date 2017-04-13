<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateMesbWorkflowStatusRule3 extends Migration
{
    public function up()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->text('display_rule');
        });
    }
    
    public function down()
    {
        Schema::table('mesb_workflow_status_rule', function($table)
        {
            $table->dropColumn('display_rule');
        });
    }
}
