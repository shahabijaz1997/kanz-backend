steps = [
  {
    title: 'instrument',
    title_ar: 'أداة',
    index: 0,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Instrument Type',
        title_ar: 'نوع الصك',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'funding_round_attributes.instrument_type_id',
            statement: 'Select an instrument to raise funds',
            statement_ar: 'حدد أداة لجمع الأموال',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:multiple_choice],
            description: '',
            description_ar: '',
            options_attributes: [
              {
                index: 0,
                statement: 'SAFE',
                statement_ar: 'آمن',
                label: 'Commit to future equity for investors',
                label_ar: 'الالتزام بالأسهم المستقبلية للمستثمرين',
                is_range: false
              },
              {
                index: 1,
                statement: 'Equity Financing',
                statement_ar: 'تمويل أسهم رأس المال',
                label: 'Sell shares in exchange for capital',
                label_ar: 'بيع الأسهم مقابل رأس المال',
                is_range: false
              }
            ]
          }, {
            index: 1,
            is_required: true,
            field_mapping: 'funding_round_attributes.safe_type_id',
            statement: 'SAFE Type',
            statement_ar: 'نوع آمن',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:multiple_choice],
            description: '',
            description_ar: '',
            options_attributes: [
              {
                index: 0,
                statement: 'Discount, No Valuation Cap',
                statement_ar: 'الخصم، لا سقف للتقييم',
                label: 'Offer a discounted price per share',
                label_ar: 'تقديم سعر مخفض للسهم الواحد',
                is_range: false
              },
              {
                index: 1,
                statement: 'Valuation Cap, No Discount',
                statement_ar: 'سقف التقييم، لا يوجد خصم',
                label: 'Provide a maximum valuation',
                label_ar: 'تقديم الحد الأقصى للتقييم',
                is_range: false
              },
              {
                index: 2,
                statement: 'No Valuation Cap, No Discount',
                statement_ar: 'لا سقف للتقييم، لا خصم',
                label: 'Offer investor same terms as subsequent investors, sans a cap or discount',
                label_ar: 'تقديم نفس الشروط للمستثمرين مثل المستثمرين اللاحقين، بدون سقف أو خصم',
                is_range: false
              }
            ]
          }, {
            index: 1,
            is_required: true,
            field_mapping: 'funding_round_attributes.equity_type_id',
            statement: 'Equity Type',
            statement_ar: 'نوع الأسهم',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:multiple_choice],
            description: '',
            description_ar: '',
            options_attributes: [
              {
                index: 0,
                statement: 'Preferred',
                statement_ar: 'يفضل',
                label: 'Pay fixed dividends regularly',
                label_ar: 'دفع أرباح ثابتة بانتظام',
                is_range: false
              },
              {
                index: 1,
                statement: 'Common',
                statement_ar: 'شائع',
                label: 'Give shares of ownership and voting rights',
                label_ar: 'إعطاء أسهم الملكية وحقوق التصويت',
                is_range: false
              }
            ]
          }
        ]
      }
    ]
  },
  {
    title: 'stage',
    title_ar: 'منصة',
    index: 1,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Stage',
        title_ar: 'منصة',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'funding_round_attributes.round_id',
            statement: 'What is your funding stage?',
            statement_ar: 'ما هي مرحلة التمويل الخاصة بك؟',
            label: 'This will help you meet your next milestone',
            label_ar: 'سيساعدك هذا على تحقيق إنجازك التالي',
            field_type: FIELD_TYPE[:multiple_choice],
            description: '',
            description_ar: '',
            options_attributes: [
              {
                index: 0,
                statement: 'Pre-seed',
                statement_ar: 'ما قبل البذور',
                is_range: false
              },
              {
                index: 1,
                statement: 'Seed / Angel',
                statement_ar: 'بذرة / ملاك',
                is_range: false
              },
              {
                index: 2,
                statement: 'Series A',
                statement_ar: 'السلسلة أ',
                is_range: false
              },
              {
                index: 3,
                statement: 'Series B',
                statement_ar: 'السلسلة ب',
                is_range: false
              },
              {
                index: 4,
                statement: 'Series C',
                statement_ar: 'السلسلة ج',
                is_range: false
              },
              {
                index: 5,
                statement: 'Series D',
                statement_ar: 'السلسلة د',
                is_range: false
              },
              {
                index: 6,
                statement: 'Mezzanine & bridge',
                statement_ar: 'الميزانين والجسر',
                is_range: false
              }
            ]
          }
        ]
      }
    ]
  },
  {
    title: 'Title',
    title_ar: 'عنوان',
    index: 2,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Describe your deal',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'title',
            statement: 'Title',
            statement_ar: '',
            label: "Add Title.",
            label_ar: '',
            field_type: FIELD_TYPE[:text_field],
            description: '',
            description_ar: ''
          },{
            index: 1,
            is_required: false,
            field_mapping: 'description',
            statement: 'Startup description',
            statement_ar: '',
            label: "Brief Description of the property",
            label_ar: '',
            field_type: FIELD_TYPE[:text_box],
            description: '',
            description_ar: ''
          }
        ]
      }
    ]
  },
  {
    title: 'round size',
    title_ar: 'حجم دائري',
    index: 3,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Round Size',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'target',
            statement: 'How much do you need to raise?',
            statement_ar: '',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:number],
            input_type: INPUT_TYPES[:currency],
            description: '',
            description_ar: '',
            suggestions: [500_000, 1_000_000, 2_000_000, 3_000_000]
          }
        ]
      }
    ]
  },
  {
    title: 'valuation',
    title_ar: 'تقييم',
    index: 4,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Valuation',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'funding_round_attributes.valuation',
            statement: 'Estimated Value',
            statement_ar: '',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:number],
            input_type: INPUT_TYPES[:currency],
            description: '',
            description_ar: '',
          }, {
            index: 1,
            is_required: true,
            field_mapping: 'funding_round_attributes.valuation_phase_id',
            statement: 'Type',
            statement_ar: '',
            label: '',
            label_ar: '',
            field_type: FIELD_TYPE[:dropdown],
            description: '',
            description_ar: '',
            options_attributes: [
              {
                index: 0,
                statement: 'Pre-Money Valuation',
                statement_ar: '',
                is_range: false
              },
              {
                index: 1,
                statement: 'Post-Money Valuation',
                statement_ar: '',
                is_range: false
              }
            ]
          }
        ]
      }
    ]
  },
  {
    title: 'attachments',
    title_ar: 'المرفقات',
    index: 5,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Add Attachments',
        description: 'Upload the necessary documents'
      }
    ]
  },
  {
    title: 'Deal Timeline',
    title_ar: 'الجدول الزمني للصفقة',
    index: 6,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Select date',
        fields_attributes: [
          {
            index: 0,
            is_required: true,
            field_mapping: 'start_at',
            statement: 'start date',
            statement_ar: '',
            label: "",
            label_ar: '',
            field_type: FIELD_TYPE[:date],
            description: '',
            description_ar: ''
          },{
            index: 1,
            is_required: false,
            field_mapping: 'end_at',
            statement: 'end date',
            statement_ar: '',
            label: "",
            label_ar: '',
            field_type: FIELD_TYPE[:date],
            description: '',
            description_ar: ''
          }
        ]
      }
    ]
  },
  {
    title: 'terms',
    index: 7,
    title_ar: 'شروط',
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Terms',
        condition: 'safe',
        fields_attributes: [
          {
            index: 0,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'Valuation Cap',
            statement_ar: '',
            label: 'Description related valuation cap',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          }, {
            index: 1,
            is_required: false,
            field_mapping: 'terms_attributes.custom_input',
            statement: 'Valuation Cap',
            statement_ar: '',
            field_type: FIELD_TYPE[:number],
            input_type: INPUT_TYPES[:currency]
          }, {
            index: 2,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'Discount',
            statement_ar: '',
            label: 'Description related discount',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          }, {
            index: 3,
            is_required: false,
            field_mapping: 'terms_attributes.custom_input',
            statement: 'Discount',
            statement_ar: '',
            field_type: FIELD_TYPE[:number],
            input_type: INPUT_TYPES[:percent]
          }, {
            index: 4,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'MFN Only',
            statement_ar: '',
            label: 'Description related MFN',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          },{
            index: 6,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'Minimum Check Size',
            statement_ar: '',
            label: 'Description related investment',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          }, {
            index: 7,
            is_required: false,
            field_mapping: 'terms_attributes.custom_input',
            statement: 'Minimum Check Size',
            statement_ar: '',
            field_type: FIELD_TYPE[:number],
            input_type: INPUT_TYPES[:currency]
          },          {
            index: 8,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'Pro Rata',
            statement_ar: '',
            label: 'Description related Pro Rata',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          },{
            index: 10,
            is_required: false,
            field_mapping: 'terms_attributes.enabled',
            statement: 'Additional Terms',
            statement_ar: '',
            label: 'Description related additional terms',
            label_ar: '',
            field_type: FIELD_TYPE[:switch]
          }, {
            index: 11,
            is_required: false,
            field_mapping: 'terms_attributes.custom_input',
            statement: 'Additional Terms',
            statement_ar: '',
            field_type: FIELD_TYPE[:text_box]
          }
        ]
      }
    ]
  },
  {
    title: 'review',
    title_ar: 'مراجعة',
    index: 8,
    stepper_type: STEPPERS[:startup_deal],
    sections_attributes: [
      {
        index: 0,
        title: 'Review'
      }
    ]
  }
]

Stepper.find_by(title: 'review').update(title_ar: 'مراجعة')
Stepper.find_by(title: 'terms').update(title_ar: 'شروط')
Stepper.find_by(title: 'attachments').update(title_ar: 'المرفقات')
Stepper.find_by(title: 'valuation').update(title_ar: 'تقييم')
Stepper.find_by(title: 'stage').update(title_ar: 'منصة')
Stepper.find_by(title: 'instrument').update(title_ar: 'أداة')
Stepper.find_by(title: 'Deal Timeline').update(title_ar: 'الجدول الزمني للصفقة')
Stepper.find_by(title: 'Title').update(title_ar: 'عنوان')

Section.find_by(title: 'Instrument Type').update(title_ar: 'نوع الصك')
Section.find_by(title: 'Stage').update(title_ar: 'منصة')

FieldAttribute.find_by(field_mapping: 'funding_round_attributes.safe_type_id').update(statement_ar: 'نوع آمن')
FieldAttribute.find_by(field_mapping: 'funding_round_attributes.equity_type_id').update(statement_ar: 'نوع الأسهم')
FieldAttribute.find_by(field_mapping: 'funding_round_attributes.instrument_type_id').update(statement_ar: 'حدد أداة لجمع الأموال')
FieldAttribute.find_by(statement: 'What is your funding stage?').update(statement_ar: 'ما هي مرحلة التمويل الخاصة بك؟', label_ar: 'سيساعدك هذا على تحقيق إنجازك التالي')

Option.find_by(statement: 'Mezzanine & bridge').update(statement_ar: 'الميزانين والجسر')
Option.find_by(statement: 'Pre-seed').update(statement_ar: 'ما قبل البذور')
Option.find_by(statement: 'Seed / Angel').update(statement_ar: 'بذرة / ملاك')
Option.find_by(statement: 'Series A').update(statement_ar: 'السلسلة أ')
Option.find_by(statement: 'Series B').update(statement_ar: 'السلسلة ب')
Option.find_by(statement: 'Series C').update(statement_ar: 'السلسلة ج')
Option.find_by(statement: 'Series D').update(statement_ar: 'السلسلة د')
Option.find_by(statement: 'No Valuation Cap, No Discount').update(statement_ar: 'لا سقف للتقييم، لا خصم', label_ar: 'تقديم نفس الشروط للمستثمرين مثل المستثمرين اللاحقين، بدون سقف أو خصم')
Option.find_by(statement: 'Valuation Cap, No Discount').update(statement_ar: 'سقف التقييم، لا يوجد خصم', label_ar: 'تقديم الحد الأقصى للتقييم')
Option.find_by(statement: 'Discount, No Valuation Cap').update(statement_ar: 'الخصم، لا سقف للتقييم', label_ar: 'تقديم سعر مخفض للسهم الواحد')
Option.find_by(statement: 'SAFE').update(statement_ar: 'آمن', label_ar: 'الالتزام بالأسهم المستقبلية للمستثمرين')
Option.find_by(statement: 'Equity Financing').update(statement_ar: 'تمويل أسهم رأس المال', label_ar: 'بيع الأسهم مقابل رأس المال')
Option.find_by(statement: 'No Valuation Cap, No Discount').update(statement_ar: 'يفضل', label_ar: 'دفع أرباح ثابتة بانتظام')
Option.find_by(statement: 'No Valuation Cap, No Discount').update(statement_ar: 'شائع', label_ar: 'إعطاء أسهم الملكية وحقوق التصويت')

steps.each do |step|
  record = Stepper.find_or_initialize_by(stepper_type: step[:stepper_type], title: step[:title])
  next if record.persisted?
  if record.update(step)
    Rails.logger.debug 'Successfully added step'
  else
    Rails.logger.debug record.errors.full_messages
  end
end

statements = ['Valuation Cap', 'Discount' ,'Minimum Check Size','Additional Terms']
FieldAttribute.where(statement: statements).where.not(field_type: FIELD_TYPE[:switch]).each do |f|
  dependent_id = FieldAttribute.find_by(statement: f.statement, field_type: FIELD_TYPE[:switch])&.id
  f.update!(dependent_id: dependent_id)
end

section = Section.create({
  index: 0,
  title: 'Terms',
  condition: 'equity',
  stepper_id: Stepper.find_by(title: 'terms')&.id
})

statements = ['Additional Terms', 'Minimum Check Size', 'Pro Rata']
section.fields << FieldAttribute.where(statement: statements)

attachments = [
  { statement: "Investor Presentation or Pitch Deck", label: "A slide presentation summarizing the business  and investment opportunity.", description: "To present to potential investors  in meetings or pitches.", is_required: true },
  { statement: "Business Plan", label: "A comprehensive document outlining the business strategy, market analysis, and financial projections.", description: "To provide an in-depth understanding of the business  model and its growth prospects.", is_required: true },
  { statement: "Financial Statements", label: "Historical financial records  for the past three years.", description: "To offer insight into the startup's  financial health.", is_required: true },
  { statement: "SWOT Analysis", label: "Analysis of Strengths, Weaknesses, Opportunities, and Threats.", description: "To offer a balanced perspective  of risks and potential.", is_required: false },
  { statement: "Market Research Report", label: "Detailed analysis of target  market", description: "To validate the market opportunity.", is_required: false },
  { statement: "Founders' CVs", label: "Resumes of each founder.", description: "To showcase the founders' skills  and experience.", is_required: false },
  { statement: "Corporate Structure Diagram", label: "Visual representation of  organizational structure", description: "To clarify organizational setup  and key personnel.", is_required: false },
  { statement: "Legal Entity Documents", label: "Documents like Certificate  of Incorporation, etc.", description: "To confirm legal status and compliance.", is_required: false },
  { statement: "IP Rights Documentation", label: "Documents supporting any  intellectual property rights.", description: "To verify proprietary assets.", is_required: false },
  { statement: "Initial Valuation Report ", label: "Preliminary estimate of the  startup's value.", description: "To facilitate negotiation and  decision-making.", is_required: false },
  { statement: "Cap Table", label: "A table showing the ownership structure of the  company, including shares held by each stakeholder.", description: "To understand the ownership  distribution and stakeholder  equity.", is_required: false },
  { statement: "Investment Memo", label: "A detailed memorandum  outlining the investment  opportunity, terms, and  conditions.", description: "To provide prospective investors  with necessary information for  decision-making.", is_required: false },
  { statement: "Lead Syndicate Profile &  Credentials", label: "Detailed information about  the lead syndicate, their  track record, and qualifications.", description: "To establish credibility and  attract potential co-investors.", is_required: false },
  { statement: "Term Sheet", label: "A preliminary agreement  outlining the terms of the  investment.", description: "To serve as a basis for final  negotiations and legal agreements.", is_required: false },
  { statement: "Projections", label: "Forecasted revenue, expenses, and other financial metrics for future years.", description: "To provide a financial outlook and support valuation discussions.", is_required: false },
  { statement: "Due Diligence Report", label: "A report summarizing the findings of due diligence investigations, including legal, financial, and operational aspects.", description: "To inform all parties of potential risks and validate the information provided", is_required: false }
]

stepper = Stepper.find_by(title: 'attachments', stepper_type: STEPPERS[:startup_deal])
section = stepper.sections.find_by(title: 'Add Attachments')
fids = section.fields_sections.pluck(:field_id)
section.fields_sections&.delete_all
FieldAttribute.where(id: fids)&.delete_all

attachments.each_with_index do |attachment, index|
  field = FieldAttribute.create(
    index: index,
    is_required: attachment[:is_required],
    statement: attachment[:statement],
    label: attachment[:label],
    description: attachment[:description],
    field_type: FIELD_TYPE[:file],
    permitted_types: ['pdf','png'],
    size_constraints: { unit: 'mb', limit: 10 }
  )
  section.fields << field
end
