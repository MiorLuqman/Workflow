<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMesbWorkflowGroupRule extends Migration
{
    public function up()
    {
        Schema::create('mesb_workflow_group_rule', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('status_rule_id');
            $table->integer('user_group_id');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('mesb_workflow_group_rule');
    }
}
