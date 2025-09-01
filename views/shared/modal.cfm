<cfoutput>
<div class="modal fade" id="pageDeleteModal" data-coreui-backdrop="static" data-coreui-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="pageDeleteModalLabel">Page</h5>
        <button type="button" class="btn-close" data-coreui-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="modal_body">
          Please click confirm to delete selected page.
      </div>
      <input type="hidden" id="pageid" name="pageid" value=""/>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-coreui-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="pagemodalConfirm">Confirm</button>
      </div>
    </div>
  </div>
</div>
</cfoutput>