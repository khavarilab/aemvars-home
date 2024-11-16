# This file defines the dashboard UI for the app

dash <-  dashboardPage(
    dashboardHeader(title = 'AEMVARS'),
    
    # Sidebar content
    dashboardSidebar(
      sidebarMenu(
        menuItem('About AEMVARS', tabName = 'aemvars', icon = icon('dna')),
        menuItem('AEMVARS Evolution', tabName = 'evolution', icon = icon('forward')),
        menuItem('Additional Info', tabName = 'about', icon = icon('circle-info'))
    )),
    
    # Body content
    dashboardBody(
      tabItems(
      
        tabItem(
          tabName = 'aemvars',
          tags$div(
            style = 'width:800px',
            tags$img(src = 'banner_dna.jpeg', width = '800px', height = '200px'),
            tags$h3('Atlas of Environmentally-Modulated Disease Variants'),
            tags$p('Advancements in our ability to sequence the human genome, with its vast 3.2 billion nucleotide base pairs have shaped the modern era of medicine.
                    A major insight from these efforts is that the variations in our DNA sequence that confer unique traits also mediate the risk of developing common diseases, including cancer, neuropsychiatric disease, heart disease, stroke, dementia, diabetes, and autoimmunity.'),
            tags$p('Leveraging this insight to improve human health now represents the major challenge facing biomedicine. 
                    Polygenic diseases arise from interactions between single nucleotide variants (SNV) and environmental factors (GxE) and cause the vast majority of illness and mortality in the U.S. Genome-wide association studies (GWAS) have identified >350,000 human germline variant-trait associations, a majority of which are single nucleotide variants linked to inherited risk for specific polygenic diseases.'),
            tags$p('Our earlier project: Atlas of Regulatory Variants in Disease (ARVID), NHGRI U24 HG010856, used massively parallel reporter assays (MPRA) to identify disease risk-linked SNVs with differential transcription-directing activity (daSNVs) in 2D in-vitro culture. Such daSNVs alter DNA motifs and display allele-specific binding (ASB) to transcription factors (TFs). Despite the potent impact of environmental factors on polygenic disease risk, their effects on the activity of disease-linked variants have not yet been systematically studied. Additionally, how environmental factors affect TF binding to daSNVs is almost entirely unknown. Prominent among environmental influences are cellular differentiation states and inflammation. These processes are disrupted in prevalent polygenic disorders of self-renewing epithelial tissues, such as skin. No current data resource, however, systematically defines the impacts of differentiation and inflammation on the activity of daSNVs in human tissue.'),
            tags$p('The current project: Atlas of Environmentally-Modulated Disease Variants (AEMVARS) extends our earlier efforts to study the interplay between disease-linked variants and environmental factors to help advance understanding of polygenic disease.')
          )
          ),
        
        tabItem(
          tabName = 'evolution',
          h3('AEMVARS Evolution'),
          tags$div(
            style = 'width:800px',
            tags$br(),
            tags$p('The Atlas of Regulatory Variants in Disease (ARVID), NHGRI U24 HG010856, used massively parallel reporter assays (MPRA) to identify 1,627 disease risk-linked SNVs with differential transcription-directing activity (daSNVs) in 27 biologically-relevant normal human cell type contexts in 2D in vitro cultures. Binding quantitative trait loci (bQTLs) are a function of daSNVs that alter DNA motifs and display allele-specific binding (ASB) to transcription factors (TFs).'),
            tags$p('The Atlas of Environmentally-Modulated Disease Variants (AEMVARS) will expand on earlier efforts by studying environmentally-modulated disease-linked inherited variants in 3D human tissue organoids, which better model the architecture and complexity of real tissues, especially in the context of cellular environments. Importantly, disease-risk variants are studied in the during cellular differentiation and inflammation, using a suite of methods such as MPRA, population-sampling CUT&RUN, PROBER, CRISPRi, and gene editing.'),
            tags$br(),
            tags$a(href = 'https://arvid.stanford.edu',
                   tags$p(style = 'font-size:16px', 'ARVID Project Resource')),
            tags$br(),
          ),
          tags$div(
            style = 'width:800px',
            h4('ARVID Publications'),
            tags$br(),
            tags$a(href = 'https://www.biorxiv.org/content/10.1101/2024.11.07.622542', 
                   tags$p(style = 'font-size:16px', '2024 - Disease-Linked Regulatory DNA Variants and Homeostatic Transcription Factors in Epidermis. bioRxiv.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://arvid.stanford.edu/cancers', 
                   tags$p(style = 'font-size:16px', '2024 -  Inherited functional regulatory risk variants for prevalent human cancers. Accepted in Nature Genetics.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://www.nature.com/articles/s41588-023-01533-5', 
                   tags$p(style = 'font-size:16px', '2023 - Integrative analyses highlight functional regulatory variants associated with neuropsychiatric diseases. Nature Genetics.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://www.cell.com/trends/genetics/abstract/S0168-9525(23)00054-9', 
                   tags$p(style = 'font-size:16px', '2023 - Functional characterization of human genomic variation linked to polygenic diseases. Trends in Genetics.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://www.cell.com/cell-genomics/fulltext/S2666-979X(22)00140-9', 
                   tags$p(style = 'font-size:16px', '2022 - A cis-regulatory lexicon of DNA motif combinations mediating cell-type-specific gene regulation. Cell Genomics.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://www.nature.com/articles/s41592-022-01552-w',
                   tags$p(style = 'font-size:16px', '2022 - PROBER identifies proteins associated with programmable sequence-specific DNA in living cells. Nature Methods.')),
            tags$br(),
            tags$br(),
            tags$a(href = 'https://www.nature.com/articles/s41588-021-00947-3',
                   tags$p(style = 'font-size:16px', '2021 - The dynamic, combinatorial cis-regulatory lexicon of epidermal differentiation. Nature Genetics.')),
            tags$br(),
            tags$br(),
            tags$p(style = 'font-size:16px', '2020 - Start of ARVID.'),
          )
        ),

        tabItem(
          tabName = 'projects',
          h3('AEMVARS Projects'),
          tags$br(),
          tags$div(
            style = 'width:320px',
            tags$img(src = 'proj_skin.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/skin/', 
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Prevalent Skin Diseases')),
            tags$br(),
            tags$br(),
            tags$br(),
            tags$img(src = 'proj_cancer.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/cancers/', 
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Common Human Cancers')),
            tags$br(),
            tags$br(),
            tags$br(),
            tags$img(src = 'proj_brain.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/neuropsychiatry/',
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Neuropsychiatric Disorders')),
          )
        ),
        
        tabItem(
          tabName = 'about',
          tags$div(
            tags$h3('Additional Information'),
            tags$br(),
            tags$p('Please use Suggested Citation found in the "Additional Information" page of respective projects.'),
            tags$p(''),
            tags$br(),
            tags$h4('Contact Us'),
            tags$p('For questions or feedback please email: suhas <dot> srinivasan <at> stanford <dot> edu'),
            tags$a(href = 'https://khavarilab.stanford.edu/', 'Developed at the Khavari Lab', target = '_blank')
          )
        
        )
      )
    )
)



