class RemoveDefaultsFromInsurances < ActiveRecord::Migration[5.2]
  def change
    change_column_default :insurances, :delivery_affects_natural_reserves, nil
    change_column_default :insurances, :delivery_affects_indigenous_people, nil
    change_column_default :insurances, :delivery_affects_cultural_heritage, nil
    change_column_default :insurances, :delivery_affects_other, nil
    change_column_default :insurances, :are_secondhand_goods_delivered, nil
    change_column_default :insurances, :is_contract_already_signed_between_parties, nil
    change_column_default :insurances, :has_special_contract_structure, nil
    change_column_default :insurances, :is_interest_charged_to_importer, nil
    change_column_default :insurances, :is_price_adjustment_clause_with_importer, nil
    change_column_default :insurances, :is_good_sent_in_multiple_deliveries, nil
    change_column_default :insurances, :is_delivered_part_of_consortium_with_other_companies, nil
    change_column_default :insurances, :accept_partial_refinancing, nil
    change_column_default :insurances, :is_investment_good, nil
    change_column_default :insurances, :is_servicing_for_goods_offered, nil
    change_column_default :insurances, :has_german_certificate_of_origin, nil
    change_column_default :insurances, :is_security_present_for_transaction, nil
    change_column_default :insurances, :is_shipment_address, nil
    change_column_default :insurances, :has_significant_influence_on_importer_management, nil
    change_column_default :insurances, :has_payment_experience_with_importer, nil
    change_column_default :insurances, :has_previously_used_hermes_cover, nil
    change_column_default :insurances, :does_corruption_declaration_apply, nil
    change_column_default :insurances, :has_agreed_payment_term_already, nil
    change_column_default :insurances, :has_read_privacy_policy, nil
    change_column_default :insurances, :has_read_all_instructions, nil
    change_column_default :insurances, :payment_term_short, nil
    change_column_default :insurances, :payment_term_mid, nil
    change_column_default :insurances, :payment_term_both, nil
    change_column_default :insurances, :exporter_external_rating_available, nil
    change_column_default :insurances, :importer_external_rating_available, nil
    change_column_default :insurances, :is_delivered_at_this_address, nil
    change_column_default :insurances, :is_exporting_to_private_sector, nil
    change_column_default :insurances, :is_company_controlled_by_mother_company, nil
    change_column_default :insurances, :exporter_offers_servicing_for_goods, nil
    change_column_default :insurances, :are_goods_overhauled, nil
    change_column_default :insurances, :does_corruption_declaration_appy, nil
    change_column_default :insurances, :is_export_licence_needed, nil
    change_column_default :insurances, :has_accepted_terms_conditions, nil
  end
end
