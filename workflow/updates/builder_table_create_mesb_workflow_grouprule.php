<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMesbWorkflowGrouprule extends Migration
{
    public function up()
    {
        Schema::create('mesb_workflow_grouprule', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('status_from_id');
            $table->integer('user_group_id');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('mesb_workflow_grouprule');
    }
}
