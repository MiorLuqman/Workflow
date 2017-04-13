<?php namespace Mesb\Workflow\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableCreateMesbWorkflowStatusRule extends Migration
{
    public function up()
    {
        Schema::create('mesb_workflow_status_rule', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('status_id');
            $table->integer('statusto_id');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('mesb_workflow_status_rule');
    }
}
