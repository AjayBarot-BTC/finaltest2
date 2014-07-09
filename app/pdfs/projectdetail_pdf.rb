class ProjectdetailPdf < Prawn::Document
def initialize(projectdetail, view)
	super(top_margin: 70)
	@projectdetail = projectdetail
	@view = view
	proj_name
	def proj_name
		text "Project Name \##{@projectdetail.proj_name}", size: 30, style: :bold
	end
end
end