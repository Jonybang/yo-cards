class DictionariesController < InheritsController

  private

  def dictionary_params
    params.require(:dictionary).permit!
    #params.require(:contact).permit(:name, :contact_data_id, :socnet_links_id, :organization_id, :skills_id, :workpost_id, :industries_id, :equips_id, :intellect_properties_id, :team_projects_id, :chief_projects_id, :expert_projects_id, :member_events_id, :project_tasks_id)
  end
  def get_collection
    @with_words = params[:with_words]
    @with_pairs = params[:with_pairs]
    @collection = Dictionary.all
  end
end