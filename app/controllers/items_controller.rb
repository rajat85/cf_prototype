class ItemsController < ApplicationController
  before_action :populate_items

  def index
  	respond_to do |format|
  		format.json { render :json => @items }
  	end	
  end

  private

  def populate_items
  	@items ||= [
  		{
  			:desc => "Sentiment Analysis",
  			:image_name => "/assets/use_case_senti_analysis_2x.png"
  		},
  		{
  			:desc => "Search Relevance Tuning",
  			:image_name => "/assets/use_case_search_rel_2x.png"
  		},
  		{
  			:desc => "Data Categorization",
  			:image_name => "/assets/use_case_data_cat_2x.png"
  		},
  		{
  			:desc => "Business Data Enrichment",
  			:image_name => "/assets/use_case_biz_data_enrich_2x.png"
  		},
  		{
  			:desc => "Metadata Creation",
  			:image_name => "/assets/use_case_metadata_creation_2x.png"
  		},
  		{
  			:desc => "Image Annotation",
  			:image_name => "/assets/use_case_image_annotation_2x.png"
  		},
  		{
  			:desc => "Transcription",
  			:image_name => "/assets/use_case_transcription_2x.png"
  		},
  		{
  			:desc => "Duplication",
  			:image_name => "/assets/use_case_de_duplication_2x.png"
  		},
  		{
  			:desc => "Content Moderation",
  			:image_name => "/assets/use_case_content_moderation_2x.png"
  		},
  		{
  			:desc => "Start From Scratch",
  			:image_name => "/assets/use_case_start_from_scratch_2x.png"
  		}
  	]
  end
  
end
