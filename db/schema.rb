# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 0) do
  create_table "academia_file", primary_key: "file_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "file_name", limit: 256, null: false
    t.string "file_location", limit: 512, null: false
    t.date "update_date", null: false
    t.integer "update_user_id", null: false
    t.string "file_description"
    t.integer "group_id"
  end

  create_table "academia_file_guest", primary_key: "file_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "file_name", limit: 256, null: false
    t.string "file_location", limit: 512, null: false
    t.date "update_date", null: false
    t.integer "update_user_id", null: false
    t.string "file_description"
    t.integer "group_id"
  end

  create_table "academic_year", primary_key: "academic_year_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "academic_year", limit: 128, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.string "description"
    t.integer "sequence", default: 0
  end

  create_table "address", primary_key: "address_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "address_type", comment: "1- permanent, 2- local, 3- Guardian"
    t.string "address", limit: 512
    t.string "city", limit: 256
    t.string "state", limit: 256
    t.string "country", limit: 256
    t.string "pincode", limit: 20
    t.integer "nationality", default: 0
    t.string "district", limit: 45
    t.index ["user_id"], name: "user_id"
  end

  create_table "admission_academic_degree_category", id: false, charset: "utf8", force: :cascade do |t|
    t.string "academic_degree_name", limit: 256
    t.integer "academic_degree_type", comment: "1:professional,0:non-professional"
  end

  create_table "admission_academic_details", primary_key: "academic_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.string "exam_name", limit: 256
    t.string "university_name", limit: 256
    t.string "year_of_passing", limit: 256
    t.float "aggregate_percentage", limit: 53
    t.string "division", limit: 20
    t.date "update_date"
    t.date "update_by"
  end

  create_table "admission_academic_info", primary_key: "education_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "admission_id", default: 0
    t.integer "examination_id", default: 0
    t.float "total_marks", limit: 53, default: 0.0
    t.string "grades"
    t.string "university"
    t.string "institute"
    t.integer "year", default: 0
    t.float "marks_obtained", limit: 53, default: 0.0
    t.string "isLatest", limit: 45, default: "0"
    t.string "exam_identification_no"
    t.string "roll_number", limit: 45
    t.string "address"
    t.string "reg_no", limit: 45
    t.string "marking_scheme", limit: 45
    t.string "stream_or_discipline", limit: 45
  end

  create_table "admission_additional_information", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.string "qualifying_class", limit: 55
    t.string "roll_no", limit: 55
    t.string "class", limit: 55
    t.string "passing_year", limit: 55
    t.string "percent", limit: 55
    t.string "board", limit: 55
    t.string "school_level", limit: 55
    t.string "state_level", limit: 55
    t.string "national_level", limit: 55
    t.string "international_level", limit: 55
    t.string "volunteer_activities", limit: 55
    t.string "company_name", limit: 55
    t.date "from_date"
    t.date "to_date"
    t.string "flag", limit: 55
  end

  create_table "admission_address_info", primary_key: "address_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.integer "address_type", comment: "1-Permanent,2-For admission related communication"
    t.string "address", limit: 512
    t.string "city", limit: 256
    t.string "state", limit: 256
    t.integer "pincode"
  end

  create_table "admission_application", primary_key: "candidate_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "exam_center_id"
    t.integer "entrance_exam_id"
    t.string "candidate_name", limit: 55
    t.date "birth_date"
    t.integer "gender", comment: "\"1\" for male and \"2\" for female"
    t.integer "nationality", comment: "\"1\" for indian and \"2\" for others"
    t.integer "religion", comment: "\"1\" Hindu, \"2\" Christian, \"3\" Muslim, \"4 others\""
    t.integer "community", comment: "1 General, 2 OBC, 3 SC, 4 ST"
    t.integer "mother_tongue"
    t.integer "state_id"
    t.integer "academic_group", comment: "1 MPC, 2 MBIPC, 3 BIPC"
    t.string "blood_group", limit: 15
    t.string "candidate_full_name", limit: 55
    t.string "son_of", limit: 55
    t.string "door_no", limit: 55
    t.string "town", limit: 55
    t.string "district", limit: 55
    t.string "std_code", limit: 15
    t.string "telephone_no", limit: 25
    t.string "email_id", limit: 55
    t.string "photo"
    t.string "parent_name", limit: 55
    t.integer "relationship_with_person", comment: "1 Father, 2 Mother, 3 Guardian"
    t.integer "parent_occupation", comment: "1 agriculture, 2 Business, 3 defence, 4 govt. service, 5 private service, 6 others"
    t.integer "sports", comment: "1 State, 2 National, 3 International"
    t.integer "ncc_certificate", comment: "1 A, 2 B, 3 C"
    t.integer "cultural", comment: "1 State, 2 National, 3 international"
    t.string "mobile_no", limit: 55
    t.integer "mode_of_study"
    t.integer "medium_of_study"
    t.integer "annual_income_parent", comment: "'1' below 1 lac, '2' 1 to 3 lac, '3' 3 to 5 lac, '4' Above 5 lac"
    t.float "percentage_pre_exam", limit: 53
    t.integer "hostel_accomodation"
    t.string "music"
    t.string "dramatics"
    t.string "dance"
    t.string "singing"
    t.string "essay_writing"
    t.string "drwaing"
    t.string "other_awards"
    t.integer "repute_bodies_id"
    t.string "repute_bodies"
    t.string "scientific_events_desc"
    t.string "games_desc"
    t.string "information_source"
    t.string "reason_for_join"
    t.string "hobbies"
    t.string "branch_choice1", limit: 55
    t.string "branch_choice2", limit: 55
    t.string "branch_choice3", limit: 55
    t.string "branch_choice4", limit: 55
    t.integer "check_list1"
    t.integer "check_list2"
    t.integer "check_list3"
    t.integer "country_id"
    t.string "application_no", limit: 55
    t.string "other_specify"
    t.date "application_date"
    t.text "address"
  end

  create_table "admission_application_bank_detail", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "bank_name", null: false
    t.string "branks_name", null: false
    t.string "account_no", null: false
    t.string "ifsc_code", null: false
    t.string "active_flag", default: "Y"
  end

  create_table "admission_cancel_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "degree_id", null: false
    t.date "cancel_date"
    t.text "remarks"
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "admission_contact_info", primary_key: "contact_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.string "phone_number", limit: 25
    t.integer "number_type", comment: "1-Phone No,2-Cell No"
    t.integer "contact_category", comment: "1-Permanent,2-For admission related communication"
  end

  create_table "admission_entrance_exam_info", primary_key: "entrance_exam_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "entrance_exam_name", limit: 256
    t.float "minimum_score", limit: 53
  end

  create_table "admission_exam_marking", id: false, charset: "utf8", force: :cascade do |t|
    t.string "registration_year", limit: 50
    t.string "degree_name", limit: 50
    t.string "type", limit: 50, comment: "0:non-professional,1:professional,2-working"
    t.integer "input_value_min"
    t.integer "input_value_max"
    t.float "weight", limit: 53
  end

  create_table "admission_fee_detail_info", primary_key: "fee_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.string "dd_number", limit: 25
    t.date "dd_date"
    t.string "drawee_bank", limit: 256
    t.string "status", limit: 30, comment: "1-sent to bank,2-clear"
    t.string "updated_by"
    t.date "transaction_date"
    t.float "amount", limit: 53
    t.integer "payment_mode", comment: "1-Cash,2-DD"
  end

  create_table "admission_score_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.string "group_name", limit: 256
    t.float "gd_marks", limit: 53
    t.float "pi_marks", limit: 53
    t.date "gd_date"
    t.date "pi_date"
    t.integer "gd_status"
    t.integer "pi_status"
    t.integer "degree_id"
    t.integer "registration_year"
  end

  create_table "admission_student_file", primary_key: "file_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "file_name", limit: 256, null: false
    t.string "file_location", limit: 512, null: false
    t.date "update_date", null: false
    t.integer "student_code_no", null: false
    t.string "file_description"
  end

  create_table "admission_student_status", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.integer "student_status", comment: "0: Panding Student, 1: Selected, 2: Intrested,3 :Not Intrested, 4:Rejected "
  end

  create_table "admission_work_experience", primary_key: "exp_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_code_no", null: false
    t.string "organisation_name", limit: 256
    t.string "designation", limit: 256
    t.date "from_date"
    t.date "to_date"
    t.date "update_date"
    t.date "update_by"
  end

  create_table "affiliation_bodies", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.string "univercity_name", limit: 256
    t.string "univercity_short_name", limit: 256
    t.string "address1", limit: 256
    t.string "address2", limit: 256
    t.string "city", limit: 100
    t.string "state", limit: 100
    t.string "zip_code", limit: 50
    t.string "fax", limit: 50
    t.string "phone", limit: 50
    t.string "email", limit: 100
    t.string "url", limit: 100
    t.string "logo", limit: 256
    t.string "contact_person", limit: 256
    t.integer "univ_type"
    t.string "remarks", limit: 256
    t.string "promoting_society", limit: 256, comment: "Managing/Promoting Society"
    t.string "ugc_letter_no", limit: 256, comment: "UGC Letter No."
    t.date "date_of_approval", comment: "Date Of Approval"
  end

  create_table "amc_details", primary_key: "amc_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "amc_id", null: false
    t.integer "item_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "amc_frequency", default: 0, null: false
  end

  create_table "amc_item_serials", primary_key: "amc_item_serial_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "amc_detail_id", null: false
    t.integer "item_serial_no_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "amc_records", primary_key: "amc_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "amc_no", null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.integer "vendor_id", null: false
    t.float "amount", limit: 53, null: false
    t.string "ip", limit: 15, null: false
    t.integer "parent_id", default: 0, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "renewal_flag", "enum('Y','N')", default: "N", null: false
    t.index ["amc_no"], name: "amc_no", unique: true
  end

  create_table "announcement_master", primary_key: "announcement_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "announcement_title"
    t.text "announcement_description", size: :long
    t.date "publish_date", null: false
    t.date "expiry_date", null: false
    t.integer "priority", limit: 2, null: false, comment: "1-low,2-midum,3-high"
    t.integer "hostel_id", null: false
    t.integer "college_id", null: false
    t.integer "created_by", null: false
  end

  create_table "announcement_user_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "announcement_id", null: false
    t.string "user_type", limit: 50, null: false
  end

  create_table "application_addressinfo", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "application_id", null: false
    t.integer "address_type", default: 0
    t.integer "country_id", default: 0
    t.integer "state_Id", default: 0
    t.integer "city_id", default: 0
    t.integer "nationality_id", default: 0
    t.text "address", size: :medium
    t.string "pincode", limit: 10, default: "0"
    t.string "district", limit: 45
    t.index ["application_id"], name: "appId"
  end

  create_table "application_student_academicinfo", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "application_id", default: 0
    t.integer "examination_id", default: 0
    t.float "total_marks", limit: 53, default: 0.0
    t.float "marks_obtained", limit: 53, default: 0.0
    t.string "grades", limit: 128
    t.string "university", limit: 128
    t.string "institute", limit: 256
    t.integer "year", default: 0
    t.string "isLatest", limit: 45, default: "0"
    t.string "roll_number", limit: 256
    t.string "address"
    t.string "reg_no", limit: 45
    t.string "marking_scheme", limit: 45
    t.string "stream_or_discipline", limit: 45
    t.index ["application_id"], name: "appId1"
  end

  create_table "application_studentinfo", primary_key: "application_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_id", default: 0, null: false
    t.string "application_no", limit: 128
    t.integer "is_fee_applicable", default: 0
    t.string "fee_waiveoff_reason"
    t.integer "payment_mode", default: 0
    t.string "first_name", limit: 256
    t.string "second_name", limit: 256
    t.string "third_name", limit: 256
    t.string "fourth_name", limit: 256
    t.string "tribe_family_name", limit: 256
    t.string "display_name", limit: 256
    t.date "application_date"
    t.date "date_of_birth"
    t.integer "gender_id", default: 0
    t.string "category", limit: 20
    t.string "landline_no", limit: 25
    t.string "mobile_no", limit: 25
    t.string "email_id", limit: 50
    t.string "college_id", null: false
    t.string "program_id", null: false
    t.integer "is_document_verify", default: 0
    t.string "father_name", limit: 256
    t.string "mother_name", limit: 256
    t.string "gurdian_name", limit: 256
    t.string "parent_occupation", limit: 256
    t.string "parent_mobileno", limit: 25
    t.string "photo", limit: 256
    t.integer "email_template_id", default: 0
    t.integer "sms_template_id", default: 0
    t.integer "relativeId1", default: 0
    t.integer "relativeId2", default: 0
    t.integer "relativeId3", default: 0
    t.integer "relation1", default: 0
    t.integer "relation2", default: 0
    t.integer "relation3", default: 0
    t.string "domicile", limit: 250
    t.integer "disability", default: 0
    t.integer "religion", default: 0
    t.string "passport_num", limit: 250
    t.string "passport_issue_place", limit: 250
    t.date "date_of_issue"
    t.date "date_of_expiry"
    t.string "id_card_number", limit: 250
    t.string "card_place_issue", limit: 250
    t.integer "accomodation_type", default: 0
    t.string "alias"
    t.integer "application_count"
    t.integer "application_year"
    t.date "expire_date"
    t.integer "marital_status", default: 0
    t.float "sponsor_discount", limit: 53, default: 0.0
    t.string "sponsor_remarks", limit: 250
    t.integer "sponsorship_id", default: 0, comment: "1-private 2-sponsor"
    t.integer "sponsorship_type", default: 0, comment: "1-private sector 2-govt sector 3-others"
    t.string "aadhar_card_number", limit: 250
    t.string "aadhar_issue_place", limit: 250
    t.string "aadhar_issue_date", limit: 250
    t.string "pan_number", limit: 45
    t.string "father_pan_number", limit: 45
    t.string "mother_pan_number", limit: 45
    t.string "place_of_birth"
    t.string "father_annual_income"
    t.string "admission_type"
    t.integer "medium", default: 0
    t.integer "hostel_accommodation", default: 0
    t.integer "transport_accommodation", default: 0
    t.integer "guardian_relationship", default: 0
    t.string "guardian_telephone", limit: 45
    t.string "guardian_mobile", limit: 45
    t.string "emergency_person_name"
    t.integer "emergency_person_relationship", default: 0
    t.string "emergency_person_telephone", limit: 45
    t.string "emergency_person_mobile", limit: 45
    t.integer "application_type", default: 0
    t.column "selection_status", "enum('Y','N')", default: "N"
    t.string "selected_degree_id", limit: 45, default: "0"
    t.integer "application_entered_by", default: 0
    t.string "age_on_admissiondate"
    t.integer "updated_by_user"
    t.string "updated_date"
    t.string "ip"
    t.integer "department_id", default: 0
    t.integer "intake_id", default: 0
    t.integer "voucher_unique_no", default: 0
    t.integer "mother_tongue", default: 0
    t.text "other_details"
    t.integer "caste", default: 0
    t.integer "bank_id", default: 0
    t.integer "coordinator_id", default: 0
    t.integer "program_type", default: 0
    t.integer "referral_id", default: 0
    t.string "referral_name"
    t.integer "area_type", default: 0
    t.string "minority_status"
    t.string "specialisation"
    t.string "major_subject", limit: 100
    t.string "minor_subject1", limit: 100
    t.string "minor_subject2", limit: 100
    t.string "bloodGroup", limit: 100
    t.integer "isDifferentAbled", limit: 1, default: 0, comment: "1 - yes, 0 - no"
    t.integer "isBelongToMinority", limit: 1, default: 0
    t.integer "nature_df_deformity_id", default: 0
    t.integer "minority_type_id", default: 0
    t.string "father_email_address", limit: 100
    t.string "father_designation", limit: 100
    t.string "mother_mobile", limit: 45
    t.string "mother_email", limit: 100
    t.string "mother_occupation", limit: 100
    t.string "mother_designation", limit: 100
    t.date "declaration_date"
    t.float "amount", limit: 53
    t.string "transaction_id", limit: 45
    t.date "payment_date"
    t.string "payment_mode_test", limit: 45
    t.index ["application_no"], name: "app_no", unique: true
  end

  create_table "application_studentinfo_official_details", primary_key: "application_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "application_id"
    t.date "date"
    t.string "receipt_number"
    t.date "application_receiving_date"
    t.date "admission_date"
    t.float "fee_concession_percent", limit: 53
    t.text "remark", size: :medium
    t.integer "place_id", default: 0
    t.integer "exam_id", default: 0
    t.integer "college_id", default: 0
    t.integer "degree_id", default: 0
  end

  create_table "approval_escalation_days", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "level", null: false
    t.integer "escalation_days", default: 0
  end

  create_table "asset_reservations", primary_key: "asset_reservation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "cost_center_id"
    t.string "description"
    t.date "from_date"
    t.date "to_date"
    t.time "from_time"
    t.time "to_time"
    t.integer "reservation_status", default: 0, comment: "1:Approve,2:Declined,3:Hold,4:Pending Or New Requisition,5:Under purchase"
    t.date "approved_from_date"
    t.date "approved_to_date"
    t.time "approved_from_time"
    t.time "approved_to_time"
    t.text "approval_remark"
    t.integer "approved_by_user_id"
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "assignment", primary_key: "assignment_id", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.string "title", limit: 80, null: false
    t.text "description", size: :medium
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "file_name", limit: 512
    t.integer "assignment_type_id", comment: "from Dropdown"
    t.integer "submission_type", default: 0, null: false, comment: "0-offline, 1-online"
    t.integer "group_type", comment: "0-individaul assign,1-one assign for one grp"
    t.integer "total_marks", default: 0, null: false, unsigned: true
    t.integer "course_id", default: 0, null: false, unsigned: true
    t.integer "degree_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.date "created_on", null: false
    t.datetime "last_modified_date", precision: nil
    t.integer "created_by", null: false
    t.string "ip"
  end

  create_table "assignment_grade", primary_key: ["assignment_grade_id", "student_id", "assignment_id"], charset: "utf8", force: :cascade do |t|
    t.integer "assignment_grade_id", null: false, auto_increment: true
    t.integer "group_no", default: 0, null: false
    t.integer "student_id", default: 0, null: false, unsigned: true
    t.integer "assignment_id", default: 0, null: false, unsigned: true
    t.text "description", size: :medium
    t.string "file_name"
    t.integer "attempt", limit: 1, default: 0, null: false
    t.integer "grade", default: -1, null: false
    t.string "remark"
    t.integer "graded_by"
    t.date "submission_date", comment: "submission_date"
    t.datetime "last_modified_date", precision: nil
    t.string "ip"
  end

  create_table "attendace_mark_schema", primary_key: "attendace_mark_schema_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "group_name", null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip"
  end

  create_table "attendace_mark_schema_info", primary_key: "attendace_mark_schema_group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.float "min_marks", limit: 53, null: false
    t.float "max_marks", limit: 53, null: false
    t.float "marks", limit: 53, null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip", null: false
    t.integer "attendace_mark_schema_id"
  end

  create_table "attendance_log", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "machine_id"
    t.integer "user_id"
    t.datetime "log_date", precision: nil
    t.integer "device_log_id", default: 0
    t.integer "attendance_status", default: 1
    t.integer "attendance_calculate", default: 0
    t.index ["log_date"], name: "attendance_log_indx2"
    t.index ["user_id"], name: "attendance_log_indx1"
  end

  create_table "attendance_machine_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "machine_id", null: false
    t.string "machine_name", null: false
    t.string "machine_ip", null: false
    t.string "description"
    t.integer "room"
    t.index ["machine_id"], name: "machine_id", unique: true
  end

  create_table "attendance_master", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "attendance_type"
    t.string "description"
    t.integer "present_flag", default: 0, comment: "0-count present 1-count  Absent"
  end

  create_table "attendance_session_info", primary_key: "session_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "section_id"
    t.integer "room_id"
    t.date "session_date"
    t.datetime "start_time", precision: nil
    t.datetime "end_time", precision: nil
    t.integer "start_time_tolerance"
    t.integer "end_time_tolerance"
    t.integer "session_number"
    t.integer "faculty_id"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "attendance_head", "enum('N','Y')", default: "N"
    t.integer "title_id", default: 0
    t.string "remark", limit: 256
    t.string "remark1", limit: 256
    t.index ["section_id"], name: "attendance_session_indx1"
    t.index ["session_date"], name: "attendance_session_indx2"
  end

  create_table "averall_grade_schema_program_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "degree_id", null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip"
    t.integer "exam_id", null: false
  end

  create_table "bed_allocation", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bed_id", null: false
    t.date "reservation_date"
    t.date "from_date", null: false
    t.date "to_date"
    t.integer "transaction_id"
    t.integer "status", default: 0, comment: "0: vacant ,1 : occupied ,2: approved, 3:fee_defined"
    t.date "arrival_date"
    t.date "departure_date"
    t.string "user_type"
    t.date "deallocation_date"
    t.text "comment"
  end

  create_table "book_details", primary_key: "book_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "book_name", limit: 128, null: false
    t.string "author_name", limit: 128
    t.string "edition", limit: 128
    t.string "isbn_number", limit: 128
    t.string "price", limit: 20
    t.integer "no_of_copies", null: false
    t.string "book_category", limit: 256
    t.string "publication_house", limit: 256
    t.string "publication_year", limit: 20
    t.string "publication_place", limit: 128
    t.string "currency_type", limit: 128
    t.string "page_number", limit: 128
    t.string "bill_number", limit: 128
    t.string "book_language", limit: 128
    t.string "keywords", limit: 256
    t.string "book_location", limit: 128
  end

  create_table "building_room", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name_no", limit: 128, null: false
    t.integer "parent_id", default: 0, null: false, comment: "0: Building , 1: Room"
    t.string "description", limit: 512
  end

  create_table "bundle_file_name", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "file_path", null: false
    t.string "file_name", null: false
    t.string "file_module", null: false
    t.string "relative_path"
  end

  create_table "bus_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "bus_no", limit: 128
    t.integer "capacity"
    t.string "driver_name", limit: 128
    t.string "conductor_name", limit: 128
  end

  create_table "bus_route_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "bus_no", limit: 128
    t.integer "route_id", null: false
    t.integer "stop_id"
    t.string "no_of_users", limit: 128
  end

  create_table "business_ideas", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "member_id", default: 0, null: false
    t.string "idea_name"
    t.string "idea_presented"
    t.text "other_details"
    t.integer "idea_belong_to", default: 0, null: false
    t.string "proto_type"
    t.string "mentoring_idea"
    t.string "ip"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "updated_by", default: 0, null: false
    t.integer "unique_idea_no", default: 0, null: false
    t.column "is_primary_member", "enum('Y','N')", default: "N", null: false
  end

  create_table "campaign_info", primary_key: "campaign_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "campaign_name", limit: 256
    t.string "campaign_type_id", limit: 256
    t.string "campaign_concernperson", limit: 128
    t.date "campaign_fromdate"
    t.date "campaign_todate"
  end

  create_table "candidate", primary_key: "candidate_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 256, null: false
    t.string "phone_number", limit: 15
    t.string "email", limit: 128
    t.string "attach_file", limit: 128
    t.text "note", size: :medium
    t.integer "status", default: 1, null: false, comment: "1: Active , 2: Archived, 3: Hired"
    t.date "date_of_birth"
    t.string "experience"
    t.float "current_ctc", limit: 53
    t.float "expected_ctc", limit: 53
    t.string "qualification"
    t.string "keywords"
    t.string "designation", limit: 128
    t.integer "department_id"
    t.string "father_name"
    t.string "photo", limit: 128
    t.integer "position", default: 0
  end

  create_table "candidate_center", primary_key: "candidate_center_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.integer "center_id", null: false
  end

  create_table "candidate_expense", primary_key: "expense_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "candidate_id", null: false
    t.integer "expense_type", null: false, comment: "1-interview expense , 2- joining expense"
    t.float "amount", limit: 53, null: false, unsigned: true
    t.string "attach", limit: 256
    t.date "expense_date", null: false
    t.text "discription", size: :tiny
  end

  create_table "caniddate_reference", primary_key: "reference_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "candidate_id"
    t.integer "employee_id", null: false
    t.integer "referense_type", null: false
    t.string "name", limit: 256, comment: "name of external referense person name"
    t.string "phone_number", limit: 20
    t.string "email_id", limit: 256
    t.text "description", size: :tiny
  end

  create_table "center_user_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "center_code", limit: 256
    t.integer "current_value"
    t.integer "user_type", comment: "1-student 2- Non Student"
  end

  create_table "certificate_fees", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "certificate_id", null: false
    t.integer "fees_head_id", null: false
    t.integer "amount", null: false
    t.index ["fees_head_id"], name: "fees_head_id"
  end

  create_table "certificate_issue", primary_key: "certificate_issue_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "certificate_id", null: false
    t.date "apply_date", null: false
    t.date "approve_date"
    t.date "issue_date"
    t.integer "status", default: 1, null: false, comment: "0: Unapproved , 1: Pending, 2: Approved , 3: Issued"
    t.integer "no_of_copies", default: 1, null: false
    t.text "request_comment", size: :medium
    t.text "action_comment", size: :medium
    t.integer "approved_by"
    t.integer "issued_by"
    t.index ["certificate_id"], name: "certificate_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "certificate_submit", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "certificate_id", null: false
    t.date "submit_date"
    t.date "handover_date"
    t.integer "certificate_type", comment: "1: submit at time of admission, 2: handover at the time of leaving, 3:both"
    t.integer "status", default: 0, null: false, comment: "0: not submitted, 1: submitted, 2: handover "
    t.string "recived_by", limit: 128
    t.text "comments", size: :medium
    t.string "handover_by", limit: 128
    t.index ["certificate_id"], name: "certificate_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "certificates", primary_key: "certificate_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "certificate_name", limit: 256, null: false
    t.text "certificate_content", size: :medium
    t.integer "certificate_type", null: false, comment: "1: certifcate_issue to student , 2: certificate_submitt by student , 3: Certificate Handover to Student , 4: Handover and Submitted both"
    t.integer "is_chargeble", default: 0, null: false, comment: "0: not chargeble , 1: chargeble"
    t.integer "is_no_dues_required", default: 0, null: false, comment: "0: no, 1: yes"
    t.integer "auto_approve", default: 0, null: false, comment: "0: auto approve off , 1: auto approve on"
    t.integer "registration_year", default: -1, null: false, comment: "-1 for all registration year"
    t.integer "degree_id", default: -1, null: false, comment: "-1 for all degree, other wise specific degree"
  end

  create_table "challan_for_exam", primary_key: "application_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "degree_id"
    t.datetime "data_of_challan_genrated", precision: nil
    t.datetime "date_of_depoiste", precision: nil
    t.string "bank_name", limit: 50
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "ay_id"
    t.integer "semoryear_id"
    t.integer "term"
    t.integer "intake_id", default: 0
  end

  create_table "cheque_status", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "transaction_id", null: false
    t.string "reciept_number", limit: 50, null: false
    t.string "status", limit: 256, null: false
    t.string "bank_name", limit: 256, null: false
    t.date "clearance_date"
    t.date "bounce_date"
    t.text "bounce_reason", size: :tiny
  end

  create_table "child_adoption", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "detail"
    t.integer "child_id"
    t.date "create_date"
    t.text "admin_comment", size: :tiny
    t.date "update_date"
    t.integer "status", default: 0, comment: "0:pending, 1:approved, 2:unapproved"
    t.string "attachment"
  end

  create_table "city", primary_key: "city_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "city_name", limit: 40, null: false
    t.integer "state_id"
    t.string "city_short_name", limit: 15
    t.string "city_dialing_code", limit: 25
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", limit: 1, default: "Y", null: false
    t.index ["city_name"], name: "city_name", unique: true
  end

  create_table "city_india", id: false, charset: "utf8", force: :cascade do |t|
    t.string "id", null: false
    t.string "citiy_name", limit: 128
    t.string "state", limit: 128
  end

  create_table "college_degree", primary_key: "degree_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.string "degree_name", limit: 256, null: false
    t.float "degree_length", limit: 53
    t.integer "degree_nature", null: false, comment: "1- year, 2 - semester , 3- trisemester"
    t.integer "webguru_degree_id"
    t.integer "placement_degree_id"
    t.string "display_name"
    t.integer "degree_type"
    t.integer "degree_level"
    t.string "degree_code"
    t.integer "compulsary_courses"
    t.integer "cred_compul_cours"
    t.integer "no_of_optional_course"
    t.integer "credits_optional_course"
    t.string "degree_name_in_Arabic"
    t.string "specialization_id", limit: 10
    t.string "abbreviation", limit: 25
    t.integer "duration_unit_id"
    t.integer "offering_dept_id"
    t.string "branch_code"
    t.string "alias"
    t.float "degree_max_length", limit: 53
    t.column "is_admission_block", "enum('Y','N')", default: "N"
    t.index ["college_id"], name: "college_id"
  end

  create_table "college_info", primary_key: "college_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "college_name", limit: 512
    t.text "college_profile", size: :medium
    t.integer "hostal_facility", comment: "1- available , 0- unavailable"
    t.integer "bus_facility", comment: "1- available , 0- unavailable"
    t.string "center_code"
    t.string "phone_number"
    t.string "contact_person"
    t.string "center_address"
    t.string "center_location"
    t.string "email_id"
    t.string "header_name"
    t.integer "updated_by"
    t.string "updated_date", limit: 128
    t.integer "country_id"
    t.integer "state_id"
    t.integer "city_id"
    t.string "web"
    t.integer "university_id"
    t.string "abbreviation"
    t.string "fax"
    t.integer "currency_id", default: 1, null: false
    t.integer "sequence", default: 0
    t.string "canvas_image_name"
    t.string "ip", limit: 150
    t.string "show_online_application", limit: 45, default: "yes"
    t.string "watermark_image_location"
  end

  create_table "communication_setting", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id"
    t.string "email_username", limit: 70
    t.string "email_password", limit: 70
    t.string "smtp_server_name", limit: 70
    t.integer "smtp_port"
    t.string "sms_username", limit: 70
    t.string "sms_password", limit: 70
    t.text "sms_api", size: :medium
    t.integer "smtp_connection_type", default: 0
  end

  create_table "company", primary_key: "company_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "company_name", limit: 128, null: false, collation: "utf8_general_ci"
    t.string "address", limit: 512, collation: "utf8_general_ci"
    t.string "phone_number", limit: 15, collation: "utf8_general_ci"
    t.string "financial_year", limit: 15, collation: "utf8_general_ci"
  end

  create_table "company_info", primary_key: "company_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "company_name", limit: 256, null: false
    t.string "company_address", limit: 512, null: false
    t.string "company_contact"
    t.string "company_fax"
    t.string "company_website"
  end

  create_table "component_marking_scheme", id: false, charset: "utf8", force: :cascade do |t|
    t.string "grade", limit: 10, null: false
    t.integer "range_from", null: false
    t.integer "range_to", null: false
    t.float "points", limit: 53, null: false
  end

  create_table "conflict_table", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_section_id"
    t.integer "session"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.string "faculty_color"
    t.integer "title_id", default: 0
    t.integer "room_id"
    t.integer "set_id", default: 0
  end

  create_table "conflict_table_staging", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_section_id"
    t.integer "session"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.string "faculty_color"
    t.integer "title_id", default: 0
    t.integer "room_id"
    t.integer "set_id", default: 0
    t.string "time_table_day"
  end

  create_table "contract_history", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "pre_contract_start_date"
    t.string "pre_contract_end_date"
    t.date "update_date"
  end

  create_table "control_table", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.date "from_date"
    t.date "to_date"
    t.boolean "is_current"
    t.integer "intake_id"
    t.date "payment_from"
    t.date "payment_to"
    t.date "date_refund"
    t.date "date_discount"
    t.date "date_add_drop"
    t.index ["academic_year_id"], name: "academicYear"
    t.index ["degree_id"], name: "degree"
  end

  create_table "cost_center_dimensions", primary_key: "cost_center_dimension_id", id: :integer, charset: "utf8", comment: "InnoDB free: 11264 kB", force: :cascade do |t|
    t.integer "dimension_id", null: false
    t.integer "cost_center_id", null: false
    t.string "dimension_value", null: false
    t.column "sys_defined", "enum('Y','N')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "cost_centers", primary_key: "cost_center_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "dimension_set_id", null: false
    t.string "cost_center_name", null: false
    t.integer "sequance_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "is_rsrv_allowed", "enum('N','Y')", default: "N", null: false
    t.integer "class_type"
    t.integer "capacity"
    t.integer "exam_room_capacity", default: 0
    t.index ["cost_center_name"], name: "constCenterName", unique: true
  end

  create_table "costcenter_college_matrix", primary_key: "cost_center_college_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "cost_center_id", null: false
    t.integer "college_id", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "country", primary_key: "country_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "country_name", limit: 70, null: false
    t.string "country_dialing_code", limit: 10
    t.string "country_short_name", limit: 15
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", default: "Y", null: false
    t.string "nationality"
    t.string "currency_name", limit: 70
    t.string "symbol", limit: 70
    t.string "subdivision", limit: 70
    t.integer "multiplying_factor"
    t.string "time_zone", limit: 70
    t.float "average_exch_rate", limit: 53
    t.string "language", limit: 70
    t.index ["country_name"], name: "CountryName", unique: true
  end

  create_table "course", primary_key: "course_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "course_code", limit: 128, null: false
    t.string "course_name", limit: 256, null: false
    t.text "course_description", size: :medium
    t.float "course_credits", limit: 53, default: 1.0
    t.integer "college_id"
    t.integer "credit_points"
    t.string "tot_teaching_hrs", limit: 50
    t.float "course_fee", limit: 53
    t.string "abbreviation"
    t.string "display_name"
    t.integer "offering_dept_id"
    t.integer "internal_eval_method", comment: "Total internal Methods for course-Evaluation methods"
    t.integer "internal_eval_marks", comment: "Total internal Methods for course-Evaluation methods"
    t.integer "external_eval_method", comment: "Total external Methods for course-Evaluation methods"
    t.integer "external_eval_marks", comment: "Total external Marks for course-Evaluation methods"
    t.integer "planned_session", default: 0
    t.integer "permitted_leave", default: 0
    t.string "alias"
    t.string "course_code_display"
    t.string "course_file_location"
    t.integer "display_grade_marks_in_exam", default: 1
  end

  create_table "course_components", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "component", null: false
    t.string "display_name", limit: 55
    t.string "abbreviation", limit: 25
    t.index ["component"], name: "comp", unique: true
  end

  create_table "course_evaluation_component_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "course_id"
    t.integer "evaluation_component_id"
    t.integer "academic_year_id"
    t.integer "sem_id"
    t.float "max_mark", limit: 53
    t.float "weightage_per", limit: 53
    t.integer "duration_min"
    t.float "weightage_marks", limit: 53
    t.integer "occurences"
    t.integer "weightageScheme"
    t.integer "intake_id", default: 0
    t.integer "term", default: 0
    t.integer "department_id", default: 0
    t.integer "college_id", default: 0
    t.integer "degree_id", default: 0
  end

  create_table "course_grade_point_mapping", primary_key: "cgpm_id", id: { type: :integer, comment: "course grade point mapping" }, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "grade_id", null: false
    t.integer "course_id", null: false
    t.float "min_marks", limit: 53, null: false
    t.float "max_marks", limit: 53, null: false
    t.string "note"
    t.integer "user_id", null: false
    t.string "ip", limit: 80, null: false
    t.datetime "last_modified_date", precision: nil, null: false
  end

  create_table "course_marks", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", default: 0, null: false
    t.integer "course_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "mark_head_id", null: false
    t.integer "max_marks", null: false
    t.integer "min_marks", null: false
    t.integer "status", default: 0, null: false, comment: "0=pending review , 1 : released result"
    t.integer "year_or_sem", null: false
    t.integer "term", null: false
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["degree_id"], name: "degree_id"
    t.index ["mark_head_id"], name: "mark_head_id"
  end

  create_table "course_pre_requisits", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id"
    t.integer "course_id", null: false
    t.integer "pre_req_course_id"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "year_or_sem"
    t.integer "co_req_course_id"
    t.string "pre_req_grade_id", limit: 45
    t.string "detention_allow", limit: 45, default: "N", comment: "N-No,Y-Yes"
  end

  create_table "course_section", primary_key: "course_section_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "section_id", null: false
    t.integer "component_id", null: false
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "intake_id"
    t.integer "year_or_sem"
    t.integer "room_capacity", default: 0
    t.index ["academic_year_id"], name: "idx_coursec_acad_year"
    t.index ["course_id"], name: "idx_cour_sec_cid"
  end

  create_table "course_session_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "term", null: false
    t.date "enrollment_date"
    t.index ["term", "course_id"], name: "idx_course_session_mapping_comp"
  end

  create_table "customer_college_matrix", primary_key: "customer_college_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "college_id", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", limit: 1, default: "Y", null: false
  end

  create_table "customers", primary_key: "customer_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "customer_name", null: false
    t.string "address1", null: false
    t.string "address2", null: false
    t.integer "city_id", null: false
    t.string "zip_code", limit: 12, null: false
    t.string "phone", null: false
    t.string "fax", null: false
    t.string "email"
    t.string "url"
    t.string "remarks"
    t.string "logo"
    t.string "reg_no"
    t.string "vat_no"
    t.string "pan_no"
    t.string "tin_no"
    t.integer "credit_days", default: 0, null: false
    t.decimal "credit_limit_amount", precision: 12, scale: 2, default: "0.0", null: false
    t.decimal "standard_discount_percentage", precision: 6, scale: 2, default: "0.0", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N"
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "udf1"
    t.string "udf2"
    t.string "udf3"
    t.string "udf4"
    t.string "udf5"
    t.string "cst_no"
    t.string "alias"
    t.string "customer_code"
    t.index ["customer_name"], name: "vendorName", unique: true
  end

  create_table "database_health_checkup_tool", id: :integer, charset: "utf8", force: :cascade do |t|
    t.text "db_query", size: :long
    t.string "title"
    t.text "solution_query", size: :long
    t.text "fields_name_used_in_SolQuery", size: :long
    t.integer "isCountCheck", default: 0, comment: "0 for ids and 1 for count in select clause of query used in db_query field"
    t.string "active_flag", limit: 1, default: "Y"
    t.index ["title"], name: "U_INDEX", unique: true
  end

  create_table "define_medical_imbursement", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "financial_year_id"
    t.float "amount", limit: 53
    t.integer "emp_id"
  end

  create_table "deg_intake_masters", primary_key: "deg_intake_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "intake_id", null: false
    t.integer "degree_id", null: false
  end

  create_table "degree_affiliation", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.integer "univercity_id", null: false
    t.integer "college_id", null: false
    t.integer "degree_id", null: false
    t.string "reg_year", limit: 20
    t.date "from_date"
    t.date "to_date"
  end

  create_table "degree_certificate", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "certificate_id", null: false
    t.index ["certificate_id"], name: "certificate_id"
    t.index ["degree_id"], name: "degree_id"
  end

  create_table "degree_course", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "degree_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.integer "is_optional", default: 0, null: false, comment: "0: Compulsory,  1: optional"
    t.integer "intake_id"
    t.integer "course_coordinator_id"
    t.string "no_of_credits", limit: 25
    t.string "contact_hours", limit: 25
    t.index ["academic_year_id", "term", "course_id"], name: "idx_degree_course_comp"
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["degree_id"], name: "degree_id"
  end

  create_table "degree_entry_exit", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "college_id"
    t.integer "degree_id"
    t.integer "year"
    t.string "prerequisite_deg_ids"
    t.integer "exit_degree_id"
  end

  create_table "degree_fees", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "registration_year", null: false
    t.integer "year_or_sem", null: false
    t.string "category", limit: 128, null: false
    t.integer "fees_head_id", null: false
    t.float "amount", limit: 53, null: false
    t.date "due_date", null: false
    t.integer "bulk_transaction_id", null: false
    t.index ["degree_id"], name: "degree_id"
    t.index ["fees_head_id"], name: "fees_head_id"
  end

  create_table "degree_intake", primary_key: "degree_intake_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "degree_id", null: false
    t.integer "intake_id", null: false
    t.string "academic_yr_id", limit: 50
    t.integer "quota_seats"
  end

  create_table "degree_transfer", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "user_id", limit: 256, null: false
    t.integer "initial_degree_id", null: false
    t.integer "current_degree_id", null: false
    t.date "program_transfer_date", null: false
    t.text "remark"
    t.integer "transfer_done_by"
    t.string "old_roll_no"
    t.string "old_scholar_no"
    t.string "old_enrollment_no"
  end

  create_table "delete_check", id: false, charset: "latin1", force: :cascade do |t|
    t.string "Element_To_Check", null: false, collation: "utf8_general_ci"
    t.string "Source_Table", null: false, collation: "utf8_general_ci"
    t.string "Source_Field", null: false, collation: "utf8_general_ci"
    t.string "Target_Table", null: false, collation: "utf8_general_ci"
    t.string "Target_Field", null: false, collation: "utf8_general_ci"
    t.integer "Sequence_No", null: false
    t.string "Message", null: false, collation: "utf8_general_ci"
  end

  create_table "demo_course", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "course_code"
    t.string "course_name"
    t.integer "total"
    t.integer "L"
    t.integer "T"
    t.integer "P"
  end

  create_table "department", primary_key: "department_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "department_name", limit: 128, null: false
    t.integer "parent_id", default: 0, null: false, comment: "0: For Department , other department_id for sub department"
    t.integer "college_id", null: false
    t.string "display_name"
    t.string "abbreviation"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "web"
    t.integer "is_academic_department", null: false
  end

  create_table "department_history", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "pre_department"
    t.date "update_date"
  end

  create_table "department_type_leave", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "department_id"
    t.float "department_type_leave"
    t.integer "year"
    t.integer "leave_type"
    t.date "from_date"
    t.date "to_date"
  end

  create_table "designation_history", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "pre_designation"
    t.date "update_date"
    t.index ["emp_id"], name: "designation_log"
  end

  create_table "designation_type_leave", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "designation_id"
    t.float "designation_type_leave"
    t.integer "year"
    t.integer "leave_type"
    t.date "from_date"
    t.date "to_date"
  end

  create_table "dimension_set_details", primary_key: "dimension_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "dimension_set_id", null: false
    t.integer "dimension_id", null: false
    t.integer "sequence_no", default: 1, null: false, unsigned: true
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "dimension_sets", primary_key: "dimension_set_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "dimension_set_name", limit: 128, null: false
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "dimensions", primary_key: "dimension_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "dimension_name", null: false
    t.integer "sequance_no", default: 1, null: false
    t.integer "input_type", null: false
    t.integer "validation_type", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["dimension_name"], name: "dimensionName", unique: true
  end

  create_table "dispatch_book_map_course", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "book_id", null: false
    t.string "book_name"
    t.integer "college_id", null: false
    t.integer "dept_id", null: false
    t.integer "program_id", null: false
    t.integer "academic_year", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.string "ip"
    t.string "last_modified_date"
    t.integer "updated_by"
    t.integer "medium_id", default: 0
  end

  create_table "dispatch_delivery", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "unique_dispatch_id"
    t.date "delivery_date"
    t.string "received_by", limit: 45
    t.string "pod_no", limit: 45
    t.string "attachment", limit: 45
    t.string "ip"
    t.integer "updated_by"
    t.date "last_modification_date"
    t.integer "coordinator_id", default: 0
  end

  create_table "dispatch_map_study_material", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "mapping_id", null: false
    t.integer "user_id", null: false
    t.integer "dispatch_status", comment: "1-mapped,2-sent,3-delivered,4-returned"
    t.date "mapping_creation_date"
    t.date "last_modified_date"
    t.integer "updated_by"
    t.string "ip"
    t.integer "unique_dispatch_id", default: 0, null: false
    t.integer "coordinator_id", default: 0
    t.string "is_advanced_dispatch", limit: 45, default: "N"
    t.integer "no_of_set", default: 0
  end

  create_table "dispatch_return", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "unique_dispatch_id"
    t.date "return_date"
    t.text "reason_return"
    t.string "attachement"
    t.string "ip"
    t.integer "updated_by"
    t.string "last_modified_date", limit: 45
    t.integer "coordinator_id", default: 0
  end

  create_table "dispatch_send_study_material", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "search_by_name", limit: 45
    t.date "sent_date"
    t.integer "service_provider", default: 0
    t.integer "dispatch_no", null: false
    t.string "packet_no", limit: 45
    t.string "docket_no", limit: 45
    t.integer "item_in_packet", default: 0
    t.string "weight", limit: 45
    t.integer "dispatch_cost", default: 0
    t.text "address"
    t.text "remark"
    t.date "material_send_date", null: false
    t.string "ip"
    t.string "last_modified_date", limit: 45
    t.integer "updated_by"
    t.integer "address_type", default: 0
    t.integer "unique_dispatch_id", default: 0, null: false
    t.integer "coordinator_id", default: 0
  end

  create_table "dissertation_details", primary_key: "dissertation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "dissertation_topic", limit: 256
    t.string "dissertation_place", limit: 256
  end

  create_table "document_apply", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "doc_id", null: false
    t.integer "status", default: 0, null: false, comment: "0-Pending,1-approved,2-issued,3-denied"
    t.date "apply_date", null: false
    t.integer "applied_by", null: false
    t.text "apply_remark"
    t.integer "action_by"
    t.date "action_date"
    t.text "action_remark"
    t.date "issue_date"
  end

  create_table "document_create_report", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "doc_id", null: false
    t.integer "updated_by", null: false
    t.integer "updated_for", null: false
    t.datetime "date", precision: nil, null: false
    t.string "ip", limit: 150, null: false
  end

  create_table "document_creator_fields", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "field_label", limit: 56, null: false
    t.string "field_name", limit: 56, null: false
    t.string "table_name", limit: 56, null: false
    t.text "record_fetch_query", size: :medium, null: false
    t.integer "user_type", null: false
    t.integer "is_type", default: 0, comment: "0:default, 1:date ,2:figure to word,3:salary with heads "
    t.index ["field_label", "field_name", "user_type"], name: "U_index", unique: true
  end

  create_table "document_footers", primary_key: "footer_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.text "footer_description", size: :medium
    t.string "right_align"
    t.string "center_align"
    t.string "left_align"
    t.integer "document_type", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "right_align_header_location"
    t.string "center_align_header_location"
    t.string "left_align_header_location"
  end

  create_table "document_group", primary_key: "group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "document_group_name"
    t.integer "college_id"
    t.integer "user_type_id"
    t.integer "is_hostel_type", default: 0, comment: "1 for group is hostel,0 for other"
  end

  create_table "document_group_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "document_id"
    t.integer "group_id"
  end

  create_table "document_group_user_mapping", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "user_type_id", null: false
    t.integer "college_id", null: false
    t.integer "document_group_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "intake_id"
    t.integer "department_id"
    t.integer "degree_id"
    t.integer "year_or_sem"
  end

  create_table "document_header", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.string "header_name", limit: 128
    t.string "header_location", limit: 128
    t.string "description"
    t.integer "updated_by"
    t.date "updated_date"
    t.string "ip", limit: 150, null: false
    t.integer "header_type", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "document_master", primary_key: "document_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "document_name", null: false
    t.integer "college_id", null: false
    t.integer "user_type_id"
    t.integer "document_type", null: false
    t.integer "document_generated_by", default: 0, comment: "0-Outside from academia 1-From Document Generator"
    t.string "document_number"
    t.integer "is_chargable", default: 0, comment: "0-No ,1-Yes"
    t.integer "is_no_dues", default: 0, comment: "0-No ,1-Yes"
    t.integer "is_auto_approve", default: 0, comment: "0-No ,1-Yes"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "id", default: 0
    t.integer "is_printable", default: 0
  end

  create_table "document_special", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.text "description", size: :medium, null: false
    t.integer "college_id", null: false
    t.integer "user_type", null: false
    t.integer "doc_type"
    t.float "first_amount", limit: 53, default: 0.0
    t.float "onwards_amount", limit: 53, default: 0.0
    t.integer "template_id"
    t.text "email_subject", size: :medium
    t.integer "send_type"
    t.string "sms_description"
  end

  create_table "document_type", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 55, null: false
  end

  create_table "document_user_mapping", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "college_id", null: false
    t.integer "document_group_id", null: false
    t.integer "document_id"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "intake_id"
    t.integer "department_id"
    t.integer "degree_id"
    t.integer "year_or_sem"
    t.integer "document_status", default: 0, comment: "0: not submitted, 1: submitted, 2: handover "
    t.date "submit_date"
    t.date "handover_date"
    t.integer "recived_by"
    t.text "comments", size: :medium, collation: "utf8_general_ci"
    t.integer "handover_by"
    t.string "document_serial_no"
  end

  create_table "drop_down", primary_key: "drop_down_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "type", limit: 155
    t.string "name", limit: 155
    t.string "regional_name", limit: 155
    t.string "value", limit: 256
    t.integer "sequence"
    t.text "description", size: :tiny
    t.column "sys_defined", "enum('Y','N')", default: "N"
    t.string "alias"
    t.string "remark", limit: 256
    t.index ["type", "name"], name: "drop_down", unique: true
    t.index ["type"], name: "drop_down_ind"
  end

  create_table "education_details", primary_key: "edu_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "exam", limit: 256
    t.string "board_univ", limit: 256
    t.string "scool_college", limit: 250
    t.string "year", limit: 10
    t.string "percentage", limit: 5
    t.string "like_subject", limit: 500
    t.string "subject"
    t.string "eexm_roll_no"
    t.string "eexm_rank", limit: 10
    t.string "pcm_percentage", limit: 10
    t.string "stream", limit: 256
    t.string "pcm_pca", limit: 20
    t.string "qualification_type", limit: 256
    t.integer "emp_id"
    t.date "schl_lv_cmplt_dt"
    t.string "lst_schl_yr_left", limit: 10
    t.integer "schl_lv_cmplt_rsn_id"
    t.integer "lst_schl_attended_id"
    t.integer "hgh_qlfn_held_type_id"
    t.string "grade", limit: 55
    t.integer "certificate_type", default: 0
    t.float "max_marks", limit: 53
    t.float "marks_obtain", limit: 53
    t.string "specialization"
    t.index ["user_id"], name: "user_id"
  end

  create_table "email_configuration", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "email_type", limit: 100
    t.string "user_name", limit: 100
    t.string "password", limit: 30
    t.string "host", limit: 45
    t.string "internet_address", limit: 45
    t.string "port", limit: 45
  end

  create_table "emp_80c", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.string "investment_name", limit: 512, null: false
    t.integer "investment_amount", null: false
    t.date "to_date", null: false
    t.date "from_date", null: false
    t.integer "section_id"
    t.integer "subsection_id"
    t.string "comment", limit: 256
    t.index ["emp_id"], name: "emp_id"
  end

  create_table "emp_achievement", primary_key: "achievement_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "achievement_desc", limit: 256
    t.string "achievement_period", limit: 256
    t.integer "emp_id", null: false
  end

  create_table "emp_address", primary_key: "address_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.string "address", limit: 256
    t.string "city", limit: 128
    t.string "state", limit: 128
    t.string "country", limit: 128
    t.string "pin_code"
    t.string "telephone_number", limit: 15
    t.string "mobile_number", limit: 15
    t.boolean "address_type", default: false, null: false, comment: "0: Permanent , 1: Present"
    t.index ["emp_id"], name: "emp_id"
  end

  create_table "emp_approval_level", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.integer "level_id"
    t.integer "manager_id", default: 0
    t.index ["emp_id"], name: "emp_a_l_ind"
  end

  create_table "emp_attendance", charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.date "date"
    t.time "time"
    t.integer "verify_mode", comment: " 1-card, 2- finger print,3- password,4- manual"
    t.integer "machine_number"
    t.string "machine_location"
    t.string "file_name"
    t.date "update_date"
    t.column "active_flag", "enum('N','Y')", default: "Y"
    t.integer "device_log_id", default: 0, null: false
    t.index ["emp_id"], name: "fk_emp_id"
    t.index ["machine_number"], name: "fk_machine_number"
  end

  create_table "emp_cpf_contribution", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "resident_year", limit: 256, default: "1:1st Year ; 2: 2nd year ; 3: 3rd year and onwards", null: false
    t.integer "emp_age_min", default: 0, null: false
    t.integer "emp_age_max", null: false
    t.string "contribution_by_employee", limit: 10, null: false
    t.string "contribution_by_employer", limit: 10, null: false
    t.string "contri_ordinary_account", limit: 10
    t.string "contri_special_account", limit: 10
    t.string "contri_medisave_account", limit: 10
  end

  create_table "emp_dependent_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.string "children_name", limit: 125, null: false
    t.date "children_dob", null: false
    t.string "children_citizenship", limit: 125
    t.string "relation", limit: 256
    t.string "comment", limit: 256
    t.string "children_gender", limit: 30
    t.integer "status", default: 0, null: false
    t.string "passport_no", limit: 30
    t.date "passport_expiry_date"
    t.string "visa_no", limit: 30
    t.date "visa_expiry_date"
    t.string "residence_card", limit: 30
    t.date "id_card_issue_date"
    t.date "id_card_expiry_date"
    t.string "passport_issue_place"
    t.string "driving_license_no", limit: 30
    t.date "driving_license_issue_date"
    t.date "driving_license_exp_date"
    t.column "is_dependent", "enum('N','Y')", default: "N", comment: "N-Not Dependent,Y- Dependent"
    t.string "dependent_company", limit: 45
    t.string "dependent_designation", limit: 45
    t.string "scholer_dependent", limit: 45
    t.index ["emp_id"], name: "emp_dependent_PKempId"
  end

  create_table "emp_esic_detail", primary_key: "emp_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.boolean "is_esic_applicalbe", default: false, null: false, comment: "0: no, 1: yes"
    t.string "insurance_number", limit: 20
    t.string "dispensary_name", limit: 128
  end

  create_table "emp_hierarchy", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "manager_id", null: false
    t.index ["emp_id"], name: "emp_id"
    t.index ["manager_id"], name: "manager_id"
  end

  create_table "emp_hierarchy_history", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "manager_id", null: false
    t.integer "emp_id", null: false
    t.integer "updateed_by_user"
    t.date "updated_date"
  end

  create_table "emp_imbursement", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.date "apply_date"
    t.string "reason"
    t.string "financial_year"
    t.string "amount", null: false
    t.integer "status", null: false, comment: "0:pending, 1:approved, 2:unapproved, 3:delete"
    t.date "approved_date"
    t.integer "payment_status", comment: "0:unapproved, 1:approved"
    t.integer "payment_pay_period"
    t.text "comment", size: :tiny
  end

  create_table "emp_incidence_detail", primary_key: "incidence_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "incidence_date", null: false
    t.string "description"
    t.date "incidence_from_date", null: false
    t.date "incidence_to_date", null: false
    t.integer "emp_id", null: false
    t.integer "incidence_type", default: 0
  end

  create_table "emp_leave", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.date "leave_date", null: false
    t.integer "leave_type", limit: 1, default: 0, null: false, comment: "0: unpaid,1: paid, 2: half paid, 3: half unpaid ,4 : Holiday(Off), 5: Off"
    t.text "reason", size: :medium
    t.integer "leave_category", comment: "from drop down table type leave_category"
    t.index ["emp_id"], name: "emp_id"
    t.index ["leave_category"], name: "idx_emp_lv_leavecat"
  end

  create_table "emp_leave_count", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "year"
    t.float "allotted_leave", null: false
    t.integer "leave_type", null: false, comment: "sick leave, casual leave"
    t.integer "carry_forward", default: 0, null: false
    t.date "from_date"
    t.date "to_date"
    t.integer "update_by_userId"
    t.string "last_updated_date", limit: 45
    t.string "ip", limit: 45
    t.index ["emp_id"], name: "emp_id"
    t.index ["leave_type"], name: "idx_emp_lv_leavecat"
  end

  create_table "emp_leave_req", primary_key: "leave_req_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "fromdate", null: false
    t.date "todate", null: false
    t.string "remark"
    t.time "from_time"
    t.time "to_time"
    t.date "approved_from_date"
    t.date "approved_to_date"
    t.string "approval_remark"
    t.time "approved_from_time"
    t.time "approved_to_time"
    t.integer "status", default: 0, comment: "0:pending,1:approved,2disapproved"
    t.integer "type", null: false, comment: "1:overTime,2:Late Coming,3:Early Going,4:leave during work"
    t.integer "request_by_user_id", null: false
    t.integer "approval_by_user_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil
    t.time "apply_time"
    t.date "apply_date"
  end

  create_table "emp_leave_request", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.integer "leave_type", limit: 1, default: 0, null: false, comment: "0: unpaid,1: paid"
    t.text "reason", size: :medium
    t.integer "leave_category", null: false, comment: "from drop down table type leave_category"
    t.integer "full_half", default: 0, null: false, comment: "0: both full, 1 : from full - to half, 2: from half - to full, 3 - both half"
    t.integer "status", default: 0, null: false, comment: "0: Pending , 1 : Approved, 2 : Denied, 3: Canceled "
    t.string "action_by", limit: 256
    t.date "action_date"
    t.date "apply_date"
    t.string "alternate_emp_id"
    t.date "finalized_date"
    t.text "finalized_remark", size: :tiny
    t.integer "finalized_status", default: 0
    t.text "comment", size: :medium, comment: "General Comment for leave request"
    t.integer "approver_level_id"
    t.index ["emp_id"], name: "emp_id"
    t.index ["emp_id"], name: "emp_l_r_ind"
  end

  create_table "emp_payment_mode", primary_key: "emp_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.integer "payment_mode", default: 1, null: false, comment: "from drop_dwon table of type emp_payment_mode having fixed 1: Cash, 2: Bank, 3: Cheque"
    t.string "bank_name", limit: 256
    t.string "branch_code", limit: 25
    t.string "bank_address", limit: 512
    t.string "account_number", limit: 20
    t.boolean "account_type", comment: "0: saving, 1: current"
    t.string "ifsc_code", limit: 256
  end

  create_table "emp_payperiod_status", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "pay_period_id", null: false
    t.integer "total_over_time"
    t.text "comments", size: :medium
    t.index ["emp_id"], name: "emp_id"
    t.index ["pay_period_id"], name: "pay_period_id"
  end

  create_table "emp_pf_detail", primary_key: "emp_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.date "settlement_date"
    t.date "pf_joining_date"
    t.float "transfer_amount"
    t.string "pf_number", limit: 56
    t.boolean "is_pf_applicable", default: false, null: false, comment: "0: no, 1: yes"
    t.string "pf_uan", limit: 256
  end

  create_table "emp_position", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0
    t.integer "dept_id", default: 0
    t.integer "designation_id", default: 0
    t.string "position", limit: 256, default: "0"
    t.integer "emp_id", default: 0
    t.timestamp "last_updated"
    t.string "ip", limit: 200
    t.integer "updated_by"
    t.text "position_description", size: :long
    t.integer "redundant", default: 0
    t.timestamp "redundant_date"
  end

  create_table "emp_previous_employement", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.string "employer_detail", limit: 512, null: false
    t.date "joining_date", null: false
    t.date "leaving_date", null: false
    t.string "joining_designation", limit: 128
    t.string "leaving_designation", limit: 128
    t.float "salary", null: false
    t.text "achievments", size: :medium
    t.string "teaching_experience", limit: 10
    t.string "training_experience", limit: 10
    t.string "research_experience", limit: 10
    t.string "other_experience", limit: 10
    t.string "other_experience_name", limit: 30
    t.string "part_time_experience", limit: 10, default: "0"
    t.string "add_to_experience", limit: 10, default: "yes", null: false, comment: "yes : add experience to total , no : experience not add to total"
    t.integer "prev_employer_type_id"
    t.integer "prev_hei_ctry_id"
    t.index ["emp_id", "joining_date", "leaving_date"], name: "uniqEmployement", unique: true
    t.index ["emp_id"], name: "emp_id"
  end

  create_table "emp_reporting_back", primary_key: "reporting_back_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "record_date", null: false
    t.date "reported_on", null: false
    t.string "remark"
    t.integer "status", default: 0, comment: "0:pending,1:verified,2:Invalid"
    t.string "approval_remark"
    t.integer "request_by_user_id"
    t.integer "approval_by_user_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
  end

  create_table "emp_resignation", primary_key: "emp_resg_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.text "reason", size: :medium, null: false
    t.text "future_plan", size: :medium
    t.date "relieved_date", null: false
    t.date "record_date", null: false
    t.string "approval_remark", limit: 256
    t.string "second_approval_remark", limit: 256
    t.string "finance_remark", limit: 256
    t.string "final_remark", limit: 256
    t.integer "status", default: 0, comment: "0:pending, 1:approved,2:assistant Dean Approved,3:financial Approved ,4:Dean Approved,-1:disapproved"
    t.integer "request_by_user_id", null: false
    t.integer "approval_by_user_id", default: 0
    t.integer "second_approval_by_user_id", default: 0
    t.integer "finance_by_user_id", default: 0
    t.integer "final_approval_by_user_id", default: 0
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
  end

  create_table "emp_review", primary_key: ["emp_id", "review_id"], charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "review_id", null: false
    t.integer "review_stage", default: 0, null: false, comment: "0: Reviewer employee Not Selected , 1 : Reviewer employee selected in pending, 2: review employees approved,"
    t.index ["review_id"], name: "review_id"
  end

  create_table "emp_review_reviewer", primary_key: ["emp_id", "review_id", "reviewer_emp_id"], charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "review_id", null: false
    t.integer "reviewer_emp_id", null: false
    t.integer "approve_status", default: 0, null: false, comment: "0: Pending , 1: Approve"
    t.text "review_answer", size: :medium, comment: "it is like question_id\#@\#@answer#\#@@##question_id\#@\#@answer......."
    t.integer "review_status", default: 0, null: false, comment: "0: Not Started, 1: Incomplete/Started, 2: Complete, 3: Delivered, 4: Finalized"
    t.datetime "update_time", precision: nil, null: false
    t.integer "update_by", null: false
    t.index ["review_id"], name: "review_id"
    t.index ["reviewer_emp_id"], name: "reviewer_emp_id"
    t.index ["update_by"], name: "update_by"
  end

  create_table "emp_salary_head", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "head_id", null: false
    t.integer "amount", null: false
    t.integer "is_edit", default: 0, comment: "0:not edit 1:edit when generate salary"
    t.integer "deduction_fixed", default: 0
    t.integer "deduction_calculated", default: 0
    t.integer "deduction_type", default: 0
    t.string "deduction_values", comment: "Comma seprated values and last value is percentage"
    t.index ["emp_id", "head_id", "amount"], name: "uniqSalaryhead", unique: true
    t.index ["emp_id"], name: "emp_id"
    t.index ["head_id"], name: "head_id"
  end

  create_table "emp_salary_master", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.float "amount", limit: 53, null: false
    t.float "leave_amount", limit: 53, default: 0.0, null: false
    t.integer "pay_period_id", null: false
    t.integer "salary_head_id", null: false
    t.index ["emp_id", "amount", "pay_period_id", "salary_head_id"], name: "uniqemployeesalarymaster", unique: true
    t.index ["emp_id", "pay_period_id", "salary_head_id"], name: "unique"
  end

  create_table "emp_salary_transaction", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.integer "head_id", null: false
    t.float "amount", limit: 53, null: false
    t.integer "no_of_hours"
    t.integer "pay_period_id", null: false
    t.integer "voucher_unique_number", default: 0
    t.integer "working_days"
    t.integer "paid_days"
    t.integer "absent_days"
    t.index ["emp_id"], name: "emp_id"
    t.index ["head_id"], name: "head_id"
    t.index ["pay_period_id"], name: "pay_period_id_fk"
  end

  create_table "emp_tds_section", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "section_name", limit: 128, null: false
    t.float "max_limit", limit: 53, null: false
  end

  create_table "emp_tds_subsection", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "section_id", null: false
    t.string "subsection_name", limit: 256, null: false
  end

  create_table "emp_travel_booking", primary_key: "travel_booking_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "place", null: false
    t.date "fromdate", null: false
    t.date "todate", null: false
    t.string "remark"
    t.date "approved_from_date"
    t.date "approved_to_date"
    t.string "file_name"
    t.date "ticket_availed_date"
    t.string "booking_reference"
    t.string "approval_remark"
    t.string "final_remark"
    t.boolean "status", default: false, comment: "0:pending, 1:approved,2:financialApproved,3:Dean Approved,4:disapproved"
    t.integer "request_by_user_id", null: false
    t.integer "approval_by_user_id", default: 0
    t.integer "finance_by_user_id", default: 0
    t.integer "final_approval_by_user_id", default: 0
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
  end

  create_table "emp_working_hour", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.time "in_time"
    t.time "out_time"
    t.integer "over_time_after", comment: "Hour value for overtime. e.g over_time_after 2 hr"
    t.integer "over_time_type", limit: 1, comment: "0-paid,1-unpaid"
    t.integer "over_time_rate"
    t.string "working_hour_type", limit: 10
    t.time "sun_in_time"
    t.time "sun_out_time"
    t.time "mon_in_time"
    t.time "mon_out_time"
    t.time "tue_in_time"
    t.time "tue_out_time"
    t.time "wed_in_time"
    t.time "wed_out_time"
    t.time "thu_in_time"
    t.time "thu_out_time"
    t.time "fri_in_time"
    t.time "fri_out_time"
    t.time "sat_in_time"
    t.time "sat_out_time"
    t.index ["emp_id"], name: "fk_shift_id"
  end

  create_table "employee_benefit", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "dependant_name"
    t.string "benefit_type"
    t.float "amount", limit: 53
    t.text "attachment", size: :tiny
    t.date "create_date"
    t.integer "emp_id"
    t.string "other_benefit"
    t.string "benefit_relation", limit: 45
  end

  create_table "employee_comments", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.text "comment", size: :medium, null: false
    t.date "date", null: false
    t.date "update_date"
    t.index ["emp_id"], name: "empcomments_empid"
  end

  create_table "employee_consultancy", primary_key: "consultancy_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.string "client_name", limit: 45, default: "null", null: false
    t.float "amount", limit: 53, default: 0.0, null: false
    t.string "description"
    t.date "consultancy_date"
    t.datetime "last_updated", precision: nil
    t.integer "updated_by", default: 0, null: false
    t.string "attachment"
  end

  create_table "employee_document", primary_key: "file_doc_id", id: :integer, charset: "latin1", comment: "This table is use for store the Employee document Record.", force: :cascade do |t|
    t.integer "file_id", null: false
    t.integer "doc_type_id", null: false
    t.integer "emp_id", null: false
  end

  create_table "employee_funds_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "fund_id", default: 0, null: false, comment: "fund id , fund name wise"
    t.string "fund_name", limit: 256, null: false
    t.string "monthly_total_wedges_min", limit: 12
    t.string "monthly_total_wedges_max", limit: 12
    t.string "monthly_contribution", limit: 15, default: "0", comment: "In $ , not in percentage"
  end

  create_table "employee_info", primary_key: "emp_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "staff_code", limit: 20
    t.string "name_in_rgnl_lang", limit: 256
    t.string "first_name", limit: 128, null: false
    t.string "second_name", limit: 256
    t.string "third_name", limit: 256
    t.string "fourth_name", limit: 256
    t.string "middle_name", limit: 128
    t.string "last_name", limit: 128, null: false
    t.string "display_name", limit: 256, null: false
    t.string "desg_in_rgnl_lang", limit: 256
    t.string "designation", limit: 256, default: "-1", null: false, comment: "From Drop Down table"
    t.integer "department_id", null: false
    t.date "joining_date", null: false
    t.date "confirmation_date"
    t.integer "probation_period", comment: "in months"
    t.date "resignation_date"
    t.string "location", limit: 128
    t.boolean "gender", default: true, null: false, comment: "1: Male, 2: Female"
    t.date "date_of_birth"
    t.date "anniversary_date"
    t.string "pan_number", limit: 20
    t.string "nationality", limit: 56
    t.string "religion", limit: 56
    t.integer "height", comment: "in inch"
    t.string "father_name", limit: 128
    t.string "mother_name", limit: 128
    t.string "husband_name", limit: 128
    t.boolean "marital_status", default: false, null: false, comment: "0: Unmarried , 1: married"
    t.string "spouse_name", limit: 128
    t.integer "no_of_dependents", default: 0
    t.string "blood_group", limit: 10
    t.string "email_id", limit: 128
    t.string "personal_email_id", limit: 128
    t.string "emergancy_contact_name", limit: 128
    t.string "emergancy_contact_number", limit: 20
    t.integer "employee_type", null: false, comment: "from drop down"
    t.boolean "status", default: true, null: false, comment: "0: inactive, 1: active"
    t.string "recruitment_agency", limit: 256
    t.string "company_vehicle", limit: 128
    t.string "corporate_credit_card", limit: 128
    t.string "mobile_phones", limit: 128
    t.text "leaving_reason", size: :medium
    t.text "remarks", size: :medium
    t.string "photo", limit: 128
    t.integer "company_id", null: false
    t.integer "istpo", default: 0, null: false, comment: "1-TPO,0-Not TPO"
    t.integer "singapore_resident", default: 0
    t.integer "fund_id", default: 0
    t.string "cpf_number", limit: 128
    t.integer "avg_working_hr"
    t.integer "day_type", comment: "1-day,2-week"
    t.date "contract_start_date"
    t.date "contract_end_date"
    t.string "relation_person"
    t.string "grade", limit: 20
    t.string "scale", limit: 20
    t.string "ug_degree", limit: 50
    t.string "pg_degree", limit: 50
    t.string "highest_qualification", limit: 20
    t.string "other_qualification", limit: 30
    t.string "teaching_experience"
    t.string "research_experience"
    t.string "category", limit: 20
    t.string "weight", limit: 20
    t.string "identification_mark", limit: 20
    t.date "end_date_of_contract"
    t.integer "initial_name"
    t.string "doctor_name"
    t.string "doctor_number"
    t.date "increment_date"
    t.string "file_number", limit: 50
    t.integer "isofficer", default: 0
    t.string "exact_designation", limit: 256
    t.string "is_phy_handicapped", limit: 50
    t.string "no_pg_project_guided", limit: 256
    t.string "no_doc_stu_guided", limit: 256
    t.string "no_book_published", limit: 256
    t.string "like_aicte_cmt_member", limit: 256
    t.string "have_applied_aicte_grant", limit: 256
    t.float "till_salary", limit: 53
    t.float "tds_amount", limit: 53
    t.integer "is_tds_applicable", default: 1
    t.integer "is_pt_applicable", default: 1
    t.string "civil_no", limit: 20
    t.integer "disability_id"
    t.integer "employment_term_id"
    t.integer "employment_mode_id"
    t.integer "academic_employment_function_id"
    t.integer "employee_main_function_id"
    t.integer "nature_employee_study_id"
    t.integer "qualification_aim_id"
    t.string "passport_no", limit: 30
    t.date "passport_expiry_date"
    t.string "visa_no", limit: 30
    t.date "visa_expiry_date"
    t.date "id_card_issue_date"
    t.date "id_card_expiry_date"
    t.integer "job_nature_id"
    t.string "id_card_no", limit: 20
    t.string "residence_card", limit: 30
    t.string "passport_issue_place"
    t.string "driving_license_no", limit: 30
    t.date "driving_license_issue_date"
    t.date "driving_license_exp_date"
    t.date "passport_issue_date"
    t.integer "notice_period"
    t.string "group_id", limit: 56
    t.date "retirement_date"
    t.string "birth_place"
    t.string "mother_tonque"
    t.string "eye_color", limit: 20
    t.text "nominee", size: :medium
    t.string "aadhar_card_number", limit: 250
    t.date "aadhar_issue_date"
    t.string "aadhar_issue_place", limit: 250
    t.column "indemnity_bond_1_status", "enum('N','Y','N/A')", default: "N/A"
    t.column "indemnity_bond_2_status", "enum('N','Y','N/A')", default: "N/A"
    t.column "medical_insurance_status", "enum('N','Y','N/A')", default: "N/A"
    t.string "certificates_subsn_status", limit: 45, default: "N/A"
    t.string "phd_verification_status", limit: 45, default: "N/A"
    t.text "student_names_guided"
    t.integer "birthday_flag", default: 0, null: false
    t.integer "anniversary_flag", default: 0, null: false
    t.float "sum_insured", limit: 53, default: 0.0
    t.string "previous_experience", limit: 55
    t.integer "caste", default: 0
    t.integer "position_number", default: 0
    t.index ["company_id"], name: "company_id_ibfk_1"
    t.index ["department_id"], name: "department_id"
    t.index ["employee_type"], name: "employee_type"
  end

  create_table "employee_loan", primary_key: "transaction_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.float "loan_amount", limit: 53
    t.integer "transaction_type", default: 1, comment: "1: Credit , 0:Debit"
    t.date "transaction_date"
    t.float "transaction_amount", limit: 53
    t.float "intrest_rate"
    t.integer "pay_bak_in_months"
    t.float "monthly_reduction", limit: 53
    t.date "start_date"
    t.date "end_date"
    t.string "reason", limit: 512
    t.integer "parent_transaction_id"
  end

  create_table "employee_membership", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id", null: false
    t.string "organization", limit: 256
    t.date "from_date"
    t.date "to_date"
    t.string "designation", limit: 256
    t.string "remark", limit: 256
    t.string "membership_id"
  end

  create_table "employee_patent", primary_key: "patent_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.string "patent_type"
    t.string "patent_name", default: "null", null: false
    t.date "field_date"
    t.date "awarded_date"
    t.string "other_detail"
    t.string "attachment"
    t.datetime "last_updated_time", precision: nil
    t.string "ip"
    t.string "active_flag", limit: 45, default: "Y"
    t.integer "student_id", default: 0
  end

  create_table "employee_research", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "research_type"
    t.string "research_title"
    t.string "author"
    t.date "create_date"
    t.string "page_no"
    t.string "attachment"
    t.string "url"
    t.string "volume_no"
    t.string "issue_no"
    t.text "research_detail", size: :tiny
    t.string "impact_journal"
    t.string "journal"
    t.string "publisher"
    t.string "international_journal"
    t.string "month"
    t.string "year"
    t.string "issn_isbn"
    t.string "publication_year"
    t.string "publication_index", comment: "Comma seprated values of publication index ids"
    t.string "publication_name", comment: "Comma seprated values of publication index name"
    t.integer "user_id", default: 0
    t.string "research_group"
    t.string "research_project_type"
    t.float "grant_amount", limit: 53, default: 0.0
    t.string "funding_agency_name"
    t.string "fund_type"
    t.string "tenure"
    t.string "is_affiliated", limit: 45
    t.string "is_ucsubmitted", limit: 45
    t.date "uc_submission_date"
    t.integer "no_guided", default: 0
    t.text "students"
    t.integer "no_guiding", default: 0
    t.text "students_guiding"
    t.string "others"
    t.string "publication_Project", limit: 45
  end

  create_table "enquiry_source", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "source_name", limit: 256, null: false
  end

  create_table "entrance_exam", primary_key: "entrance_exam_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "exam_name", limit: 55, null: false
    t.string "exam_year", limit: 15, null: false
    t.date "exam_date"
    t.string "group_name", limit: 10, null: false
    t.string "subject1", limit: 55, null: false
    t.string "subject2", limit: 55
    t.string "subject3", limit: 55
    t.string "subject4", limit: 55
    t.string "subject5", limit: 55
    t.integer "subject1_priority"
    t.integer "subject2_priority"
    t.integer "subject3_priority"
    t.integer "subject4_priority"
    t.integer "subject5_priority"
    t.float "maxMarks5", limit: 53, comment: "maximum marks for subject5"
    t.float "qualifyingMarks5", limit: 53, comment: "qualifying marks for subject5"
    t.integer "negativeMarks5", comment: "1=yes,0=no"
    t.float "maxMarks1", limit: 53, comment: "maximum marks for subject1"
    t.float "qualifyingMarks1", limit: 53, comment: "qualifying marks for subject1"
    t.integer "negativeMarks1", comment: "1=yes,0=no"
    t.float "maxMarks2", limit: 53, comment: "maximum marks for subject2"
    t.float "qualifyingMarks2", limit: 53, comment: "qualifying marks for subject2"
    t.integer "negativeMarks2", comment: "1=yes,0=no"
    t.float "maxMarks3", limit: 53, comment: "maximum marks for subject3"
    t.float "qualifyingMarks3", limit: 53, comment: "qualifying marks for subject3"
    t.integer "negativeMarks3", comment: "1=yes,0=no"
    t.float "maxMarks4", limit: 53, comment: "maximum marks for subject4"
    t.float "qualifyingMarks4", limit: 53, comment: "qualifying marks for subject4"
    t.integer "negativeMarks4", comment: "1=yes,0=no"
  end

  create_table "entrance_exam_center", primary_key: "entrance_center_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "address", null: false
    t.integer "country_id", null: false
    t.integer "state_id", null: false
    t.integer "city_id", null: false
    t.string "pin", limit: 15, null: false
    t.string "phone_no", limit: 15, null: false
    t.string "email", limit: 55, null: false
    t.string "contact_person", limit: 55
    t.string "mobile_no", limit: 15
    t.string "capacity", limit: 5
    t.string "university_representative", limit: 55
    t.string "contact_no", limit: 20, comment: "Contact No. of university Representative"
  end

  create_table "entrance_exam_detail", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "app_id", null: false
    t.integer "entrance_id"
    t.string "registration_no"
    t.string "test_score"
    t.string "percentile"
    t.date "entrance_exam_date"
  end

  create_table "entrance_exam_marks", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "candidate_id", null: false
    t.float "subject1_marks", limit: 53, default: 0.0
    t.float "subject2_marks", limit: 53, default: 0.0
    t.float "subject3_marks", limit: 53, default: 0.0
    t.float "subject4_marks", limit: 53, default: 0.0
    t.float "subject5_marks", limit: 53, default: 0.0
    t.string "rank_grade"
    t.date "exam_date", null: false
  end

  create_table "entrance_hall_ticket", id: false, charset: "utf8", force: :cascade do |t|
    t.string "application_no", limit: 55
    t.string "center_code", limit: 55
    t.string "hallticket_no", limit: 55
    t.integer "print", default: 0, null: false
  end

  create_table "equivalent_course", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "equivalent_course_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "year_or_sem", null: false
  end

  create_table "esic", primary_key: "esic_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "start_amount", null: false
    t.integer "end_amount", null: false
    t.float "slab_rate"
  end

  create_table "evaluation_component", primary_key: "evaluation_component_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "evaluation_component_name"
    t.string "display_name"
    t.string "abbreviation"
    t.integer "type", comment: " 1 for Intermediate, 2 for Final "
    t.integer "sequence", default: 0
    t.integer "attendance_type", default: 0
    t.integer "attendance_percentage", default: 0, null: false, comment: "0 for marks type and 1 for % type"
    t.integer "evaluation_marks", default: 0, null: false, comment: "0 for marks type and 1 for % type"
    t.integer "lComponent", default: 0, null: false, comment: "0 for not applicable and 1 for applicable"
    t.integer "tcomponent", default: 0, null: false, comment: "0 for not applicable and 1 for applicable"
    t.integer "pcomponent", default: 0, null: false, comment: "0 for not applicable and 1 for applicable"
    t.float "weightage", limit: 53, default: 0.0, null: false
    t.integer "attendance_percentage_reference", default: 0, null: false, comment: "all evaluation method name which type is attendance percentage"
    t.integer "attendance_range_reference", default: 0, null: false
  end

  create_table "evaluator_information", primary_key: "evaluator_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "employee_id"
    t.string "first_name", limit: 250
    t.string "middle_name", limit: 250
    t.string "last_name", limit: 250
    t.string "address"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.string "pin", limit: 200
    t.string "email", limit: 150
    t.string "phone", limit: 250
    t.string "organisation", limit: 250
    t.string "org_address", limit: 250
    t.string "org_phone", limit: 250
    t.string "org_designation", limit: 250
    t.string "org_email", limit: 150
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "previous_organisation", limit: 250
    t.integer "experiance"
    t.string "comments", limit: 250
    t.string "program", limit: 250
    t.string "institute", limit: 250
    t.integer "passing_year"
    t.string "ip", limit: 15, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "evaluator_payment", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "evaluator_id", null: false
    t.float "payment", limit: 53
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "course_id"
    t.integer "exam_id"
  end

  create_table "event_committe_info", primary_key: "commitee_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "commitee_name", null: false
    t.integer "parant_committe_id", null: false
    t.integer "sequence_no", null: false
    t.date "from_date"
    t.date "to_date"
    t.text "description"
    t.integer "user_id", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id"
  end

  create_table "event_committee_member", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "committee_id", null: false
    t.integer "member_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", comment: "Y: member is active , N member is inactive"
    t.string "member_type", limit: 20, null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "college_id", null: false
    t.string "designation"
    t.text "responcebilities"
  end

  create_table "event_ema_miniutes", primary_key: "ema_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "dicision_stage"
    t.string "minites", limit: 256
    t.float "final_amount", limit: 53
    t.integer "image_id"
    t.integer "file_id"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", comment: "N forNo,y forYes"
    t.string "title", limit: 56
    t.string "resolution", limit: 256
    t.integer "meeting_id"
  end

  create_table "event_publication", primary_key: "event_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "event_name"
    t.string "event_type"
    t.date "from_date"
    t.date "to_date"
    t.string "venue", limit: 225
    t.time "time_from"
    t.time "time_to"
    t.string "resource_persons"
    t.string "mentors"
    t.text "event_details"
    t.string "events_shown_to"
    t.column "is_fee_applicable", "enum('Y','N')", default: "N", null: false
    t.float "fee_applicable_amount", limit: 53, default: 0.0, null: false
    t.string "ip"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "updated_by", default: 0, null: false
    t.string "attachment"
  end

  create_table "event_users_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "event_id", default: 0, null: false
    t.integer "user_id", default: 0, null: false
    t.integer "user_type", default: 0, null: false
    t.string "is_cash"
    t.string "dd_number"
    t.date "dd_date"
    t.string "ip"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "updated_by", default: 0, null: false
  end

  create_table "exam_attendance_marks", primary_key: "exam_attendance_marks_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.float "max_percent", limit: 53, default: 0.0
    t.float "min_percent", limit: 53, default: 0.0
    t.float "marks", limit: 53, default: 0.0
  end

  create_table "exam_course", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "course_flag", default: 0, null: false, comment: "'0' regular courses '1' ex courses"
    t.index ["course_id"], name: "exam_course_course_id"
    t.index ["exam_id"], name: "idx_exam_course_exid"
  end

  create_table "exam_detention_criteria", primary_key: "detention_criteria_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "course_id"
    t.float "attendance_percentage", limit: 53
    t.float "internal_percentage", limit: 53
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.string "ip"
    t.integer "exam_id"
    t.integer "group_id"
  end

  create_table "exam_fee_acknowledgement", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "exam_type", null: false
    t.integer "bank_id", null: false
    t.integer "student_id", null: false
    t.float "exam_fee", limit: 53, null: false
    t.float "fine_amount", limit: 53, null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_date", precision: nil, null: false
  end

  create_table "exam_fees", primary_key: "exam_fees_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "no_of_course", null: false
    t.integer "fees_head_id", null: false
    t.float "amount", limit: 53, null: false
  end

  create_table "exam_grade_rollBack", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "inserted_by", null: false
    t.string "last_modified_date", limit: 45, default: "now()"
    t.string "ip"
  end

  create_table "exam_marksheet", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "p_course_id"
    t.integer "p_exam_id"
    t.string "student_display_name"
    t.string "course_code"
    t.string "course_name"
    t.string "enrolment_number"
    t.string "grade_name"
    t.string "grade"
    t.string "course_credits"
    t.string "credit_earn"
    t.integer "ay_id"
    t.string "academic_year"
    t.integer "sem_id"
    t.string "p_ce"
    t.string "department_name"
    t.string "sem_str"
    t.string "sgpa"
    t.float "cgpa", limit: 53
    t.string "total_credit_earn"
    t.string "degree_name"
    t.string "remark"
    t.string "sem"
    t.float "total_cgpa", limit: 53
    t.string "student_division"
    t.string "passout_year"
    t.string "father_name"
    t.string "sem_name"
    t.string "exam_month"
    t.string "exam_year"
    t.string "exam_name"
    t.string "course_status"
    t.string "degree_short_name"
    t.string "intake_name"
    t.string "weightage_marks"
    t.string "term_name"
    t.string "roll_number"
    t.float "total_credits_registered", limit: 53
    t.float "total_credits_obtained", limit: 53
    t.float "total_weightage_marks", limit: 53
    t.float "total_weightage_avg", limit: 53
    t.float "grade_point", limit: 53
    t.float "total_grade_points", limit: 53
    t.string "degree_mode"
    t.string "release_result_date"
    t.string "is_pass"
    t.float "group_max_marks", limit: 53
    t.float "total_effective_marks", limit: 53
    t.float "sem_total_marks", limit: 53
    t.float "final_total_effective_marks", limit: 53
    t.string "percentage"
    t.text "photo", size: :long
    t.integer "p_is_optional"
    t.string "specialization"
    t.float "p_sum_ce", limit: 53
    t.float "p_sum_cp_ce", limit: 53
    t.float "p_sum_cp", limit: 53
    t.float "p_cumulativ_sum_ce", limit: 53
    t.float "p_cumulativ_sum_cp_ce", limit: 53
    t.string "term"
    t.integer "p_degree_id"
    t.string "display_name"
    t.float "marks", limit: 53
    t.float "max_mark", limit: 53
    t.string "p_pass_or_fail"
    t.float "total_cedit_new", limit: 53
    t.float "total_cp_ce_new", limit: 53
    t.float "sgpa_new", limit: 53
    t.float "h", limit: 53
    t.float "allsemcredit", limit: 53
    t.string "mother_name"
    t.float "cp_ce", limit: 53
    t.string "semester_number"
    t.string "overallgrade"
    t.string "year_or_sem"
    t.string "percentageval"
    t.float "total_obtained_marks", limit: 53
    t.float "final_total_obtained_marks", limit: 53
    t.string "is_regular"
    t.float "cumulative_total_obtained_marks", limit: 53
    t.float "cumulative_total_effective_marks", limit: 53
    t.float "cumulative_total_credits_registered", limit: 53
    t.float "cumulative_total_weightage_marks", limit: 53
    t.float "cumulative_total_weightage_avg", limit: 53
    t.float "cumulative_total_credits_obtained", limit: 53
    t.string "attempt"
    t.string "marking_scheme_group_name"
    t.float "group_obtained_marks", limit: 53
    t.float "group_effective_marks", limit: 53
    t.float "grand_obtained_marks", limit: 53
    t.float "grand_total_marks", limit: 53
    t.integer "group_id"
    t.float "total_course_marks", limit: 53
    t.integer "p_attempt"
    t.integer "internal_group"
    t.integer "term_id"
    t.integer "intake_id"
    t.integer "department_id"
  end

  create_table "exam_marksheet_template_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "ay_id", default: 0, null: false
    t.integer "term_id", default: 0, null: false
    t.integer "sem_id", default: 0, null: false
    t.integer "exam_id", default: 0, null: false
    t.integer "student_id", default: 0, null: false
    t.integer "template_id", default: 0, null: false
    t.integer "insert_by", default: 0, null: false
    t.datetime "insert_date", precision: nil, null: false
    t.string "ip", default: "0", null: false
    t.integer "degree_id", default: 0, null: false
    t.integer "college_id", default: 0, null: false
  end

  create_table "exam_student_room_temp", primary_key: "transcation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "student_uni_roll_no", default: "null", null: false
    t.integer "student_id", default: 0, null: false
    t.integer "exam_id", default: 0, null: false
    t.integer "roomId", default: 0, null: false
    t.integer "time_table_id", default: 0, null: false
    t.integer "user_id", default: 0, null: false
    t.date "exam_date", null: false
    t.string "exam_time", default: "null", null: false
    t.date "last_update_date", null: false
    t.string "ip", default: "null", null: false
    t.string "active_flag", default: "N", null: false
  end

  create_table "exam_time_table", primary_key: "time_table_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.date "exam_date", null: false
    t.time "from_time", null: false
    t.time "to_time", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_by", precision: nil, null: false
  end

  create_table "exam_transcript", primary_key: "transcript_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "student_id"
    t.string "p_exam_id"
    t.string "student_display_name"
    t.string "course_code"
    t.string "course_name"
    t.string "enrolment_number"
    t.string "grade_name"
    t.string "grade"
    t.string "course_credits"
    t.string "credit_earn"
    t.string "ay_id"
    t.string "academic_year"
    t.string "sem_id"
    t.string "department_name"
    t.string "sem_str"
    t.string "sgpa"
    t.string "cgpa"
    t.string "sem_total_grade_point"
    t.string "total_credit_earn"
    t.string "degree_name"
    t.string "remark"
    t.string "sem"
    t.string "total_cgpa"
    t.string "student_division"
    t.string "passout_year"
    t.string "father_name"
    t.string "sem_name"
    t.string "sem_stg"
    t.string "exam_month"
    t.string "exam_year"
    t.string "exam_name"
    t.string "course_status"
    t.string "degree_short_name"
    t.string "intake_name"
    t.string "weightage_marks"
    t.string "term_name"
    t.string "roll_number"
    t.string "total_credits_registered"
    t.string "total_credits_obtained"
    t.string "total_weightage_marks"
    t.string "total_weightage_avg"
    t.string "grade_point1"
    t.string "total_grade_points"
    t.string "degree_mode"
    t.string "release_result_date"
    t.string "cumulative_total_credits_registered"
    t.string "cumulative_total_credits_obtained"
    t.string "cumulative_total_weightage_marks"
    t.string "cumulative_total_weightage_avg"
    t.string "attempt"
    t.string "p_release_result_date"
    t.string "is_pass"
    t.string "group_max_marks"
    t.string "total_effective_marks"
    t.string "sem_total_marks"
    t.string "final_total_effective_marks"
    t.string "percentage"
    t.string "aca_year"
    t.string "release_date"
    t.string "agg_percentage"
    t.text "completgradestring"
    t.string "p_cp_ce"
    t.string "sem_seq"
    t.string "totalunits"
    t.string "totalpoints"
    t.string "completeCGPA"
    t.string "session_start_date"
    t.string "grade_point"
    t.string "status_value"
    t.string "degree_id"
    t.integer "is_optional", default: 0
    t.string "photo"
    t.string "display_name"
    t.string "course_type"
    t.string "p_pass_or_fail"
    t.string "ab_ufm"
    t.string "p_credit_earn"
    t.string "branch_code"
    t.string "p_photo"
    t.string "rowCount"
  end

  create_table "exam_transcript_scheduler", primary_key: "trancript_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", default: 0, null: false
    t.integer "student_id", default: 0, null: false
    t.integer "template_id", default: 0, null: false
    t.integer "is_generate", default: 0, null: false
    t.integer "apply_for_reeval", default: 0, null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", default: "Y"
  end

  create_table "exam_tt_course_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "time_table_id", null: false
    t.integer "course_id", null: false
    t.integer "component_id", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_by", precision: nil, null: false
    t.index ["course_id"], name: "exam_tt_course_mapping"
  end

  create_table "exam_tt_invigilator_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "time_table_id", null: false
    t.integer "room_id", null: false
    t.integer "invigilator_id", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_by", precision: nil, null: false
  end

  create_table "exam_tt_room_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "time_table_id", null: false
    t.integer "course_id", null: false
    t.integer "component_id", null: false
    t.integer "room_id", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_by", precision: nil, null: false
  end

  create_table "exam_tt_stud_room_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "time_table_id", null: false
    t.integer "course_id", default: 0, null: false
    t.integer "component_id", default: 0, null: false
    t.integer "room_id", null: false
    t.integer "student_id", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_by", precision: nil, null: false
    t.integer "exam_center", default: 0, null: false
    t.index ["student_id"], name: "exam_tt_stud_room_mapping_student_id"
  end

  create_table "examtimetable", primary_key: "timetable_id", id: :integer, charset: "utf8", comment: "table is containing Exam Time Table information", force: :cascade do |t|
    t.integer "exam_id"
    t.integer "course_id", null: false
    t.date "exam_date", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "sys_defined", "enum('N','Y')", default: "Y", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "exit_interview", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "answer"
    t.string "description1"
    t.string "description2"
    t.string "description3"
    t.string "description4"
    t.string "description5"
  end

  create_table "faculty", primary_key: "faculty_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "faculty_name", limit: 256, null: false
    t.integer "deparment_id", null: false
    t.integer "post", default: 0, null: false
  end

  create_table "faculty_course_enrollment", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "course_section_id", default: 0
    t.integer "user_id", default: 0
    t.integer "intake_id"
    t.integer "year_or_sem"
    t.integer "term"
    t.integer "academic_year_id"
    t.date "enrollment_date"
    t.date "last_modified_date"
    t.integer "modified_by"
    t.index ["user_id"], name: "vivek_fce_user_id"
  end

  create_table "faculty_department_enrollment", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "faculty_id", null: false
    t.integer "department_id", null: false
    t.index ["department_id"], name: "index1"
  end

  create_table "family_welfare", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.text "attachment", size: :tiny
    t.text "comment", size: :tiny
    t.float "amount", limit: 53
    t.date "apply_date"
    t.date "update_date"
    t.text "admin_comment", size: :tiny
    t.integer "approval_status", default: 0, comment: "default value : 0"
    t.integer "payment_status", default: 0, comment: "default value : 0"
    t.integer "update_user"
  end

  create_table "fees_head", primary_key: "head_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "head_name", limit: 128, null: false
    t.boolean "head_type", null: false, comment: "1: Collection, 2: Deposit, 3: Fine, 4: Misc Collection"
    t.integer "college_id"
    t.integer "master_id"
    t.integer "ledger_id"
  end

  create_table "fees_plan_info", primary_key: "plan_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "college_id"
    t.string "plan_name", null: false, collation: "utf8_general_ci"
    t.text "plan_desc", size: :tiny, collation: "utf8_general_ci"
    t.date "due_date"
  end

  create_table "fees_plan_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "plan_id", null: false
    t.integer "head_id", null: false
    t.float "amount", limit: 53
  end

  create_table "fertility", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.float "amount", limit: 53
    t.string "attachment"
    t.text "emp_comment", size: :tiny
    t.integer "approval_status", default: 0, null: false, comment: "0:pending, 1:approved; 2:unapproved"
    t.text "admin_comment", size: :tiny
    t.integer "payment_status", default: 0, null: false, comment: "0:unpaid, 1:paid"
    t.integer "salary_sheet_pay_period_id"
    t.date "create_date"
    t.date "update_date"
    t.integer "update_user"
  end

  create_table "fin_budget_details", primary_key: "budget_details_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "ledger_id", null: false
    t.integer "cost_center_id", null: false
    t.integer "budget_id", null: false
    t.float "income_amount", limit: 53
    t.float "expense_amount", limit: 53
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "months", default: 0, comment: "Month (1,12) Where 1 = January & 12 = December"
    t.integer "project_id", default: 0
    t.integer "college_id", default: 0
    t.integer "financial_year_id", default: 0
  end

  create_table "fin_budget_master", primary_key: "budget_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "budget_name", null: false
    t.string "committee_id"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id", null: false
    t.integer "financial_year_id", default: 0
    t.string "remark", limit: 350
    t.index ["budget_name", "college_id"], name: "BudgetName", unique: true
  end

  create_table "fin_currency_details", primary_key: "currency_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "currency_abbreviation", limit: 80, null: false
    t.string "currency_name", limit: 80
    t.string "currency_symbol", limit: 80
    t.string "subdivision", limit: 80
    t.float "multiplying_factor", limit: 53
    t.index ["currency_abbreviation"], name: "unique_curr_detail", unique: true
  end

  create_table "fin_currency_master", primary_key: "currency_master_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "base_currency_id", null: false
    t.integer "alternate_currency_id", null: false
    t.date "currency_date", null: false
    t.float "exchange_rate", limit: 53, null: false
    t.index ["currency_date", "base_currency_id", "alternate_currency_id"], name: "unique_curr", unique: true
  end

  create_table "fin_late_fee_plan", primary_key: "late_fee_plan_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "late_fee_plan_name"
    t.integer "ledger_id", null: false
    t.string "description"
    t.integer "college_id", null: false
    t.string "active_flag", limit: 10, default: "Y"
  end

  create_table "fin_late_fee_plan_details", primary_key: "late_fee_detail_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "from_days"
    t.integer "to_days"
    t.float "amount", limit: 53
    t.integer "fine_type", default: 1, comment: "1 for fixed and 2 for per day late fee"
    t.integer "late_fee_plan_id"
  end

  create_table "fin_late_fee_plan_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "fee_plan_id"
    t.integer "late_fee_plan_id"
    t.index ["fee_plan_id", "late_fee_plan_id"], name: "fee_plan_id", unique: true
    t.index ["fee_plan_id", "late_fee_plan_id"], name: "fee_plan_id_2", unique: true
    t.index ["fee_plan_id", "late_fee_plan_id"], name: "fee_plan_id_3", unique: true
    t.index ["fee_plan_id", "late_fee_plan_id"], name: "fee_plan_id_4", unique: true
  end

  create_table "fin_ledger_breakup", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "voucher_unique_number"
    t.integer "ledger_id"
    t.float "amount", limit: 53
    t.integer "student_ledger_id"
    t.string "next_installment_date", limit: 90
    t.string "due_amount", limit: 45
    t.integer "is_adjustment", default: 0
    t.datetime "updated_date", precision: nil
    t.string "ip", limit: 45
    t.integer "updated_by_user_id", default: 0
    t.index ["voucher_unique_number"], name: "fin_ledgerbreakup_uniqvouchernumber"
  end

  create_table "fin_ledger_breakup_stg", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "voucher_unique_number"
    t.integer "ledger_id"
    t.float "amount", limit: 53
    t.integer "student_ledger_id"
  end

  create_table "fin_ledger_master", primary_key: "ledger_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "ledger_name", null: false
    t.integer "vendor_id"
    t.integer "student_id"
    t.integer "emp_id"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.float "opening_balance", limit: 53
    t.date "opening_date"
    t.string "display_ledger_name"
    t.string "account_number"
    t.string "account_holder_name"
    t.string "branch_code"
    t.string "branch_name"
    t.string "ifsc_code"
    t.string "swift_code"
    t.integer "college_id", null: false
    t.string "alias"
    t.integer "customer_id", default: 0
    t.string "ledger_code"
    t.index ["emp_id"], name: "index5"
    t.index ["ledger_id"], name: "fin_ledger_ledgerid", unique: true
    t.index ["student_id"], name: "index3"
    t.index ["vendor_id"], name: "index4"
  end

  create_table "fin_other_module_head_config", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "ledger_id", default: 0, null: false
    t.integer "group_id", null: false
    t.datetime "last_modified", precision: nil
    t.integer "college_id"
    t.column "is_hostel_head", "enum('Y','N')", default: "N", comment: "for hostel head"
    t.column "is_payroll_head", "enum('Y','N')", default: "N"
    t.integer "salary_head_id", default: 0
    t.column "is_Library_head", "enum('Y','N')", default: "N"
  end

  create_table "fin_pattern_designer", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "pattern_name"
    t.date "creation_date"
    t.datetime "last_modified_date", precision: nil
    t.string "ip", limit: 45
    t.integer "user_id"
    t.integer "pattern_for", comment: "1-Balance sheet, 2-Profit and Loss ,3-Trial balance"
    t.text "remark"
  end

  create_table "fin_pattern_group_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "pattern_id"
    t.integer "group_id"
    t.string "pattern_nature", limit: 45, default: "N.A"
    t.integer "sequence"
    t.integer "outher_sequence", default: 0
    t.text "head_ids"
  end

  create_table "fin_sem_fee_plan_mapping", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "academic_year_id"
    t.integer "session_id"
    t.integer "year_sem_id"
    t.integer "fee_plan_id"
    t.integer "college_id"
    t.integer "degree_id"
  end

  create_table "fin_settlement_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "settlement_id"
    t.integer "voucher_id"
    t.string "voucher_number", limit: 50
    t.date "voucher_date"
    t.integer "voucher_mode"
    t.float "amount", limit: 53
    t.text "narration", size: :medium
    t.integer "voucher_unique_number"
    t.float "balance_dr", limit: 53, default: 0.0
    t.float "balance_cr", limit: 53, default: 0.0
  end

  create_table "fin_settlement_details_stg", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "settlement_id"
    t.integer "voucher_id"
    t.string "voucher_number", limit: 50
    t.date "voucher_date"
    t.integer "voucher_mode"
    t.float "amount", limit: 53
    t.text "narration", size: :medium
    t.integer "voucher_unique_number"
    t.float "balance_dr", limit: 53, default: 0.0
    t.float "balance_cr", limit: 53, default: 0.0
  end

  create_table "fin_settlement_master", primary_key: "settlement_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "voucher_id"
    t.string "voucher_number"
    t.date "voucher_date"
    t.integer "voucher_mode"
    t.integer "ledger_id"
    t.float "amount", limit: 53
    t.text "narration", size: :medium
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.integer "college_id"
    t.string "ip", limit: 50
    t.integer "flag", comment: "1- Dr to Cr and 2 -Cr To Dr"
    t.integer "voucher_unique_number"
  end

  create_table "fin_settlement_master_stg", primary_key: "settlement_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "voucher_id"
    t.string "voucher_number"
    t.date "voucher_date"
    t.integer "voucher_mode"
    t.integer "ledger_id"
    t.float "amount", limit: 53
    t.text "narration", size: :medium
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.integer "college_id"
    t.string "ip", limit: 50
    t.integer "flag", comment: "1- Dr to Cr and 2 -Cr To Dr"
    t.integer "voucher_unique_number"
  end

  create_table "fin_student_fee_head_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", default: 0
    t.integer "ledger_id", default: 0
    t.float "amount", limit: 53, default: 0.0
    t.integer "upto_semester", default: 1
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id", default: 0
    t.integer "college_id", default: 0
    t.string "ip", limit: 45
    t.date "voucher_date"
    t.text "narration"
  end

  create_table "fin_student_fee_plan_enrollment", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "fee_plan_id", null: false
    t.integer "student_id", null: false
    t.date "due_date"
    t.integer "fee_status"
    t.datetime "last_modified_date", precision: nil
    t.date "enrollment_date"
    t.integer "validity_days", default: 0
    t.date "posting_date"
    t.integer "sem_fee_plan_mapping_id", default: 0
    t.integer "discount_plan_id", default: 0
  end

  create_table "fin_student_fee_plan_enrollment_stg", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "fee_plan_id", null: false
    t.integer "student_id", null: false
    t.date "due_date"
    t.integer "fee_status", default: 1
    t.datetime "last_modified_date", precision: nil
    t.date "enrollment_date"
    t.integer "validity_days", default: 0
    t.date "posting_date"
    t.integer "sem_fee_plan_mapping_id", default: 0
    t.integer "discount_plan_id", default: 0
  end

  create_table "fin_student_sponsor_mapping", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "fee_plan_id", null: false
    t.integer "student_id", null: false
    t.integer "sponsor_id", null: false
    t.float "sponsor_contribution_percentage", limit: 53, null: false
    t.date "due_date"
    t.date "enrollment_date"
    t.integer "voucher_unique_number", default: 0
    t.index ["fee_plan_id"], name: "index2"
    t.index ["sponsor_id"], name: "index4"
    t.index ["student_id"], name: "index3"
  end

  create_table "fin_student_sponsors", primary_key: "student_sponsor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "sponsor_id"
    t.integer "sponsor_category", comment: "1 - for sponsor and 2-non sponsor"
    t.integer "user_id"
    t.float "sponsor_contribution", limit: 53
    t.integer "year_or_sem"
    t.integer "degree_id"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "intake_id"
    t.date "valid_till"
    t.column "is_active", "enum('N','Y')", default: "Y"
    t.integer "major_source_of_fund", default: 0
    t.integer "upto_semester", default: 0
    t.string "sponsor_amount_type", limit: 45
    t.integer "fee_head_id", default: 0
    t.column "hundred_percentage_sponsor", "enum('Y','N')", default: "N"
    t.index ["sponsor_id"], name: "index3"
    t.index ["student_sponsor_id"], name: "index2"
    t.index ["user_id"], name: "index4"
  end

  create_table "fin_voucher", primary_key: "voucher_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_number", null: false
    t.date "voucher_date", null: false
    t.integer "voucher_mode", null: false
    t.integer "ledger_id", null: false
    t.float "amount", limit: 53, null: false
    t.text "narration", size: :medium
    t.string "check_dd_number", limit: 256
    t.date "check_dd_date"
    t.string "bank_and_branch", limit: 256
    t.integer "budget_id"
    t.integer "cost_center_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "voucher_unique_number", null: false
    t.date "clearing_date"
    t.integer "college_id", null: false
    t.integer "check_status", default: 0, comment: "1- cleared ,2-for bounce"
    t.date "bounce_date"
    t.string "bounce_reason", limit: 256
    t.integer "voucher_status", default: 0, comment: "2 -for bounce ,3-for refund,4-cancel receipt"
    t.string "posted_by", limit: 256
    t.integer "payment_mode", default: 0
    t.integer "currency_master_id", default: 0
    t.float "alternate_amount", limit: 53, default: 0.0, null: false
    t.float "exchange_rate", limit: 53, default: 1.0, null: false
    t.integer "auto_number", default: 0
    t.string "person_name", default: ""
    t.string "phone_no", default: ""
    t.string "bill_number", limit: 100
    t.date "bill_date"
    t.integer "project_id", default: 0
    t.string "doc_ref_no"
    t.string "file_name"
    t.string "file_location"
    t.string "approved_by", limit: 256
    t.string "is_online"
    t.string "posted_to_tally", limit: 45, default: "N"
    t.string "online_transcation_no"
    t.string "next_installment_date", limit: 90
    t.string "due_amount", limit: 45
    t.index ["ledger_id"], name: "fin_voucher_ledgerid"
    t.index ["voucher_id"], name: "fin_voucher_voucherid"
    t.index ["voucher_unique_number"], name: "fin_voucher_uniquevoucherid"
  end

  create_table "fin_voucher_setup", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "voudher_type_id", null: false
    t.date "starting_date"
    t.integer "starting_serial_number"
    t.string "prefix"
    t.string "suffix"
    t.integer "current_voucher_number"
    t.integer "entry_mode", default: 1, null: false
    t.date "lock_date", default: "1901-01-01"
    t.integer "cost_center_budget_details", default: 1
    t.integer "is_back_date_allow", default: 1
    t.integer "is_future_date_allow", default: 1
    t.integer "voucher_number_length", default: 1
  end

  create_table "fin_voucher_stg", primary_key: "voucher_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_number", null: false
    t.date "voucher_date", null: false
    t.integer "voucher_mode", null: false
    t.integer "ledger_id", null: false
    t.float "amount", limit: 53, null: false
    t.text "narration", size: :medium
    t.string "check_dd_number", limit: 256
    t.date "check_dd_date"
    t.string "bank_and_branch", limit: 256
    t.integer "budget_id"
    t.integer "cost_center_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "voucher_unique_number", null: false
    t.date "clearing_date"
    t.integer "college_id", null: false
    t.integer "check_status", default: 0, null: false
    t.date "bounce_date"
    t.string "bounce_reason", limit: 256
    t.integer "voucher_status", default: 0, comment: "5-for cancel voucher "
    t.string "posted_by"
    t.integer "currency_master_id", default: 0
    t.float "alternate_amount", limit: 53, default: 0.0, null: false
    t.float "exchange_rate", limit: 53, default: 1.0, null: false
    t.integer "auto_number", default: 0
    t.string "person_name", default: ""
    t.string "phone_no", default: ""
    t.string "bill_number", limit: 100
    t.date "bill_date"
    t.integer "project_id", default: 0
    t.string "doc_ref_no"
    t.string "file_name"
    t.string "file_location"
    t.string "approved_by", limit: 256
    t.string "is_online"
    t.integer "payment_mode", default: 0
    t.string "online_transcation_no"
    t.string "next_installment_date", limit: 90
    t.string "due_amount", limit: 45
  end

  create_table "fin_voucher_temp", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "voucher_id", default: 0, null: false
    t.string "voucher_number", null: false
    t.date "voucher_date", null: false
    t.integer "voucher_mode", null: false
    t.integer "ledger_id", null: false
    t.float "amount", limit: 53, null: false
    t.text "narration", size: :medium
    t.string "check_dd_number", limit: 256
    t.date "check_dd_date"
    t.string "bank_and_branch", limit: 256
    t.integer "budget_id"
    t.integer "cost_center_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "voucher_unique_number", null: false
    t.date "clearing_date"
    t.integer "college_id", null: false
    t.integer "check_status", default: 0, comment: "1- cleared ,2-for bounce"
    t.date "bounce_date"
    t.string "bounce_reason", limit: 256
    t.integer "voucher_status", default: 0, comment: "2 -for bounce ,3-for refund,4-cancel receipt"
    t.string "posted_by", limit: 256
    t.integer "payment_mode", default: 0
    t.integer "currency_master_id", default: 0
    t.float "alternate_amount", limit: 53, default: 0.0, null: false
    t.float "exchange_rate", limit: 53, default: 1.0, null: false
    t.integer "auto_number", default: 0
    t.string "person_name", default: ""
    t.string "phone_no", default: ""
    t.string "bill_number", limit: 100
    t.date "bill_date"
    t.integer "project_id", default: 0
    t.string "doc_ref_no"
    t.string "file_name"
    t.string "file_location"
    t.string "approved_by", limit: 256
    t.string "is_online"
    t.string "posted_to_tally", limit: 45, default: "N"
    t.string "online_transcation_no"
    t.string "next_installment_date", limit: 90
    t.string "due_amount", limit: 45
  end

  create_table "fin_voucher_template", primary_key: "voucher_template_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "voucher_number", null: false
    t.date "voucher_date"
    t.integer "voucher_mode", null: false
    t.integer "ledger_id", null: false
    t.float "amount", limit: 53, null: false
    t.string "narration", limit: 256
    t.string "check_dd_number", limit: 256
    t.date "check_dd_date"
    t.string "bank_and_branch", limit: 256
    t.integer "budget_id"
    t.integer "cost_center_id"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "voucher_unique_number", null: false
    t.date "clearing_date"
    t.integer "college_id", null: false
    t.string "template_name"
    t.integer "currency_master_id", default: 0
    t.float "alternate_amount", limit: 53, default: 0.0, null: false
    t.float "exchange_rate", limit: 53, default: 1.0, null: false
    t.integer "template_group_id", default: 0
    t.integer "plan_type", default: 3
    t.integer "validity_days", default: 0
    t.column "active_flag", "enum('Y','N')", default: "Y"
    t.text "degree_id", size: :medium
    t.string "upto_semester", default: "1"
    t.column "installment_applicable", "enum('Y','N')", default: "N"
    t.date "installment_valid_till"
    t.date "limit_reenroll_date"
    t.integer "amount_type", default: 2, comment: "1-For % wise and 2-Fixed"
    t.column "sponsor_applicable", "enum('Y','N')", default: "N"
    t.integer "discount_ledger_id", default: 0
    t.index ["voucher_unique_number"], name: "index2"
  end

  create_table "financial_year", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "to_date"
    t.date "from_date"
    t.string "year_name", limit: 256
  end

  create_table "floor_room", primary_key: "room_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "room_no", limit: 20, null: false
    t.integer "floor_id", null: false
    t.integer "total_number_of_room", null: false
    t.string "description"
    t.integer "roomFor", null: false
    t.integer "degree_id"
    t.integer "room_status", default: 0
    t.integer "room_type", default: 0
  end

  create_table "gate_pass", primary_key: "gatepass_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "gatepass_no", null: false
    t.date "gatepass_date", null: false
    t.integer "college_id", null: false
    t.integer "store_id", null: false
    t.integer "vendor_id", null: false
    t.string "return_type", limit: 15
    t.string "ip", limit: 15, null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "vehicle", limit: 25
    t.string "transport", limit: 25
    t.string "provider", limit: 55
    t.string "receiver", limit: 55
    t.string "security_entry_no"
    t.date "security_entry_date"
    t.string "reference_no"
    t.integer "is_emp", default: 0, null: false, comment: "0 for vendor,1 for employee"
  end

  create_table "gatepass_details", primary_key: "gpd_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "gatepass_id", null: false
    t.integer "item_id", null: false
    t.float "quantity", limit: 53, null: false
    t.integer "qty_unit_id", null: false
    t.string "reason", null: false, collation: "utf8_general_ci"
    t.date "approx_date"
    t.string "ip", limit: 15, null: false, collation: "utf8_general_ci"
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false, collation: "utf8_general_ci"
  end

  create_table "gatepass_receipts", primary_key: "receipt_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "gatepass_id", null: false
    t.integer "item_id", null: false
    t.float "quantity", limit: 53, null: false
    t.integer "receipt_by", null: false
    t.string "bill_no", limit: 25
    t.date "bill_date"
    t.string "challan_no", limit: 25
    t.date "challan_date"
    t.integer "condition", null: false
    t.date "receipt_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "unit_id"
    t.integer "gpd_id", null: false
  end

  create_table "gd_pi_selection_status", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "sno", null: false
    t.integer "status", default: 1, comment: "1-selected,2-OnHold,3-Rejected"
    t.integer "email_status", default: 1, comment: "1-Failed,2-Sending,3-pending"
    t.integer "sms_status", default: 1, comment: "1-Failed,2-Sending,3-pending"
    t.string "comment", limit: 256, collation: "utf8_general_ci"
  end

  create_table "gh_account_payble", primary_key: "payble_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "booking_id", null: false
    t.float "amount", limit: 53
    t.integer "billing_id", null: false
  end

  create_table "gh_bed_info", primary_key: "bed_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "bed_no"
    t.integer "sub_room_id"
    t.string "description"
  end

  create_table "gh_billing_info", primary_key: "billing_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "first_name", limit: 256
    t.string "last_name", limit: 256
    t.string "email_id", limit: 256
    t.text "address", size: :tiny
    t.string "contact_no", limit: 50
    t.string "type_of_booking", null: false
  end

  create_table "gh_block_info", primary_key: "block_id", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.string "block_name", null: false
    t.string "address", null: false
    t.string "phone_no", limit: 30
    t.string "email_id"
    t.string "manager_name"
  end

  create_table "gh_booking_info", primary_key: "booking_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.date "arrival_date"
    t.date "departure_date"
    t.integer "bed_id"
    t.integer "sub_room_id"
    t.integer "room_id"
    t.integer "status", default: 0, comment: "0:booked, 1:confirmed,2:cancelled,3:deallocated"
    t.string "refer_by", limit: 256
    t.string "payment_status", limit: 100
    t.date "booking_date"
  end

  create_table "gh_floor_info", primary_key: "floor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "floor_no", null: false
    t.integer "block_id", null: false
    t.string "description"
    t.index ["block_id"], name: "block_id"
  end

  create_table "gh_floor_room_info", primary_key: "room_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "room_no", null: false
    t.integer "floor_id", null: false
    t.string "description"
    t.index ["floor_id"], name: "room_id"
  end

  create_table "gh_guest_info", primary_key: "guest_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "address", size: :tiny
    t.string "contact_no", limit: 50
    t.string "email"
    t.string "state"
    t.string "pincode"
    t.string "organization"
    t.integer "nationality", comment: "0 : Indian , 1: Foreigner"
    t.string "purpose_to_visit"
    t.string "comment"
    t.string "file_name"
    t.string "location"
    t.integer "booking_id", null: false
    t.string "arrival_time", limit: 60
    t.string "departure_time", limit: 60
  end

  create_table "gh_occupied_ledger_info", primary_key: "transaction_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "bulk_transaction_id"
    t.integer "booking_id", null: false
    t.integer "fee_head_id", null: false
    t.float "amount", limit: 53, null: false
    t.integer "transaction_type", null: false, comment: "1:Credit,2:Debit"
    t.integer "cr_trans_status", default: 0, null: false, comment: "0: Pending 1: completed"
    t.date "transaction_date"
    t.integer "payment_mode"
    t.integer "updated_by"
    t.string "comment"
    t.integer "parent_transaction_id", default: 0, null: false, comment: "0: if credit entry , transaction_id of credit entry is become parent_transaction id of debit entr"
    t.string "reciept_number", limit: 50
  end

  create_table "gh_sub_room_info", primary_key: "sub_room_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "sub_room_no", null: false
    t.integer "room_id", null: false
    t.string "description"
  end

  create_table "gh_subroom_price_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "sub_room_id", null: false
    t.float "sub_room_price", limit: 53, null: false
    t.integer "occupancy"
    t.integer "price_of", default: 0, unsigned: true
  end

  create_table "global_announcement", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title"
    t.string "college_id", limit: 100
    t.string "user_type", limit: 45
    t.integer "send_type"
    t.string "mail_description"
    t.string "sms_description"
    t.text "attachment", size: :medium
    t.date "sent_date"
  end

  create_table "grade_master", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "grade_id"
    t.string "interpretation"
    t.float "grade_point"
    t.integer "user_id"
    t.datetime "last_modified_date", precision: nil
    t.string "ip"
    t.string "credit_earn", limit: 10, default: "N"
    t.integer "group_id"
  end

  create_table "grade_point_groups", primary_key: "group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "group_name"
    t.integer "user_id"
    t.datetime "last_modified_date", precision: nil
    t.string "ip"
  end

  create_table "grade_point_groups_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "degree_id", null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip"
    t.integer "exam_id", null: false
  end

  create_table "grade_scheme_group_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "grade_scheme_group_id", null: false
    t.integer "grade_id", null: false
    t.float "min_marks", limit: 53, null: false
    t.float "max_marks", limit: 53, null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip", null: false
    t.integer "group_id"
  end

  create_table "grade_scheme_group_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "grade_scheme_group_id", null: false
    t.integer "course_id", null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip"
  end

  create_table "grade_scheme_groups", primary_key: "group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "group_name", null: false
    t.integer "grade_group_id", null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip"
    t.integer "overall", default: 0
  end

  create_table "graduation", primary_key: "graduation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "intake_id", null: false
    t.integer "department_id", null: false
    t.integer "student_id", null: false
    t.integer "degree_id", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_dade", precision: nil
    t.string "active_flag", limit: 45, default: "Y", null: false
  end

  create_table "graduation_requirement", primary_key: "graduation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "intake_id", default: 0, null: false
    t.integer "department_id", default: 0, null: false
    t.integer "degree_id", default: 0, null: false
    t.float "enrichement", limit: 53, default: 0.0, null: false
    t.float "broadening", limit: 53, default: 0.0, null: false
    t.float "core_major_minor", limit: 53, default: 0.0, null: false
    t.integer "user_id", default: 0, null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.string "active_flag", limit: 45, default: "Y", null: false
  end

  create_table "grant_document", primary_key: "document_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "project_id", default: 0, null: false
    t.string "doc_ref_no", limit: 45, default: "null"
    t.string "file_name"
    t.string "file_loc"
    t.integer "user_id", default: 0, null: false
    t.date "last_modified_date"
    t.string "ip"
    t.string "active_flag", limit: 45, default: "Y"
  end

  create_table "grant_document_search", primary_key: "doc_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "doc_ref_no"
    t.string "doc_name"
    t.string "doc_url"
    t.string "transaction_type"
    t.integer "user_id", default: 0, null: false
    t.string "user_type"
    t.string "doc_table"
    t.string "project_id"
    t.datetime "last_updated_date", precision: nil
    t.string "active_flag", limit: 45, default: "Y"
    t.integer "doc_table_id", default: 0, null: false
    t.integer "college_id", default: 0, null: false
    t.datetime "transaction_date", precision: nil
  end

  create_table "grant_project", primary_key: "project_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "financial_year", default: 0, null: false
    t.string "project_name", null: false
    t.string "grant_agencies", null: false
    t.text "description", null: false
    t.integer "Status", default: 0, null: false, comment: "0 for 'active',1 for 'close'"
    t.date "last_modified_date"
    t.integer "user_id"
    t.string "ip"
    t.string "active_flag", limit: 45, default: "Y", null: false
  end

  create_table "grant_user", primary_key: "grant_user_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "project_id", default: 0, null: false
    t.string "user_type", limit: 45
    t.string "updated_by", limit: 45, null: false
    t.date "last_modified_date"
    t.string "ip", default: "null"
    t.string "active_flag", limit: 45, default: "Y"
  end

  create_table "groups", primary_key: "group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "group_name", null: false
    t.integer "parent_id", default: -1, null: false
    t.integer "sequence_no", default: 1, null: false, unsigned: true
    t.integer "group_nature", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "account_nature", limit: 2, default: "Z", comment: "A-L-I-E (Assets, Liability, Income,Expense)"
    t.string "alias"
    t.string "group_code"
    t.string "tally_equivalent_group"
    t.index ["group_name"], name: "GroupName", unique: true
  end

  create_table "hod_rights", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.text "college_id"
    t.text "department_id"
    t.text "intake"
    t.text "academic_year_id"
    t.text "term"
    t.text "year_or_sem"
    t.text "degree_id"
    t.integer "update_by"
    t.string "update_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "update_rights", "enum('N','Y')", default: "N", comment: "N-No,Y-Yes"
    t.text "course_id"
  end

  create_table "holiday_calendar", id: false, charset: "utf8", force: :cascade do |t|
    t.date "holiday_date", null: false
    t.boolean "holiday_type", null: false, comment: "0: Regular(Sunday), 1: General (other than sunday)"
    t.string "holiday_description", limit: 512
    t.integer "company_id", null: false
    t.integer "is_teaching", default: 0
    t.index ["company_id"], name: "holiday_calendar_ibfk_1"
  end

  create_table "hostal_fees", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "hostal_id", null: false
    t.integer "fees_head_id", null: false
    t.integer "amount", null: false
    t.index ["fees_head_id"], name: "fees_head_id"
    t.index ["hostal_id"], name: "hostal_id"
  end

  create_table "hostal_info", primary_key: "hostal_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "hostal_name", limit: 256, null: false
    t.string "address", limit: 256, null: false
    t.string "phone_number", limit: 128
    t.string "email", limit: 128
    t.integer "no_of_rooms"
    t.string "warden_name", limit: 128
    t.string "manager_name", limit: 128
    t.integer "is_mess_facility", default: 1, comment: "1:mess available  , 0:mess facility not available"
    t.string "hostal_type", limit: 256, null: false
    t.string "college_id"
    t.integer "manager_id"
    t.integer "warden_id"
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.text "description"
    t.string "file_name"
    t.integer "file_id", default: 0
  end

  create_table "hostel_attendance", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "hostel_id", null: false
    t.date "attendance_date", null: false
    t.integer "status", limit: 1, comment: "2-Leave,1-Present"
    t.string "remarks"
  end

  create_table "hostel_checkin_checkout_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "user_type", default: 0, null: false
    t.integer "hostal_id", default: 0, null: false
    t.integer "room_id", default: 0, null: false
    t.integer "bed_id", default: 0, null: false
    t.integer "key_handover_by", default: 0, null: false
    t.date "key_handover_date"
    t.time "key_handover_time"
    t.date "check_in_date"
    t.time "check_in_time"
    t.date "check_out_date"
    t.time "check_out_time"
    t.integer "key_handover_to"
    t.integer "updated_by", default: 0, null: false
    t.datetime "last_modified_date", precision: nil
    t.string "ip"
    t.string "remark"
  end

  create_table "hostel_configuration", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_type", comment: "2-Officer,4-Faculty,5-Employee,6-Guest"
    t.column "active_flag", "enum('Y','N')", default: "Y"
  end

  create_table "hostel_cost_center_mapping", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "cost_center_id", null: false
    t.boolean "type", null: false, comment: "1-Hostel,2-Floor,3-Room"
    t.integer "hostel_floor_room_id", null: false
  end

  create_table "hostel_floor", primary_key: "floor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "floor_name", limit: 50
    t.integer "hostel_id", null: false
    t.string "floor_number", limit: 50, null: false
  end

  create_table "hostel_gate_pass", primary_key: "hostel_gate_pass_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "hostel_id", default: 0, null: false
    t.integer "student_id", default: 0, null: false
    t.date "out_date", null: false
    t.string "out_time", default: "null", null: false
    t.date "expected_in_date", null: false
    t.string "expected_in_time", default: "null"
    t.text "going_with"
    t.date "arrival_in_date"
    t.string "arrival_in_time", default: "null"
    t.text "reason_for_leaving"
    t.text "arrival_remark"
    t.integer "gate_pass_user_id", default: 0, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "status", default: "Out Side"
    t.integer "arrival_user_id", default: 0
    t.string "exact24_out_time", default: "null"
    t.string "exact24_in_time", default: "null"
    t.string "exact24_arrival_time", default: "null"
  end

  create_table "iie_registration", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "guest_id", default: 0, null: false
    t.string "member_id"
    t.integer "registration_type_id", default: 0, null: false
    t.float "amount", limit: 53, default: 0.0, null: false
    t.date "member_formdate"
    t.date "member_todate"
    t.string "dd_number"
    t.date "dd_date"
    t.text "business_details"
    t.string "ip"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "updated_by", default: 0, null: false
  end

  create_table "iie_registration_incubation", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "member_id", default: 0, null: false
    t.integer "guest_id", default: 0, null: false
    t.string "company_name"
    t.string "is_registered", default: "no"
    t.string "registration_id"
    t.integer "organization_type_id", default: 0, null: false
    t.text "address"
    t.string "phone_no"
    t.string "email_id"
    t.string "event_sponsors_name"
    t.date "registration_date"
    t.float "amount_in_business", limit: 53, default: 0.0, null: false
    t.string "source_of_funds"
    t.string "amount_sanctioned", default: "no"
    t.float "amount", limit: 53, default: 0.0, null: false
    t.integer "service_required_id", default: 0, null: false
    t.text "referee_details"
    t.string "ip"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "updated_by", default: 0, null: false
    t.integer "unique_idea_no", default: 0, null: false
    t.column "is_primary_member", "enum('Y','N')", default: "N", null: false
  end

  create_table "indent_item_details", primary_key: "indent_item_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "indent_id", null: false
    t.integer "item_id", default: 0, null: false
    t.integer "kit_id", default: 0, null: false
    t.integer "unit_id", default: 0, null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.text "remarks", size: :tiny
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.date "required_date", null: false
  end

  create_table "insurance_details", primary_key: "ins_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "insurance_id", null: false
    t.integer "item_id", null: false
    t.integer "costcenter_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "Ins_frequency", default: 0, null: false
  end

  create_table "insurance_item_serials", primary_key: "insurance_item_serial_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "ins_detail_id", null: false
    t.integer "item_serial_no_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "insurance_records", primary_key: "insurance_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "insurance_policy_no", null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.integer "insurance_agencies_id", null: false
    t.integer "policy_type", null: false
    t.string "premium", limit: 55, null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id", null: false
    t.integer "parent_id", default: 0, null: false
    t.column "renewal_flag", "enum('N','Y')", default: "N", null: false
    t.index ["insurance_policy_no"], name: "policy_no", unique: true
  end

  create_table "intake_info", primary_key: "intake_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "intake_name", limit: 100, null: false
    t.string "intake_description", limit: 256
  end

  create_table "intake_masters", primary_key: "intake_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "intake_name", limit: 50, null: false
    t.text "intake_desc"
    t.integer "college_id", null: false
    t.string "intake_code"
    t.integer "sequence", default: 0
    t.string "show_online_application_intake", limit: 45, default: "yes"
    t.index ["intake_name", "college_id"], name: "intake_name", unique: true
  end

  create_table "internal_transfers", primary_key: "internal_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "from_user_id"
    t.integer "to_store_id", null: false
    t.integer "from_store_id", null: false
    t.integer "item_id", null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.date "transfer_date", null: false
    t.integer "kit_id", null: false
    t.integer "unit_id", null: false
    t.integer "condition_type"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "received_by", default: 0
    t.date "received_date"
    t.integer "received_status", default: 0, comment: "0 for not received ,1 for received "
    t.integer "requisition_id", default: 0, null: false
    t.integer "issue_type", default: 0, null: false
  end

  create_table "interview_details", primary_key: "interview_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "job_id", null: false
    t.integer "candidate_id", null: false
    t.integer "interviewer_id", null: false
    t.date "interview_date", null: false
    t.time "interview_time", null: false
    t.string "location", limit: 128
    t.integer "method", null: false, comment: "from drop down table type interview_method"
    t.text "feedback_note", size: :medium
    t.integer "action", comment: "from drop down table type interview_feedback_action"
    t.integer "round", null: false
    t.integer "status", default: 0, null: false, comment: "0: Pending,1: Done , 2: Canceled"
    t.integer "committee_id", default: 0
    t.index ["candidate_id"], name: "candidate_id"
    t.index ["interviewer_id"], name: "interviewer_id"
    t.index ["job_id"], name: "job_id"
  end

  create_table "inv_user_rights", primary_key: "inv_rights_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "inv_right_user_id", null: false
    t.integer "link_id", null: false
    t.column "inv_add", "enum('Y','N')"
    t.column "inv_update", "enum('Y','N')"
    t.column "inv_delete", "enum('Y','N')"
    t.column "inv_export", "enum('Y','N')"
    t.date "add_from_date"
    t.date "add_to_date"
    t.date "update_from_date"
    t.date "update_to_date"
    t.date "delete_from_date"
    t.date "delete_to_date"
    t.date "export_from_date"
    t.date "export_to_date"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id", default: 0
  end

  create_table "inventory_purchase_order", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "party_name", limit: 512, null: false
    t.string "order_no", limit: 50, null: false, comment: "department name/.. /.. /finanacial year(2009-10)"
    t.integer "req_no"
    t.date "order_date", null: false
    t.text "product_description", size: :medium, null: false
    t.integer "product_quantity", default: 0, null: false
    t.integer "product_unit"
    t.float "unit_price", limit: 53
    t.float "total_price", limit: 53
    t.integer "user_id"
    t.string "product_name", limit: 150, null: false
    t.string "quotation_number", limit: 128
    t.integer "pre_amount"
    t.string "pre_desc", limit: 256
    t.integer "order_type"
  end

  create_table "invigilator_information", primary_key: "invigilator_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "employee_id"
    t.string "first_name", limit: 250
    t.string "middle_name", limit: 250
    t.string "last_name", limit: 250
    t.string "address"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.string "pin", limit: 250
    t.string "email", limit: 150
    t.string "phone", limit: 250
    t.string "organisation", limit: 250
    t.string "org_address", limit: 250
    t.string "org_phone", limit: 250
    t.string "org_designation", limit: 250
    t.string "org_email", limit: 150
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "previous_organisation", limit: 250
    t.integer "experiance"
    t.string "comments", limit: 250
    t.string "program", limit: 250
    t.string "institute", limit: 250
    t.integer "passing_year"
    t.string "ip", limit: 200
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id"
  end

  create_table "invigilator_payment", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "invigilator_id", null: false
    t.integer "course_id"
    t.float "payment", limit: 53
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "room_id"
    t.integer "examtimetable_id"
  end

  create_table "inward_entry", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "inward_no", limit: 45
    t.string "sent_from", limit: 45
    t.string "received_by", limit: 45
    t.string "received_for", limit: 45
    t.string "nature_of_item", limit: 45
    t.integer "service_provider", default: 0
    t.string "docket_no", limit: 45
    t.integer "item_condition", default: 0
    t.date "receiving_date"
    t.text "remarks"
    t.string "attachment"
    t.string "last_modification_date", limit: 45
    t.integer "updated_by", default: 0
    t.string "ip", limit: 45
    t.string "handover_to", limit: 45
  end

  create_table "issue_documents", primary_key: "issue_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "degree_id", null: false
    t.string "issue_date"
    t.string "issue_by"
    t.float "fees_amount", limit: 53
    t.string "issued_documents", null: false
    t.string "attachment_id"
    t.string "issue_source"
    t.string "comments"
  end

  create_table "item_closing_stock", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "item_id"
    t.string "item_name"
    t.string "unit_name"
    t.float "rcvd", limit: 53
    t.float "issued", limit: 53
    t.float "closure", limit: 53
    t.string "date"
  end

  create_table "item_dimension_matrix", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "dimension_id"
    t.integer "item_id"
    t.string "dimension_value"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "item_distribution", primary_key: "item_distribution_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "department_id"
    t.integer "faculty_id"
    t.datetime "distribution_date", precision: nil, null: false
    t.datetime "expected_receive_date", precision: nil
    t.datetime "receive_date", precision: nil
    t.text "comments", size: :medium
    t.integer "status", default: -1, null: false, comment: "-1:booked,0: issue, 1: received , 2: distribute"
    t.integer "user_id"
    t.string "concern_person", limit: 50
    t.string "no_of_days", limit: 30
    t.string "page_no", limit: 20
    t.string "serial_no", limit: 40
    t.string "college_name", limit: 512
    t.index ["department_id"], name: "department_id"
    t.index ["faculty_id"], name: "faculty_id"
    t.index ["item_id"], name: "Product"
  end

  create_table "item_issue_hostel_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "hostel_floor_room_id"
    t.integer "item_id"
    t.integer "cost_center_id"
    t.integer "user_id"
    t.integer "item_issue_id", default: 0, null: false
  end

  create_table "item_issues", primary_key: "item_issue_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "transfer_date", null: false
    t.integer "to_user_id", null: false
    t.integer "item_id", null: false
    t.integer "kit_id", null: false
    t.integer "unit_id", null: false
    t.float "quantity_issued", limit: 53, default: 0.0, null: false
    t.integer "requisition_detail_id", null: false
    t.integer "cost_center_id", null: false
    t.integer "from_store_id", null: false
    t.date "return_date"
    t.string "return_time", limit: 30
    t.integer "issue_type"
    t.string "remarks"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.datetime "accepted_date", precision: nil
    t.float "closer_quantity", limit: 53
    t.string "batch_no"
    t.integer "batch_no_id", default: 0, null: false
    t.date "expiry_date"
  end

  create_table "item_kit_details", primary_key: "item_kit_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "kit_id", null: false
    t.integer "item_id", null: false
    t.float "item_quantity", limit: 53, default: 0.0, null: false
    t.integer "unit_id", default: 0, null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
  end

  create_table "item_kits", primary_key: "kit_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "kit_name", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
  end

  create_table "item_receipts", primary_key: "item_receipt_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "college_id", null: false
    t.date "item_receipt_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "challan_no", limit: 55
    t.date "challan_date"
    t.string "security_entry_no"
    t.date "security_entry_date"
    t.integer "is_cash_purchase", default: 0, null: false, comment: "0 for credit purchase,1 for cash purchase"
    t.string "attachment"
    t.string "file_name"
  end

  create_table "item_serials", primary_key: "item_serial_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_id", null: false
    t.string "prefix", null: false
    t.integer "serial_no", null: false
    t.string "suffix"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "purchase_bill_no"
    t.date "purchase_date"
    t.integer "purchase_vendor_id"
    t.float "purchase_rate", limit: 53
    t.column "under_warranty", "enum('N','Y')"
    t.date "upto_date"
    t.column "under_amc", "enum('N','Y')"
    t.integer "amc_id"
    t.column "under_insurance", "enum('N','Y')"
    t.integer "insurance_id"
    t.column "depreciation", "enum('N','Y')"
    t.float "dep_as_per_it", limit: 53
    t.float "dep_as_per_com_nom", limit: 53
    t.float "netblockasof_today", limit: 53
    t.float "net_block_as_of_today", limit: 53, default: 0.0
    t.string "complete_serial_no"
    t.float "purchase_value", limit: 53
    t.float "uptodate_depreciation", limit: 53
    t.date "capitalization_date"
    t.integer "item_serials_storeId"
    t.integer "item_serials_locId"
    t.integer "item_serials_costcenterid"
    t.integer "item_serials_userId"
  end

  create_table "item_stocks", primary_key: "item_stock_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_id"
    t.integer "kit_id"
    t.decimal "opening_stock_quantity", precision: 12, scale: 3, null: false
    t.integer "unit_id", null: false
    t.decimal "opening_stock_value", precision: 12, scale: 2
    t.integer "stock_at_store_id"
    t.integer "stock_at_storage_location_id"
    t.integer "stock_at_cost_center_id"
    t.integer "stock_at_user_id"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.decimal "upTo_date_depreciation_value", precision: 12, scale: 2
    t.decimal "as_on_today_value", precision: 12, scale: 2
    t.string "batch_no"
    t.date "expiry_date"
    t.date "as_on_date"
  end

  create_table "item_stocks_inventory_import", primary_key: "item_stock_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_id", default: 0, null: false
    t.string "item_name"
    t.integer "kit_id", default: 0, null: false
    t.string "kit_name"
    t.decimal "opening_stock_quantity", precision: 12, scale: 3
    t.integer "unit_id"
    t.string "unit_name"
    t.decimal "opening_stock_value", precision: 12, scale: 2
    t.integer "stock_at_store_id", default: 0, null: false
    t.string "store_name"
    t.integer "stock_at_storage_location_id", default: 0, null: false
    t.string "location_name"
    t.integer "stock_at_cost_center_id", default: 0, null: false
    t.string "cost_center_name"
    t.integer "stock_at_user_id", default: 0, null: false
    t.string "user_name"
    t.column "sys_defined", "enum('N','Y')", default: "N"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", default: "Y"
    t.string "status", limit: 45, default: "Not Success", null: false
    t.string "batch_no"
    t.date "expiry_date"
    t.date "as_on_date"
    t.decimal "as_on_today_value", precision: 12, scale: 2
    t.decimal "upTo_date_depreciation_value", precision: 12, scale: 2
  end

  create_table "item_transaction_serial_no", primary_key: "item_transaction_serialno_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "transaction_id", null: false
    t.integer "transaction_type", null: false, comment: "receipt_id=1,issued_id=2,returnable_id=3,gate_pass_id=4,gete_pass_receipt_id=5"
    t.integer "serialno_id", null: false
    t.integer "condition_type"
    t.datetime "transaciton_date", precision: nil, null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "items", primary_key: "item_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "dimension_set_id"
    t.string "item_name", null: false
    t.text "item_description"
    t.string "part_no", limit: 20
    t.decimal "safety_level", precision: 12, scale: 3, default: "0.0", null: false
    t.decimal "reorder_level", precision: 12, scale: 3, default: "0.0", null: false
    t.decimal "min_level", precision: 12, scale: 3, default: "0.0", null: false
    t.decimal "max_level", precision: 12, scale: 3, default: "0.0", null: false
    t.decimal "critical_level", precision: 12, scale: 3, default: "0.0", null: false
    t.decimal "economic_order_quantity", precision: 12, scale: 3, default: "0.0", null: false
    t.string "bar_code", limit: 20
    t.string "abc_class", limit: 5
    t.integer "lead_time_days", default: 0, null: false
    t.string "non_stock_item", limit: 1, default: "N", null: false
    t.integer "unit_id", null: false
    t.integer "preffered_vendor_id", default: 0, null: false
    t.string "ip", limit: 200
    t.timestamp "last_modified_date"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "udf1"
    t.string "udf2"
    t.string "udf3"
    t.string "udf4"
    t.string "udf5"
    t.integer "user_id", null: false
    t.column "sys_defined", "enum('Y','N')", default: "N", null: false
    t.string "purchase_bill_no", limit: 55
    t.date "purchase_date"
    t.integer "purchase_vendor_id"
    t.float "purchase_rate", limit: 53
    t.column "under_warranty", "enum('N','Y')"
    t.date "upto_date"
    t.column "under_amc", "enum('N','Y')"
    t.integer "amc_id"
    t.column "under_insurance", "enum('N','Y')"
    t.integer "insurance_id"
    t.column "depreciation", "enum('N','Y')"
    t.float "dep_as_per_it", limit: 53
    t.float "dep_as_per_com_nom", limit: 53
    t.index ["item_name"], name: "itemName", unique: true
  end

  create_table "items_dimensions", primary_key: "item_dimension_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.integer "dimension_id", null: false
    t.integer "item_id", null: false
    t.string "dimension_value", null: false
    t.column "sys_defined", "enum('Y','N')", default: "N"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", limit: 1, null: false
  end

  create_table "job_opening", primary_key: "job_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 128, null: false
    t.text "description", size: :medium
    t.string "attach_file", limit: 128
    t.integer "action", default: 0, null: false, comment: "from drop down table job_opening_action"
    t.integer "hiring_manager_id", null: false
    t.date "valid_till", null: false
    t.integer "department_id"
    t.integer "designation_id", default: 0
    t.integer "position", default: 0
    t.index ["hiring_manager_id"], name: "hiring_manager_id"
  end

  create_table "job_type", primary_key: "job_type_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "job_type", limit: 128, null: false
    t.string "description", limit: 512
    t.integer "job_type_leave"
  end

  create_table "job_type_leave", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "job_type_id", null: false
    t.float "job_type_leave", null: false
    t.integer "year"
    t.integer "leave_type", null: false
    t.date "from_date"
    t.date "to_date"
    t.index ["job_type_id"], name: "job_type_leave"
  end

  create_table "job_type_salary_head", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "job_type_id", null: false
    t.integer "salary_head_id", null: false
    t.integer "amount"
    t.integer "deduction_fixed", default: 0
    t.integer "deduction_calculated", default: 0
    t.integer "deduction_type", default: 0
    t.string "deduction_values", comment: "Comma seprated values and last value is percentage"
    t.index ["job_type_id"], name: "job_type_id"
    t.index ["salary_head_id"], name: "salary_head_id"
  end

  create_table "journal_details", primary_key: "journal_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "journal_title", limit: 128
    t.string "author_name", limit: 128
    t.string "jornal_sourrce", limit: 128
    t.string "journal_ISSN", limit: 128
    t.string "language", limit: 128
    t.string "keywords", limit: 128
    t.string "payment_type", limit: 128
    t.date "releasedate"
    t.string "journal_frequency", limit: 128, comment: "1:daily,7:weekly,30:one in month,365:yearly"
    t.date "next_release_date"
  end

  create_table "journal_subscription_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "journal_id", null: false
    t.date "recieve_date"
    t.integer "recieved_flag", default: 1, comment: "1: recieved,0:Not Recieved"
  end

  create_table "late_fees_details", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "from_days"
    t.integer "to_days"
    t.integer "college_id"
    t.float "amount", limit: 53
    t.integer "plan_id"
    t.integer "fine_type"
  end

  create_table "lecture_plan", primary_key: "lecture_plan_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "course_id"
    t.string "topic"
    t.text "description", size: :long
    t.integer "duration"
    t.date "start_date"
    t.date "end_date"
    t.string "file_name"
    t.string "remark"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "year_or_sem"
    t.date "created_on"
    t.datetime "last_modified_date", precision: nil
    t.integer "created_by"
    t.integer "status", default: 0, null: false, comment: "0:incomplete 1:complete"
    t.integer "degree_id"
  end

  create_table "ledger", primary_key: "ledger_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "name", limit: 128, null: false, collation: "utf8_general_ci"
    t.string "address", limit: 512, collation: "utf8_general_ci"
    t.string "phone_number", limit: 15, collation: "utf8_general_ci"
    t.integer "master_id", null: false
    t.index ["master_id"], name: "master_id"
  end

  create_table "library_accession_length", primary_key: "acc_lenght_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "lenght", default: 0, null: false
    t.integer "college_id", default: 0
    t.string "acc_type", limit: 45, default: "B", null: false
  end

  create_table "library_accession_prifix", primary_key: "acc_prifix_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "value", limit: 20, null: false
    t.integer "college_id"
    t.string "accession_type", limit: 5, default: "B", null: false, comment: "B:Prefix For Book Bank,L: Prefix For Library(Circulation)"
  end

  create_table "library_accession_type", primary_key: "acc_type_id", id: { type: :integer, comment: "1-library,2-bookbank" }, charset: "utf8", force: :cascade do |t|
    t.string "value", limit: 20, null: false
    t.integer "college_id"
  end

  create_table "library_book_copies", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "acc_no", null: false
    t.integer "book_id", null: false
    t.integer "college_id", null: false
  end

  create_table "library_book_enquiry", primary_key: "enquiry_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "enquiry_no"
    t.date "enquiry_open_date"
    t.date "enquiry_close_date"
    t.time "enquiry_time"
    t.integer "user_id", null: false
    t.integer "college_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
  end

  create_table "library_book_language", primary_key: "language_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "language", null: false
    t.integer "college_id"
  end

  create_table "library_book_publisher", primary_key: "publisher_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "publisher", null: false
    t.integer "college_id"
  end

  create_table "library_book_receipt", primary_key: "receipt_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "college_id", null: false
    t.date "receipt_date", null: false
    t.integer "user_id", null: false
    t.string "challan_number"
    t.date "challan_date"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.column "is_donate_receipt", "enum('N','Y')", default: "N", null: false
  end

  create_table "library_book_recommendation", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "faculty_id", null: false
    t.string "title", null: false
    t.string "author", null: false
    t.date "recommdation_date", null: false
    t.string "publisher_name"
    t.string "isbn_no"
    t.text "remarks", size: :long
    t.string "degree_id"
    t.string "course_id"
    t.string "college_id"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "library_book_records", primary_key: "book_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "acc_type", limit: 15
    t.string "acc_prefix", limit: 100
    t.bigint "acc_number", null: false
    t.string "acc_pre_number"
    t.date "acc_date"
    t.string "title", null: false
    t.string "author1"
    t.string "author2"
    t.string "author3"
    t.string "author4"
    t.string "author5"
    t.string "publisher_id"
    t.string "publish_year", limit: 10
    t.string "pages", limit: 30
    t.string "subject"
    t.string "classification_number", limit: 100
    t.string "cutter", limit: 20
    t.string "isbn_number", limit: 100
    t.integer "with_cd"
    t.string "language", limit: 20
    t.string "edition"
    t.string "volume", limit: 100
    t.string "series"
    t.string "shelf_id", limit: 30
    t.string "status", limit: 20, default: "0", comment: "0-available,1-issued,2-reserved,3-lost,4-binding"
    t.integer "reference", comment: "0-yes,1-no"
    t.text "abstract", size: :tiny
    t.integer "is_available", default: 1, null: false
    t.integer "no_of_copies", default: 0
    t.string "file_name"
    t.integer "college_id"
    t.float "book_fine", limit: 53
    t.string "file_location"
    t.string "department_name", default: "null"
    t.string "media_type", limit: 100, default: "BOOKS", null: false
    t.integer "book_type", comment: "0-technical 1-non_technical"
    t.string "url"
    t.string "guided_by"
    t.string "title_alias"
    t.string "book_cover_file_name"
    t.string "book_cover_file_location"
    t.index ["acc_pre_number"], name: "acc_pre_number"
  end

  create_table "library_book_reservation", primary_key: "reservation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title", limit: 256, null: false
    t.integer "reserve_by_user_id", null: false
    t.integer "reserve_for_user_id", null: false
    t.date "request_date", null: false
    t.date "vaild_till", null: false
    t.integer "reservation_priority"
    t.integer "college_id", null: false
    t.column "reservation_status", "enum('N','E','Y')", default: "N", null: false, comment: "Y:Book Allotted,N:Not Allotted,E:Expire"
    t.string "accession_type", limit: 30, comment: "Library,Book Bank,Reference"
    t.string "email_id"
    t.integer "book_issued_trans_id", default: 0
  end

  create_table "library_book_review", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "book_rating", limit: 225
    t.integer "book_review_Id"
    t.date "from_date"
    t.date "to_date"
    t.string "summary", limit: 225
    t.string "remark", limit: 225
    t.integer "college_id"
    t.integer "book_id"
  end

  create_table "library_book_status", primary_key: "book_status_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "book_status", limit: 30
  end

  create_table "library_book_trasition", primary_key: "trans_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_type", default: 0, null: false, comment: "0-Student;1-faculty"
    t.string "acc_no", null: false
    t.date "date_of_issue", null: false
    t.date "expected_date_of_submission", null: false
    t.datetime "submit_date", precision: nil
    t.integer "issue_status", null: false, comment: "1-Issued;0-Returned"
    t.integer "issue_type"
    t.string "voucher_id", limit: 100
    t.integer "college_id", null: false
    t.string "fine_remark"
    t.column "issue_print_receipt", "enum('N','Y')", default: "N", comment: "N: Print Not Received Of Acc. No., Y: Print Received Of Acc. No."
    t.float "waiver_fine_amount", limit: 53
    t.string "issue_by_id", default: "0", null: false
    t.time "transaction_time"
    t.date "transaction_date"
    t.float "posted_fine_amount", limit: 53, default: 0.0
    t.integer "collected_by", default: 0
    t.integer "collection_at", default: 0
  end

  create_table "library_currency", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "currency_value", limit: 50, null: false
    t.string "currency_name", limit: 50, null: false
    t.integer "college_id"
  end

  create_table "library_enquiry_detail", primary_key: "enquiry_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_id", null: false
    t.integer "book_id"
    t.string "title"
    t.string "author_name"
    t.string "publisher"
    t.integer "publish_year"
    t.integer "quantity", null: false
    t.integer "enquiry_type", default: 0, null: false, comment: "0 : For New Book Enquiry , 1 : For Existing Book Enquiry"
    t.text "remark"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.string "isbn_no", limit: 100
  end

  create_table "library_enquiry_sent_to", primary_key: "enq_send_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vender_id"
    t.date "enq_send_date"
    t.integer "enq_id"
    t.column "active_flag", "enum('N','Y')", default: "Y"
  end

  create_table "library_feedback_groups", primary_key: "feedback_group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.text "feedback_group_name", null: false
    t.integer "college_id"
  end

  create_table "library_feedback_questions", primary_key: "ques_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.text "question", null: false
    t.integer "college_id"
  end

  create_table "library_feedback_questions_rating", primary_key: "rating_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "rating_name", null: false
    t.integer "college_id"
  end

  create_table "library_feedbackgroup_ques_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "feedback_group_id", null: false
    t.integer "ques_id", null: false
  end

  create_table "library_feedbackgroup_users", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "grouped_user_map_Id", null: false
    t.integer "user_type_id", null: false
    t.integer "user_id", null: false
  end

  create_table "library_file_upload", primary_key: "file_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "file_name", limit: 256, null: false
    t.string "file_location", limit: 512, null: false
    t.date "upload_date", null: false
    t.integer "upload_by_user_id", null: false
    t.string "file_description"
    t.integer "college_id", null: false
  end

  create_table "library_gatepass", primary_key: "gatepass_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "gatepass_no", null: false
    t.date "gatepass_date"
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.string "return_type", limit: 25
    t.string "gatepass_for", limit: 25
    t.integer "user_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
  end

  create_table "library_gatepass_detail", primary_key: "gatepass_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "gatepass_id", null: false
    t.integer "book_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.date "return_date"
    t.column "return_book_status", "enum('N','Y')", default: "N", null: false
  end

  create_table "library_issue_type", primary_key: "issue_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "isuue_type_name"
    t.string "isuue_type_value"
    t.integer "college_id"
  end

  create_table "library_journal_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "journal_id", null: false
    t.string "volume", limit: 30
    t.date "issue_date"
    t.string "issue_number", limit: 30
    t.date "receive_on"
    t.text "remark", size: :tiny
  end

  create_table "library_journal_record", primary_key: "journal_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "journal_title"
    t.string "journal_issn", limit: 50
    t.string "volume_number", limit: 50
    t.string "subject", limit: 60
    t.string "issue_type", limit: 50
    t.string "author1"
    t.string "author2"
    t.string "language"
    t.string "publisher"
    t.string "vendor"
    t.date "publish_date"
    t.float "journal_amount", limit: 53
    t.integer "file_id"
    t.integer "college_id"
    t.string "pages", limit: 5
    t.string "issue_number", limit: 5
    t.string "acc_number", limit: 50
    t.string "month", limit: 50
    t.string "year", limit: 50
    t.string "accPrifix", limit: 50
  end

  create_table "library_keyword", primary_key: "keyword_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "keyword", null: false
    t.integer "college_id"
  end

  create_table "library_keyword_record", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "book_id"
    t.integer "keyword_id"
  end

  create_table "library_media", primary_key: "media_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "media_type", limit: 120
    t.integer "college_id", default: 1, null: false
    t.column "active_flag", "enum('Y','N')", default: "N", null: false
  end

  create_table "library_offer_receive", primary_key: "enquiry_offer_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_id", null: false
    t.integer "vendor_id", null: false
    t.string "title", null: false
    t.integer "qantity", null: false
    t.float "rate", limit: 53
    t.float "discount", limit: 53
    t.integer "payment_term_id"
    t.integer "offer_mode_id"
    t.integer "delivery_days", null: false
    t.date "valid_till_date"
    t.string "attachment"
    t.text "remark"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "book_type", default: 0, null: false
  end

  create_table "library_offer_taxes", primary_key: "offer_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_offer_id", null: false
    t.integer "tax_id", null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "tax_sequence", null: false
  end

  create_table "library_other_details", primary_key: "other_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "property", limit: 30
    t.text "other_details", size: :tiny
    t.string "acc_no"
  end

  create_table "library_other_property", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.string "value", limit: 30
    t.integer "college_id"
  end

  create_table "library_pdf", primary_key: "pdf_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "pdf_name"
    t.string "pdf_location"
    t.string "description"
    t.string "classification"
    t.string "keyword"
    t.integer "college_id"
    t.column "active_flag", "enum('N','Y')"
  end

  create_table "library_periodical_detail", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "periodical_id", null: false
    t.date "issue_date"
    t.string "volume", limit: 30
    t.string "issue_number", limit: 30
    t.date "recieve_on"
    t.text "remark", size: :tiny
  end

  create_table "library_periodical_trasition", primary_key: "trans_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_type", default: 0, null: false, comment: "0-Student;1-faculty"
    t.string "acc_no", null: false
    t.date "date_of_issue", null: false
    t.date "expected_date_of_submission", null: false
    t.datetime "submit_date", precision: nil
    t.integer "issue_status", null: false, comment: "1-Issued;0-Returned"
    t.integer "issue_type"
    t.integer "college_id", null: false
    t.column "issue_print_receipt", "enum('N','Y')", default: "N", null: false
    t.string "voucher_id", limit: 100
    t.string "fine_remark"
    t.float "waiver_fine_amount", limit: 53, default: 0.0
    t.string "issue_by_id", default: "0", null: false
    t.time "transaction_time"
    t.date "transaction_date"
    t.string "remark"
    t.float "posted_fine_amount", limit: 53, default: 0.0
    t.integer "collected_by", default: 0
    t.integer "collection_at", default: 0
  end

  create_table "library_periodicals_records", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "accession_no", limit: 20, null: false, collation: "utf8_general_ci"
    t.string "title", collation: "utf8_general_ci"
    t.string "language", limit: 60, collation: "utf8_general_ci"
    t.string "volume", limit: 20, collation: "utf8_general_ci"
    t.string "edition", limit: 20, collation: "utf8_general_ci"
    t.string "series", limit: 40, collation: "utf8_general_ci"
    t.string "publisher", collation: "utf8_general_ci"
    t.string "status", limit: 155, collation: "utf8_general_ci"
    t.date "receive_date"
    t.string "issue_type", collation: "utf8_general_ci"
    t.float "subscription_amount", limit: 53
    t.string "vender", collation: "utf8_general_ci"
    t.string "author1", collation: "utf8_general_ci"
    t.string "author2", collation: "utf8_general_ci"
    t.date "subscription_from"
    t.date "subscription_to"
    t.integer "no_of_copies"
    t.integer "college_id", null: false
    t.integer "is_available", default: 1
    t.string "subscription_type", collation: "utf8_general_ci"
    t.integer "no_of_receive"
  end

  create_table "library_publication", primary_key: "publication_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "publication_type", limit: 30, null: false
    t.string "title", null: false
    t.string "language", limit: 30
    t.string "publisher"
    t.string "vendor"
    t.string "frequency", limit: 30
    t.string "payment_mode", limit: 30
    t.date "subscription_from_date"
    t.date "subscription_to_date"
    t.string "subscription_day", limit: 20
    t.string "subscription_month", limit: 20
    t.date "subscription_from_date1"
    t.date "subscription_to_date1"
    t.date "subscription_from_date2"
    t.date "subscription_to_date2"
    t.integer "no_of_copies_received"
    t.integer "college_id", default: 1, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "issn_no", default: "null"
    t.integer "department_id", default: 0, null: false, comment: "0-for non-department wise"
    t.float "amount", limit: 53
    t.date "dd_date"
    t.string "dd_number"
    t.string "in_favour_of"
  end

  create_table "library_publication_detail", primary_key: "subscription_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "publication_id", null: false
    t.integer "accession_no", default: 0
    t.string "volume_no", limit: 100
    t.string "issue_no", limit: 100, comment: "this is for store currently issue no of received subscription of the publication"
    t.date "subscription_receive_date"
    t.string "author"
    t.string "pages", limit: 30, default: "0"
    t.string "status", limit: 30, default: "On Shelf", null: false, comment: "this for store current status of publication or volume"
    t.column "is_volume_created", "enum('Y','N')", default: "N", null: false, comment: "'Y' : when this accession no is bind in single volume, 'N' : when this  acc no is not bind with in created volume "
    t.string "parent_volume_ids", default: "0", comment: "this is for store all ids of binds acc no in to single volume"
    t.text "remark", size: :tiny
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id", default: 1
    t.integer "with_cd", default: 0
    t.integer "publication_origin", comment: "0-national 1-international"
    t.string "publication_type", limit: 45
    t.string "acc_prefix", limit: 100
    t.string "acc_pre_no", limit: 45
    t.integer "accession_no_publication", default: 0
  end

  create_table "library_purchase_bill_details", primary_key: "purchase_bill_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_bill_id", null: false
    t.integer "item_id", null: false
    t.float "quantity", limit: 53, null: false
    t.float "rate", limit: 53, default: 0.0
    t.float "amount", limit: 53, default: 0.0
    t.integer "receipt_detail_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "flag", default: 0, null: false
    t.float "discount", limit: 53
  end

  create_table "library_purchase_bill_taxes", primary_key: "purchase_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_bill_detail_id", null: false
    t.integer "tax_id", null: false
    t.integer "tax_sequence", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "library_purchase_bills", primary_key: "purchase_bill_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_no", null: false
    t.date "voucher_date", null: false
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.string "bill_no", null: false
    t.date "bill_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "passed_by_user"
    t.string "full_deviation_flag", comment: "D=Bill passed with deviation\r\nF=Billl Passed without any deviation"
    t.date "passed_by_date"
    t.string "remark"
    t.float "passed_value", limit: 53
    t.string "unique_voucher_no", comment: "for bill posting in finance module"
    t.string "file_name", limit: 256
    t.string "file_location", limit: 512
    t.index ["voucher_no"], name: "voucher_no", unique: true
  end

  create_table "library_purchase_order_detail", primary_key: "po_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_order_id"
    t.string "title", limit: 225
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "quantity", default: 0, null: false
    t.integer "closer_qantity"
    t.float "rate", limit: 53
    t.float "amount", limit: 53
    t.float "discount_percent", limit: 53
    t.text "remark"
    t.string "author_name", limit: 225
    t.string "publisher", limit: 225
    t.string "isbn_no", limit: 225
    t.string "publish_year", limit: 225
    t.integer "book_type"
  end

  create_table "library_purchase_order_text", primary_key: "po_text_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "po_detail_id"
    t.integer "tax_id"
    t.integer "tax_sequence"
    t.string "ip", limit: 150
    t.timestamp "last_modified_date"
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "library_purchase_record", primary_key: "purchase_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "book_id"
    t.integer "vender_id"
    t.string "bill_number", limit: 100
    t.date "date_of_purchase"
    t.float "purchase_cost", limit: 53
    t.string "currency", limit: 20
    t.float "discount", limit: 53
    t.float "actual_cost", limit: 53
    t.float "currency_rate", limit: 53, default: 0.0
    t.index ["book_id"], name: "indx_book_id"
  end

  create_table "library_purches_order", primary_key: "purchase_order_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.date "purchase_order_date", null: false
    t.integer "payment_term_id", null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "purchase_order_no"
    t.date "date_of_approval"
    t.integer "approval_by_user_id"
    t.integer "enquiry_id"
    t.column "purchase_order_flag", "enum('Y','N')", default: "N", null: false, comment: "N: Not Approval ,Y: Approval"
  end

  create_table "library_ques_user_mapping", primary_key: "grouped_user_map_Id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_type_id", null: false
    t.integer "college_id", null: false
    t.integer "programme_id", default: 0, comment: "value 0 is for All type degree"
    t.integer "feedback_group_id"
    t.date "from_date", null: false
    t.date "to_date", null: false
  end

  create_table "library_rating_ques_mapping", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "rating_id", null: false
    t.integer "ques_id", null: false
  end

  create_table "library_receipt_detail", primary_key: "receipt_detail_id", id: { type: :integer, comment: "0 : For New Book , 1 : For Existing Book" }, charset: "utf8", force: :cascade do |t|
    t.integer "receipt_id", null: false
    t.integer "purchase_order_id"
    t.string "title", null: false
    t.string "author"
    t.string "publisher"
    t.integer "publish_year"
    t.string "isbn_no", limit: 100
    t.integer "total_qantity", null: false
    t.integer "accepted_qantity"
    t.integer "rejected_qantity"
    t.text "remark"
    t.integer "user_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "receipt_type", default: 0, null: false, comment: "0: For New Book,1: For Exisiting Book "
    t.column "add_in_accession_register", "enum('N','Y')", default: "N", null: false, comment: "Y: If Book Added In Accession Register, N: If Book Not Added In Accession Register"
    t.string "purchase_order_detail_id", default: "null"
  end

  create_table "library_setup", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_type", null: false, comment: "0-student;1-faulty"
    t.integer "degree_id"
    t.integer "no_of_days", null: false
    t.float "fine_per_day", limit: 53
    t.integer "no_of_books"
    t.integer "college_id"
    t.integer "no_of_days_bk", null: false
    t.float "fine_per_day_bk", limit: 53
    t.integer "no_of_books_bk"
    t.integer "reserve_no_of_day", default: 1, null: false
    t.integer "reserve_no_of_day_bk", default: 1, null: false
    t.integer "reserve_no_of_title_lb", default: 0, null: false
    t.integer "reserve_no_of_title_bk", default: 0, null: false
  end

  create_table "library_setup_overridden_rules", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "user_type", default: 0, null: false
    t.integer "college_id", default: 0
    t.integer "department_id", default: 0
    t.integer "designation_id", default: 0
    t.integer "degree_id", default: 0
    t.integer "intake_id", default: 0
    t.integer "acadmic_year_id", default: 0
    t.integer "term", default: 0
    t.integer "yearOrSam", default: 0
    t.integer "gender", default: 0
    t.string "category", default: "0"
    t.integer "no_of_days", null: false
    t.float "fine_per_day", limit: 53
    t.integer "no_of_books"
    t.integer "no_of_days_bk", null: false
    t.float "fine_per_day_bk", limit: 53
    t.integer "no_of_books_bk", default: 0
    t.integer "reserve_no_of_day", default: 1, null: false
    t.integer "reserve_no_of_day_bk", default: 1, null: false
    t.integer "reserve_no_of_title_lb", default: 0, null: false
    t.integer "reserve_no_of_title_bk", default: 0, null: false
    t.string "valid_till", default: "0"
    t.integer "updated_by", default: 0
    t.string "ip"
    t.datetime "last_modified", precision: nil, null: false
  end

  create_table "library_shelf_record", primary_key: "shelf_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "location", limit: 50
    t.text "discription", size: :tiny
    t.integer "college_id"
    t.string "shelf_type", limit: 5, default: "S", null: false, comment: "R: Rack, S:Shelf"
  end

  create_table "library_stock_process_schedule", primary_key: "schedule_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "college_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "schedule_created_by"
    t.datetime "date_time", precision: nil
  end

  create_table "library_stock_schedule_user", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "user_id"
    t.integer "schedule_id"
  end

  create_table "library_subject", primary_key: "subject_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "subject"
    t.integer "college_id"
  end

  create_table "library_temp_data", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "acc_no"
    t.string "title"
    t.string "issue_to_user"
    t.string "user_type", limit: 45
    t.string "issue_date", limit: 45
    t.string "issue_by"
    t.string "return_date", limit: 45
    t.string "receive_date", limit: 45
    t.string "receive_by"
    t.integer "issue_id"
    t.integer "issue_by_id"
    t.integer "receive_by_id"
  end

  create_table "library_url_access", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "useful_link_id", null: false
    t.integer "user_id", null: false
    t.integer "count_no", null: false
    t.date "visit_date"
    t.integer "user_type_id"
    t.string "tracking_for"
  end

  create_table "library_useful_links", primary_key: "userful_link_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "url"
    t.string "description"
    t.string "classcification"
    t.string "keywords"
    t.integer "college_id"
    t.column "active_flag", "enum('N','Y')"
    t.string "title"
    t.string "classification_type"
  end

  create_table "library_user_attendance", charset: "utf8", force: :cascade do |t|
    t.integer "library_user_id", null: false
    t.date "date"
    t.time "time"
    t.integer "verify_mode", comment: " 1-card, 2- finger print,3- password,4- manual"
    t.integer "machine_number"
    t.string "machine_location"
    t.string "file_name"
    t.date "update_date"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "college_id", null: false
    t.index ["machine_number"], name: "fk_machine_number"
  end

  create_table "library_user_feedback", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "user_id", limit: 256, null: false
    t.integer "rating_id", null: false
    t.integer "ques_id", null: false
    t.datetime "submit_date", precision: nil, null: false
    t.integer "feedback_group_id", default: 1, null: false
  end

  create_table "library_vendor_record", primary_key: "vendor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "vendor_name", limit: 40
    t.string "address"
    t.string "phone", limit: 20
    t.integer "college_id"
  end

  create_table "library_verification_accession_no", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "barcode_no"
    t.integer "file_id", null: false
    t.integer "college_id", null: false
    t.string "type_flag", limit: 5, null: false, comment: "R:Rack Barcode, S:Shelf Barcode, B:Book Barcode, M:Miscellaneous"
    t.string "barcode_status", limit: 20, null: false
    t.string "verification_location", limit: 120, null: false
    t.string "actual_location", limit: 120, null: false
  end

  create_table "link_table", primary_key: "link_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "link_name", limit: 128, null: false
    t.string "link_action", limit: 128, null: false
    t.string "link_description", limit: 512
    t.integer "parent_id", default: 0, null: false, comment: "0: For Main Menu , Other Link Ids :For Sub Menu"
    t.string "image_path", limit: 128
    t.integer "sequence", default: 0, null: false
    t.column "add_right", "enum('Y','N')", default: "Y"
    t.column "update_right", "enum('Y','N')", default: "Y"
    t.column "delete_right", "enum('Y','N')", default: "Y"
    t.column "export_right", "enum('Y','N')", default: "Y"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "column_sequence", default: 0
    t.index ["link_name", "parent_id"], name: "link_name", unique: true
  end

  create_table "machine_info", primary_key: "machine_number", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "machine_name", limit: 125
    t.string "machine_ip_address", limit: 125, null: false
    t.string "machine_location", limit: 125, null: false
  end

  create_table "machine_user_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.string "user_id", limit: 125, null: false
    t.integer "card_number"
    t.integer "pin"
    t.text "finger_print1", size: :medium
    t.text "finger_print2", size: :medium
    t.text "finger_print3", size: :medium
    t.string "user_name", limit: 256
    t.index ["id"], name: "machinuserinfo_id_fk"
  end

  create_table "machine_user_map", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "machine_number", null: false
    t.integer "machine_user_id", null: false
  end

  create_table "malpractice_master", primary_key: "malpractice_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.text "punishment", size: :medium, null: false
    t.text "malpractice_nature", size: :medium, null: false
    t.string "ip", limit: 15, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "malpractices", primary_key: "mal_pra_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "application_id", null: false
    t.integer "course_id", null: false
    t.integer "exam_id", null: false
    t.integer "committee_id", null: false
    t.column "police_case", "enum('1','2')", default: "1", null: false, comment: "1 for yes, 2 for No"
    t.integer "penaulty_amt"
    t.datetime "mal_prac_date", precision: nil, null: false
    t.integer "decision_by_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 15, null: false
    t.integer "user_id"
    t.integer "malpractice_id"
  end

  create_table "manage_academic_term", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "academic_year_id", null: false
    t.string "term_name", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "description"
    t.integer "parent_id"
    t.integer "sequence", default: 0
  end

  create_table "manage_advisors", primary_key: "advisor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id"
    t.integer "employee_id"
    t.string "degree_ids", limit: 250
    t.integer "academic_year_id"
    t.integer "no_of_students"
    t.column "active_flag", "enum('N','Y')"
    t.integer "department_id"
    t.integer "intake_id"
    t.integer "term"
    t.integer "year_or_sem"
    t.string "section_group_ids"
    t.string "section_ids"
  end

  create_table "manage_course_components", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "hours", limit: 50
    t.string "credits", limit: 50
    t.string "credit_values", limit: 50
    t.integer "course_id", null: false
    t.integer "component_id", null: false
    t.integer "academic_year_id"
    t.index ["course_id", "component_id"], name: "comp", unique: true
  end

  create_table "manage_course_coordinators", primary_key: "coordinator_id", id: { type: :integer, comment: "Course Coordinator Id" }, charset: "utf8", force: :cascade do |t|
    t.integer "college_id"
    t.integer "employee_id"
    t.string "course_ids", limit: 250
    t.integer "academic_year_id"
    t.integer "no_of_students"
    t.column "active_flag", "enum('N','Y')"
  end

  create_table "manage_outcomes", primary_key: "outcome_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "outcome"
    t.float "weightage", limit: 53
    t.integer "course_id"
    t.integer "college_id"
    t.column "active_flag", "enum('N','Y')"
  end

  create_table "manage_placement_test", primary_key: "placement_test_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "college_id"
    t.integer "academic_year_id"
    t.date "from_date"
    t.date "to_date"
    t.integer "no_of_tokens"
  end

  create_table "manage_section", primary_key: "section_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id"
    t.integer "degree_id"
    t.integer "year"
    t.integer "sem"
    t.string "section_name"
    t.integer "capacity"
    t.integer "cost_center_id"
    t.integer "term"
    t.integer "academic_year_id"
  end

  create_table "map_sap_fees_head", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "head_id", null: false
    t.string "comment"
    t.string "sap_id"
    t.string "revenue", limit: 512
  end

  create_table "mapping_masters", primary_key: "mapping_master_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "other_college_id"
    t.string "other_college_course"
    t.integer "mc_course_id"
    t.integer "credit_transfer", comment: "1. Full 2. Assessment only 3. PART"
    t.float "credits", limit: 53
    t.string "remarks"
    t.column "is_active", "enum('N','Y')", default: "Y"
    t.integer "mc_degree_id", default: 0
  end

  create_table "marking_scheme_groups", primary_key: "group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "group_name", null: false
    t.string "display_name", null: false
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "show_in_marksheet", limit: 10, default: "N"
  end

  create_table "marking_scheme_info", primary_key: "marking_scheme_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "weightage_per", limit: 53
    t.float "max_mark", limit: 53
    t.float "min_mark", limit: 53
    t.integer "duration_min"
    t.integer "user_id", null: false
    t.string "ip", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "show_marks_before_release", default: 0
    t.integer "compulsory_to_pass", default: 0
    t.float "passing_percentage", limit: 53
    t.integer "is_detained", default: 0, null: false
    t.index ["group_id"], name: "vivek_msi_gid"
  end

  create_table "marking_scheme_mapping", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "group_id", null: false
    t.integer "course_id", null: false
    t.integer "user_id"
    t.string "ip", null: false
    t.datetime "last_modifed_date", precision: nil, null: false
    t.index ["exam_id", "course_id"], name: "idx_mrk_sche_mapp_comp"
    t.index ["exam_id"], name: "idx_mark_sch_mapp_examid"
    t.index ["group_id"], name: "vivek_msm_group_id"
  end

  create_table "marking_scheme_mapping_temp", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "group_id", null: false
    t.integer "course_id", null: false
    t.integer "user_id"
    t.string "ip", null: false
    t.datetime "last_modifed_date", precision: nil, null: false
  end

  create_table "marks_grading", id: false, charset: "utf8", force: :cascade do |t|
    t.float "range_from", limit: 53, null: false
    t.float "range_to", limit: 53, null: false
    t.string "grade", limit: 5, null: false
  end

  create_table "marks_head", primary_key: "mark_head_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "mark_head", limit: 128, null: false
    t.integer "parent_id", default: 0, null: false
  end

  create_table "marksheet_batch", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "status", limit: 19
  end

  create_table "marksheet_document_s_no", primary_key: "transcation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", default: 0, null: false
    t.integer "exam_id", default: 0, null: false
    t.string "serial_no", default: "null", null: false
    t.integer "doc_type_id", default: 0, null: false
    t.integer "copy_type_id", default: 0, null: false
    t.date "date_of_issue", null: false
    t.string "attchment_name", default: "null", null: false
    t.integer "user_id", default: 0, null: false
    t.date "last_update_date", null: false
    t.date "date_of_upload", null: false
    t.string "remarks"
    t.integer "attachment", default: 0, null: false
    t.string "ip", default: "null", null: false
    t.string "active_flag", default: "Y", null: false
  end

  create_table "marksheet_document_s_no_temp", primary_key: "transcation_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "student_uni_roll_no", default: "null", null: false
    t.string "admission_no", default: "null", null: false
    t.string "student_display_name", default: "null", null: false
    t.integer "student_id", default: 0, null: false
    t.integer "exam_id", default: 0, null: false
    t.string "serial_no", default: "null", null: false
    t.string "doc_type", default: "null", null: false
    t.integer "doc_type_id", default: 0, null: false
    t.string "copy_type", default: "null", null: false
    t.integer "copy_type_id", default: 0, null: false
    t.date "date_of_issue", null: false
    t.string "attchment_name", default: "null", null: false
    t.date "date_of_upload", null: false
    t.integer "user_id", default: 0, null: false
    t.date "last_update_date", null: false
    t.string "remarks"
    t.integer "attachment", default: 0, null: false
    t.string "ip", default: "null", null: false
    t.string "active_flag", default: "Y", null: false
  end

  create_table "marksheet_grade_range", primary_key: "gradeId", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.float "fromRange", limit: 53, null: false
    t.float "toRange", limit: 53, null: false
    t.float "minValue", limit: 53, null: false
    t.string "letterGrade", limit: 20
    t.float "gradeValue", limit: 53, null: false
    t.string "comments", limit: 256
  end

  create_table "marksheet_serial_no", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", default: 0, null: false
    t.integer "sem_id", default: 0, null: false
    t.integer "exam_id", default: 0, null: false
    t.integer "max_serial_no", default: 0, null: false
  end

  create_table "master", primary_key: "master_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "master_name", limit: 256, null: false, collation: "utf8_general_ci"
    t.integer "parent_id", default: 0, null: false, comment: "0: Main head, other master_id for sub head"
    t.integer "company_id", null: false
    t.index ["company_id"], name: "company_id"
  end

  create_table "master_demo", primary_key: "master_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "master_name", limit: 256, null: false
    t.integer "parent_id", default: 0, null: false, comment: "0: Main head, other master_id for sub head"
    t.integer "company_id", null: false
  end

  create_table "master_time_table", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "period_id"
    t.string "day"
    t.time "in_time"
    t.time "out_time"
    t.integer "title_id"
    t.date "date"
    t.integer "untis_day_id", default: 0
    t.integer "untis_time_id", default: 0
  end

  create_table "meeting", primary_key: "meet_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title"
    t.string "venue"
    t.date "date_of_meet"
    t.time "start_time"
    t.time "end_time"
    t.date "creation_date"
    t.integer "cordinator_id"
    t.integer "ext_cordinator_id"
    t.integer "college_id"
    t.string "minutes"
    t.integer "parent_id"
    t.string "proposal"
    t.float "budget", limit: 53
    t.float "final_amt", limit: 53
    t.string "final_report"
    t.integer "dicision_stage", comment: "1-primary ,2-final", unsigned: true
    t.integer "opt_type", comment: "1 for meeting,2 for activity(drop_down)"
    t.integer "meet_type"
    t.string "name", limit: 225
    t.integer "committee_id"
    t.string "agenda", limit: 225
    t.integer "attechment"
  end

  create_table "meeting_documents", primary_key: "doc_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title", null: false, comment: "1: for agenda, 2 :for broucher"
    t.string "path"
    t.integer "type", null: false, comment: "1 for preMeeting, 2 for postMeeting", unsigned: true
    t.integer "meeting_id", null: false
    t.string "file_name", limit: 100
  end

  create_table "meeting_guest_info", primary_key: "guest_id", id: { type: :integer, unsigned: true }, charset: "utf8", force: :cascade do |t|
    t.string "first_name", limit: 50
    t.string "last_name", limit: 50
    t.string "organisation_name", limit: 50
    t.string "email", limit: 50
    t.string "contact_no", limit: 10
    t.integer "meeting_id", default: 0, null: false
    t.string "middle_name", limit: 128
    t.string "salutation", limit: 225
    t.string "designation", limit: 225
    t.string "address1", limit: 225
    t.string "address2", limit: 225
    t.integer "city_id"
    t.string "zip_code", limit: 225
    t.string "phone_office", limit: 225
    t.string "phone_res", limit: 225
    t.string "fax", limit: 225
    t.string "ims", limit: 225
    t.date "dateOfBirth"
    t.string "url", limit: 225
    t.string "bloodGroup", limit: 50
    t.boolean "gender", comment: "1-Male,2-Female"
  end

  create_table "meeting_members", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "meeting_id", null: false
    t.integer "emp_id"
    t.integer "guest_id", null: false
    t.integer "emp_present", default: 0, null: false, comment: "0 for default,1 for present , 2 for absent", unsigned: true
  end

  create_table "meeting_status", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "college_id", limit: 45
    t.integer "committee_id"
    t.integer "meeting_id"
    t.integer "member_id"
    t.integer "status"
    t.date "approved_date"
  end

  create_table "mutual_exclusive_course", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "course_id", null: false
    t.integer "mutual_course_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.integer "intake_id", null: false
  end

  create_table "new_book_request", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "book_name", limit: 256
    t.string "author", limit: 256
    t.string "publication", limit: 128
    t.string "edition", limit: 128
    t.integer "book_category"
    t.integer "status", default: 0, comment: "0=pending , 1= Approved , 2: Unapproved"
  end

  create_table "new_table", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "photo", limit: 45
    t.string "roll_no", limit: 45
  end

  create_table "notification_degree", primary_key: "noti_degree_id", id: { type: :integer, comment: "auto increment id" }, charset: "utf8", comment: "Table,which is use for map notification_id and degree_id", force: :cascade do |t|
    t.integer "exam_id", comment: "exam id, you can call notification id"
    t.integer "college_id", default: 0
    t.integer "department_id", default: 0
    t.integer "degree_id", comment: "degree id also call as Program id "
    t.integer "semoryear_id"
    t.integer "term"
    t.integer "ay_id"
    t.datetime "insert_date", precision: nil
    t.integer "mail_sms"
    t.column "sys_defined", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id"
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "result_released", "enum('N','Y')", default: "N"
    t.integer "released_by"
    t.string "released_by_ip", limit: 150
    t.date "released_date"
    t.index ["exam_id"], name: "idx_notidegree_exid"
  end

  create_table "notifications", primary_key: "examination_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "exam"
    t.integer "exam_type", default: 1, comment: "1-Resgular,2-Supplementary"
    t.integer "college_id"
    t.integer "academic_year_id"
    t.integer "academic_term_id"
    t.datetime "start_date_of_registration", precision: nil
    t.datetime "last_date_of_registration", precision: nil
    t.datetime "reg_endOn_with_fine", precision: nil
    t.datetime "last_date_of_hal_ticket_issue", precision: nil
    t.date "exam_visible_on"
    t.time "exam_start_time"
    t.time "exam_end_time"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "user_id", null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "bank_id"
    t.integer "exam_fee_method"
    t.string "exam_month"
    t.string "exam_year"
    t.datetime "exam_marks_submission_end_on", precision: nil
    t.datetime "exam_marks_submission_start_on", precision: nil
  end

  create_table "offer_taxes", primary_key: "offer_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "offer_id", null: false
    t.integer "tax_id", null: false
    t.string "ip", limit: 200
    t.date "last_modified_date", null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "tax_sequence", null: false
    t.string "freight_charges"
  end

  create_table "offers_received", primary_key: "offer_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id"
    t.integer "vender_id"
    t.integer "item_id"
    t.integer "kit_id"
    t.integer "service_id"
    t.integer "unit_id", null: false
    t.float "rate", limit: 53, null: false
    t.float "quantity", limit: 53, null: false
    t.float "discount_percentage", limit: 53
    t.string "reference_no", limit: 55
    t.date "reference_date"
    t.date "valid_till"
    t.string "attachment"
    t.integer "payment_term_id"
    t.string "remarks"
    t.integer "offer_mode"
    t.integer "dilevery_days", default: 0, null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y"
    t.string "file_name"
  end

  create_table "online_payment_transcation_status", primary_key: "transaction_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_no"
    t.string "uni_vocher_no"
    t.integer "status", default: 0, comment: "0 for fail and 1 for success\n"
  end

  create_table "organisation", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "organisation_name", limit: 256, null: false
    t.text "organisation_desc", size: :medium
    t.integer "college_id"
  end

  create_table "organisation_fee_head", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "organisation_id", null: false
    t.integer "fees_head_id", null: false
    t.string "year", limit: 5
    t.index ["organisation_id"], name: "organisation_id"
  end

  create_table "other_college_info", primary_key: "other_college_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "other_college_name"
    t.integer "country_id"
    t.integer "state_id"
    t.integer "city_id"
    t.column "is_active", "enum('N','Y')", default: "Y"
  end

  create_table "outward_entry", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "outward_no", limit: 45
    t.string "sent_by", limit: 45
    t.string "sent_to", limit: 45
    t.string "nature_of_item", limit: 45
    t.text "address"
    t.string "mode_of_distribution", limit: 45
    t.integer "service_provider", default: 0
    t.string "docket_no", limit: 45
    t.integer "item_condition", default: 0
    t.date "sent_date"
    t.integer "is_item_insured", default: 0
    t.text "remarks"
    t.string "attachement"
    t.timestamp "last_modification_date"
    t.integer "updated_by", default: 0
    t.string "ip"
  end

  create_table "paper_bank", primary_key: "file_id", id: { type: :integer, comment: " it will generate  auto increment Question paper_id," }, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "intake_id", default: 0, null: false
    t.integer "department_id", default: 0, null: false
    t.integer "degree_id", null: false
    t.integer "ay_id", null: false
    t.integer "course_id", null: false
    t.integer "term", null: false
    t.integer "sem_id", null: false
    t.integer "paper_setter_id", null: false
    t.integer "authorised_person_id"
    t.string "file_name_orignal", limit: 225, null: false, comment: "column is pointing to orignal name of paper"
    t.datetime "upload_date", precision: nil
    t.datetime "update_date", precision: nil
    t.text "file_name_duplicate", size: :medium, null: false, comment: "Column is pointing to duplicate name of paper it will genrate automatically using userId,time and date."
    t.integer "mail_sms"
    t.integer "is_selected", default: 0, comment: "0=not selected ,1=selected(this flag will use for paper is selected atleast once or not)"
    t.column "sys_defined", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "paper_room", primary_key: "paper_room_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "room_id", limit: 250
    t.integer "exam_tt_id", null: false
  end

  create_table "paper_setters_course_honorarium", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "paper_setter_id", null: false
    t.integer "course_id", null: false
    t.integer "exam_id", null: false
    t.float "honorarium", limit: 53, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "paper_setters_information", primary_key: "paper_setter_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "employee_id", default: 0, unsigned: true
    t.string "first_name", limit: 250
    t.string "middle_name", limit: 250
    t.string "last_name", limit: 250
    t.string "address", limit: 512
    t.integer "city_id"
    t.integer "state_id"
    t.integer "country_id"
    t.string "pin", limit: 250
    t.string "email", limit: 150
    t.string "phone", limit: 250
    t.string "organisation", limit: 250
    t.string "org_address", limit: 250
    t.string "org_phone", limit: 250
    t.string "org_designation", limit: 250
    t.string "org_email", limit: 150
    t.string "previous_organisation"
    t.integer "experiance"
    t.string "comments", limit: 512
    t.string "program", limit: 250
    t.string "institute", limit: 250
    t.integer "passing_year"
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 15, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "passport_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "passport_no", limit: 25, null: false
    t.date "date_of_issue", null: false
    t.date "date_of_expiry", null: false
    t.string "place_of_issue", limit: 50, null: false
  end

  create_table "pay_period", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "period_name", limit: 256, comment: "This is the logical name of pay period like January or Jan-2009"
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.date "pay_date", null: false, comment: "date at which salary will be drawn"
    t.date "time_sheet_by_date", null: false, comment: "Date at which timesheet will be finalized"
    t.integer "company_id", null: false
    t.integer "working_days", default: 0, null: false, comment: "0:Dynamic calculation as we r doing, 1-31: fix days according to the user, 32=:calender days"
    t.integer "financial_year_id", default: 0
    t.date "actual_present_from_date"
    t.date "actual_present_to_date"
    t.date "add_on_days_from_date"
    t.date "add_on_days_to_date"
    t.date "deduct_absent_from_date"
    t.date "deduct_absent_to_date"
    t.index ["company_id"], name: "company_id_fk"
  end

  create_table "payment_terms", primary_key: "payment_term_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "payment_term", limit: 75, null: false
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["payment_term"], name: "payment_term", unique: true
  end

  create_table "performance_review", primary_key: "review_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "review_name", limit: 256, null: false
    t.string "description", limit: 512
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.string "review_type", limit: 128, null: false
    t.integer "mode", null: false, comment: "1: Direct Review, 2: 360 degree Review"
  end

  create_table "petro_voucher", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "coll_authority", limit: 128
    t.string "bus_driver", limit: 128
    t.string "petrol_pump_authority", limit: 128
    t.date "issue_date_of_voucher"
    t.date "petrol_filling_date"
    t.float "liters"
    t.float "amount"
  end

  create_table "phone_number", primary_key: "phone_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "phone_number", limit: 25
    t.string "number_type", limit: 64
    t.string "number_of", limit: 64
    t.string "name"
    t.index ["user_id"], name: "user_id"
  end

  create_table "placement_test_schedule", primary_key: "pt_schedule_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "placement_test_id", null: false
    t.integer "student_id"
    t.string "student_token_id"
    t.string "token", limit: 11
    t.date "date"
    t.string "time"
    t.float "score", limit: 53
    t.index ["placement_test_id"], name: "ptid"
    t.index ["token"], name: "tkn", unique: true
  end

  create_table "ppf", primary_key: "ppf_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "start_amount", null: false
    t.integer "end_amount", null: false
    t.float "emp_deduction", null: false
    t.float "company_deduction", null: false
  end

  create_table "pre_admission_calling_status", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "allotment_id"
    t.date "date"
    t.integer "phone_to_call"
    t.string "status", collation: "utf8_general_ci", comment: "1:for interested, 2:partially interested, 3:not contacted, 4: need to be contacted, 0: not interested"
    t.string "comment", collation: "utf8_general_ci"
    t.integer "count_order"
  end

  create_table "pre_admission_campaign", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "campaign_name", limit: 256
    t.float "campaign_amount", limit: 53
    t.string "campaign_type", limit: 256
    t.string "concern_person", limit: 128
    t.date "to_date"
    t.date "from_date"
    t.integer "college_id"
    t.string "demo", comment: "comments about campaign"
    t.string "comments", comment: "comments about campaign"
  end

  create_table "pre_admission_follow_up", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_no", null: false
    t.date "followup_date"
    t.string "counsel_by", limit: 256
    t.text "next_action", size: :medium
    t.string "how_to_followup", limit: 512
    t.integer "user_id", default: 0
    t.integer "counsler_id"
    t.date "next_followup_date"
  end

  create_table "pre_admission_info", primary_key: "sno", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "pincode"
    t.string "email"
    t.string "mobile"
    t.string "city"
    t.string "state"
    t.string "exam_given"
    t.string "exam_percentage"
    t.string "last_education"
    t.string "source"
    t.string "land_line", limit: 250
    t.integer "email_status", comment: "1:for first mail"
    t.date "import_date"
    t.integer "status", default: 0, null: false
    t.string "last_edu_marks"
  end

  create_table "pre_admission_mail_sms", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "import_id", null: false
    t.integer "introductory_mail_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
    t.integer "second_mail_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
    t.integer "third_mail_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
    t.integer "introductory_sms_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
    t.integer "second_sms_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
    t.integer "third_sms_status", default: 0, null: false, comment: "defult:0,sent:1,fail:2", unsigned: true
  end

  create_table "pre_admission_score_info", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "sno", null: false
    t.string "group_name", limit: 256, collation: "utf8_general_ci"
    t.float "gd_marks", limit: 53
    t.float "pi_marks", limit: 53
    t.date "gd_date"
    t.date "pi_date"
    t.integer "gd_status"
    t.integer "pi_status"
    t.string "venue", collation: "utf8_general_ci"
    t.string "source", collation: "utf8_general_ci"
    t.string "city", collation: "utf8_general_ci"
  end

  create_table "pre_admission_telecaller_allotment", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "user_id"
    t.integer "telecaller_id"
    t.integer "status", default: 0, null: false, comment: "0:for allotment, 1:called first time, 2: called second time, 3:called third time."
    t.date "date"
    t.integer "call_status", default: 0, null: false, comment: "0:not called, 1:called"
  end

  create_table "preaddmission_emp_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "app_id", null: false
    t.integer "company_id"
    t.string "job_tiles"
    t.string "duties"
    t.date "date_of_joining"
    t.date "date_of_leaving"
  end

  create_table "preadmission_enquiryinfo", primary_key: "enquiry_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "enquiry_no"
    t.string "first_name"
    t.string "second_name"
    t.string "third_name"
    t.string "fourth_name"
    t.string "trib_family_name"
    t.string "display_name"
    t.integer "gender_id"
    t.string "email_id"
    t.string "phone_no"
    t.string "address"
    t.integer "country_id"
    t.integer "state_id"
    t.integer "city_id"
    t.integer "nationality_id"
    t.string "college_id"
    t.string "program_id"
    t.string "campaign_id"
    t.string "enquiry_source", default: "0"
    t.integer "councelledby_id"
    t.date "enquiry_date"
    t.string "remark", limit: 500
    t.integer "email_template_id"
    t.integer "sms_template_id"
    t.integer "admission_year"
    t.integer "max_count"
    t.string "alias"
    t.date "date_of_birth"
    t.string "father_name"
    t.string "department_id"
    t.string "degree_level"
    t.integer "area_type", default: 0
    t.string "admission_type"
    t.integer "referral_id", default: 0
    t.string "referral_name"
    t.index ["enquiry_no"], name: "enqunq", unique: true
  end

  create_table "preadmission_followup", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_id"
    t.integer "followupby_id"
    t.date "date"
    t.integer "enquiry_status"
    t.date "nextfollowupdate"
    t.string "meansoffollowup_id"
    t.string "remarks", limit: 500
    t.datetime "last_modified", precision: nil
    t.index ["enquiry_id"], name: "enq_id"
  end

  create_table "preadmission_student_academicinfo", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "enquiry_id"
    t.integer "examination_id"
    t.float "total_marks", limit: 53
    t.float "marks_obtained", limit: 53
    t.string "grades"
    t.string "university"
    t.string "institute"
    t.integer "year"
    t.index ["enquiry_id"], name: "ennq_id"
  end

  create_table "probation_history", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "pre_joining_date"
    t.string "pre_probation_period"
    t.date "update_date"
  end

  create_table "product_category", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "category_name", limit: 128, null: false
    t.integer "parent_id", default: 0
    t.string "college_name", limit: 512
    t.integer "college_id"
  end

  create_table "product_delivery", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "name_of_supplier", limit: 256
    t.text "description_of_goods", size: :medium
    t.string "challan_no", limit: 256
    t.date "date"
    t.string "bill_no", limit: 256
    t.date "invoice_date"
    t.float "rate", limit: 53
    t.integer "quantity_supplied"
    t.float "amount_unit", limit: 53
    t.float "taxes", limit: 53
    t.float "octroi", limit: 53
    t.float "total_amount", limit: 53
    t.integer "issue_to_department"
    t.text "remarks", size: :medium
    t.string "tex_type", limit: 256
    t.string "product_name"
    t.integer "request_id"
    t.string "warranty_status", limit: 30
    t.string "amc", limit: 40
  end

  create_table "product_details", primary_key: "product_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "product_name", limit: 256, null: false
    t.text "product_description", size: :medium
    t.integer "product_type", null: false, comment: "1: to be returns(issue) 2: not to returns(distribute)"
    t.string "product_category", limit: 256, null: false
    t.string "college_name", limit: 512
  end

  create_table "product_item", primary_key: "item_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "item_code", limit: 256, null: false
    t.date "purchased_on", null: false
    t.string "purchased_from", limit: 256, null: false
    t.integer "price", null: false
    t.integer "is_scrap", default: 0, comment: "0 : not scrap , 1: Scrap item"
    t.string "rfid_code", limit: 128
    t.integer "item_qty"
    t.index ["product_id"], name: "ProductId"
  end

  create_table "product_purchase_request", primary_key: "request_id", id: { type: :integer, comment: "id filed value for singal requirement" }, charset: "utf8", force: :cascade do |t|
    t.string "request_name", limit: 256
    t.text "product_description", size: :medium, null: false
    t.integer "product_quantity", default: 0, null: false
    t.integer "approx_price", default: 0
    t.integer "department"
    t.integer "requested_user_id", null: false
    t.integer "request_status", default: 0, comment: "0: Pending , 1 : Approved, 2 : Denied, 3: Canceled"
    t.date "request_date", null: false
    t.string "required_for", limit: 256, null: false
    t.date "approval_date"
    t.string "approval_comments", limit: 500
    t.integer "approval_by_user_id"
    t.string "product_name", null: false
    t.integer "request_parent_id"
    t.integer "quantity_type"
    t.integer "order_type"
    t.string "college_name", limit: 512
    t.index ["requested_user_id"], name: "FK_ProPurReq_ReqUserId"
  end

  create_table "professional_tax", primary_key: "slab_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "start_amount", null: false
    t.integer "end_amount", null: false
    t.integer "per_annum_amount", null: false
  end

  create_table "program_course_limit", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.integer "intake_id"
    t.integer "max_course"
    t.integer "min_couse"
    t.float "max_credit", limit: 53
    t.float "min_credit", limit: 53
    t.float "attendance_percentage", limit: 53, default: 0.0
    t.string "course_type", limit: 45
  end

  create_table "purchase_bill_details", primary_key: "purchase_bill_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_bill_id", null: false
    t.integer "item_id", null: false
    t.float "quantity", limit: 53, null: false
    t.float "rate", limit: 53, default: 0.0
    t.float "amount", limit: 53, default: 0.0
    t.integer "receipt_detail_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "budget_id"
    t.integer "user_id", null: false
    t.integer "flag", default: 0, null: false
    t.float "discount", limit: 53
    t.string "document_ref_no"
    t.integer "file_id", default: 0
  end

  create_table "purchase_bill_taxes", primary_key: "purchase_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_bill_detail_id", null: false
    t.integer "tax_id", null: false
    t.integer "tax_sequence", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "freight_charges"
  end

  create_table "purchase_bills", primary_key: "purchase_bill_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_no", null: false
    t.date "voucher_date", null: false
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.string "bill_no", null: false
    t.date "bill_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "passed_by_user"
    t.string "full_deviation_flag", comment: "D=Bill passed with deviation\r\nF=Billl Passed without any deviation"
    t.date "passed_by_date"
    t.string "remark"
    t.float "passed_value", limit: 53
    t.integer "unique_voucher_no", default: 0
    t.string "file_name", limit: 256
    t.string "file_location", limit: 512
  end

  create_table "purchase_order_details", primary_key: "po_details_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "purchase_order_id", null: false
    t.integer "item_id", null: false
    t.integer "kit_id", null: false
    t.integer "service_id", null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.decimal "rate", precision: 12, scale: 3, null: false
    t.decimal "amount", precision: 12, scale: 3, null: false
    t.integer "unit_id", null: false
    t.decimal "discount_percent", precision: 5, scale: 2, null: false
    t.string "discount_description"
    t.string "remarks"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "budget_id"
    t.integer "link_with_req", default: 0, null: false
    t.string "expected_delivery_date"
  end

  create_table "purchase_order_taxes", primary_key: "po_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "po_details_id", null: false
    t.integer "tax_id", null: false
    t.integer "tax_sequence", null: false
    t.string "ip", limit: 200
    t.timestamp "last_modified_date", null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "freight_charges"
  end

  create_table "purchase_orders", primary_key: "purchase_order_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.date "purchase_order_date", null: false
    t.string "purchase_order_ref", limit: 50, null: false
    t.integer "payment_term_id", null: false
    t.integer "store_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "purchase_order_no", null: false
    t.date "date_of_approval"
    t.integer "approval_by_user_id"
    t.integer "purchase_order_flag", default: 0, comment: "0: Not Approval ,1: Approval"
    t.integer "tender_id"
    t.string "tender_flag", limit: 15, comment: "value 1 shows that the PO data is directly coming from tender offers"
    t.string "cancel_purchase_order", default: "N", comment: "N:-for Not Cancel PO ,Y:- for Cancel PO"
    t.string "document_ref_no"
    t.integer "file_id", default: 0
    t.text "document_footer"
    t.string "vender_ref"
  end

  create_table "question_paper_selection", id: { type: :integer, comment: "table id" }, charset: "latin1", force: :cascade do |t|
    t.integer "exam_id", null: false, comment: "exam id for wich paper selection is done"
    t.integer "course_id", null: false, comment: "course id of paper"
    t.integer "question_paper_id", null: false, comment: "question paper id of selected paper in this exam"
    t.integer "is_selected", default: 0, comment: "0=not selected ,1=selected(this flag will use for paper is selected atleast once or not)"
  end

  create_table "quick_links", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "user_type"
    t.string "title", limit: 100
    t.string "description"
    t.string "url"
    t.integer "college_id"
    t.string "keyword", limit: 100
    t.string "file_name", limit: 100
    t.string "file_location"
  end

  create_table "quotation_comparison", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "quotation_number", limit: 128
    t.date "quotation_date"
    t.integer "request_id", null: false
    t.text "product_description", size: :medium, null: false
    t.string "company_name", limit: 256, null: false
    t.string "company_address", limit: 256
    t.string "product_quantity", limit: 256, null: false
    t.float "unit_amount", limit: 53, null: false
    t.float "total_amount", limit: 53, null: false
    t.integer "approv_status", null: false
    t.string "product_name", limit: 150, null: false
    t.index ["request_id"], name: "FK_QuoComp_ReqId"
  end

  create_table "rate_contracts", primary_key: "rate_contracts_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "rate_list_id", null: false
    t.integer "item_id", null: false
    t.integer "vendor_id", null: false
    t.integer "unit_id", null: false
    t.float "rate", limit: 53, null: false
    t.float "discount_percentage", limit: 53
    t.string "remarks", limit: 128
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "service_id", default: 0
  end

  create_table "rate_lists", primary_key: "rate_list_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "rate_list_name", limit: 128, null: false
    t.date "effective_start_date", null: false
    t.date "effective_end_date", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "rate_list_for", default: 0, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["rate_list_name"], name: "Rate List Name", unique: true
  end

  create_table "receipt_details", primary_key: "receipt_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_receipt_id", null: false
    t.integer "item_id", null: false
    t.decimal "total_quantity", precision: 12, scale: 3, null: false
    t.decimal "accepted_quantity", precision: 12, scale: 3, null: false
    t.decimal "rejected_quantity", precision: 12, scale: 3, null: false
    t.integer "unit_id", null: false
    t.integer "purchase_order_id", null: false
    t.text "general_remark", null: false
    t.integer "to_store_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.float "closer_quantity", limit: 53
    t.integer "purchase_detail_id"
    t.string "budget_id"
    t.string "batch_no"
    t.integer "batch_no_id", default: 0, null: false
    t.date "expiry_date"
  end

  create_table "receipt_service_details", primary_key: "receipt_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "service_receipt_id", null: false
    t.integer "service_id", null: false
    t.decimal "total_quantity", precision: 12, scale: 3, null: false
    t.decimal "accepted_quantity", precision: 12, scale: 3, null: false
    t.decimal "rejected_quantity", precision: 12, scale: 3, null: false
    t.integer "unit_id", null: false
    t.integer "work_order_id", null: false
    t.text "general_remark", null: false
    t.integer "to_store_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.float "closer_quantity", limit: 53
    t.integer "work_detail_id"
    t.string "budget_id"
    t.string "batch_no"
    t.integer "batch_no_id", default: 0, null: false
    t.date "expiry_date"
  end

  create_table "recruitment_cost_data", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "particular_type", null: false
    t.string "cost", limit: 45, null: false
    t.date "from_date", null: false
    t.date "to_date", null: false
    t.string "description"
  end

  create_table "refund_fee", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "degree_id"
    t.integer "year_or_semId"
    t.integer "fee_head_id"
    t.float "amount", limit: 53
    t.date "refund_date"
    t.string "comment"
  end

  create_table "refund_fee_deduct_amount", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "duration", comment: "duration in day"
    t.integer "deduct_amount", comment: "deduct amount in percent "
    t.integer "fees_head_id"
    t.string "category"
  end

  create_table "registration_details", primary_key: "registration_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "application_id", null: false
    t.integer "course_id", null: false
    t.column "status", "enum('E','D')", default: "D", comment: "detained=D, eligible=E"
    t.column "attendance_status", "enum('A','P')", default: "P", comment: "Present=P ,absent=A"
    t.float "marks_obtained_comprehensive", limit: 53
    t.float "marks_obtained_internal", limit: 53
    t.string "grade_obtained", limit: 50
    t.string "booklet_no", limit: 10
    t.integer "evaluator_ id"
    t.integer "revaluation_application_id"
    t.float "revaluated_marks", limit: 53
    t.float "revaluated_grade", limit: 53
    t.float "reevaluator_id", limit: 53
    t.integer "finalized_marks"
  end

  create_table "relative_details", primary_key: "relative_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "relative_name", limit: 45
    t.string "relative_identification", limit: 45
    t.integer "relative_relation"
    t.string "relative_college", limit: 45
  end

  create_table "relative_grade_scheme_group_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "grade_scheme_group_id", null: false
    t.integer "grade_id", null: false
    t.float "min_marks", limit: 53, null: false
    t.float "max_marks", limit: 53, null: false
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip", null: false
    t.integer "group_id"
    t.integer "course_id"
    t.integer "grade_assign_type", default: 0, comment: "0 For Manually,1 for Relative,2 for Absolute"
  end

  create_table "report_data", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "report_format_id", null: false
    t.text "value", size: :medium
    t.index ["report_format_id"], name: "report_format_id"
    t.index ["student_id"], name: "student_id"
  end

  create_table "report_format", primary_key: "report_format_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "data_type", limit: 256
    t.string "name", limit: 256, null: false
    t.integer "sequence", null: false
    t.integer "parent_id", null: false, comment: "0:Main Report, other than O: sub report ids of Main Report"
    t.integer "college_id", null: false
    t.integer "incident_type", default: 0, null: false
  end

  create_table "requisition_details", primary_key: "requisition_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "requisition_id", null: false
    t.integer "item_id"
    t.integer "kit_id"
    t.integer "service_id"
    t.float "quantity_required", limit: 53, null: false
    t.integer "unit_id", null: false
    t.date "required_by_date", null: false
    t.text "request_remarks"
    t.text "approval_remarks"
    t.integer "approved_by_user_id"
    t.date "approval_date"
    t.float "approved_quantity", limit: 53, default: 0.0
    t.float "closer_quantity", limit: 53, default: 0.0
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "requisition_status", null: false, comment: "1:Approve,2:Declined,3:Hold,4:Pending Or New Requisition,5:Under purchase"
    t.time "from_time"
    t.time "to_time"
    t.date "to_date"
    t.column "requisition_details_staging", "enum('N','Y')", default: "Y", null: false
    t.integer "approval_authoritu_one", default: 0, null: false
    t.integer "approval_authoritu_two", default: 0, null: false
    t.integer "approval_authoritu_status_one", default: 0, null: false, comment: "1:Approve,2:Declined,3:Hold,4:Pending Or New Requisition,5:Under purchase"
    t.integer "approval_authoritu_status_two", default: 0, null: false, comment: "1:Approve,2:Declined,3:Hold,4:Pending Or New Requisition,5:Under purchase"
    t.float "approve_quantity_level_one", limit: 53, default: 0.0
    t.float "approve_quantity_level_two", limit: 53, default: 0.0
    t.integer "file_id", default: 0
    t.string "budget_id"
    t.string "document_ref_no"
  end

  create_table "requisitions", primary_key: "requisition_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "requisition_no", default: 0, null: false
    t.datetime "requisition_date", precision: nil, null: false
    t.integer "to_store_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "asset_reservation_id"
    t.column "requisitions_staging", "enum('Y','N')", default: "Y", null: false
    t.integer "approval_authority", default: 0, null: false
  end

  create_table "research_scholar", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "researchScholarType", default: 0
    t.date "dateOfJoining"
    t.integer "availedLeaves", default: 0
    t.string "superVisorInternal"
    t.string "supervisorExternal"
    t.string "researchGroup"
    t.string "completedReviews", default: "0"
    t.string "reviewDates"
    t.string "prePhdSub"
    t.date "dateOfAttenmpt"
    t.date "dateOfPassing"
    t.string "noOfAttempts"
    t.string "titleOfThesis"
    t.date "dateOfTalk"
    t.date "submissionDate"
    t.string "adjudicators"
    t.date "dateOfAward"
    t.integer "updated_by"
    t.datetime "last_updated", precision: nil
  end

  create_table "resource_bundle_change", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "actual_name", null: false
    t.string "replaced_name", null: false
    t.index ["actual_name"], name: "actual_name_UNIQUE", unique: true
  end

  create_table "result_report_temp", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "p_exam_id"
    t.integer "p_student_id"
    t.integer "p_course_id"
    t.string "p_sem_id"
    t.string "p_grade_id"
    t.string "p_pass_or_fail"
    t.string "p_is_regular"
    t.string "p_grade_point"
    t.string "p_ce"
    t.string "p_eval_ce"
    t.string "p_cp_ce"
    t.string "p_sum_ce"
    t.string "p_sum_cp_ce"
    t.string "p_sgpa"
    t.string "p_cgpa"
    t.string "p_remark"
    t.string "p_last_modifydate", limit: 20
    t.string "p_academic_year_id", limit: 20
    t.string "p_term", limit: 20
    t.date "p_release_result_date"
    t.string "p_group_name", limit: 20
    t.string "p_max_mark", limit: 20
    t.string "p_marks_obtained", limit: 20
    t.string "p_effective_marks", limit: 20
    t.string "p_sem_total_marks", limit: 20
    t.string "p_total_effective_marks", limit: 20
    t.float "p_percentage", limit: 53
    t.string "p_attempt"
    t.string "p_term_name"
    t.string "p_detention_status"
    t.integer "sem_seq"
  end

  create_table "returnable_items", primary_key: "returnable_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "return_date", null: false
    t.integer "from_user_id", null: false
    t.integer "item_id", null: false
    t.integer "kit_id", null: false
    t.integer "unit_id", null: false
    t.decimal "quantity_returned", precision: 12, scale: 3, null: false
    t.integer "issued_id", null: false
    t.integer "from_cost_center_id", null: false
    t.integer "to_store_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "remarks"
  end

  create_table "revaluation_course", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "notification_id", null: false
    t.integer "course_id", null: false
    t.integer "exam_id", null: false
  end

  create_table "revaluation_notification_details", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "notification_id", null: false
    t.integer "applicable_method", null: false, comment: "1:Revaluation,2:Personal Verification,3:Retotaling"
    t.date "registration_start_date"
    t.date "registration_end_date"
    t.integer "fees_amount"
    t.integer "max_applicable_course", default: 0
    t.integer "min_applicable_grade", default: 0
  end

  create_table "revaluation_notification_master", primary_key: "notification_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "notification_title", null: false
    t.integer "college_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.string "exam_id", limit: 45, null: false
    t.date "notification_visible_date", null: false
    t.integer "fees_mode", null: false, comment: "1:Not Applicable,2:DD/Cash/Cheque,3:Challan"
    t.integer "bank_id"
  end

  create_table "review_question", primary_key: "question_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title", limit: 256, null: false
    t.text "description", size: :medium
    t.string "category", limit: 128, null: false
    t.integer "type", null: false, comment: "1: Objective, 2: Subjective/Free Form"
  end

  create_table "review_question_mapping", primary_key: ["review_id", "question_id"], charset: "utf8", force: :cascade do |t|
    t.integer "review_id", null: false
    t.integer "question_id", null: false
    t.index ["question_id"], name: "question_id"
  end

  create_table "room_bed", primary_key: "bed_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "bed_no", limit: 10, null: false
    t.integer "room_id", null: false
    t.string "description", null: false
  end

  create_table "room_section", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "room_id"
    t.integer "course_section_id"
  end

  create_table "route_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "route_id"
    t.string "stop_id", limit: 128
    t.time "stop_time"
    t.integer "bus_no"
    t.integer "no_of_user"
  end

  create_table "route_information", primary_key: "route_info_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "route_id", null: false, comment: "From Drop Down table"
    t.integer "round_trip", null: false
    t.integer "status", null: false, comment: "1 for Active and 2 for Inactive"
    t.string "route_distance", limit: 256
    t.string "ip", limit: 256
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "route_stop_mapping", primary_key: "route_stop_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "stop_id", null: false, comment: "From Drop Down table"
    t.integer "route_info_id", null: false
    t.integer "status", null: false, comment: "1 for UP and 2 for DOWN Stops"
    t.string "distance", limit: 256
    t.index ["route_info_id"], name: "fk_route_stop_mapping_1_idx"
  end

  create_table "rule_in_exam", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "rule", limit: 45
  end

  create_table "s1", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_change_status", default: 1
  end

  create_table "salary_head", primary_key: "head_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "head_name", limit: 128, null: false
    t.boolean "head_type", default: true, null: false, comment: "1: addition, 2: deduction"
    t.string "head_description", limit: 512
    t.boolean "is_pf_applicable", default: false, null: false, comment: "0: no , 1: yest"
    t.boolean "is_tds_applicable", default: false, null: false, comment: "0: no , 1: yes"
    t.boolean "is_esic_applicable", default: false, null: false, comment: "0:no , 1: yest"
    t.boolean "is_pt_applicable", comment: "0:no , 1: yest"
    t.boolean "updatable", null: false, comment: "0: not updatable, 1: updatable"
    t.integer "is_fixed", default: 0, comment: "0:not fixed"
    t.integer "is_edit", default: 0, comment: "0:not edit 1:edit when generate salary"
    t.integer "is_leavededuction", default: 0, comment: "0:not applicable 1:applicable to deduction"
    t.integer "sequence", default: 0
  end

  create_table "salary_history", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "emp_id"
    t.integer "head_id"
    t.float "amount", limit: 53
    t.date "update_date"
  end

  create_table "sample", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", default: 0, null: false
    t.integer "p_exam_id"
    t.integer "p_student_id"
    t.integer "p_course_id"
    t.string "p_sem_id"
    t.string "p_grade_id"
    t.string "p_pass_or_fail"
    t.string "p_is_regular"
    t.string "p_grade_point"
    t.string "p_ce"
    t.string "p_cp_ce"
    t.string "p_sum_ce"
    t.string "p_sum_cp_ce"
    t.string "p_sgpa"
    t.string "p_cgpa"
    t.string "p_remark"
    t.string "p_attempt"
    t.string "p_specialization"
    t.string "p_photo"
    t.integer "group_id"
  end

  create_table "schema_version", primary_key: "version", id: { type: :string, limit: 50 }, charset: "utf8", force: :cascade do |t|
    t.integer "version_rank", null: false
    t.integer "installed_rank", null: false
    t.string "description", limit: 200, null: false
    t.string "type", limit: 20, null: false
    t.string "script", limit: 1000, null: false
    t.integer "checksum"
    t.string "installed_by", limit: 100, null: false
    t.timestamp "installed_on", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.integer "execution_time", null: false
    t.boolean "success", null: false
    t.index ["installed_rank"], name: "schema_version_ir_idx"
    t.index ["success"], name: "schema_version_s_idx"
    t.index ["version_rank"], name: "schema_version_vr_idx"
  end

  create_table "section_group", primary_key: "section_group_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "section_group_name"
    t.string "description"
    t.integer "sequence"
  end

  create_table "section_group_mapping", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "section_group_id", null: false
    t.integer "course_section_id", null: false
    t.integer "degree_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "year_or_sem", null: false
    t.integer "intake_id", null: false
  end

  create_table "sell_bill_detail", primary_key: "sell_bill_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "sell_bill_id", default: 0, null: false
    t.integer "item_id", default: 0, null: false
    t.integer "gate_pass_id", default: 0, null: false
    t.float "quantity", limit: 53, default: 0.0, null: false
    t.string "rate", default: "0", null: false
    t.string "amount", default: "0", null: false
    t.float "discount", limit: 53, default: 0.0
    t.string "ip", default: "null", null: false
    t.date "last_modify_date", null: false
    t.string "active_flag", default: "Y", null: false
    t.string "net_amount", default: "0", null: false
    t.index ["sell_bill_id"], name: "fk_new_table_1_idx"
  end

  create_table "sell_bill_master", primary_key: "sell_bill_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "vendor_customer_id", default: 0, null: false
    t.string "type", default: "null", null: false
    t.string "sell_bill_no", default: "null", null: false
    t.date "sell_date"
    t.string "active_flag", default: "Y", null: false
    t.integer "voucher_unique_no", default: 0, null: false
  end

  create_table "sell_bill_tax_details", primary_key: "sells_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "sell_bill_detail_id", default: 0, null: false
    t.integer "tax_id", default: 0, null: false
    t.integer "tax_sequance", default: 0, null: false
    t.string "ip", default: "null", null: false
    t.date "last_modify_date", null: false
    t.string "active_flag", default: "y", null: false
  end

  create_table "semester_master", primary_key: "year_or_sem", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "term", null: false
    t.string "display_name", null: false
    t.integer "sequence", default: 0
    t.integer "semester_number", default: 0
  end

  create_table "seminar_workshop", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "emp_id"
    t.string "seminar_type"
    t.string "seminar_title"
    t.date "from_date"
    t.date "to_date"
    t.integer "days"
    t.string "place"
    t.string "url"
    t.string "attachment"
    t.text "other_detail", size: :tiny
    t.string "organized_by"
    t.string "conference"
    t.integer "student_id", default: 0
    t.string "research_group"
    t.string "research_type"
    t.float "grant_amount", limit: 53, default: 0.0
    t.string "funding_agency_name"
    t.string "fund_type"
    t.string "tenure"
    t.string "is_affiliated"
    t.string "is_ucsubmitted"
    t.string "uc_submission_date"
    t.string "research_project_type"
  end

  create_table "send_mail", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "user_id"
    t.string "recipient_name"
    t.string "recipient_email"
    t.string "phone_number", limit: 30
    t.text "mail_massage", size: :long
    t.string "mail_subject"
    t.string "attachment", limit: 256
    t.integer "sender_id"
    t.integer "mail_status", comment: "0-not send,1-Send"
    t.datetime "mail_sent_date", precision: nil
    t.integer "sending_type", comment: "0-both,1-mail,2-SMS"
    t.integer "college_id"
    t.text "sms_msg", size: :medium
    t.integer "sms_status"
    t.integer "announcement_id"
    t.timestamp "inserted_date", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "send_mail_history", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "user_id"
    t.string "recipient_name"
    t.string "recipient_email"
    t.string "phone_number", limit: 30
    t.text "mail_massage", size: :long
    t.string "mail_subject"
    t.string "attachment", limit: 256
    t.integer "sender_id"
    t.integer "mail_status", comment: "0-not send,1-Send"
    t.datetime "mail_sent_date", precision: nil
    t.integer "sending_type", comment: "0-both,1-mail,2-SMS"
    t.integer "college_id"
    t.text "sms_msg", size: :medium
    t.integer "sms_status"
    t.integer "announcement_id"
    t.timestamp "inserted_date", default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "service_offers_received", primary_key: "offer_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id"
    t.integer "vender_id"
    t.integer "service_id"
    t.integer "unit_id", null: false
    t.float "rate", limit: 53, null: false
    t.float "quantity", limit: 53, null: false
    t.float "discount_percentage", limit: 53
    t.string "reference_no", limit: 55
    t.date "reference_date"
    t.date "valid_till"
    t.string "attachment"
    t.integer "payment_term_id"
    t.string "remarks"
    t.integer "offer_mode"
    t.integer "dilevery_days", default: 0, null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y"
    t.string "file_name"
  end

  create_table "service_receipts", primary_key: "service_receipt_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "college_id", null: false
    t.date "service_receipt_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "challan_no", limit: 55
    t.date "challan_date"
    t.string "security_entry_no"
    t.date "security_entry_date"
    t.integer "is_cash_purchase", default: 0, null: false, comment: "0 for credit purchase,1 for cash purchase"
  end

  create_table "services", primary_key: "services_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "service_name", null: false
    t.string "unit_id"
    t.text "service_description", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.integer "service_or_item", default: 0, null: false, comment: "0 for item and 1 for service"
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
  end

  create_table "sis_property", primary_key: "property_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "property_name", default: "", null: false
    t.string "property_value", default: "No", null: false
    t.string "module_name", null: false
    t.string "client_name", default: "", null: false
    t.string "property_description", null: false
    t.integer "insert_by", default: 0, null: false
    t.date "last_updated_date", null: false
    t.string "ip", default: "", null: false
    t.string "active_flag", null: false
    t.index ["property_name"], name: "property_name_UNIQUE", unique: true
  end

  create_table "sms_account", id: false, charset: "utf8", force: :cascade do |t|
    t.string "sender_id", limit: 128, default: "Serosoft"
    t.integer "total_allotted_sms", default: 0
    t.integer "used_sms", default: 0
  end

  create_table "specializations", primary_key: "spl_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "spl_name"
    t.string "spl_arabic"
    t.string "spl_code"
    t.integer "college_id"
    t.column "is_active", "enum('N','Y')"
  end

  create_table "state", primary_key: "state_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "state_name", limit: 40, null: false
    t.string "state_short_name", limit: 15
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", limit: 1, default: "Y", null: false
    t.integer "country_id", null: false
    t.index ["state_name"], name: "state_name", unique: true
  end

  create_table "status", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "transaction_id", null: false
    t.string "reciept_number", limit: 50, null: false, collation: "utf8_general_ci"
    t.string "status", limit: 256, null: false, collation: "utf8_general_ci"
    t.string "bank_name", limit: 256, null: false, collation: "utf8_general_ci"
    t.date "clearance_date"
    t.date "bounce_date"
    t.text "bounce_reason", size: :tiny, collation: "utf8_general_ci"
  end

  create_table "stop_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "stop_name", limit: 128
    t.string "reaching_time", limit: 128
    t.integer "bus_id"
    t.integer "stop_length"
    t.string "bus_fess", limit: 128
    t.string "shift_time", limit: 128
  end

  create_table "storage_locations", primary_key: "location_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "store_id", null: false
    t.string "location_name", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "sequance_no", default: 1, null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["location_name"], name: "locationName", unique: true
  end

  create_table "store_apply_rule", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "marking_schema_id"
    t.integer "assign_eval_id"
    t.string "apply_eval_id"
    t.integer "business_rule_id"
    t.integer "b1"
    t.integer "b2"
    t.integer "b3"
    t.integer "b4"
    t.integer "best_of_max_rule"
    t.integer "priority"
    t.string "rule_name"
    t.integer "b5"
    t.integer "apply_round_off", default: 0, null: false, comment: "0 for not apply round off and 1 for apply roungOff"
  end

  create_table "store_indent", primary_key: "indent_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "indent_no", default: 0, null: false
    t.datetime "indent_date", precision: nil, null: false
    t.text "remarks", size: :tiny
    t.integer "user_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.integer "store_id", null: false
  end

  create_table "store_requisition_details", primary_key: "requisition_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "requisition_id", null: false
    t.integer "item_id"
    t.integer "kit_id"
    t.float "quantity_required", limit: 53, null: false
    t.integer "unit_id", null: false
    t.date "required_by_date", null: false
    t.text "remarks", size: :tiny
    t.float "closer_quantity", limit: 53, default: 0.0
    t.integer "user_id", null: false
    t.integer "requisition_status", null: false, comment: "4:Pending Or New Requisition"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["item_id"], name: "requisition_item_id"
    t.index ["requisition_id"], name: "requisition_details_indx1"
  end

  create_table "store_requisitions", primary_key: "requisition_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "requisition_no", default: 0, null: false
    t.datetime "requisition_date", precision: nil, null: false
    t.integer "from_store_id", null: false
    t.integer "to_store_id", null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
  end

  create_table "store_users", primary_key: "store_access_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "store_id", null: false
    t.integer "user_id", null: false
    t.string "ip", limit: 200
    t.date "last_modified_date"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "stores", primary_key: "store_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "store_name", null: false
    t.string "college_id"
    t.string "store_address", limit: 500, null: false
    t.integer "sequance_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "is_Central_Store", default: 0, null: false
    t.integer "group_of_college", default: 0
    t.index ["store_name"], name: "storeName", unique: true
  end

  create_table "stud_attendance", charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.date "date"
    t.time "time"
    t.integer "verify_mode", comment: " 1-card, 2- finger print,3- password,4- manual"
    t.integer "machine_number"
    t.string "machine_location", collation: "utf8_general_ci"
    t.string "file_name", collation: "utf8_general_ci"
    t.date "update_date"
    t.index ["user_id"], name: "fk_userId"
  end

  create_table "stud_medical_insurance_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "medical_history", size: :tiny
    t.text "medical_fitness", size: :tiny
    t.string "medical_ins_company_nm", limit: 110
    t.string "medical_policy_no", limit: 100
    t.date "from_date"
    t.date "to_date"
    t.integer "file_id"
  end

  create_table "student_admission_info", primary_key: "student_code_no", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title", limit: 256
    t.string "first_name", limit: 256
    t.string "middle_name", limit: 256
    t.string "last_name", limit: 256
    t.string "gender", limit: 10
    t.date "date_of_birth"
    t.string "nationality", limit: 20
    t.string "father_name", limit: 256
    t.string "mother_name", limit: 256
    t.string "email_id", limit: 256
    t.integer "entrance_exam_type"
    t.float "entrance_exam_score", limit: 53
    t.date "entrance_exam_date"
    t.string "additional_course_name", limit: 256
    t.string "institiute_name", limit: 256
    t.integer "first_preference"
    t.integer "second_preference"
    t.integer "registration_year"
    t.string "form_no", limit: 256
    t.integer "degree_id", null: false
    t.date "update_date"
    t.date "update_by"
    t.date "admission_date"
  end

  create_table "student_advisors", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "advisor_id"
    t.integer "student_id"
  end

  create_table "student_appeal_details_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_appeal_id", null: false
    t.integer "status", default: 0, null: false, comment: "0-pending,1-approved,2-denied,3-cancelled"
    t.integer "action_by"
    t.date "action_date"
    t.string "action_remark"
    t.string "ip", null: false
  end

  create_table "student_appeal_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.date "date"
    t.integer "degree_id", null: false
    t.integer "advisor_id"
    t.string "subject", null: false
    t.text "details", size: :medium, null: false
    t.datetime "last_update_date", precision: nil, null: false
    t.string "ip", limit: 15, null: false
    t.string "reply"
    t.integer "status", default: 0, null: false, comment: "0-pending,1-closed,2-approved"
    t.integer "action_by"
    t.date "action_date"
    t.text "action_remark"
    t.integer "semester", null: false
    t.integer "doc_type", default: 0, null: false
    t.integer "new_degree_id", null: false
    t.integer "attendance_mode", comment: "0-FullToPart,1-PartToFull"
    t.text "letter_content"
    t.string "add_drop_course_status", limit: 25, comment: "0-Add,1-Drop"
    t.string "degree_for_eng", limit: 128
    t.string "math_required", limit: 128
    t.string "it_required", limit: 128
    t.string "certificate_type", limit: 128
    t.string "years", limit: 128
    t.string "total_result", limit: 128
    t.string "course_code", limit: 128
  end

  create_table "student_attendance", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "course_id", null: false
    t.integer "total_classes_held", null: false
    t.integer "total_classes_attended", null: false
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["student_id"], name: "student_id"
  end

  create_table "student_bank_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "bank_name"
    t.string "branch_code", limit: 25
    t.text "bank_address"
    t.string "bank_account_no", limit: 45
    t.integer "account_type", limit: 1, default: 0
    t.string "ifsc_code", limit: 45
    t.string "ip"
    t.integer "updated_by", default: 0, null: false
    t.date "last_modification_date"
  end

  create_table "student_bus_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "stop_id", null: false
    t.string "time", limit: 128
    t.string "bus_pass_id", limit: 128, null: false
  end

  create_table "student_course", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "is_carry", default: 0, null: false, comment: "0: Not a carry , 1: Carry Course"
    t.integer "intake_id"
    t.string "outcome_ids", limit: 250
    t.date "enrollment_date"
    t.integer "year_or_sem"
    t.integer "exam_course_status", default: 0, comment: "0-enroll,1-pass,2-fail"
    t.integer "student_course_status", default: 0, comment: "0-Regular,1-exam only"
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["term"], name: "index5"
    t.index ["user_id", "course_id", "year_or_sem", "academic_year_id", "term"], name: "index4"
    t.index ["user_id"], name: "user_id"
  end

  create_table "student_course_final_marks", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id"
    t.integer "intake_id"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "degree_id"
    t.integer "sem_or_year"
    t.integer "course_id", null: false
    t.integer "group_id"
    t.float "total_obtained_marks", limit: 53
    t.float "total_effective_marks", limit: 53, null: false
    t.integer "grade_id", default: 0, null: false
    t.integer "status", default: 0, null: false, comment: "1:insert,2:review1,3:Release"
    t.integer "insert_by"
    t.integer "review_by"
    t.integer "release_by"
    t.string "insert_by_ip"
    t.string "review_by_ip"
    t.string "release_by_ip"
    t.datetime "insert_date", precision: nil
    t.datetime "review_date", precision: nil
    t.datetime "release_date", precision: nil
    t.string "review_by_remark"
    t.string "release_by_remark"
    t.integer "attempt", default: 1
    t.date "reval_done_date"
    t.integer "reval_done_by"
    t.text "reval_done_remark"
    t.integer "applicable_id"
    t.integer "round_off_type", null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.index ["course_id"], name: "index3"
    t.index ["exam_id"], name: "index2"
    t.index ["grade_id"], name: "index4"
    t.index ["student_id"], name: "student_course_final_marks_student_id"
  end

  create_table "student_course_final_marks_old", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id"
    t.integer "intake_id"
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "degree_id"
    t.integer "sem_or_year"
    t.integer "course_id", null: false
    t.integer "group_id"
    t.float "total_obtained_marks", limit: 53
    t.float "total_effective_marks", limit: 53, null: false
    t.integer "grade_id", null: false
    t.integer "status", default: 0, null: false, comment: "1:insert,2:review1,3:Release"
    t.integer "insert_by"
    t.integer "review_by"
    t.integer "release_by"
    t.string "insert_by_ip"
    t.string "review_by_ip"
    t.string "release_by_ip"
    t.datetime "insert_date", precision: nil
    t.datetime "review_date", precision: nil
    t.datetime "release_date", precision: nil
    t.text "review_by_remark"
    t.text "release_by_remark"
    t.integer "attempt", default: 1
    t.string "flag", limit: 45
    t.integer "reval_done_by"
    t.date "reval_done_date"
    t.text "reval_done_remark"
    t.integer "applicable_id"
    t.float "marks_obtained", limit: 53
    t.float "effective_marks", limit: 53
    t.index ["student_id"], name: "student_course_final_marks_student_id"
  end

  create_table "student_course_marks", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_change_status", default: 1
    t.index ["exam_id", "course_id", "student_id"], name: "index3"
    t.index ["student_id"], name: "student_course_marks_index"
  end

  create_table "student_course_marks_bak", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_change_status", default: 1
  end

  create_table "student_course_marks_dupli", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_change_status", default: 1
    t.integer "id", default: 0, null: false
  end

  create_table "student_course_marks_new", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, null: false
    t.column "grace", "enum('N','Y')"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')"
    t.integer "status"
  end

  create_table "student_course_marks_staging", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.column "ufm", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.integer "is_released", default: 0
    t.integer "course_section_id"
    t.index ["student_id"], name: "Vivek_StudentId"
  end

  create_table "student_course_marks_update_difference_history", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_insert_by", default: 0
    t.integer "marks_change_status", default: 1
    t.index ["student_id"], name: "student_course_marks_student_id"
  end

  create_table "student_course_marks_update_history", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "group_id", null: false
    t.integer "evaluation_component_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.float "effective_marks", limit: 53, default: 0.0, null: false
    t.column "grace", "enum('N','Y')", default: "N"
    t.string "remark"
    t.integer "insert_by", null: false
    t.string "insert_by_ip", null: false
    t.datetime "insert_date", precision: nil, null: false
    t.integer "last_modified_by"
    t.string "last_modified_by_ip"
    t.datetime "last_modified_date", precision: nil
    t.column "ufm", "enum('N','Y')", default: "N"
    t.integer "status", default: 0, comment: "0:inserted ,1:marks released "
    t.integer "round_off_type", default: 0, null: false, comment: "0- for No round off apply ,1-for Math.round,2- for Math.floor ,3-Math.ceiling"
    t.integer "marks_insert_by", default: 0
    t.integer "marks_change_status", default: 1
    t.index ["student_id"], name: "student_course_marks_student_id"
  end

  create_table "student_course_temp", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "is_carry", default: 0, null: false, comment: "0: Not a carry , 1: Carry Course"
    t.integer "intake_id"
    t.string "outcome_ids", limit: 250
    t.date "enrollment_date"
    t.integer "year_or_sem"
    t.integer "exam_course_status", default: 0, comment: "0-enroll,1-pass,2-fail"
    t.integer "student_course_status", default: 0, comment: "0-Regular,1-exam only"
  end

  create_table "student_enrollement", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "year_or_sem", null: false
    t.integer "term", null: false
    t.integer "academic_year_id", null: false
    t.integer "intake_id"
    t.date "enrollment_date"
    t.integer "degree_id"
    t.integer "voucher_unique_number", default: 0
    t.integer "registered_by", default: 0, null: false, comment: "0 for default"
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "student_enrollment_hist", id: false, charset: "utf8", force: :cascade do |t|
    t.string "operation", limit: 10
    t.integer "user_id", null: false
    t.integer "year_or_sem", null: false
    t.integer "term", null: false
    t.integer "academic_year_id", null: false
    t.integer "intake_id"
    t.timestamp "enrollment_date"
    t.integer "degree_id"
  end

  create_table "student_exam_course_attendance", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.integer "exam_id"
    t.integer "attendance_status", comment: "'0' for present '1' for absent"
    t.integer "user_id"
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.integer "evaluation_component_id"
    t.column "ufm", "enum('N','Y')", default: "N"
    t.index ["course_id", "exam_id"], name: "index2"
    t.index ["student_id", "course_id", "exam_id"], name: "student_exam_course_attendance_student_id"
  end

  create_table "student_exam_course_attendance_new", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.integer "exam_id"
    t.integer "attendance_status", comment: "'0' for present '1' for absent"
    t.integer "user_id"
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.integer "evaluation_component_id"
    t.column "ufm", "enum('N','Y')", default: "N"
    t.index ["student_id"], name: "student_exam_course_attendance_student_id"
  end

  create_table "student_exam_details", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "exam_id", null: false
    t.integer "course_id", null: false
    t.integer "course_status", null: false, comment: "0:Regular ,1:Ex"
    t.integer "detention_status", default: 1, comment: " '0' NA '1' eligible '2' detent "
    t.text "remark", size: :medium
    t.string "voucher_no"
    t.column "sys_defined", "enum('Y','N')", default: "N"
    t.integer "user_id"
    t.string "ip"
    t.datetime "last_modified_date", precision: nil
    t.column "active_flag", "enum('N','Y')", default: "Y"
    t.integer "no_of_course"
    t.integer "absent_class", default: 0
    t.integer "total_class", default: 0
    t.float "present_percent", limit: 53, default: 0.0
    t.float "marks_percentage", limit: 53
    t.integer "detend_status"
    t.float "attendance_marks", limit: 53, default: 0.0
    t.string "encode_rollNo"
    t.integer "lComponent", default: 0, null: false
    t.integer "tComponent", default: 0, null: false
    t.integer "pComponent", default: 0, null: false
    t.integer "lComponentAbsent", default: 0, null: false
    t.integer "tComponentAbsent", default: 0, null: false
    t.integer "pComponentAbsent", default: 0, null: false
    t.index ["exam_id", "course_id"], name: "index3"
    t.index ["exam_id"], name: "index2"
    t.index ["student_id", "exam_id", "course_id"], name: "index1"
  end

  create_table "student_experience", primary_key: "exp_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "company_name", limit: 200
    t.string "experience", limit: 100
    t.string "job_profile", limit: 250
    t.string "remarks", limit: 250
    t.integer "employment_sector_id"
    t.date "from_date"
    t.date "to_date"
  end

  create_table "student_fees_head", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "voucher_id"
    t.integer "user_ledger_id"
    t.integer "head_ledger_id"
    t.float "amount", limit: 53
    t.integer "amount_type", comment: "1-debit,2-crdit"
    t.integer "fees_flag", comment: "0-Define,1-Deposite,2-Bounce,3-Refund"
  end

  create_table "student_fees_plan", id: false, charset: "latin1", force: :cascade do |t|
    t.string "user_id", limit: 55, null: false, collation: "utf8_general_ci"
    t.integer "plan_id", null: false
  end

  create_table "student_hostal_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hostal_id", null: false
    t.date "to_date"
    t.date "from_date"
    t.string "room_no", limit: 128
    t.index ["hostal_id"], name: "hostal_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "student_hostal_transaction", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hostal_id", null: false
    t.integer "transaction_id", null: false
    t.index ["hostal_id"], name: "hostalId"
    t.index ["transaction_id"], name: "transactionId"
    t.index ["user_id"], name: "userId"
  end

  create_table "student_hostel_reservation", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "hostel_id"
    t.string "floor_no"
    t.string "room_no"
    t.date "from_date"
    t.date "to_date"
    t.date "request_date"
    t.integer "student_id"
  end

  create_table "student_info", primary_key: "user_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "roll_number"
    t.string "scholar_number", limit: 50
    t.string "enrolment_number", limit: 50
    t.string "sqa_no", limit: 20
    t.string "striling_no", limit: 20
    t.string "category", limit: 50, comment: "category of student SC/ST/OBC"
    t.date "date_of_birth"
    t.string "father_name", limit: 256
    t.string "mother_name", limit: 256
    t.string "gardian_name", limit: 256
    t.string "responsible_person", limit: 256
    t.integer "degree_id", null: false, comment: "current_branch of student"
    t.string "previous_degree_id", limit: 256
    t.integer "initial_degree_id"
    t.integer "registration_year", null: false
    t.integer "passout_year"
    t.string "email_id", limit: 256
    t.text "comments", size: :medium
    t.string "photo", limit: 256
    t.string "blood_group", limit: 50
    t.boolean "gender", default: true, null: false, comment: "1: Male , 2: Female"
    t.boolean "is_passout", default: false, null: false, comment: "0: not passout, 1: passout "
    t.boolean "avail_hostal_facility", default: false, comment: "0 : not avail , 1: avail hostal facility "
    t.string "registration_month", limit: 50
    t.string "living_status", limit: 50
    t.date "admission_date"
    t.string "father_occupation"
    t.string "mother_occupation"
    t.string "relation_with_gardian"
    t.string "guardian_contact_no", limit: 250
    t.integer "ledger_id"
    t.string "father_phone_no", limit: 50
    t.string "mother_phone_no", limit: 25
    t.string "spouse_name", limit: 256
    t.string "spouse_occupation"
    t.string "spouse_phone_no", limit: 11
    t.integer "intake_id"
    t.string "civil_no", limit: 20
    t.integer "birth_place_id"
    t.integer "domicile_id"
    t.integer "religion_id"
    t.integer "disability_id"
    t.integer "accommodation_type_id"
    t.integer "marital_status_id"
    t.integer "hei_home_id"
    t.integer "qualification_aim_id"
    t.integer "qualification_obtained_id"
    t.integer "qualification_classification_id"
    t.integer "student_programe_year_id"
    t.integer "student_case_id"
    t.integer "new_he_entrant_id"
    t.integer "major_source_funding_id"
    t.integer "study_type_id"
    t.integer "scholarship_type_id"
    t.integer "count_admission"
    t.integer "last_school_attended_id"
    t.integer "attendance_mode"
    t.integer "admission_year"
    t.string "guardian_occupation"
    t.string "biometric_data_capture"
    t.string "identification_mark"
    t.string "height_Weight"
    t.integer "mother_tongue"
    t.string "parent_email_id"
    t.integer "admission_category"
    t.integer "economically_backward", default: 2
    t.string "admission_type"
    t.integer "department_id"
    t.integer "country_id", comment: "for nationality"
    t.integer "father_annual_income"
    t.integer "mother_annual_income"
    t.string "voter_id_number"
    t.integer "enquiry_id", default: 0
    t.integer "application_id", default: 0
    t.string "family_tribe_name", limit: 250
    t.integer "is_transport", default: 0
    t.integer "is_sponsor", default: 0
    t.string "birth_place", limit: 250
    t.float "sponsor_discount", limit: 53, default: 0.0
    t.string "sponsor_remarks", limit: 250
    t.string "height"
    t.string "weight"
    t.integer "is_staff_child", default: 2, comment: "1-Yes,2-No"
    t.integer "current_year", default: 0
    t.string "aadhar_issue_place", limit: 250
    t.string "aadhar_card_number", limit: 250
    t.integer "fee_plan_id", default: 0
    t.string "aadhar_issue_date", limit: 250
    t.string "pan_number", limit: 45
    t.string "father_pan_number", limit: 45
    t.string "mother_pan_number", limit: 45
    t.integer "installment_applicable", default: 0, comment: "0 for No and 1 for Yes"
    t.string "proposed_discount", limit: 250
    t.string "specialization", default: ""
    t.date "creation_date"
    t.integer "area_type", default: 0, comment: "1-Rural 2-Urban"
    t.string "father_emailid"
    t.string "mother_emailid"
    t.string "country_of_birth"
    t.integer "hostel_preallocation", default: 0
    t.integer "admission_done_by", default: 0
    t.integer "birthday_flag", default: 0, null: false
    t.integer "conduct_char_type", default: 0
    t.date "last_donation"
    t.integer "is_interested_donation", default: 0
    t.integer "caste", default: 0
    t.integer "medium_id", default: 0
    t.integer "coordinator_id", default: 0
    t.integer "referral_id", default: 0
    t.string "referral_name"
    t.string "food_preference", limit: 100
    t.integer "exam_center_id", default: 0
    t.string "major_subject", limit: 100
    t.string "minor_subject1", limit: 100
    t.string "minor_subject2", limit: 100
    t.integer "isDifferentAbled", limit: 1, default: 0, comment: "1 - yes, 0 - no"
    t.integer "isBelongToMinority", limit: 1, default: 0
    t.integer "nature_df_deformity_id", default: 0
    t.integer "minority_type_id", default: 0
    t.string "father_designation", limit: 100
    t.string "mother_designation", limit: 100
    t.index ["degree_id"], name: "degree_id"
    t.index ["user_id"], name: "idx_studinfo_id"
  end

  create_table "student_internal_marking", primary_key: "internal_marking_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_section_id"
    t.integer "evaluation_mapping_id"
    t.integer "occurrence"
    t.float "mark_obtained", limit: 53
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.string "ip", limit: 225
  end

  create_table "student_ledger", primary_key: "transaction_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "bulk_transaction_id"
    t.integer "user_id", null: false
    t.integer "fee_head_id", null: false
    t.float "amount", limit: 53, null: false
    t.integer "transaction_type", null: false, comment: "1:Credit,2:Debit"
    t.datetime "transaction_date", precision: nil, null: false
    t.date "due_date"
    t.integer "payment_mode"
    t.integer "payment_type"
    t.integer "updated_by", null: false
    t.string "comment", limit: 256
    t.string "cheque_dd_number", limit: 50
    t.string "reciept_number", limit: 50
    t.integer "cr_trans_status", default: 0, null: false, comment: "0: Pending 1: completed"
    t.integer "parent_transaction_id", default: 0, null: false, comment: "0: if credit entry , transaction_id of credit entry is become parent_transaction id of debit entry"
    t.date "cheque_dd_date"
    t.string "bank_name", limit: 256
    t.index ["fee_head_id"], name: "studledger_fk_feeheadid"
    t.index ["updated_by"], name: "studledger_fk_updateid"
    t.index ["user_id"], name: "stuledger_fk_uid"
  end

  create_table "student_marks", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_id", null: false
    t.integer "academic_year_id", null: false
    t.integer "term", null: false
    t.integer "mark_head_id", null: false
    t.float "marks_obtained", limit: 53, null: false
    t.integer "is_single_attempt", default: 1, null: false, comment: "1: Single Attempt, 2: Multi Attempt"
    t.string "comment"
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["mark_head_id"], name: "mark_head_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "student_photo", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "photo"
    t.string "roll_no"
  end

  create_table "student_pre_admission_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "first_name", limit: 128, null: false
    t.string "last_name", limit: 128, null: false
    t.date "date_of_birth"
    t.string "address", limit: 256
    t.string "phone", limit: 20
    t.string "email", limit: 128
    t.string "father_name", limit: 128
    t.string "parent_phone", limit: 20
    t.integer "degree_id"
    t.string "enquiry_from", limit: 128, comment: "comma separated ids, from enquiry source table"
    t.date "enquiry_date"
    t.integer "enrollment_flag", default: 0, null: false, comment: "0: Enquiry 1: Registration form ,2: Enrolled "
    t.float "registration_amount", limit: 53, default: 0.0
    t.string "campaign_id", limit: 128, default: "0"
    t.integer "intrested_flag", default: 1, comment: "1:intrested 0: not- Intrested"
    t.integer "enquired_by_user_id", default: 0
    t.string "category", limit: 50
    t.string "city", limit: 50
    t.string "bloodgroup", limit: 50
    t.integer "college_id"
    t.integer "payment_mode"
    t.string "dd_number", limit: 50
    t.date "dd_date"
    t.string "drawee_bank", limit: 150
    t.string "third_name", limit: 250
    t.string "fourth_name", limit: 250
    t.integer "country_id"
    t.integer "state_id"
    t.string "pin_code", limit: 250
    t.integer "gender"
    t.integer "attendance_mode_id"
    t.string "enquiry_no"
    t.integer "enquiry_count"
    t.integer "enq_year"
    t.integer "request_for"
    t.string "student_display_name"
    t.integer "tetative_year"
    t.string "tehsil"
    t.string "district"
    t.integer "department_id", default: 0
    t.index ["enquiry_no"], name: "enqserno", unique: true
  end

  create_table "student_pre_admission_marks", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "stud_id", null: false
    t.string "degree_name", limit: 128
    t.string "university", limit: 256
    t.string "marks", limit: 128
    t.integer "year"
    t.string "eexm_roll_no"
    t.string "eexm_rank", limit: 10
    t.string "pcm_percentage", limit: 10
    t.string "status", limit: 10
    t.float "marks_obtain", limit: 53
    t.float "max_marks", limit: 53
  end

  create_table "student_pre_qual_marks", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "edu_id"
    t.string "course_id"
    t.string "course_name"
    t.float "credits", limit: 53
    t.string "grades"
    t.float "percentage", limit: 53
    t.float "marks_obtained", limit: 53
    t.float "total_marks", limit: 53
    t.integer "result", comment: "0 means not selected, 1 - pass, 2- fail, 3 - carry"
    t.index ["edu_id"], name: "edu_id"
  end

  create_table "student_pre_qualification", primary_key: "edu_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "type_id"
    t.integer "institute_type", comment: "-1 means \"select\", 0 means \"other college\" and 1 means \"muscat college\""
    t.integer "institute_id", default: 0
    t.string "institute_name"
    t.integer "degree_id"
    t.string "degree_name"
    t.integer "year"
    t.integer "sem"
    t.string "standard"
    t.integer "year_of_passing", comment: "cbx - check box"
    t.integer "credits_cbx"
    t.integer "grades_cbx"
    t.integer "percentage_cbx"
    t.integer "marks_obtained_cbx"
    t.integer "total_marks_cbx"
    t.integer "result_cbx"
    t.integer "last_scl_attended_id"
    t.integer "leave_inst_reason_id"
    t.date "leaving_date"
  end

  create_table "student_project_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.string "title_term_paper"
    t.string "title_final_project"
    t.string "name_term_guide"
    t.string "name_final_guide"
    t.integer "updated_by"
    t.datetime "last_updated", precision: nil
    t.string "ip"
  end

  create_table "student_registration_form_fees", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id"
    t.float "registration_form_fees", limit: 53
  end

  create_table "student_results", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", null: false
    t.integer "intake_id", null: false
    t.integer "degree_id", null: false
    t.integer "semoryear_id", null: false
    t.integer "ay_id", null: false
    t.integer "term", null: false
    t.integer "student_id", null: false
    t.float "total_obtained_marks", limit: 53
    t.float "total_effective_marks", limit: 53
    t.float "total_credits_registered", limit: 53, null: false
    t.float "total_credits_obtained", limit: 53, null: false
    t.float "sgpa", limit: 53, null: false
    t.float "cgpa", limit: 53, null: false
    t.column "is_pass", "enum('N','Y','N.A.')", default: "N.A.", null: false
    t.column "is_regular", "enum('N.A.','N','Y')"
    t.integer "user_id", null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.string "ip", null: false
    t.float "total_weightage_marks", limit: 53
    t.float "cumulative_total_obtained_marks", limit: 53
    t.float "cumulative_total_effective_marks", limit: 53
    t.float "cumulative_total_credits_registered", limit: 53
    t.float "cumulative_total_credits_obtained", limit: 53
    t.float "cumulative_total_weightage_marks", limit: 53
    t.float "cumulative_total_weightage_avg", limit: 53
    t.float "total_weightage_avg", limit: 53
    t.integer "attempt", default: 1
    t.float "gpa", limit: 53
    t.column "active_flag", "enum('Y','N')", default: "Y"
    t.float "sem_total_marks", limit: 53
    t.index ["student_id"], name: "student_exam_details_student_id"
  end

  create_table "student_revaluation_course", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "notification_id", null: false
    t.integer "exam_id", null: false
    t.integer "student_id", null: false
    t.integer "course_id", null: false
    t.integer "applicable_method"
    t.integer "fees_status"
  end

  create_table "student_room", primary_key: "student_room_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "room_id", null: false
    t.integer "exam_tt_id", default: 0
  end

  create_table "student_section", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "course_section_id", null: false
    t.date "enrollment_date", null: false
    t.index ["course_section_id"], name: "idx_cousec_sid"
    t.index ["course_section_id"], name: "ind_section_id"
    t.index ["user_id"], name: "ind_user_id"
    t.index ["user_id"], name: "vivek_ss_userid"
  end

  create_table "student_section_enroll", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "college_id"
    t.integer "user_id"
    t.integer "section_id"
    t.index ["section_id"], name: "secId"
  end

  create_table "student_section_enroll_hist", id: false, charset: "utf8", force: :cascade do |t|
    t.string "Operation", limit: 10
    t.integer "college_id"
    t.integer "user_id"
    t.integer "section_id"
    t.timestamp "datetime"
  end

  create_table "student_survey_url", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "survey_id", null: false
    t.string "survey_title"
    t.string "survey_url"
    t.string "status"
    t.date "startdate"
    t.date "enddate"
    t.integer "owner_id"
  end

  create_table "student_transaction_certificate", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "certificate_issue_id", null: false
    t.integer "transaction_id", null: false
    t.index ["certificate_issue_id"], name: "certificate_issue_id"
    t.index ["transaction_id"], name: "transaction_id"
  end

  create_table "taxes", primary_key: "tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "tax_description", limit: 128, null: false
    t.decimal "tax_percentage", precision: 8, scale: 4, null: false
    t.string "required_form", limit: 128
    t.integer "sequence_no", default: 1, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "percent_value", default: 0
  end

  create_table "tbl_country", primary_key: "country_id", id: :integer, charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "country_name", null: false
    t.string "country_flag", null: false
    t.column "del_status", "enum('Active','Inactive')", default: "Active", null: false
    t.index ["country_name"], name: "mastvalue", unique: true
  end

  create_table "tbl_state", id: false, charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "id"
    t.string "state", null: false
    t.integer "country_id", default: 0, null: false
  end

  create_table "tds_additional_slab", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "slab_id", null: false
    t.string "surcharge_name", limit: 128, null: false
    t.float "rate", null: false
    t.index ["slab_id"], name: "slab_id"
  end

  create_table "tds_slab", primary_key: "slab_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.boolean "gender", null: false, comment: "1: Male, 2: Female"
    t.boolean "is_senior_citizen", default: false, null: false, comment: "0: no , 1 : yes"
    t.integer "start_amount", null: false
    t.integer "end_amount", null: false
    t.float "slab_rate", null: false
  end

  create_table "temp1", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "ATTR_groupid"
    t.integer "ATTR_evalution"
  end

  create_table "temp2", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "ATTR_studentid"
    t.integer "ATTR_courseid"
  end

  create_table "temp3", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "ATTR_studentid"
    t.integer "ATTR_courseid"
    t.integer "ATTR_groupid"
    t.string "ATTR_evalid"
    t.string "ATT_remark"
  end

  create_table "temp33", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "exam_id", comment: "exam id, you can call notification id"
    t.integer "degree_id", default: 0, null: false
    t.integer "course_section_id", default: 0
    t.string "faculty_name", limit: 256, null: false
    t.string "program"
    t.string "course", limit: 256, null: false
    t.integer "year_or_sem"
    t.integer "course_id", null: false
    t.string "status"
    t.string "display_name"
    t.bigint "totalcount"
    t.integer "department_id", null: false
    t.string "course_code", limit: 128, null: false
  end

  create_table "temp_attendance", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "attendance", limit: 50
    t.float "att1", limit: 53, default: 0.0
    t.float "att2", limit: 53, default: 0.0
    t.float "att3", limit: 53, default: 0.0
    t.float "att4", limit: 53, default: 0.0
    t.float "att5", limit: 53, default: 0.0
    t.float "att6", limit: 53, default: 0.0
    t.float "att7", limit: 53, default: 0.0
    t.float "att8", limit: 53, default: 0.0
    t.float "att9", limit: 53, default: 0.0
    t.float "att10", limit: 53, default: 0.0
    t.float "att11", limit: 53, default: 0.0
    t.float "att12", limit: 53, default: 0.0
    t.integer "emp_id", null: false
  end

  create_table "temp_exam_date_table", id: false, charset: "utf8", force: :cascade do |t|
    t.date "exam_date"
    t.time "to_time"
    t.time "from_time"
  end

  create_table "temp_item_table", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "item_id"
    t.string "item_name"
    t.integer "group_id"
    t.string "group_name"
    t.integer "unit_id"
    t.string "unit_name"
    t.decimal "min_level", precision: 12, scale: 3
    t.decimal "max_level", precision: 12, scale: 3
    t.decimal "safety_level", precision: 12, scale: 3
    t.decimal "critical_level", precision: 12, scale: 3
    t.decimal "economic_order_quantity", precision: 12, scale: 3
    t.decimal "reorder_level", precision: 12, scale: 3
    t.string "bar_code"
    t.integer "part_no"
    t.string "abc_class"
    t.decimal "depreciation_rate_it", precision: 12, scale: 3
    t.decimal "depreciation_rate_company", precision: 12, scale: 3
    t.string "status"
    t.string "message"
  end

  create_table "temp_leave", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "leave_category", limit: 50, null: false
    t.integer "category_id", null: false
    t.float "leave1", limit: 53, default: 0.0
    t.float "leave2", limit: 53, default: 0.0
    t.float "leave3", limit: 53, default: 0.0
    t.float "leave4", limit: 53, default: 0.0
    t.float "leave5", limit: 53, default: 0.0
    t.float "leave6", limit: 53, default: 0.0
    t.float "leave7", limit: 53, default: 0.0
    t.float "leave8", limit: 53, default: 0.0
    t.float "leave9", limit: 53, default: 0.0
    t.float "leave10", limit: 53, default: 0.0
    t.float "leave11", limit: 53, default: 0.0
    t.float "leave12", limit: 53, default: 0.0
    t.integer "emp_id", null: false
  end

  create_table "temp_library_barcode_num", id: false, charset: "utf8", force: :cascade do |t|
    t.string "barcode_num"
  end

  create_table "temp_salary", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "salary_head_id"
    t.string "salary_head", limit: 50
    t.integer "head_type"
    t.string "period1", limit: 50
    t.string "period2", limit: 50
    t.string "period3", limit: 50
    t.string "period4", limit: 50
    t.string "period5", limit: 50
    t.string "period6", limit: 50
    t.string "period7", limit: 50
    t.string "period8", limit: 50
    t.string "period9", limit: 50
    t.string "period10", limit: 50
    t.string "period11", limit: 50
    t.string "period12", limit: 50
    t.integer "emp_id", null: false
  end

  create_table "temp_student_hallticket_jecrc", id: false, charset: "utf8", force: :cascade do |t|
    t.string "sem_name"
    t.integer "student_id"
    t.string "roll_number"
    t.string "enrolment_number"
    t.string "photo"
    t.string "student_display_name"
    t.string "degree_name"
    t.integer "degree_id"
    t.integer "course_id"
    t.string "course_code"
    t.string "section_name"
    t.string "course_name"
    t.integer "detention_status"
    t.integer "year_or_sem"
    t.string "exam"
    t.string "academic_year"
    t.string "term_name"
    t.string "exam_date"
    t.string "exam_day"
    t.string "from_time"
    t.string "to_time"
    t.string "degree_short_name"
    t.string "intake_name"
    t.string "user_id"
    t.string "degree_code"
    t.string "exam_month"
    t.string "exam_year"
    t.string "scholar_number"
    t.string "gender"
    t.string "branch_code"
    t.integer "sem_no"
    t.integer "year_no"
    t.string "father_name"
  end

  create_table "temp_student_hallticket_jlu", id: false, charset: "utf8", force: :cascade do |t|
    t.string "sem_name"
    t.integer "student_id"
    t.string "roll_number"
    t.string "enrolment_number"
    t.string "photo"
    t.string "student_display_name"
    t.string "degree_name"
    t.integer "degree_id"
    t.integer "course_id"
    t.string "course_code"
    t.string "course_name"
    t.integer "detention_status"
    t.integer "year_or_sem"
    t.string "exam"
    t.string "academic_year"
    t.string "term_name"
    t.string "exam_date"
    t.string "exam_day"
    t.string "from_time"
    t.string "to_time"
    t.string "degree_short_name"
    t.string "intake_name"
    t.string "room_name"
  end

  create_table "temp_student_hallticket_results1", id: false, charset: "utf8", force: :cascade do |t|
    t.string "sem_name"
    t.integer "student_id"
    t.string "roll_number"
    t.string "enrolment_number"
    t.string "photo"
    t.string "student_display_name"
    t.string "degree_name"
    t.integer "degree_id"
    t.integer "course_id"
    t.string "course_code"
    t.string "course_name"
    t.integer "detention_status"
    t.integer "year_or_sem"
    t.string "exam"
    t.string "academic_year"
    t.string "term_name"
  end

  create_table "temp_student_ledger", primary_key: "transaction_id", id: :integer, charset: "utf8", comment: "InnoDB free: 18432 kB", force: :cascade do |t|
    t.integer "bulk_transaction_id"
    t.integer "user_id", null: false
    t.integer "fee_head_id", null: false
    t.float "amount", limit: 53, default: 0.0, null: false
    t.integer "transaction_type", null: false, comment: "1:Credit,2:Debit"
    t.datetime "transaction_date", precision: nil, null: false
    t.date "due_date"
    t.integer "payment_mode"
    t.integer "payment_type"
    t.integer "updated_by", null: false
    t.string "comment", limit: 256
    t.string "cheque_dd_number", limit: 50
    t.string "reciept_number", limit: 50
    t.integer "cr_trans_status", default: 0, null: false, comment: "0: Pending 1: completed"
    t.integer "parent_transaction_id", default: 0, null: false, comment: "0: if credit entry , transaction_id of credit entry is become parent_transaction id of debit entry", unsigned: true
  end

  create_table "temp_time_table_excel_import", id: false, charset: "utf8", force: :cascade do |t|
    t.string "semester_name"
    t.string "set_name"
    t.string "emp_card_num"
    t.string "section_name"
    t.string "room_name"
    t.string "day_id"
    t.string "session_id"
    t.string "error_msg"
    t.integer "aca_year_id"
    t.integer "term_id"
    t.integer "template_id"
    t.integer "sem_id"
  end

  create_table "temp_total_session_count", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.integer "total_classes"
    t.integer "course_section_id"
  end

  create_table "template_info", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "template_name", limit: 50, null: false
    t.text "template_email_desc", size: :medium
    t.string "template_sms_desc", limit: 256
    t.integer "college_id", null: false
    t.integer "send_type"
    t.integer "template_id", null: false
    t.text "email_subject", size: :medium
    t.column "sys_defined", "enum('N','Y')", default: "N"
    t.index ["template_id"], name: "template_id", unique: true
  end

  create_table "template_mail_sms", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "template_id", null: false
    t.integer "student_id", null: false
    t.integer "mail_status", default: 4, null: false, comment: "0: tosent, 1:-sent,2:fail,4:default"
    t.integer "sms_status", default: 4, null: false, comment: "0: tosent, 1:-sent,2:fail,4:default"
    t.string "action_by", limit: 256, collation: "utf8_general_ci"
    t.date "action_date", null: false
  end

  create_table "tender_item_details", primary_key: "tender_item_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id", null: false
    t.integer "item_id", default: 0, null: false
    t.integer "service_id", default: 0, null: false
    t.integer "kit_id", default: 0, null: false
    t.integer "unit_id", default: 0, null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.text "remarks", size: :tiny
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "budget_id"
    t.integer "link_with_req", default: 0, null: false
  end

  create_table "tender_req_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_item_detail_id", null: false
    t.integer "requisition_id", null: false
    t.float "req_quantity", limit: 53, null: false
    t.integer "user_id", null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "po_details_id", default: 0, null: false
  end

  create_table "tender_sent_to", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id"
    t.integer "vendor_id"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.string "active_flag", limit: 1, default: "Y"
  end

  create_table "tender_service", primary_key: "tender_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "tender_date", null: false
    t.string "tender_no", null: false
    t.date "tender_end", null: false
    t.time "tender_time", null: false
    t.integer "college_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["tender_no"], name: "tenderno", unique: true
  end

  create_table "tender_service_details", primary_key: "tender_service_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id", null: false
    t.integer "service_id", default: 0, null: false
    t.integer "unit_id", default: 0, null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.text "remarks", size: :tiny
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "budget_id"
    t.integer "link_with_req", default: 0, null: false
  end

  create_table "tender_service_req_details", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_service_detail_id", null: false
    t.integer "requisition_id", null: false
    t.float "req_quantity", limit: 53, null: false
    t.integer "user_id", null: false
    t.string "ip"
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "wo_details_id", default: 0, null: false
  end

  create_table "tender_service_sent_to", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "tender_id"
    t.integer "vendor_id"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.string "active_flag", limit: 1, default: "Y"
  end

  create_table "tenders", primary_key: "tender_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "tender_date", null: false
    t.string "tender_no", null: false
    t.date "tender_end", null: false
    t.time "tender_time", null: false
    t.integer "college_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.index ["tender_no"], name: "tenderno", unique: true
  end

  create_table "time_preferences", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "start_time", null: false
    t.integer "end_time", null: false
    t.integer "time_slot", null: false
  end

  create_table "time_table", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "degree_id", null: false
    t.integer "academic_year_id"
    t.integer "term"
    t.integer "year_or_sem"
    t.integer "course_id"
    t.integer "room_id"
    t.integer "faculty_id"
    t.time "form_time"
    t.time "to_time"
    t.date "allocated_date"
    t.integer "updated_by"
    t.string "faculty_colour", limit: 25
    t.integer "is_break", comment: " 1:yes , 0:No"
    t.index ["academic_year_id"], name: "academic_year_id"
    t.index ["course_id"], name: "course_id"
    t.index ["degree_id"], name: "degree_id"
    t.index ["faculty_id"], name: "faculty_id"
    t.index ["room_id"], name: "room_id"
  end

  create_table "time_table_import", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "l_number", limit: 45
    t.string "class_name"
    t.string "faculty_name"
    t.string "course_name", limit: 45
    t.string "room_name", limit: 45
    t.string "day_number", limit: 45
    t.string "time_number", limit: 45
    t.integer "course_section_id"
    t.integer "room_id"
    t.integer "faculty_id"
    t.integer "template_id"
    t.integer "term_id"
    t.integer "set_id"
    t.integer "year_or_sem"
    t.string "set_name", limit: 45
    t.string "sem_name", limit: 45
    t.integer "session"
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.string "time_table_day"
  end

  create_table "time_table_title", primary_key: "title_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "title"
    t.integer "no_of_period", null: false
    t.integer "working_days", null: false
    t.date "start_date"
    t.integer "class_advisor", default: 0
    t.string "active_flag", limit: 45, default: "Y", comment: "y for template is active and N for template is not active."
  end

  create_table "tmptbl_final", id: false, charset: "utf8", force: :cascade do |t|
    t.string "item_name"
    t.integer "item_id"
    t.string "unit_name"
    t.integer "unit_id"
    t.string "trans_date", limit: 30
    t.string "trans_type", limit: 30
    t.float "rcvd_qty", limit: 53
    t.float "issued_qty", limit: 53
    t.string "remark"
    t.float "balance", limit: 53
  end

  create_table "tmptbl_for_depreciation_details", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_details1", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_details2", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_details3", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_details4", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_details5", id: false, charset: "utf8", force: :cascade do |t|
    t.string "quantity"
    t.float "amount", limit: 53
    t.integer "item_id"
    t.string "item_name"
    t.float "per", limit: 53
    t.float "flag1_per", limit: 53
    t.float "flag2_per", limit: 53
    t.float "total", limit: 53
    t.string "flag", limit: 10
    t.float "total_amount_flag", limit: 53
    t.float "total_per_flag", limit: 53
  end

  create_table "tmptbl_for_depreciation_report_details", id: false, charset: "utf8", force: :cascade do |t|
    t.string "item_name"
    t.float "stock_quantity", limit: 53
    t.float "stock_value", limit: 53
    t.float "pur_qty", limit: 53
    t.float "pur_value", limit: 53
    t.float "total", limit: 53
    t.integer "item_id"
  end

  create_table "tmptbl_opbalance", id: false, charset: "utf8", force: :cascade do |t|
    t.string "item_name"
    t.integer "item_id"
    t.string "unit_name"
    t.integer "unit_id"
    t.string "trans_date", limit: 30
    t.string "trans_type", limit: 30
    t.float "rcvd_qty", limit: 53
    t.float "issued_qty", limit: 53
    t.string "remark"
    t.float "balance", limit: 53
  end

  create_table "token_current_range", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "token_from", default: 0
    t.integer "token_to", default: 0
  end

  create_table "token_master", primary_key: "token_id", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "college_id"
    t.integer "intake_id"
    t.integer "token_from"
    t.integer "token_to"
  end

  create_table "training_details", primary_key: "training_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "training_stream", limit: 256
    t.string "training_organisation", limit: 256
    t.string "training_status", limit: 256
    t.integer "training_type_id"
    t.date "from_date"
    t.date "to_date"
  end

  create_table "transfer_details", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "college_name", limit: 256, null: false
    t.text "comments", size: :medium
    t.date "transfer_in_date"
    t.date "transfer_out_date"
    t.boolean "type", default: false, null: false, comment: "0: normal case , 1: transfer in, 2: transfer out, 3:in & out both"
    t.index ["user_id"], name: "user_id"
  end

  create_table "unit_conversion", primary_key: "unit_conversion_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "parent_unit_id", null: false
    t.integer "alternate_unit_id", null: false
    t.decimal "conversion_factor", precision: 12, scale: 6, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "unit_conversions", primary_key: "unit_conversion_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "parent_unit_id", null: false
    t.integer "alternate_unit_id", null: false
    t.decimal "conversion_factor", precision: 12, scale: 6, null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
  end

  create_table "units", primary_key: "unit_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "unit_name", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.integer "sequence_no", default: 1, null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "unitId"
    t.index ["group_id"], name: "FK6A4576F9DD13CCF"
    t.index ["unit_name"], name: "unitName", unique: true
  end

  create_table "user_application_access", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "application_name", null: false, comment: "1 is for Academia,2 is for Webguru, 3 is for Campushire"
    t.index ["id"], name: "userappaccess_fk_id"
  end

  create_table "user_entitlement_link", primary_key: ["user_id", "link_id"], charset: "latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "link_id", null: false
    t.index ["link_id"], name: "link_id"
  end

  create_table "user_gate_pass", primary_key: "user_gate_pass_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", default: 0, null: false
    t.integer "user_id", default: 0, null: false
    t.date "out_date", null: false
    t.string "out_time", default: "null", null: false
    t.string "expected_in_date"
    t.string "expected_in_time", default: "null"
    t.text "going_with", size: :medium
    t.date "arrival_in_date"
    t.string "arrival_in_time", default: "null"
    t.text "reason_for_leaving", size: :medium
    t.text "arrival_remark", size: :medium
    t.integer "gate_pass_user_id", default: 0, null: false
    t.column "active_flag", "enum('Y','N')", default: "Y", null: false
    t.datetime "last_modified_date", precision: nil
    t.string "status", limit: 100, default: "Out Side", null: false
    t.integer "arrival_user_id", default: 0
    t.string "exact24_out_time", limit: 225
    t.string "exact24_in_time", limit: 225
    t.string "exact24_arrival_time", limit: 225
    t.string "ip", limit: 225
  end

  create_table "user_link_table", primary_key: "link_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "link_name", limit: 128, null: false
    t.string "link_action", limit: 128, null: false
    t.string "link_description", limit: 512
    t.integer "parent_id", default: 0, null: false, comment: "0: For Main Menu , Other Link Ids :For Sub Menu"
    t.string "image_path", limit: 128
    t.integer "sequence", default: 0, null: false
    t.column "add_right", "enum('Y','N')", default: "Y"
    t.column "update_right", "enum('Y','N')", default: "Y"
    t.column "delete_right", "enum('Y','N')", default: "Y"
    t.column "export_right", "enum('Y','N')", default: "Y"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "column_sequence", default: 0
    t.integer "link_for", default: 0, comment: "this filed saves user type id"
    t.index ["link_name", "link_action", "link_for"], name: "U_INDEX", unique: true
  end

  create_table "user_login_history_send_mail", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "email_id", limit: 45
  end

  create_table "user_login_info", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "login_count"
    t.datetime "last_login_time", precision: nil
    t.integer "update_login_count"
    t.index ["id"], name: "id"
  end

  create_table "user_login_info_hist", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "id", null: false
    t.integer "login_count"
    t.datetime "last_login_time", precision: nil
    t.integer "update_login_count"
  end

  create_table "user_profile", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "user_id", limit: 256, null: false
    t.string "password", limit: 256, null: false
    t.integer "user_type", null: false
    t.string "name_in_rgnl_lang", limit: 256
    t.string "first_name", limit: 256
    t.string "second_name", limit: 256
    t.string "third_name", limit: 256
    t.string "fourth_name", limit: 256
    t.string "middle_name", limit: 256
    t.string "last_name", limit: 256
    t.date "valid_till", null: false
    t.integer "is_available", null: false, comment: "1=Available , 0 = unavailable"
    t.integer "college_id", null: false
    t.integer "emp_id"
    t.string "webguru_user_id", limit: 256
    t.string "placement_user_id", limit: 256
    t.string "registration_month"
    t.string "user_id_access"
    t.string "card_no"
    t.string "former_last_name", limit: 225
    t.string "marital_status", limit: 225
    t.string "nationality", limit: 225
    t.string "regident_contry", limit: 225
    t.string "social_sicurity", limit: 225
    t.string "social_insurance", limit: 225
    t.string "student_display_name"
    t.date "date_of_birth"
    t.string "father_name"
    t.string "survey_url"
    t.integer "token_number"
    t.string "alias"
    t.string "finance_blocking", limit: 1, default: "0"
    t.string "library_blocking", limit: 1, default: "0"
    t.string "hostel_blocking", limit: 1, default: "0"
    t.string "inventory_blocking", limit: 1, default: "0"
    t.string "hr_blocking", limit: 1, default: "0"
    t.string "finance_remark"
    t.string "library_remark"
    t.string "hostel_remark"
    t.string "inventory_remark"
    t.string "hr_remark"
    t.string "alias_name", limit: 250
    t.string "placement_blocking", limit: 1, comment: "1-block and 0-unblock"
    t.datetime "finance_blocking_date", precision: nil
    t.datetime "library_blocking_date", precision: nil
    t.datetime "hostel_blocking_date", precision: nil
    t.datetime "inventory_blocking_date", precision: nil
    t.datetime "hr_blocking_date", precision: nil
    t.integer "finance_blocking_updated_by_id"
    t.integer "library_blocking_updated_by_id"
    t.integer "hostel_blocking_updated_by_id"
    t.integer "inventory_blocking_updated_by_id"
    t.integer "hr_blocking_updated_by_id"
    t.datetime "placement_blocking_date", precision: nil
    t.integer "placement_blocking_updated_by_id"
    t.text "manage_user_remark"
    t.string "exam_blocking", limit: 1, default: "0"
    t.string "exam_remark"
    t.integer "exam_blocking_updated_by_id"
    t.datetime "exam_blocking_date", precision: nil
    t.index ["college_id"], name: "college_id"
    t.index ["emp_id"], name: "user_prof_idx"
    t.index ["user_type"], name: "user_type"
  end

  create_table "user_rights", primary_key: "user_right_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "link_id", null: false
    t.column "add_right", "enum('Y','N')"
    t.column "update_right", "enum('Y','N')"
    t.column "delete_right", "enum('Y','N')"
    t.column "export_right", "enum('Y','N')"
    t.date "add_from_date"
    t.date "add_to_date"
    t.date "update_from_date"
    t.date "update_to_date"
    t.date "delete_from_date"
    t.date "delete_to_date"
    t.date "export_from_date"
    t.date "export_to_date"
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil
    t.integer "updated_by_user_id", default: 0
    t.integer "main_link_id"
  end

  create_table "user_type", primary_key: "user_type_id", id: :integer, default: nil, charset: "utf8", force: :cascade do |t|
    t.string "type", limit: 128, null: false
    t.string "description", limit: 256
  end

  create_table "user_type_leave", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "user_type", comment: "IMP Note : user_type=2:officer wise,user_type=3:Company Wise, user_type=4:faculty wise , user_type=5:employee wise"
    t.float "user_type_leave"
    t.integer "year"
    t.integer "leave_type"
    t.date "from_date"
    t.date "to_date"
  end

  create_table "user_widget", id: false, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "widget_id", null: false
    t.string "active", default: "yes", null: false
  end

  create_table "vehicle_master", primary_key: "vehicle_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vehicle_no_id", null: false, comment: "From Drop Down table"
    t.integer "vehicle_type_id", null: false, comment: "From Drop Down table"
    t.string "registration_no", limit: 256
    t.string "company_name", limit: 256
    t.string "capacity", limit: 256
    t.string "registration_place", limit: 256
    t.string "rto_passing", limit: 256
    t.string "mfg_year", limit: 256
    t.string "pollution_clearance_certificate_no", limit: 256
    t.date "puc_valid_upto"
    t.string "pollution_clearance_cost", limit: 256
    t.date "road_tax_valid_from"
    t.date "road_tax_valid_till"
    t.string "road_tax_cost", limit: 256
    t.date "road_tax_paid_on"
    t.string "ip"
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "vehicle_route_information", primary_key: "vehicle_route_info_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "route_info_id", null: false, comment: "From route_information table"
    t.integer "vehicle_id", null: false
    t.integer "responsible_person_id", null: false
    t.date "start_date", null: false
    t.date "end_date"
    t.string "driver_type", limit: 256
    t.integer "driver_id"
    t.string "driver_assistant_type", limit: 256
    t.integer "driver_assistant_id"
    t.string "ip", limit: 256
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
  end

  create_table "vehicle_route_stop_mapping", primary_key: "vehicle_route_stop_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "route_stop_id", null: false, comment: "From route_stop_mapping table"
    t.integer "vehicle_route_info_id", null: false, comment: "From vehicle_route_information table"
    t.string "arrival_time", limit: 256
    t.string "departure_time", limit: 256
  end

  create_table "vendor_college_matrix", primary_key: "vendor_college_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.integer "college_id", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N", null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.string "active_flag", limit: 1, default: "Y", null: false
  end

  create_table "vendor_contacts", primary_key: "vendor_contact_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "vendor_id", null: false
    t.string "salutation", limit: 10, null: false
    t.string "first_name", limit: 128, null: false
    t.string "father_name"
    t.string "last_name", limit: 128, null: false
    t.string "designation", limit: 128
    t.string "address1"
    t.string "address2"
    t.integer "city_id"
    t.string "zip_code", limit: 20
    t.string "phone_office", default: ""
    t.string "phone_res"
    t.string "fax"
    t.string "email"
    t.string "url"
    t.string "ims"
    t.date "date_of_birth"
    t.date "marrige_anniversary_date"
    t.text "remarks", size: :medium
    t.integer "sequence_no", default: 1, null: false
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id"
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.column "sys_defined", "enum('Y','N')", default: "N", null: false
    t.string "third_name"
    t.string "fourth_name"
  end

  create_table "vendors", primary_key: "vendor_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "group_id", null: false
    t.string "vendor_name", null: false
    t.string "address1", null: false
    t.string "address2"
    t.integer "city_id", null: false
    t.string "zip_code", limit: 12
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "url"
    t.string "remarks"
    t.string "logo"
    t.string "reg_no"
    t.string "vat_no"
    t.string "pan_no"
    t.string "tin_no"
    t.integer "credit_days", default: 0, null: false
    t.decimal "credit_limit_amount", precision: 12, scale: 2, default: "0.0", null: false
    t.decimal "standard_discount_percentage", precision: 6, scale: 2, default: "0.0", null: false
    t.column "sys_defined", "enum('N','Y')", default: "N"
    t.string "ip", limit: 150, null: false
    t.datetime "last_modified_date", precision: nil
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "udf1"
    t.string "udf2"
    t.string "udf3"
    t.string "udf4"
    t.string "udf5"
    t.string "cst_no"
    t.string "alias"
    t.string "vendor_code"
    t.index ["user_id"], name: "index3"
    t.index ["vendor_id"], name: "index4"
    t.index ["vendor_name"], name: "vendorName", unique: true
  end

  create_table "visa_details", primary_key: "visa_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "visa_no", limit: 45
    t.string "visa_type", limit: 45
    t.date "visa_issue_date"
    t.date "visa_expiry_date"
  end

  create_table "voucher", primary_key: "voucher_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "voucher_number", null: false
    t.date "voucher_date", null: false
    t.string "account_number", limit: 50
    t.integer "mode", null: false
    t.string "grn_number", limit: 50
    t.string "invoice_number", limit: 50
    t.string "way_bill_number", limit: 50
    t.string "cheque_number", limit: 50
    t.integer "created_by", null: false
    t.string "update_by"
    t.datetime "update_time", precision: nil, null: false
    t.string "narration", limit: 512
    t.integer "company_id", null: false
    t.string "bank_name"
    t.string "chequeDD_number"
    t.date "cheque_date"
    t.integer "payment_mode"
    t.index ["company_id"], name: "company_id"
  end

  create_table "voucher_entries", id: false, charset: "latin1", force: :cascade do |t|
    t.integer "voucher_id", null: false
    t.integer "amount", null: false
    t.boolean "amount_type", null: false, comment: "1: debit, 2: credit"
    t.integer "ledger_id", null: false
    t.index ["ledger_id"], name: "ledger_id"
    t.index ["voucher_id"], name: "voucher_id"
  end

  create_table "voucher_number_status", primary_key: ["company_id", "mode"], charset: "latin1", force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "mode", null: false
    t.integer "current_voucher_number", null: false
    t.index ["company_id"], name: "company_id"
  end

  create_table "webguru_attendence", primary_key: "attendance_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "course_id", default: 0, null: false, unsigned: true
    t.date "class_date", null: false
    t.integer "user_id", default: 0, null: false, unsigned: true
    t.integer "period_id", limit: 1, default: 1, null: false, unsigned: true
    t.integer "updated", default: 0
    t.integer "id", default: 0
    t.index ["course_id", "class_date", "user_id", "period_id"], name: "att_unique", unique: true
    t.index ["course_id", "user_id"], name: "course_user"
  end

  create_table "widget", primary_key: "widget_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "widget_heading"
    t.string "widget_jsp"
    t.string "min_max", default: "yes", null: false, comment: "yes : active, no : inactive"
    t.string "ajax_refresh", default: "yes", null: false, comment: "yes : active, no : inactive"
    t.string "graph_icon", default: "yes", null: false, comment: "yes : active, no : inactive"
    t.integer "sequence", default: 0, null: false
    t.integer "user_type", default: 1, null: false
    t.string "link_action", default: "#", null: false
    t.string "script_call", default: "#", null: false
  end

  create_table "work_bill_details", primary_key: "work_bill_detail_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "work_bill_id", null: false
    t.integer "service_id", null: false
    t.float "quantity", limit: 53, null: false
    t.float "rate", limit: 53, default: 0.0
    t.float "amount", limit: 53, default: 0.0
    t.integer "receipt_detail_id", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "flag", default: 0, null: false
    t.float "discount", limit: 53
    t.string "document_ref_no"
    t.integer "file_id", default: 0
  end

  create_table "work_bill_taxes", primary_key: "work_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "work_bill_detail_id", null: false
    t.integer "tax_id", null: false
    t.integer "tax_sequence", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "freight_charges"
  end

  create_table "work_bills", primary_key: "work_bill_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.string "voucher_no", null: false
    t.date "voucher_date", null: false
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.string "bill_no", null: false
    t.date "bill_date", null: false
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "user_id", null: false
    t.integer "passed_by_user"
    t.string "full_deviation_flag", comment: "D=Bill passed with deviation\r\nF=Billl Passed without any deviation"
    t.date "passed_by_date"
    t.string "remark"
    t.float "passed_value", limit: 53
    t.integer "unique_voucher_no", default: 0
    t.string "file_name", limit: 256
    t.string "file_location", limit: 512
  end

  create_table "work_order_details", primary_key: "wo_details_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "work_order_id", null: false
    t.integer "service_id", null: false
    t.decimal "quantity", precision: 12, scale: 3, null: false
    t.decimal "rate", precision: 12, scale: 3, null: false
    t.decimal "amount", precision: 12, scale: 3, null: false
    t.integer "unit_id", null: false
    t.decimal "discount_percent", precision: 5, scale: 2, null: false
    t.string "discount_description"
    t.string "remarks"
    t.string "ip", limit: 200
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "budget_id"
    t.integer "link_with_req", default: 0, null: false
    t.string "expected_delivery_date"
  end

  create_table "work_order_request", primary_key: "id_work_order", id: :integer, charset: "utf8", force: :cascade do |t|
    t.date "date", null: false
    t.string "from_user_name", limit: 50, null: false
    t.string "to_person", limit: 256, null: false
    t.string "item_code", limit: 256, null: false
    t.string "description", limit: 500, null: false
    t.string "priority", limit: 256, null: false
  end

  create_table "work_order_taxes", primary_key: "wo_tax_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "wo_details_id", null: false
    t.integer "tax_id", null: false
    t.integer "tax_sequence", null: false
    t.string "ip", limit: 150
    t.timestamp "last_modified_date", null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.string "freight_charges"
  end

  create_table "work_orders", primary_key: "work_order_id", id: :integer, charset: "utf8", force: :cascade do |t|
    t.integer "college_id", null: false
    t.integer "vendor_id", null: false
    t.date "work_order_date", null: false
    t.string "work_order_ref", limit: 50, null: false
    t.integer "payment_term_id", null: false
    t.integer "store_id", null: false
    t.string "ip", limit: 150
    t.datetime "last_modified_date", precision: nil, null: false
    t.integer "user_id", null: false
    t.column "active_flag", "enum('N','Y')", default: "Y", null: false
    t.integer "work_order_no", null: false
    t.date "date_of_approval"
    t.integer "approval_by_user_id"
    t.integer "work_order_flag", default: 0, comment: "0: Not Approval ,1: Approval"
    t.integer "tender_id"
    t.string "tender_flag", limit: 15, comment: "value 1 shows that the PO data is directly coming from tender offers"
    t.string "cancel_work_order", default: "N", comment: "N:-for Not Cancel PO ,Y:- for Cancel PO"
    t.string "document_ref_no"
    t.integer "file_id", default: 0
    t.text "document_footer"
    t.string "vender_ref"
  end

  add_foreign_key "application_addressinfo", "application_studentinfo", column: "application_id", primary_key: "application_id", name: "appId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "application_student_academicinfo", "application_studentinfo", column: "application_id", primary_key: "application_id", name: "appId1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "certificate_fees", "fees_head", primary_key: "head_id", name: "certificate_fees_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "certificate_issue", "certificates", primary_key: "certificate_id", name: "certificate_issue_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "certificate_issue", "student_info", column: "user_id", primary_key: "user_id", name: "certificate_issue_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "certificate_submit", "certificates", primary_key: "certificate_id", name: "certificate_submit_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "certificate_submit", "student_info", column: "user_id", primary_key: "user_id", name: "certificate_submit_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "college_degree", "college_info", column: "college_id", primary_key: "college_id", name: "college_degree_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "control_table", "academic_year", primary_key: "academic_year_id", name: "academicYear", on_update: :cascade, on_delete: :cascade
  add_foreign_key "control_table", "college_degree", column: "degree_id", primary_key: "degree_id", name: "degree", on_update: :cascade, on_delete: :cascade
  add_foreign_key "course_marks", "academic_year", primary_key: "academic_year_id", name: "course_marks_ibfk_4", on_update: :cascade, on_delete: :cascade
  add_foreign_key "course_marks", "college_degree", column: "degree_id", primary_key: "degree_id", name: "course_marks_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "course_marks", "course", primary_key: "course_id", name: "course_marks_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "course_marks", "marks_head", column: "mark_head_id", primary_key: "mark_head_id", name: "course_marks_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_certificate", "certificates", primary_key: "certificate_id", name: "degree_certificate_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_certificate", "college_degree", column: "degree_id", primary_key: "degree_id", name: "degree_certificate_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_course", "academic_year", primary_key: "academic_year_id", name: "degree_course_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_course", "college_degree", column: "degree_id", primary_key: "degree_id", name: "degree_course_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_course", "course", primary_key: "course_id", name: "degree_course_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_fees", "college_degree", column: "degree_id", primary_key: "degree_id", name: "degree_fees_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "degree_fees", "fees_head", primary_key: "head_id", name: "degree_fees_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "designation_history", "employee_info", column: "emp_id", primary_key: "emp_id", name: "designation_log", on_update: :cascade
  add_foreign_key "emp_80c", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_80c_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_address", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_address_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_attendance", "employee_info", column: "emp_id", primary_key: "emp_id", name: "fk_emp_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_attendance", "machine_info", column: "machine_number", primary_key: "machine_number", name: "fk_machine_number"
  add_foreign_key "emp_dependent_details", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_dependent_PKempId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_esic_detail", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_esic_detail_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_hierarchy", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_hierarchy_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_hierarchy", "employee_info", column: "manager_id", primary_key: "emp_id", name: "emp_hierarchy_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_leave", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_leave_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_leave_count", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_leave_count_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_leave_request", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_leave_request_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_payment_mode", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_payment_mode_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_payperiod_status", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_payperiod_status_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_payperiod_status", "pay_period", name: "emp_payperiod_status_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_pf_detail", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_pf_detail_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_previous_employement", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_previous_employement_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_review_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review", "performance_review", column: "review_id", primary_key: "review_id", name: "emp_review_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review_reviewer", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_review_reviewer_ibfk_6", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review_reviewer", "employee_info", column: "reviewer_emp_id", primary_key: "emp_id", name: "emp_review_reviewer_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review_reviewer", "performance_review", column: "review_id", primary_key: "review_id", name: "emp_review_reviewer_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_review_reviewer", "user_profile", column: "update_by", name: "emp_review_reviewer_ibfk_4", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_salary_head", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_salary_head_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_salary_head", "salary_head", column: "head_id", primary_key: "head_id", name: "emp_salary_head_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_salary_transaction", "employee_info", column: "emp_id", primary_key: "emp_id", name: "emp_salary_transaction_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_salary_transaction", "pay_period", name: "pay_period_id_fk"
  add_foreign_key "emp_salary_transaction", "salary_head", column: "head_id", primary_key: "head_id", name: "emp_salary_transaction_ibfk_2"
  add_foreign_key "emp_working_hour", "employee_info", column: "emp_id", primary_key: "emp_id", name: "fk_empid", on_update: :cascade, on_delete: :cascade
  add_foreign_key "emp_working_hour", "employee_info", column: "emp_id", primary_key: "emp_id", name: "fk_shift_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "employee_comments", "employee_info", column: "emp_id", primary_key: "emp_id", name: "empcomments_empid", on_update: :cascade, on_delete: :cascade
  add_foreign_key "employee_info", "company_info", column: "company_id", primary_key: "company_id", name: "company_id_ibfk_1"
  add_foreign_key "employee_info", "department", primary_key: "department_id", name: "employee_info_ibfk_2"
  add_foreign_key "employee_info", "job_type", column: "employee_type", primary_key: "job_type_id", name: "employee_info_ibfk_1"
  add_foreign_key "holiday_calendar", "company_info", column: "company_id", primary_key: "company_id", name: "holiday_calendar_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "hostal_fees", "fees_head", primary_key: "head_id", name: "fees_head_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "hostal_fees", "hostal_info", column: "hostal_id", primary_key: "hostal_id", name: "hostal_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "interview_details", "candidate", primary_key: "candidate_id", name: "interview_details_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "interview_details", "employee_info", column: "interviewer_id", primary_key: "emp_id", name: "interview_details_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "interview_details", "job_opening", column: "job_id", primary_key: "job_id", name: "interview_details_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "item_distribution", "department", primary_key: "department_id", name: "item_distribution_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "item_distribution", "faculty", primary_key: "faculty_id", name: "item_distribution_ibfk_4", on_update: :cascade, on_delete: :cascade
  add_foreign_key "item_distribution", "product_item", column: "item_id", primary_key: "item_id", name: "Product", on_update: :cascade, on_delete: :cascade
  add_foreign_key "job_opening", "employee_info", column: "hiring_manager_id", primary_key: "emp_id", name: "job_opening_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "job_type_leave", "job_type", primary_key: "job_type_id", name: "job_type_leave", on_update: :cascade, on_delete: :cascade
  add_foreign_key "job_type_salary_head", "job_type", primary_key: "job_type_id", name: "job_type_salary_head_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "job_type_salary_head", "salary_head", primary_key: "head_id", name: "job_type_salary_head_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "ledger", "master", primary_key: "master_id", name: "ledger_ibfk_3", on_update: :cascade
  add_foreign_key "library_user_attendance", "machine_info", column: "machine_number", primary_key: "machine_number", name: "fk"
  add_foreign_key "machine_user_info", "user_profile", column: "id", name: "machinuserinfo_id_fk", on_update: :cascade, on_delete: :cascade
  add_foreign_key "master", "company", primary_key: "company_id", name: "master_ibfk_3", on_update: :cascade
  add_foreign_key "organisation_fee_head", "organisation", name: "organisation_fee_head_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "pay_period", "company_info", column: "company_id", primary_key: "company_id", name: "company_id_fk"
  add_foreign_key "placement_test_schedule", "manage_placement_test", column: "placement_test_id", primary_key: "placement_test_id", name: "ptid"
  add_foreign_key "preadmission_followup", "preadmission_enquiryinfo", column: "enquiry_id", primary_key: "enquiry_id", name: "enq_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "preadmission_student_academicinfo", "preadmission_enquiryinfo", column: "enquiry_id", primary_key: "enquiry_id", name: "ennq_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "product_item", "product_details", column: "product_id", primary_key: "product_id", name: "ProductId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "product_purchase_request", "user_profile", column: "requested_user_id", name: "FK_ProPurReq_ReqUserId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "quotation_comparison", "product_purchase_request", column: "request_id", primary_key: "request_id", name: "FK_QuoComp_ReqId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "report_data", "report_format", primary_key: "report_format_id", name: "report_data_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "report_data", "student_info", column: "student_id", primary_key: "user_id", name: "report_data_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "review_question_mapping", "performance_review", column: "review_id", primary_key: "review_id", name: "review_question_mapping_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "review_question_mapping", "review_question", column: "question_id", primary_key: "question_id", name: "review_question_mapping_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "route_stop_mapping", "route_information", column: "route_info_id", primary_key: "route_info_id", name: "fk_route_stop_mapping_1"
  add_foreign_key "sell_bill_detail", "sell_bill_master", column: "sell_bill_id", primary_key: "sell_bill_id", name: "fk_sell_bill_master"
  add_foreign_key "stud_attendance", "user_profile", column: "user_id", name: "fk_userId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_attendance", "academic_year", primary_key: "academic_year_id", name: "student_attendance_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_attendance", "course", primary_key: "course_id", name: "student_attendance_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_attendance", "student_info", column: "student_id", primary_key: "user_id", name: "student_attendance_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_course", "academic_year", primary_key: "academic_year_id", name: "student_course_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_course", "course", primary_key: "course_id", name: "student_course_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_course", "user_profile", column: "user_id", name: "student_course_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_enrollement", "academic_year", primary_key: "academic_year_id", name: "student_enrollement_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_enrollement", "user_profile", column: "user_id", name: "student_enrollement_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_hostal_info", "hostal_info", column: "hostal_id", primary_key: "hostal_id", name: "student_hostal_info_ibfk_1"
  add_foreign_key "student_hostal_info", "user_profile", column: "user_id", name: "user_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_hostal_transaction", "hostal_info", column: "hostal_id", primary_key: "hostal_id", name: "hostalId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_hostal_transaction", "student_ledger", column: "transaction_id", primary_key: "transaction_id", name: "transactionId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_hostal_transaction", "user_profile", column: "user_id", name: "userId", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_info", "college_degree", column: "degree_id", primary_key: "degree_id", name: "student_info_ibfk_3", on_update: :cascade
  add_foreign_key "student_ledger", "fees_head", column: "fee_head_id", primary_key: "head_id", name: "studledger_fk_feeheadid"
  add_foreign_key "student_ledger", "user_profile", column: "updated_by", name: "studledger_fk_updateid"
  add_foreign_key "student_ledger", "user_profile", column: "user_id", name: "stuledger_fk_uid"
  add_foreign_key "student_marks", "academic_year", primary_key: "academic_year_id", name: "student_marks_ibfk_4", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_marks", "course", primary_key: "course_id", name: "student_marks_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_marks", "marks_head", column: "mark_head_id", primary_key: "mark_head_id", name: "student_marks_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_marks", "student_info", column: "user_id", primary_key: "user_id", name: "student_marks_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_pre_qual_marks", "student_pre_qualification", column: "edu_id", primary_key: "edu_id", name: "student_pre_qual_marks_ibfk_1"
  add_foreign_key "student_section_enroll", "manage_section", column: "section_id", primary_key: "section_id", name: "secId"
  add_foreign_key "student_transaction_certificate", "certificate_issue", primary_key: "certificate_issue_id", name: "student_transaction_certificate_ibfk_6", on_update: :cascade, on_delete: :cascade
  add_foreign_key "student_transaction_certificate", "student_ledger", column: "transaction_id", primary_key: "transaction_id", name: "student_transaction_certificate_ibfk_5", on_update: :cascade, on_delete: :cascade
  add_foreign_key "tds_additional_slab", "tds_slab", column: "slab_id", primary_key: "slab_id", name: "tds_additional_slab_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "time_table", "academic_year", primary_key: "academic_year_id", name: "time_table_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "time_table", "building_room", column: "room_id", name: "time_table_ibfk_6", on_update: :cascade
  add_foreign_key "time_table", "college_degree", column: "degree_id", primary_key: "degree_id", name: "time_table_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "time_table", "course", primary_key: "course_id", name: "time_table_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "transfer_details", "user_profile", column: "user_id", name: "transfer_details_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "units", "groups", primary_key: "group_id", name: "FK6A4576F9DD13CCF"
  add_foreign_key "user_application_access", "user_profile", column: "id", name: "userappaccess_fk_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_entitlement_link", "link_table", column: "link_id", primary_key: "link_id", name: "user_entitlement_link_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_entitlement_link", "user_profile", column: "user_id", name: "user_entitlement_link_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "user_login_info", "user_profile", column: "id", name: "user_login_info_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "voucher", "company", primary_key: "company_id", name: "voucher_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "voucher_entries", "ledger", primary_key: "ledger_id", name: "voucher_entries_ibfk_4", on_update: :cascade
  add_foreign_key "voucher_entries", "voucher", primary_key: "voucher_id", name: "voucher_entries_ibfk_3", on_update: :cascade, on_delete: :cascade
  add_foreign_key "voucher_number_status", "company", primary_key: "company_id", name: "voucher_number_status_ibfk_1", on_update: :cascade, on_delete: :cascade
end
