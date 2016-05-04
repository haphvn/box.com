<?php
/**
 * @reviewed_by thang.pham
 * @reviewed_date 2013-07-09
 */
?>
<?php if (count($devices_links)):?>
<div class="content bg-gray avail_device v320">
  <div class="shadow-top">
    <?php echo $description?>
    <ul>
      <?php echo implode("\n", $devices_links)?>
    </ul>
  </div>
</div>
<div class="content bg-gray avail_device v720">
  <div class="shadow-top">
    <?php echo $description?>
    <ul class="clearfix">
      <?php echo implode("\n", $devices_links)?>
    </ul>
  </div>
</div>
<?php endif?>