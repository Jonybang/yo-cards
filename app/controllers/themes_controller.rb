class ThemesController < InheritsController

  private

  def theme_params
    params.require(:theme).permit!
    #params.require(:contact).permit(:name, :contact_data_id, :socnet_links_id, :organization_id, :skills_id, :workpost_id, :industries_id, :equips_id, :intellect_properties_id, :team_projects_id, :chief_projects_id, :expert_projects_id, :member_events_id, :project_tasks_id)
  end
  def get_collection
    @with_pictures = params[:with_pictures]
    @collection = Theme.all
  end
end