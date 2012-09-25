CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'MyToolbar';
 
	config.toolbar_MyToolbar =
	[
	    { name: 'tools',       items : [ 'Maximize', 'ShowBlocks' ] },
	    { name: 'clipboard',   items : [ 'Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
	    { name: 'basicstyles', items : [ 'Bold','Italic','Underline','Strike','Subscript','Superscript','-','RemoveFormat' ] },
	    { name: 'paragraph',   items : [ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock' ] },
	    { name: 'links',       items : [ 'Link','Unlink'] },
	    { name: 'insert',      items : [ 'Image','Flash','Table','HorizontalRule','Smiley','SpecialChar' ] },
	    { name: 'styles',      items : [ 'FontSize' ] }
	];
};
