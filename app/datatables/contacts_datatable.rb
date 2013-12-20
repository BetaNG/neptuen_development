# coding: utf-8
class ContactsDatatable
  delegate :params, :h, :link_to, :number_to_currency, to: :@view
  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Contact.count,
      iTotalDisplayRecords: contacts.total_entries,
      aaData: data
    }
  end

  private

  def data
    contacts.map do |contact|
      [
        link_to(contact.name, contact),
        contact.client.name,
        contact.department,
        contact.duty,
        contact.mobile
      ]
    end
  end

  def contacts
    @contacts ||= fetch_contacts
  end

  def fetch_contacts
    contacts = Contact.order("#{sort_column} #{sort_direction}")
    contacts = contacts.page(page).per_page(per_page)
    if params[:sSearch].present?
      contacts = contacts.where("name like :search", search: "%#{params[:sSearch]}%")
    end
    contacts
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[name]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end