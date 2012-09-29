class SoloistScriptsController < InheritedResources::Base
  actions :new, :create, :show
  respond_to :sh, :only => [:show]

  before_filter :load_recipe_groups, :only => [:new, :create]
  before_filter :build_soloist_script_with_default_recipes, :only => [:new]

  def create
    create!(:notice => "SoloWizard has successfully created your Soloist script. Ooooh-aaaah...")
  end

  private

  def resource
    @soloist_script = SoloistScript.find_by_uid!(params[:id])
  end
end