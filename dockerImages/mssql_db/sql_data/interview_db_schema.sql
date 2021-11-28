create table dbo.test_medical_trajectory
(
	traject_id int identity(1,1) not null,
	patient_id int not null,
)

create table dbo.test_trajectory_detail(
	traject_id int  not null,
	activity_id int not null,
	date_performed date not null
)

create table dbo.[test_patients](
	[patientid] [int] identity(1,1) not null,
	[firstname] [varchar](50) not null,
	[lastname] [varchar](50) not null,
	[address] [varchar](50) not null,
	[city] [varchar](50) not null
)

create table [dbo].test_prices(
	activity_id int not null,
	price float not null
)

-------------------------------------------------------------------------------------------------
create table dbo.test_activities(
	id int identity(1,1) not null,
	name varchar(256) not null,
	treatment_subcategory_id int not null
)

create table [dbo].[test_treatment_categories](
	[category_id] [int] not null,
	[name] [varchar](256) not null,
	[rank] smallint not null
)

create table [dbo].[test_treatment_subcategories](
	[subcategory_id] [int] not null,
	[name] [varchar](256) not null,
	treatment_category_id int not null,
	[rank] smallint not null
)


insert into dbo.test_activities
(
	name,
	treatment_subcategory_id
)
select 
	name,
	treatment_subcategory_id
	from (
	Select 'Reiskosten per kilometer.' [name], 107 treatment_subcategory_id Union All
	Select 'Reistijd/vacatie per half uur.',107 Union All
	Select 'Operatieve behandeling van acuut trauma capitis, extraduraal.',5 Union All
	Select 'Craniotomie vanwege een of meerdere epidurale haematomen.',5 Union All
	Select 'Neurovasculaire decompressie achterste schedelgroeve (o.a. Janetta).',4 Union All
	Select 'Craniotomie vanwege acuut subduraal/intracerebraal traumatisch hematoom.',5 Union All
	Select 'Craniotomie vanwege subacuut/chronisch subduraal hematoom.',5 Union All
	Select 'Operatief herstel gecompliceerde impressiefractuur schedel.',5 Union All
	Select 'Exploratie orbita dmv craniotomie.',5 Union All
	Select 'Operatieve behandeling intraparenchymale aandoening supratentorieel oppervlakkig (oa tumor, cavernoom) zonder betrokkenheid ventrikel, basale kernen, thalamus.',5 Union All
	Select 'Operatieve behandeling extra-axiale aandoening supratentorieel convexiteit (oa tumor, AV-fistel) zonder betrokkenheid falx of veneuze sinusssen.',5 Union All
	Select 'Endoscopische operatieve behandeling aandoening intra- en paraventriculair.',1 Union All
	Select 'Subcutaan plaatsen pulsgenerator van DBS neurostimulator bij dwangstoornissen (zie 030197 voor overige aandoeningen).',5 Union All
	Select 'Plaatsen elektrode intracranieel van DBS neurostimulator bij dwangstoornissen (zie 030198 voor overige aandoeningen).',5 Union All
	Select 'Diagnostische intracraniele punctie.',75 Union All
	Select '(Re)exploratie schedel.',5 Union All
	Select 'Boorgat schedel (oa voor drainage epidurale en/of subdurale ruimte).',5 Union All
	Select 'Callosotomie.',5 Union All
	Select 'Plaatsen diepte-elektroden tbv epilepsie chirurgie (of tbv chronische corticografie).',5 Union All
	Select 'Plaatsen elektrodenmat of stripelektroden tbv epilepsie chirurgie (of tbv chronische corticografie).',5 Union All
	Select 'Verwijderen elektrodenmat, stripelektroden of diepte-elektroden, inclusief duraplastiek.',5 Union All
	Select 'Decompressie dmv craniotomie wgs verhoogde intracraniele druk.',5 Union All
	Select 'Decompressie dmv craniectomie wgs verhoogde intracraniele druk.',5 Union All
	Select 'Verwijderen epileptogeen gebied.',5 Union All
	Select 'Functionele hemisferectomie, totaal of partieel.',5 Union All
	Select 'Navigatiegeleide of stereotactische plaatsing intracerebrale devices (oa drains, katheters of naalden).',13 Union All
	Select 'Stereotactische operatie voor de anesthesioloog inclusief de hulp bij ventriculografie en coagulatie.',5 Union All
	Select 'Biopsie aandoening hersenen dmv craniotomie.',5 Union All
	Select 'Navigatiegeleide of stereotactische biopsie aandoening hersenen.',75 Union All
	Select 'Functionele stereotactische operatie, hersenen (zie 030147 voor stereotactische biopsie).',5 Union All
	Select 'Behandeling van oppervlakkige osteomyelitis van het schedeldak.',48 Union All
	Select 'Tracto-nucleotomie centrale zenuwstelsel.',5 Union All
	Select 'Excisie aandoening schedeldak.',5 Union All
	Select 'Open biopsie schedeldak.',5 Union All
	Select 'Percutane biopsie schedel.',75 Union All
	Select 'Navigatie- of echogeleide punctie hersenabces.',13 Union All
	Select 'Vervangen elektrode(s) intracranieel van DBS neurostimulator.',5 Union All
	Select 'Verwijderen of verplaatsen elektrode(s) intracranieel van DBS neurostimulator.',5 Union All
	Select 'Operatieve behandeling intraparenchymale aandoening supratentorieel diep (oa tumor, cavernoom) met betrokkenheid 1e,2e of 3e ventrikel, insula thalamus.',5 Union All
	Select 'Operatieve behandeling intraparenchymale aandoening infratentorieel diep (oa tumor, cavernoom), bodem 4e ventrikel, medulla oblongata en hersenstam.',5 Union All
	Select 'Operatieve behandeling extra-axiale tumor infratentorieel met betrokkenheid foramen magnum, sinussen of brughoek.',5 Union All
	Select 'Operatieve behandeling extra-axiale aandoening supratentorieel convexiteit (oa tumor, AV-fistel) met betrokkenheid falx of veneuze sinussen.',5 Union All
	Select 'Operatieve behandeling schedelbasis tumor centraal, achterste schedelgroeve, clivus, open procedure.',5 Union All
	Select 'Endovasculaire behandeling tumor schedelbasis (zie 030181 voor open procedure, zie 030183 met radionucleaire techniek).',12 Union All
	Select 'Behandeling tumor schedelbasis met radionucleaire technieken (zie 030181 voor open procedure, zie 030182 voor endovasculair).',57 Union All
	Select 'Operatieve behandeling intraparenchymale aandoening infratentorieel oppervlakkig (oa tumor, cavernoom ) in cerebellaire hemisfeer.',5 Union All
	Select 'Behandeling hersentumor met radionucleaire technieken (zie 030184 voor operatieve behandeling).',14 Union All
	Select 'Operatieve behandeling glomustumor (chemodectoom, bijvoorbeeld glomus jugulare, tympanicum of caroticum).',5 Union All
	Select 'Operatieve behandeling tumor schedelbasis frontaal, sphenoid, hypofyse, orbita, transcrani�le benadering.',5 Union All
	Select 'Distractie schedelbeenderen bij craniosynostose.',5 Union All
	Select 'Zaagsnedes maken en/of herpositionering schedelbeenderen bij craniosynostose.',5 Union All
	Select 'Verwijderen distractiemateriaal na craniosynostosebehandeling.',5 Union All
	Select 'Plastiek van schedeldefect met autoloog of homoloog bottransplantaat, zonder duratransplantaat, door middel van craniotomie.',5 Union All
	Select 'Plastiek van schedeldefect met autoloog of homoloog bottransplantaat, met duratransplantaat, door middel van craniotomie.',5 Union All
	Select 'Plastiek van schedeldefect met alloplastiek, zonder duratransplantaat, door middel van craniotomie.',5 Union All
	Select 'Plastiek van schedeldefect met alloplastiek, met duratransplantaat, door middel van craniotomie.',5 Union All
	Select 'Subcutaan plaatsen pulsgenerator van DBS neurostimulator (excl. bij dwangstoornissen zie 030117).',5 Union All
	Select 'Plaatsen elektrode(s) intracranieel van DBS neurostimulator (excl. bij dwangstoornissen zie 030118).',5 Union All
	Select 'Stereotactische radiochirurgische behandeling intracrani�le tumoren met Gamma Knife (zie 033449 voor stereotactische radiochirurgie bij AVM intracrani�le vaten).',58 Union All
	Select 'Operatie wegens crani�le meningocele.',5 Union All
	Select 'Duraverwijdingsplastiek.',5 Union All
	Select 'Externe liquordrainage cranieel.',13 Union All
	Select 'Externe liquordrainage spinaal.',5 Union All
	Select 'Duraplastiek spinaal.',5 Union All
	Select 'Plastiek van schedeldefect met autoloog of homoloog bottransplantaat, met duraplastiek, door middel van transmasto�dale/transnasale benadering.',4 Union All
	Select 'Plastiek van schedeldefect met alloplastiek, met duraplastiek, door middel van transmasto�dale/transnasale benadering.',4 Union All
	Select 'Vervangen (deel van) liquorshunt.',5 Union All
	Select 'Drainage cyste hersenen met aanleggen shunt.',5 Union All
	Select 'Fenestratie cyste hersenen d.m.v. craniotomie.',5 Union All
	Select 'Operatie wegens encephalocele.',5 Union All
	Select 'Ventriculostomie.',5 Union All
	Select 'Inbrengen ventrikelreservoir cranieel (oa Ommaya).',5 Union All
	Select 'Inbrengen drukmeter onder de schedel.',5 Union All
	Select 'Revisie of verwijderen liquorshunt of ventrikelreservoir tbv liquordrainage, zonder implantatie nieuw materiaal.',5 Union All
	Select 'Liquordrainage dmv interne liquordrain cranieel.',5 Union All
	Select 'Liquordrainage dmv interne liquordrain spinaal.',5 Union All
	Select 'Endoscopische fenestratie binnen of buiten liquorsysteem.',1 Union All
	Select 'Plaatsen elektrode nervus hypoglossus voor aansluiting op stimulator.',11 Union All
	Select 'Vervangen elektrode nervus hypoglossus.',11 Union All
	Select 'Verwijderen elektrode nervus hypoglossus.',11 Union All
	Select 'Plaatsen ademhalingssensor voor nervus hypoglossus stimulator.',11 Union All
	Select 'Vervangen ademhalingssensor nervus hypoglossus stimulator.',11 Union All
	Select 'Verwijderen ademhalingssensor nervus hypoglossus stimulator.',11 Union All
	Select 'Formeren toegangsweg via neus en/of mond voor ander poortspecialisme.',1 Union All
	Select 'Formeren toegangsweg via mastoid/oor voor ander poortspecialisme.',5 Union All
	Select 'Formeren peridurale toegangsweg voor ander poortspecialisme.',5 Union All
	Select 'Operatie wegens vaat-malformatie aan het ruggemerg of wegens tethered cord, endovasculair (zie 030309 voor open procedure).',12 Union All
	Select 'Re-exploratie spinaal liquorlek of nabloeding.',5 Union All
	Select 'Operatieve behandeling wegens tethered cord, open procedure (zie 030307 voor endovasculair).',5 Union All
	Select 'Vertebrectomie cervicaal met spondylodese.',5 Union All
	Select 'Vertebrectomie thoracaal met spondylodese.',5 Union All
	Select 'Vertebrectomie lumbaal met spondylodese.',5 Union All
	Select 'Vertebrectomie spinaal wegens myelumcompressie met spondylodese.',5 Union All
	Select 'Laminectomie, 1 niveau, (uitgezonderd bij HNP of stenose zie 030327).',5 Union All
	Select 'Laminectomie, 1 niveau, bij HNP of stenose (zie 030326 voor overige aandoeningen).',5 Union All
	Select 'Laminectomie, 2 of meer niveaus, (uitgezonderd bij HNP of stenose zie 030329).',5 Union All
	Select 'Laminectomie, 2 of meer niveaus, bij HNP of stenose (voor overige aandoeningen zie 030328).',5 Union All
	Select 'Verwijderen aandoening extramedullair (oa spinale tumor, vaatafwijking, hematoom).',5 Union All
	Select 'Verwijderen aandoening intramedullair (oa spinale tumor, vaatafwijking).',5 Union All
	Select 'Operatie wegens spinale meningocele.',5 Union All
	Select 'Operatie wegens spina bifida.',5 Union All
	Select 'Eenvoudige coagulatie van het ganglion Gasseri.',10 Union All
	Select 'Stereotactische uitschakeling van het ganglion Gasseri.',13 Union All
	Select 'Implantatie van een elektrode, suboccipitaal i.h.k.v. ONS-studie.',11 Union All
	Select 'Verwijderen of revisie van een elektrode, suboccipitaal i.h.k.v. ONS-studie.',11 Union All
	Select 'Neurectomie bij Mortons metatarsalgie.',5 Union All
	Select 'Extrapelvine of intrapelvine resectie van de nervus obturatorius.',5 Union All
	Select 'Sensibile desinnervatie van de heup.',13 Union All
	Select 'Zenuwdoorsnijding of exerese, bijvoorbeeld de nervus cutaneus femoris lateralis anterior.',5 Union All
	Select 'Cross face zenuwtransplantatie.',5 Union All
	Select 'Jump anastomose nervus hypoglossus - nervus facialis.',5 Union All
	Select 'Primair hechten kleinere (o.a. digitale) zenuw.',5 Union All
	Select 'Primair hechten grotere (plexus/stam o.a. medianus) zenuw.',5 Union All
	Select 'Anastomosering van een of meerdere hersenzenuwen intracranieel.',5 Union All
	Select 'Secundair hechten kleinere (o.a. digitale) zenuw.',5 Union All
	Select 'Secundair hechten grotere (plexus/stam o.a.medianus) zenuw.',5 Union All
	Select 'Reconstructie van kleinere (o.a. digitale) zenuw m.b.v. autoloog zenuwtransplantaat.',5 Union All
	Select 'Reconstructie van grotere (plexus/stam o.a.medianus) zenuw m.b.v. autoloog zenuwtransplantaat.',5 Union All
	Select 'Neurolysen zonder operatiemicroscoop of loupevergroting.',5 Union All
	Select 'Neurolysen m.b.v. operatiemicroscoop of loupevergroting.',4 Union All
	Select 'Exploratie van een tumor van een perifere zenuw.',5 Union All
	Select 'Decompressie zenuw, per zenuw, exclusief neurolysen (zie 030460 en 030461).',5 Union All
	Select 'Operatieve behandeling neuroom of zenuwtumor (excisie of transpositie).',5 Union All
	Select 'Reconstructie van kleinere (o.a. digitale zenuw) m.b.v. lichaamsvreemd materiaal.',5 Union All
	Select 'Reconstructie van grotere (plexus/stam o.a.medianus) zenuw m.b.v. lichaamsvreemd materiaal.',5 Union All
	Select 'Transpositie van zenuw.',5 Union All
	Select 'Transpositie nervus ulnaris.',5 Union All
	Select 'Reconstructie plexus brachialis met behulp van zenuwtransplantaat.',5 Union All
	Select 'Operatie aan de plexus cervicobrachialis.',5 Union All
	Select 'Cervicale sympathectomie.',1 Union All
	Select 'Lumbale sympathectomie, open procedure (zie 030516 voor endoscopisch).',5 Union All
	Select 'Sacrale sympathectomie.',13 Union All
	Select 'Thoracale sympathectomie, open procedure (zie 030518 voor endoscopisch).',5 Union All
	Select 'Lumbale sympathectomie als onderdeel van een vaatreconstructie, abdominaal, open procedure (zie 030519 voor endoscopisch).',5 Union All
	Select 'Endoscopische lumbale sympathectomie (zie 030511 voor open procedure).',1 Union All
	Select 'Endoscopische thoracale sympathectomie (zie 030513 voor open procedure).',1 Union All
	Select 'Endoscopische lumbale sympathectomie als onderdeel van een vaatreconstructie, abdominaal (zie 030515 voor open procedure).',1 Union All
	Select 'Injectie van het sympathische zenuwstelsel.',13 Union All
	Select 'Gehele kuur in hiatus of in sympathische ganglia.',13 Union All
	Select 'Implantatie van een stimulatie-elektrode in arteria carotis.',11 Union All
	Select 'Verwijderen van een stimulatie-elektrode uit arteria carotis.',11 Union All
	Select 'Sympathectomie aan de arteria carotis communis.',5 Union All
	Select 'Peri-arteri�le sympathectomie.',5 Union All
	Select 'Neurolytische blokkade van een of meer perifere zenuwen.',13 Union All
	Select 'Epidurale injectie, cervicaal.',13 Union All
	Select 'Epidurale injectie, thoracaal.',13 Union All
	Select 'Epidurale injectie, lumbaal.',13 Union All
	Select 'Epidurale bloodpatch (voor overige epidurale injecties zie 030545 t/m 030547 of 030560).',13 Union All
	Select 'Percutane facetdenervatie met behulp van thermolaesies onder beeldvormende techniek, inclusief prognostische blokkade, cervicaal.',10 Union All
	Select 'Percutane facetdenervatie met behulp van thermolaesies onder beeldvormende techniek, inclusief prognostische blokkade, thoracaal.',10 Union All
	Select 'Percutane facetdenervatie met behulp van thermolaesies onder beeldvormende techniek, inclusief prognostische blokkade, lumbosacraal.',10 Union All
	Select 'Percutane thermolaesie van het dorsale ganglion, ongeacht het aantal, inclusief prognostische blokkade cervicaal.',10 Union All
	Select 'Percutane thermolaesie van het dorsale ganglion, ongeacht het aantal, inclusief prognostische blokkade, thoracaal.',10 Union All
	Select 'Percutane thermolaesie van het dorsale ganglion, ongeacht het aantal, inclusief prognostische blokkade, lumbosacraal.',10 Union All
	Select 'Percutane thermolaesie van het dorsale ganglion, ongeacht het aantal, inclusief prognostische blokkades, een tweede wortel in een aparte zitting, binnen een half jaar.',10 Union All
	Select 'Selectieve thermolaesie van het ganglion Gasseri.',10 Union All
	Select 'Anesthesie bij selectieve thermolaesie van het ganglion Gasseri.',95 Union All
	Select 'Epidurale injectie, sacraal.',13 Union All
	Select 'Epidurale of subarachnoidale injecties van een neurolytische vloeistof.',13 Union All
	Select 'Injectie van het ganglion Gasseri.',13 Union All
	Select 'Anesthesie bij een injectie van het ganglion Gasseri.',95 Union All
	Select 'Cryolaesie van het ganglion sphenopalatinum, onder beeldvormende techniek.',10 Union All
	Select 'Percutane chordotomie, onder beeldvormende techniek.',13 Union All
	Select 'Therapeutische epiduroscopie (exclusief enkel inbrengen epiduraal katheter, epiduraal injectie of epidurale bloodpatch).',1 Union All
	Select 'Neurolytisch thoracaal symphaticusblok, onder beeldvormende techniek.',13 Union All
	Select 'Neurolytisch splanchnicusblok, onder beeldvormende techniek.',13 Union All
	Select 'Anesthesie bij splanchnicusblok.',95 Union All
	Select 'Neurolytisch lumbaal sympathicusblok, onder beeldvormende techniek.',13 Union All
	Select 'Diagnostische epiduroscopie.',1 Union All
	Select 'Inbrengen getunnelde epiduraal- of spinaalkatheter.',13 Union All
	Select 'Mannitol infusie via centrale lijn (minimaal 4 dagen).',48 Union All
	Select 'Carnitine infusie therapie.',48 Union All
	Select 'Ketamine infusie therapie.',48 Union All
	Select 'Behandeling met capsa�cine huidpleister.',48 Union All
	Select 'Intradiscale elektrothermische annuloplasty (IDET, zie 030594 voor biaccuplasty).',10 Union All
	Select 'Thermolaesie ganglion stellatum.',10 Union All
	Select 'Thermolaesie ganglion sphenopalatinum.',10 Union All
	Select 'Anesthesie bij blokkade ganglion sphenopalatinum.',95 Union All
	Select 'Intradiscale biaccuplasty (zie 030590 voor IDET).',10 Union All
	Select 'Radiofrequente behandeling SI gewricht.',10 Union All
	Select 'Conservatieve behandeling sympathisch reflex dystrofie (medicamenteuze behandeling, spalktherapie).',48 Union All
	Select 'Endoscopische subtotale strumectomie (oa. MIVAT).',1 Union All
	Select 'Endoscopische totale strumectomie (oa. MIVAT).',1 Union All
	Select 'Subtotale strumectomie, open procedure (zie 030613 voor endoscopisch).',5 Union All
	Select 'Totale strumectomie, open procedure (zie 030615 voor endoscopisch).',5 Union All
	Select 'Extirpatie van een of meerdere nodi uit de schildklier.',5 Union All
	Select 'Endoscopische exploratie of verwijderen autotransplantaat glandulae parathyreoidiae.',1 Union All
	Select 'Extirpatie van een of meerdere tumoren, uitgaande van de glandulae parathyreoideae, open procedure (zie 030662 voor endoscopisch).',5 Union All
	Select 'Endoscopische extirpatie van een of meerdere tumoren, uitgaande van de glandulae parathyreoideae (zie 030661 voor open procedure).',1 Union All
	Select 'Re-exploratie glandulae parathyreoidiae, inclusief sternomotie.',5 Union All
	Select 'Bijnier operatie, open procedure (zie 030701 voor laparoscopisch) (excl. resectie bijnier, met of zonder excisie omliggend weefsel, zie 030702).',5 Union All
	Select 'Laparoscopische bijnier operatie (zie 030700 voor open procedure) (excl. laparoscopische resectie bijnier, met of zonder excisie omliggend weefsel, zie 030703).',1 Union All
	Select 'Resectie bijnier, met of zonder excisie omliggend weefsel, open procedure (zie 030703 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische resectie bijnier, met of zonder excisie omliggend weefsel (zie 030702 voor open procedure).',1 Union All
	Select 'Parti�le of totale hypofysectomie transsfeno�daal (zie 030189 voor transcrani�le benadering hypofyse).',1 Union All
	Select 'Operatieve decompressie van de orbita zonder orbitotomie (laterale orbitotomie zie 030804, anterieure orbitotomie zie 030805).',5 Union All
	Select 'Laterale orbitotomie.',5 Union All
	Select 'Anterieure orbitotomie.',5 Union All
	Select 'Exenteratio orbitae.',5 Union All
	Select 'Orbitectomie (operatief verwijderen afwijking(en) uit de orbita inclusief verwijderen (delen van) de benige oogkas), excl. transcrani�le benadering (zie 030189).',5 Union All
	Select 'Biopsie orbita.',75 Union All
	Select 'Verwijderen plombe/explant na ablatiochirurgie.',4 Union All
	Select 'Reconstructie orbita m.b.v. gevasculariseerd bot transplantaat.',5 Union All
	Select 'Reconstructie orbita m.b.v. vrij bot transplantaat.',5 Union All
	Select 'Operatieve behandeling orbita bodemfractuur.',5 Union All
	Select 'Coagulatie van intra-oculaire aandoeningen, mits niet vallend onder 030896 of 030897.',10 Union All
	Select 'Coagulatie van intra-oculaire aandoeningen d.m.v. focale laserbehandeling.',9 Union All
	Select 'Coagulatie van intra-oculaire aandoeningen d.m.v. panretinale laserbehandeling.',9 Union All
	Select 'Behandeling van intra-oculaire aandoeningen d.m.v. YAG-laser (zie 031230 voor operatief verwijderen nastaar).',9 Union All
	Select 'Foto-dynamische therapie, subretinaal.',36 Union All
	Select 'Enucleatio bulbi.',5 Union All
	Select 'Evisceratio bulbi.',5 Union All
	Select 'Plaatsen van een secundair oogbol implantaat.',5 Union All
	Select 'Primaire behandeling van ernstige perforerende verwondingen van de oogbol inclusief herstel van irisprolaps.',5 Union All
	Select 'Verwijdering van een of meerdere intra-oculaire corpora aliena.',4 Union All
	Select 'Scheelzienoperatie regulier (voor operatie van schuine of verticale rechte oogspieren zie 030945, operaties van verlittekende of paralytische vormen zie 030946, vier spieren operatie zie 030989).',4 Union All
	Select 'Scheelzienoperatie schuine of verticale rechte oogspieren (voor operaties verlittekende of paralytische vormen zie 030946, vier spieren operatie zie 030989, reguliere operatie zie 030944).',4 Union All
	Select 'Scheelzienoperatie bij verlittekende oogspieren of paralytisch (voor operatie schuine of verticale rechte oogspieren zie 030945, vier spieren operatie zie 030989, reguliere operatie zie 030944).',4 Union All
	Select 'Vier spieren operatie (voor operatie van schuine of verticale rechte oogspieren zie 030945, voor operaties van verlittekende of paralytische vormen zie 030946, voor reguliere operatie zie 030944).',4 Union All
	Select 'Verwijderen van een of meerdere tumoren van de cornea met plastiek.',4 Union All
	Select 'Verwijdering van een of meerdere tumoren van de cornea zonder plastiek.',4 Union All
	Select 'Overhechting ulcus cornea.',4 Union All
	Select 'Hoornvlieshechting.',4 Union All
	Select 'Perforerende hoornvliestransplantatie (full thickness graft, penetrerende keratoplastiek (PKP)).',4 Union All
	Select 'Voorste lamellaire hoornvliestransplantatie (diepe anterieure lamellaire keratoplastiek (DALK)).',4 Union All
	Select 'Achterste lamellaire hoornvliestransplantatie (posterieure lamellaire keratoplastiek (PLK), o.a. DLEK, DSEK).',4 Union All
	Select 'Verwijdering van een of meerdere corpora aliena, behandeling van een combustio, erosie of etsing van hoornvlies of bindvlies.',4 Union All
	Select 'Tatouage van het hoornvlies.',4 Union All
	Select 'Natrium-EDTA spoeling van het hoornvlies.',48 Union All
	Select 'Herstel operatie corneaflap.',4 Union All
	Select 'Corneale collageen cross-linking (CXL).',36 Union All
	Select 'Phototherapeutische keratectomie (PTK).',36 Union All
	Select 'Photorefractieve keratectomie (PRK).',9 Union All
	Select 'Laser assisted in situ keratomileusis (LASIK).',9 Union All
	Select 'Plaatsen intrastromale corneale ringsegmenten (ICR).',4 Union All
	Select 'Laser assisted epithelial keratomileusis (LASEK).',9 Union All
	Select 'Epitheliaal laser assisted in situ keratomileusis (epi-LASIK).',9 Union All
	Select 'Behandeling met radioactieve plaque op de sclera.',57 Union All
	Select 'Sclerahechting.',4 Union All
	Select 'Verwijdering van iriscyste of iristumor.',4 Union All
	Select 'Chirurgische iridotomie of iridectomie (voor laser variant zie 030896 of 030898).',4 Union All
	Select 'Herstel iridodialysis.',4 Union All
	Select 'Herstel prolapsus iridis.',4 Union All
	Select 'Maken van nieuwe pupil-opening, diaphragmectomie.',4 Union All
	Select 'Needling filterblaas (bleb).',4 Union All
	Select 'Glaucoom operatie (voor goniotomie zie 031140, voor filtrerende operatie met plaatsen van filterimplant zie 031139).',4 Union All
	Select 'Filtrerende operatie voorste oogkamer met plaatsen filterimplant (voor goniotomie zie 031140, voor overige glaucoomoperaties zie 031138).',4 Union All
	Select 'Goniotomie (voor filtrerende operatie voorste oogkamer met plaatsen filterimplant zie 031139, voor overige glaucoomoperaties zie 031138).',4 Union All
	Select 'Verwijderen corpus alienum uit voorste oogkamer.',4 Union All
	Select 'Spoelen voorste oogkamer.',4 Union All
	Select 'Losmaken iris van cornea, inclusief een eventuele iridectomie.',4 Union All
	Select 'Nastaardiscisie, operatief verwijderen nastaar (zie 030898 voor behandeling van intra-oculaire aandoeningen d.m.v. YAG-laser).',9 Union All
	Select 'Cataractoperatie extracapsulair, met inbrengen van kunststoflens (zie 031242 voor m.b.v. niet standaard materialen, of uitgevoerd in amblyogene leeftijd).',4 Union All
	Select 'Cataractoperatie extracapsulair, met inbrengen van kunststoflens, m.b.v. niet standaard materialen of technieken, of uitgevoerd in de amblyogene leeftijd.',4 Union All
	Select 'Verwijdering van geluxeerde lens.',4 Union All
	Select 'Cataractoperatie intracapsulair.',4 Union All
	Select 'Cataractoperatie intracapsulair, met inbrengen van kunststoflens.',4 Union All
	Select 'Cataractoperatie extracapsulair.',4 Union All
	Select 'Implanteren van extra kunststoflens bij faak oog.',4 Union All
	Select 'Implanteren van extra kunststoflens bij pseudofaak oog.',4 Union All
	Select 'Implanteren van kunststoflens bij afaak oog.',4 Union All
	Select 'Refractieve lensverwisseling.',4 Union All
	Select 'Het verwijderen van een kunststoflens.',4 Union All
	Select 'Operatieve repositie van een geluxeerde kunststoflens.',4 Union All
	Select 'Voorsegmentsvitrectomie.',4 Union All
	Select 'Pars plana vitrectomie (zie de codes 031296 en 031297 voor pars plana vitrectomie bij behandeling van ablatio retinae).',4 Union All
	Select 'Pars plana vitrectomie bij behandeling van ablatio retinae (zie code 031297 voor pars plana vitrectomie bij behandeling ablatio retinae inclusief verwijderen tractiemembranen).',4 Union All
	Select 'Pars plana vitrectomie bij behandeling van ablatio retinae incl. verwijderen tractiemembranen (zie code 031296 voor pars plana vitrectomie bij ablatio retinae excl. verwijderen tractiemembr.).',4 Union All
	Select 'Verwijderen siliconenolie.',4 Union All
	Select 'Behandeling ablatio retinae middels uitwendige techniek.',4 Union All
	Select 'Verwijdering van een of meerdere corpora aliena subconjunctivaal, extra-orbitaal (excl. verwijderen plombe/explant na ablatiochirurgie zie 030826).',4 Union All
	Select 'Verwijdering van een of meerdere tumoren van de conjunctiva, met plastiek.',4 Union All
	Select 'Verwijdering van een of meerdere tumoren van de conjunctiva zonder plastiek.',4 Union All
	Select 'Opheffen symblepharon met transplantatie.',5 Union All
	Select 'Vrije plastiek van de conjunctiva met lip of ander slijmvlies.',5 Union All
	Select 'Opheffen symblepharon zonder transplantatie.',5 Union All
	Select 'Verwijdering van een of meer chalazia per zitting.',4 Union All
	Select 'Verwijderen aandoening ooglid zonder reconstructie (zie code 031516 voor verwijderen of correctie aandoening ooglid inclusief reconstructie).',4 Union All
	Select 'Verwijderen of correctie aandoening ooglid inclusief reconstructie met zwaailap of trans- of implantaat (zie code 031515 voor verwijderen aandoening ooglid zonder reconstructie).',4 Union All
	Select 'Implantatie goudgewichtje in bovenooglid.',5 Union All
	Select 'Fornix verdiepende hechtingen.',5 Union All
	Select 'Desinsertie oogspieren bovenooglid.',5 Union All
	Select 'Correctie floppy eyelid.',5 Union All
	Select 'Operatieve behandeling blepharospasme.',5 Union All
	Select 'Herstel laceratie ooglid.',5 Union All
	Select 'Ectropion operatie.',4 Union All
	Select 'Entropion operatie.',4 Union All
	Select 'Verkleining lidspeet, eventueel totale sluiting.',4 Union All
	Select 'Transnasale mediale canthopexie.',1 Union All
	Select 'Blepharoplastiek.',5 Union All
	Select 'Correctie ptosis wenkbrauw - extern (zie 031548 voor endoscopisch).',5 Union All
	Select 'Correctie ptosis wenkbrauw - endoscopisch (zie 031547 voor extern).',1 Union All
	Select 'Canthusreconstructie.',4 Union All
	Select 'Frontalis suspensie.',5 Union All
	Select 'Levator plastiek.',5 Union All
	Select 'Fasanella-servat procedure.',4 Union All
	Select 'Verwijderen van oogharen d.m.v. elektrische epilatie of bevriezing, per zitting.',4 Union All
	Select 'Opheffen van de verkleining van de ooglidspleet respectievelijk van een gesloten lidspleet.',4 Union All
	Select 'Sondage van een of meerdere traanwegstenosen.',16 Union All
	Select 'Herstel traanpunt.',4 Union All
	Select 'Inbrengen plug punctum lacrimale.',4 Union All
	Select 'Verwijderen van een traanzak.',4 Union All
	Select 'Maken van een verbinding tussen neus en conjunctivaalzak, overige (o.a. buisjes van Jones, voor Ex-DCR zie 031656, voor En-DCR zie 031657).',4 Union All
	Select 'Dacryo-cysto-rhinostomie - uitwendig (Ex-DCR, zie code 031657 voor endonasaal, zie 031640 voor maken van een verbinding tussen neus en conjunctivaalzak, overige).',5 Union All
	Select 'Dacryo-cysto-rhinostomie - endonasaal (En-DCR, zie code 031656 voor extern, zie 031640 voor maken van een verbinding tussen neus en conjunctivaalzak, overige).',1 Union All
	Select 'Reconstructie canaliculus.',4 Union All
	Select 'Excisie van een of meer exostosen met los-prepareren van de gehoorgang.',4 Union All
	Select 'Gehoorgangverwijdingsoperatie (meatusplastiek).',5 Union All
	Select 'Excisie van aandoening uitwendige gehoorgang exclusief verwijderen exostosen (zie 031711).',4 Union All
	Select 'Reconstructie oorschelp met autoloog weefsel (Nagata procedures).',5 Union All
	Select 'Plastische correctie van de oorschelp bij cup ear of lop ear deformiteit.',5 Union All
	Select 'Plastische correctie van een standdeviatie van de oorschelp door middel van correctie van het oorskelet.',5 Union All
	Select 'Plastische correctie van een standdeviatie van de oorschelp door middel van excisie van weke delen.',5 Union All
	Select 'Plastische correctie van de oorschelp door middel van correctie van het oorskelet (excl. bij standdeviatie zie 031741 en bij lop ear of cup ear zie 031740).',5 Union All
	Select 'Paracentese trommelvlies.',4 Union All
	Select 'Transmeatale drainage van het middenoor met behulp van een polytheen buisje volgens fowler of daarmede vergelijkbare techniek. Inclusief eventuele adenotomie.',4 Union All
	Select 'Operatieve ingreep aan het oor met exploratie van het cavum tympani en/of het trommelvlies, die beogen het gehoor te verbeteren.',4 Union All
	Select 'Operatieve ingreep aan het oor met exploratie van het cavum tympani en/of trommelvlies, uitgevoerd als tweede tempo na een ingreep als genoemd bij de codes 031820 tot en met 031822.',4 Union All
	Select 'Epitympanale mastoid operatie met ruim openen van de koepel holte, c.q. attico antrotomie bij chronische ontstekingsprocessen.',4 Union All
	Select 'Mastoid operatie met inbegrip van eventuele complicaties.',4 Union All
	Select 'Radicaal operatie met inbegrip van eventuele complicaties.',4 Union All
	Select 'Excisie tumor midden- en/of binnenoor (exclusief verwijdering brughoektumor, zie 030178).',4 Union All
	Select 'Gehoorverbeterende operatie bij otosclerose door middel van de techniek van Shea, waarbij een piston door de voetplaat wordt gebracht.',4 Union All
	Select 'Gehoorverbeterende operaties bij otosclerose door middel van stapedectomie en interpositie.',4 Union All
	Select 'Gehoorverbeterende operatie bij otosclerose door middel van stapedolyse, technieken van Rosen, Fowler enzovoort.',4 Union All
	Select 'Myringoplastiek.',4 Union All
	Select 'Exploratieve tympanotomie.',4 Union All
	Select 'Gehoorverbeterende operatie bij otosclerose door middel van fenestratie van de horizontale booggang.',4 Union All
	Select 'Operatieve ingreep aan het rotsbeen en middenoor bij chronische ontstekingen, die beogen het oor te saneren en het gehoor te verbeteren (tympanoplastiek).',4 Union All
	Select 'Exploratie van de nervus facialis in het rotsbeen en/of het middenoor bij facialisparalyse of -parese.',4 Union All
	Select 'Exploratie van de nervus facialis in het rotsbeen en/of het middenoor bij facialisparalyse of -parese met plastiek van de zenuw wegens continuiteitsverlies.',5 Union All
	Select 'Labyrinth destructie via het masto�d.',4 Union All
	Select 'Cochleaire implantaten (pre-)implantatie bij volwassenen.',4 Union All
	Select 'Cochleaire implantaten nazorg volwassenen.',87 Union All
	Select 'Cochleaire implantaten (pre-)implantatie bij kinderen.',4 Union All
	Select 'Cochleaire implantaten nazorg kinderen.',87 Union All
	Select 'Vervangen processor cochleair implantaat bij volwassenen.',29 Union All
	Select 'Vervangen processor cochleair implantaat bij kinderen.',29 Union All
	Select 'Plaatsen implantaat in het rotsbeen t.b.v. een botverankerd hoortoestel.',5 Union All
	Select 'Plaatsen koppelstuk (abutment) op implantaat t.b.v. een botverankerd hoortoestel.',5 Union All
	Select 'Vervangen botverankerd hoortoestel.',29 Union All
	Select 'Ozaena operatie.',1 Union All
	Select 'Rhinotomie ter verwijdering van een of meerdere gezwellen uit de neusholten.',1 Union All
	Select 'Verwijdering van een of meerdere neuspoliepen, open procedure (zie 032014 voor endoscopisch).',5 Union All
	Select 'Endoscopische verwijdering van een of meerdere neuspoliepen (zie 032013 voor open procedure).',1 Union All
	Select 'Caustische behandeling van het neusslijmvlies.',10 Union All
	Select 'Submuceuze venster septum resectie, incl.evt. conchotomie. Verwijderen crista septi, welke over de gehele diepte van de neus verloopt, met los prepareren van de slijmvliesbladen valt hieronder.',1 Union All
	Select 'Conchotomie, christotomie, spinectomie, concha-luxatie of concha infractie.',5 Union All
	Select 'Correctief chirurgische behandeling van de deformiteiten aan het benig neusskelet met laterale osteotomie.',5 Union All
	Select 'Correctief chirurgische behandeling van deformiteiten aan het benig neusskelet met laterale osteotomie, gecombineerd met ingrepen ter correctie van het septum en/of het vestibulum nasi.',5 Union All
	Select 'Correctieve ingrepen aan cartilagines laterales en/of ter correctie van de neusvleugels en vestibulum nasi.',5 Union All
	Select 'Septum correctie met mobilisatie en repositie van kraakbeen met mediale osteotomie en eventuele conchotomie.',1 Union All
	Select 'Septum correctie, als bedoeld bij code 032064 gecombineerd met correctie van de neusvleugels en het vestibulum nasi, als bedoeld bij code 032062.',1 Union All
	Select 'Repositie van neusfractuur zonder wondtoilet.',60 Union All
	Select 'Repositie van verse, naar buiten geperforeerde, neusfractuur met uitgebreid wondtoilet.',5 Union All
	Select 'Uitgebreide bloedige repositie bij verse septumfractuur. Onder uitgebreid wordt verstaan het mobiliseren, corrigeren en zonodig implanteren van kraakbeen.',5 Union All
	Select 'Behandeling van een neusbloeding door middel van een Bellocq-tamponade.',49 Union All
	Select 'Behandeling van een neusbloeding met tamponade van voren.',49 Union All
	Select 'Neusreconstructie: sluiten huiddefect d.m.v. lokale transpositielap.',5 Union All
	Select 'Neusreconstructie: sluiten huiddefect d.m.v. voorhoofdslap.',5 Union All
	Select 'Neusreconstructie: reconstructie binnenbekleding neus d.m.v. transpositielap of huidtransplantaat.',5 Union All
	Select 'Neusreconstructie: reconstructie neusskelet m.b.v. kraakbeen en/of bot.',5 Union All
	Select 'Endonasale sinus maxillaris operatie, bijvoorbeeld volgens Claou� of Mikulicz.',1 Union All
	Select 'Kaakspoeling.',1 Union All
	Select 'Radicale sinus maxillaris operatie, bijvoorbeeld volgens Caldwell-Luc.',1 Union All
	Select 'Kaakspoeling bij kinderen onder 15 jaar onder algehele anesthesie.',1 Union All
	Select 'Endonasale sinus frontalis operatie, bijvoorbeeld volgens Halle, Mosher of Vacher.',1 Union All
	Select 'Uitwendige drainage sinus frontalis.',5 Union All
	Select 'Radicale sinus frontalis operatie.',1 Union All
	Select 'Endonasale sinus ethmoidalis operatie.',1 Union All
	Select 'Uitwendige operatie van de sinus ethmoidalis.',5 Union All
	Select 'Endonasale sinus sphenoidalis operatie.',1 Union All
	Select 'Pansinusitis (inclusief etmo�d en kaakholte volgens Lima). Hieronder wordt verstaan de behandeling van een ontsteking van drie of meer neusbijholten aan een zijde.',1 Union All
	Select 'Plastische sluiting van een of meerdere bijholtefistels aan een zijde.',5 Union All
	Select 'Tracheotomie.',5 Union All
	Select 'Inbrengen transtracheale zuurstofkatheter met behulp van punctie en dilatatie, een zogenaamde mini-tracheotomie.',13 Union All
	Select 'Diagnostische tracheoscopie.',1 Union All
	Select 'Inbrengen ventiel-stemprothese na eerdere larynxextirpatie.',5 Union All
	Select 'Verwisselen ventiel-stemprothese.',5 Union All
	Select 'Verwijderen of opheffen aandoening larynx, open procedure (zie 032218 voor laryngoscopisch).',5 Union All
	Select 'Therapeutische laryngoscopie voor verwijderen of opheffen aandoening larynx (zie 032217 voor open procedure).',1 Union All
	Select 'Adamsappel reductie (tracheal shaving).',5 Union All
	Select 'Halfzijdige larynxextirpatie.',5 Union All
	Select 'Pharynx-larynxextirpatie inclusief evt. inbrengen ventiel-stemprothese.',5 Union All
	Select 'Resectie aandoening trachea- en/of carina, open procedure (zie 032276 voor endoscopisch).',5 Union All
	Select 'Endoscopisch verwijderen of opheffen aandoening trachea en/of carina (zie 032275 voor open procedure).',1 Union All
	Select 'Hoofdcarina reconstructie.',5 Union All
	Select 'Diagnostische indirecte laryngoscopie, inclusief eventuele proefexcisie(s).',123 Union All
	Select 'Diagnostische directe laryngoscopie, inclusief eventuele proefexcisie(s).',123 Union All
	Select 'Diagnostische directe laryngoscopie onder de operatiemicroscoop, inclusief eventuele proefexcisie(s).',123 Union All
	Select 'Stroboscopisch onderzoek.',123 Union All
	Select 'Tonsillectomie, bij personen tot en met 10 jaar, inclusief eventuele adenotomie.',5 Union All
	Select 'Tonsillectomie, bij personen van 11 tot en met 15 jaar, inclusief eventuele adenotomie.',5 Union All
	Select 'Tonsillectomie, bij personen van 16 jaar en ouder, inclusief eventuele adenotomie.',5 Union All
	Select 'Adenotomie.',5 Union All
	Select 'Verwijdering van een branchiogene cyste of glomustumor.',5 Union All
	Select 'Verwijdering van een mediane halscyste of halsfistel.',5 Union All
	Select 'Verwijdering van een rhinopharynx-fibroom.',1 Union All
	Select 'Opheffing choanale-atresie bij kinderen.',1 Union All
	Select 'Therapeutische of diagnostische sondage met een bronchiale katheter.',16 Union All
	Select 'Operatie van sulcus superior (Pancoast) tumoren, open procedure (zie 032429 voor thoracoscopisch).',5 Union All
	Select 'Thoracoscopische operatie van sulcus superior (Pancoast) tumoren (zie 032428 voor open procedure).',1 Union All
	Select 'Sleeve-resectie, open procedure (zie 032434 voor thoracoscopisch, 032435 voor VATS procedure).',5 Union All
	Select 'Thoracoscopische sleeve-resectie (zie 032433 voor open procedure en 032435 voor VATS procedure).',1 Union All
	Select 'Sleeve-resectie met behulp van video-assisted thoracic surgery (VATS, zie 032434 voor thoracoscopisch, zie 032433 voor open procedure).',1 Union All
	Select 'Bronchoplastiek of hechten bronchusruptuur, open procedure (zie 032453 voor endoscopisch).',5 Union All
	Select 'Endoscopisch(e) bronchoplastiek of hechten bronchusruptuur (zie 032452 voor open procedure).',1 Union All
	Select 'Diagnostische bronchoscopie met chartismeting.',123 Union All
	Select 'Diagnostische bronchoscopie, inclusief een of meerdere proefexcisies, curettage en/of afzuigen van materiaal voor cytologisch en/of pathologisch onderzoek.',123 Union All
	Select 'Therapeutische bronchoscopie, zoals verwijderen van corpora alinea, afzuigen van secretie of installatie van medicamenten.',1 Union All
	Select 'Therapeutische bronchoscopie met laser-coagulatie, zoals bij behandeling van een tumor of bloeding, en / of stentplaatsing.',9 Union All
	Select 'Endobronchiale longvolume reductie (BLVR, zie 032487 voor bronchiale thermoplastiek en voor chirurgische LVR zie 032525 t/m 032527).',1 Union All
	Select 'Bronchiale thermoplastiek (LVR dmv RF ablatie, zie 032486 voor overige minder-invasieve LVR).',1 Union All
	Select 'Plaatsen van intrabronchiaal eenrichtingsventiel(en) voor persisterend luchtlek door middel van therapeutische bronchoscopie.',1 Union All
	Select 'Intrapulmonale drainage.',13 Union All
	Select 'Aanleggen pleuroperitoneale shunt.',5 Union All
	Select 'Bilobectomie, open procedure (zie 032523 voor thoracoscopisch, zie 032524 voor VATS procedure).',5 Union All
	Select 'Thoracoscopische bilobectomie (zie 032522 voor open procedure, zie 032524 voor VATS procedure).',1 Union All
	Select 'Bilobectomie met behulp van video-assisted thoracic surgery (VATS, zie 032523 voor thoracoscopisch, zie 032522 voor open procedure).',1 Union All
	Select 'Longvolume reductie chirurgie (LVRC), open procedure (zie 032526 voor thoracoscopisch, zie 032527 voor VATS procedure).',5 Union All
	Select 'Thoracoscopische longvolume reductie chirurgie (LVRC), zie 032525 voor open procedure, zie 032527 voor VATS procedure).',1 Union All
	Select 'Longvolume reductie chirurgie (LVRC) met behulp van video-assisted thoracic surgery (VATS), zie 032526 voor thoracoscopisch, zie 032525 voor open procedure).',1 Union All
	Select 'Bullectomie met partiele pleurectomie, open procedure (zie 032535 voor thoracoscopisch, zie 032534 voor VATS procedure).',5 Union All
	Select 'Lobectomie of segmentresectie, open procedure (zie 032536 voor thoracoscopisch, zie 032537 voor VATS procedure).',5 Union All
	Select 'Wigresectie, open procedure (zie 032538 voor thoracoscopisch, zie 032539 voor VATS procedure).',5 Union All
	Select 'Bilaterale resectie, midsternaal.',5 Union All
	Select 'Bullectomie met parti�le pleurectomie met behulp van video-assisted thoracic surgery (VATS, zie 032535 voor thoracoscopisch, zie 032529 voor open procedure).',1 Union All
	Select 'Thoracoscopische bullectomie met partiele pleurectomie (zie 032529 voor open procedure, zie 032534 voor VATS procedure).',1 Union All
	Select 'Thoracoscopische lobectomie of segmentresectie (zie 032530 voor open procedure, zie 032537 voor VATS procedure).',1 Union All
	Select 'Lobectomie of segmentresectie met behulp van video-assisted thoracic surgery (VATS, zie 032536 voor thoracoscopisch, zie 032530 voor open procedure).',1 Union All
	Select 'Thoracoscopische wigresectie (zie 032532 voor open procedure, zie 032539 voor VATS procedure).',1 Union All
	Select 'Wigresectie met behulp van video-assisted thoracic surgery (VATS, zie 032538 voor thoracoscopisch, zie 032532 voor open procedure).',1 Union All
	Select 'Pleuro-pneumonectomie, open procedure.',5 Union All
	Select 'Pneumonectomie, open procedure (zie 032547 voor thoracoscopisch, zie 032549 voor VATS procedure).',5 Union All
	Select 'Pneumonectomie met uitgebreide verwijdering lymfklieren, open procedure (zie 032548 voor endoscopisch).',5 Union All
	Select 'Thoracoscopische pneumonectomie (zie 032542 voor open procedure, zie 032549 voor VATS procedure).',1 Union All
	Select 'Endoscopische pneumonectomie met uitgebreide verwijdering lymfklieren (zie 032543 voor open procedure).',1 Union All
	Select 'Pneumonectomie met behulp van video-assisted thoracic surgery (VATS, zie 032547 voor thoracoscopisch, zie 032542 voor open procedure).',1 Union All
	Select 'Aanleggen pneumothorax, inclusief periodiek bijvullen, open procedure (zie 032562 voor thoracoscopisch, zie 032563 voor VATS procedure).',5 Union All
	Select 'Extrapleurale pneumolyse.',5 Union All
	Select 'Thoracoscopisch aanleggen pneumothorax, inclusief periodiek bijvullen (zie 032563 voor VATS procedure, zie 032560 voor open procedure).',1 Union All
	Select 'Aanleggen pneumothorax met behulp van video-assisted thoracic surgery (VATS), inclusief periodiek bijvullen (zie 032562 voor thoracoscopisch, zie 032560 voor open procedure).',1 Union All
	Select 'Open longbiopsie (zie 032582 voor endoscopische longbiopsie).',5 Union All
	Select 'Endoscopische longbiopsie (zie 032581 voor open longbiopsie).',1 Union All
	Select 'Behandeling met zuigdrainages van de pleuraholte en het mediastinum.',13 Union All
	Select 'Operatieve behandeling van een empyema thoracis, open procedure (zie 032605 voor VATS procedure).',5 Union All
	Select 'Proefthoracotomie (zie 032606 voor proefthoracoscopie).',5 Union All
	Select 'Het spoelen van een empyeemholte door middel van een intra-thoracale zuigdrain of via een reeds voorhanden zijnde drain, met of zonder inbrengen van medicamenten.',15 Union All
	Select 'Operatieve behandeling van een empyema thoracis met behulp van video-assisted thoracic surgery (VATS, zie 032601 voor open procedure).',1 Union All
	Select 'Proefthoracoscopie (zie 032602 voor proefthoracotomie).',1 Union All
	Select 'Sluiten bronchusfistel of bronchopleurale fistel, open procedure (zie 032618 voor thoracoscopisch, zie 032619 voor VATS procedure).',5 Union All
	Select 'Sluiten bronchusfistel of bronchopleurale fistel, thoracoscopisch (zie 032617 voor open procedure, zie 032619 voor VATS procedure).',1 Union All
	Select 'Sluiten bronchusfistel of bronchopleurale fistel met behulp van video-assisted thoracic surgery (VATS, zie 032617 voor open procedure, zie 032618 voor thoracoscopisch).',1 Union All
	Select 'Sluiten fistel thoraxwand.',5 Union All
	Select 'Verwijderen van een of meerdere corpora aliena uit de pleuraholte, inclusief het eventueel hechten van longweefsel, open procedure (zie 032623 voor thoracoscopisch).',5 Union All
	Select 'Thoracoscopisch verwijderen van een of meerdere corpora aliena uit de pleuraholte, inclusief het eventueel hechten van longweefsel (zie 032622 voor open procedure).',1 Union All
	Select 'Percutane mediastinumbiopsie.',75 Union All
	Select 'Mediastinotomie.',5 Union All
	Select 'Operatie van een of meerdere mediastinumtumoren met behulp van video-assisted thoracic surgery (VATS), eventueel midsternaal (zie 032633 voor endoscopisch, zie 032632 voor open procedure).',1 Union All
	Select 'Open operatie van een of meerdere mediastinumtumoren, eventueel midsternaal (zie 032633 voor endoscopisch, zie 032631 voor VATS procedure).',5 Union All
	Select 'Endoscopische operatie van een of meerdere mediastinumtumoren, eventueel midsternaal (zie 032632 voor open procedure, zie 032631 voor VATS procedure).',1 Union All
	Select 'Decorticatie van de long, open procedure (zie 032651 voor thoracoscopisch, zie 032652 voor VATS procedure).',5 Union All
	Select 'Thoracoscopische decorticatie van de long (zie 032650 voor open procedure, zie 032652 voor VATS procedure).',1 Union All
	Select 'Decorticatie van de long met behulp van video-assisted thoracic surgery (VATS, zie 032650 voor open procedure, zie 032651 voor thoracoscopisch).',1 Union All
	Select 'Pleurodese, open procedure (zie 032654 voor thoracoscopisch, zie 032655 voor VATS procedure).',5 Union All
	Select 'Pleurodese, thoracoscopisch (zie 032653 voor open procedure, zie 032655 voor VATS procedure).',1 Union All
	Select 'Pleurodese met behulp van video-assisted thoracic surgery (VATS, zie 032653 voor open procedure, zie 032654 voor thoracoscopisch).',1 Union All
	Select 'Grote borstwandresectie in verband met een doorgegroeide maligniteit.',5 Union All
	Select 'Sluiten open thoraxverwonding.',5 Union All
	Select 'Thoracoscopische excisie aandoening thoraxwand (zie 032663 voor VATS procedure).',1 Union All
	Select 'Excisie aandoening thoraxwand met behulp van video-assisted thoracic surgery (VATS, zie 032662 voor thoracoscopisch).',1 Union All
	Select 'Video-assisted thoracic surgery (VATS).',1 Union All
	Select 'ECC-perfusie per OK sessie, uitgevoerd of standby (inclusief materiaal, inzet hartlong machine en perfusiepersoneel).',96 Union All
	Select 'Cardiothoracale operatie-unit standby.',5 Union All
	Select 'Pleurabiopsie.',75 Union All
	Select 'Diagnostische pleurapunctie.',75 Union All
	Select 'Diagnostische transthoracale longpunctie.',75 Union All
	Select 'Therapeutische pleurapunctie.',13 Union All
	Select 'Hyperthermische intraperitoneale chemotherapie (HIPEC) in combinatie met cytoreductie i.h.k.v. HIPECmaag-studie.',3 Union All
	Select 'Implantatie van een elektrode bij de derde sacrale zenuw i.h.k.v. SNM-studie.',11 Union All
	Select 'Subcutaan plaatsen pacemaker i.h.k.v. SNM-studie.',11 Union All
	Select 'Verwijderen elektrode bij de derde sacrale zenuw i.h.k.v. SNM-studie.',11 Union All
	Select 'Verwijderen subcutaan geplaatste pacemaker i.h.k.v. SNM-studie.',11 Union All
	Select 'Revisie subcutaan geplaatste pacemaker i.h.k.v. SNM-studie.',11 Union All
	Select 'Stamceltransplantatie autoloog i.h.k.v. BRCA1-studie.',13 Union All
	Select 'Post-transplantatietraject stamceltransplantatie autoloog i.h.k.v. BRCA1-studie.',48 Union All
	Select 'Toedienen groeifactoren autologe stamceltransplantatie i.h.k.v. BRCA1-studie.',13 Union All
	Select 'Harvest stamcellen dmv leukaferese tbv autologe stamceltransplantatie i.h.k.v. BRCA1-studie.',13 Union All
	Select 'Subcutaan plaatsen pulsgenerator, i.h.k.v. ONS-studie.',11 Union All
	Select 'Revisie pulsgenerator i.h.k.v. ONS-studie.',11 Union All
	Select 'Verwijderen subcutaan geplaatste pulsgenerator i.h.k.v. ONS-studie.',11 Union All
	Select 'Adjuvante hyperthermische intraperitoneale chemotherapie (HIPEC) i.h.k.v. HIPECmaag-studie (voor HIPEC in combinatie met cytoreductie i.h.k.v. HIPECmaag-studie zie 032701).',3 Union All
	Select 'Openen van het hartzakje zonder ingreep aan het hart, eventueel drainage van een pericarditis, via een thoracotomie, open procedure (zie 032904 voor percutaan en 032905 voor thoracoscopisch).',5 Union All
	Select 'Partiele pericardresectie.',5 Union All
	Select 'Subtotale pericardresectie.',5 Union All
	Select 'Rethoracotomie zonder extracorporale circulatie tijdens dezelfde opname.',5 Union All
	Select 'Pericardpunctie (zie 032900 voor open procedure en 032905 voor thoracoscopisch).',13 Union All
	Select 'Thoracoscopisch openen van het hartzakje zonder ingreep aan het hart, eventueel drainage van een pericarditis (zie 032900 voor open procedure en 032904 voor percutaan).',1 Union All
	Select 'Onderbinding ductus botalli, open procedure (via hartkatheterisatie zie 032909).',5 Union All
	Select 'Endoscopische onderbinding ductus botalli via hartkatheterisatie (zie 032908 voor open procedure).',1 Union All
	Select 'Operatie coarctatio aortae (isthmus-stenose), tot 15 jaar.',5 Union All
	Select 'Operatie coarctatio aortae (isthmus-stenose), vanaf 15 jaar.',5 Union All
	Select 'Intrathoracale correctie abnormale vaatringen.',5 Union All
	Select 'Correctie afwijkingen aan de grote longarteri�n.',5 Union All
	Select 'Operatie tetralogie van Fallot of shunt-operatie bij cyanotische hartgebreken, bijvoorbeeld volgens Waterstone Blalock, Glenn of Potts.',5 Union All
	Select 'Banding arteria pulmonalis.',5 Union All
	Select 'Septectomie volgens Blalock-Hanlon of met inflow-occlusie.',5 Union All
	Select 'Open commissurotomie arteria pulmonalis of aorta.',5 Union All
	Select 'Hisbundel-katheterablatie.',12 Union All
	Select 'Katheterablatie rechter atrium.',12 Union All
	Select 'Katheterablatie accessoire bundel.',12 Union All
	Select 'Katheterablatie linker ventrikel.',12 Union All
	Select 'Katheterablatie rechter ventrikel.',12 Union All
	Select 'Katheterablatie linker atrium.',12 Union All
	Select 'Katheterablatie congenitaal vitium exclusief ductus botalli (zie 032909).',12 Union All
	Select 'Operatie wegens een perforerende hartverwonding.',5 Union All
	Select 'Verwijderen corpora aliena uit het hart (intracardiaal materiaal) met inflow-occlusie (katheters).',12 Union All
	Select 'Ballonpomp per punctie als zelfstandige ingreep.',12 Union All
	Select 'Ballonpomp per punctie als bijkomende ingreep.',12 Union All
	Select 'Ballonpomp per open procedure als zelfstandige ingreep.',5 Union All
	Select 'Ballonpomp per open procedure als bijkomende ingreep.',5 Union All
	Select 'Percutaan inbrengen hartpomp (o.a. Impella).',12 Union All
	Select 'Trachearesectie met reimplantatie linker hoofdbronchus.',1 Union All
	Select 'Trachearesectie met inhechten prothese.',1 Union All
	Select 'Operatie recidief coarctatio aortae.',5 Union All
	Select 'Operatie tricuspidaal-atresie volgens Fontan.',5 Union All
	Select 'Cardiomyectomie.',5 Union All
	Select 'Correctie van een infundibulaire en/of valvulaire pulmonalisstenose.',5 Union All
	Select 'Correctie van een valvulaire aortastenose (commissurotomie).',5 Union All
	Select 'Correctie van een subvalvulaire membraneuze aortastenose.',5 Union All
	Select 'Correctie van een musculaire subvalvulaire aortastenose.',5 Union All
	Select 'Operatie voor ziekte van Ebstein, inclusief klepvervanging.',5 Union All
	Select 'Correctie van een supravalvulaire aortastenose.',5 Union All
	Select 'Sluiten van een atrium-septum defect, type 2.',5 Union All
	Select 'Correctie van partieel abnormale longvenen.',5 Union All
	Select 'Sluiten van een eenvoudig ventrikel-septum defect.',5 Union All
	Select 'Correctie van abnormale coronairverbindingen zoals fistels of een abberante oorsprong.',5 Union All
	Select 'Correctie van een atrium-septum defect, type 1.',5 Union All
	Select 'Correctie van een cor triatrium.',5 Union All
	Select 'Correctie van totaal abnormale longvenen.',5 Union All
	Select 'Sluiten van een ventrikel-septum defect, onder andere opheffing van banding.',5 Union All
	Select 'Percutane mechanische linker hartoor sluiting.',12 Union All
	Select 'Correctie van een ruptuur van de sinus valsalvae.',5 Union All
	Select 'Correctie van een atrio-ventriculair kanaal.',5 Union All
	Select 'Sluiten van een atrium-septum defect type 2 + correctie abnormale longvenen met behulp van patch.',5 Union All
	Select 'Volledige correctie van een tetralogie van Fallot.',5 Union All
	Select 'Correctie van een double-outlet rechter ventrikel.',5 Union All
	Select 'Correctie van een aorta-insufficientie + een ventrikel-septum defect.',5 Union All
	Select 'Aanleggen van een verbinding tussen rechter ventrikel en arteria pulmonalis volgens Rastelli.',5 Union All
	Select 'Norwood procedure bij HLHS (hypoplastisch linker hartsyndroom).',5 Union All
	Select 'Grote correctieve procedures voor gecompliceerde congenitale afwijkingen.',5 Union All
	Select 'Arteri�le switch operatie.',5 Union All
	Select 'Correctie truncus arteriosus.',5 Union All
	Select 'MAZE-procedure, open.',5 Union All
	Select 'Endoscopische MAZE-procedure.',1 Union All
	Select 'Hartklepplastiek, open procedure.',5 Union All
	Select 'Hartklepvervanging, open procedure.',5 Union All
	Select 'Thoracoscopische plastiek of vervanging van hartklep.',1 Union All
	Select 'TAAA (thoraco-abdominaal aorta aneurysma), open procedure.',5 Union All
	Select 'Endovasculaire TAAA (thoraco-abdominaal aorta aneurysma).',12 Union All
	Select 'Vervanging aorta descendens thoracalis, open procedure.',5 Union All
	Select 'Endovasculaire vervanging aorta descendens thoracalis.',12 Union All
	Select 'Vervanging aorta ascendens met aortaboog.',5 Union All
	Select 'Vervanging aortaboog.',5 Union All
	Select 'Vervanging aortawortel, aorta ascendens en aortaboog.',5 Union All
	Select 'Vervanging aortawortel.',5 Union All
	Select 'Vervanging aortaklep, aortawortel en aorta ascendens.',5 Union All
	Select 'Vervanging aorta ascendens zonder circulatiestilstand.',5 Union All
	Select 'Vervanging aorta ascendens met circulatiestilstand.',5 Union All
	Select 'Aortocoronaire bypass operatie met uitsluitend veneuze graft(s) en/of kunststof materiaal.',5 Union All
	Select 'Aortocoronaire bypass met 1 arteri�le graft, inclusief eventuele veneuze graft(s) en/of kunststof materiaal.',5 Union All
	Select 'Aortocoronaire bypass operatie met 2 arteri�le grafts, inclusief eventuele veneuze graft(s) en/of kunststof materiaal.',5 Union All
	Select 'Aortocoronaire bypass operatie met 3 of meer arteri�le grafts, inclusief eventuele veneuze graft(s) en/of kunststof materiaal.',5 Union All
	Select 'Resectie aneurysma van de linkerventrikel.',5 Union All
	Select 'Sluiten van een ventrikel-septum perforatie.',5 Union All
	Select 'Sluiten van een ventrikel-septum perforatie in dezelfde zitting als een andere verrichting met extracorporale circulatie.',5 Union All
	Select 'Operatie wegens een of meerdere tumoren van het atrium, onder andere myxomen.',5 Union All
	Select 'Operatie wegens een of meerdere tumoren van de ventrikel.',5 Union All
	Select 'Embolectomie uit de arteria pulmonalis, respectievelijk correctie perifere arteria pulmonalis.',5 Union All
	Select 'Correcties aan de intrathoracale grote arteri�n, o.a. aortaruptuur of aneurysma arteria anonyma, open procedure (zie 033155 voor endovasculair).',5 Union All
	Select 'Endovasculaire correcties aan de intrathoracale grote arteri�n, o.a. aortaruptuur of aneurysma arteria anonyma (zie 033154 voor open procedure).',12 Union All
	Select 'Rethoracotomie met extracorporale circulatie tijdens dezelfde opname.',5 Union All
	Select 'Intensieve therapie in aansluiting op een hartoperatie met extracorporale circulatie.',48 Union All
	Select 'Katheterisatie van het rechter hart, inclusief eventuele drukmeting, O2-bepaling, angiografie (veneuze hartkatheterisatie), aansluiting van een uitwendige pacemaker.',72 Union All
	Select 'Anesthesie bij katheterisatie van het rechterhart (code 33219).',95 Union All
	Select 'Neuroprotectieve hypothermiebehandeling.',41 Union All
	Select 'Katheterisatie linker en evt. rechter hart, inclusief evt. angiografie (coronair en/of hart en/of arteria pulmonalis), drukmeting, O2-bepaling (arterieel en/of hart), aortografie, aansl.uitw.pm.',73 Union All
	Select 'PTCA eentak ter opheffing/verwijdering stenosen coronaire arterien.',12 Union All
	Select 'PTCA meertak of hoofdstam ter opheffing/verwijdering stenosen coronaire arterien.',12 Union All
	Select 'PTCA ter opheffing/verwijdering chronische occlusie coronaire arterien.',12 Union All
	Select 'PTCA met passage coronaire arterien graft.',12 Union All
	Select 'PTCA ter sluiting coronaire fistel.',12 Union All
	Select 'Stamceltherapie d.m.v. lokale infusie in het myocard.',13 Union All
	Select 'Acute PTCA ter opheffing/verwijdering stenosen coronaire.',12 Union All
	Select 'Alcoholablatie HOCM.',12 Union All
	Select 'Katheterdilatatie van hartklep.',12 Union All
	Select 'Kathetersluiting en/of dilatatie van congenitaal of verworven hartvitium.',12 Union All
	Select 'Percutane hartklep implantatie.',12 Union All
	Select 'Transkatheter hartklepimplantatie, open procedure.',5 Union All
	Select 'Percutane hartklepplastiek, exclusief katheterdilatatie van hartklep (zie 033241).',12 Union All
	Select 'Complexe transveneuze verwijdering van een implanteerbare intracardiale pacemaker met gebruik van specifieke extractietools.',12 Union All
	Select 'Conventionele transveneuze explantatie van endocardiale elektroden van AICD of pacemaker d.m.v. simpele tractie technieken (voor complexe transv. leadextractie AICD of PM zie resp. 033258 of 033257).',11 Union All
	Select 'Intracoronaire Optische Coherentie Tomografie (Intracoronaire OCT, voor FFR zie 039476, voor IVUS zie 039477).',73 Union All
	Select 'Complexe transveneuze verwijdering van endocardiale elektroden van een pacemaker met gebruik van specifieke extractietools.',11 Union All
	Select 'Complexe transveneuze verwijdering van endocardiale elektroden van een subcutane automatische defibrillator (AICD) met gebruik van specifieke extractietools.',11 Union All
	Select 'Inbrengen implanteerbare intracardiale pacemaker.',11 Union All
	Select 'Atrial pacing.',11 Union All
	Select 'Hisbundel electrocardiografie.',73 Union All
	Select 'Atrial pacing + hisbundel-electrocardiografie.',73 Union All
	Select 'Atrial pacing + therapeutische uitwendige pacemaker.',12 Union All
	Select 'Hisbundel-electrocardiografie + therapeutische uitwendige pacemaker.',11 Union All
	Select 'Atrial pacing + hisbundel-electrocardiografie + therapeutische uitwendige pacemaker.',11 Union All
	Select 'Het inbrengen van een stimulatie-elektrode en het aansluiten van een uitwendige pacemaker.',11 Union All
	Select 'Het inbrengen van een stimulatie-elektrode en het aansluiten van een subcutaan geplaatste pacemaker.',11 Union All
	Select 'Het inbrengen van twee endocardiale elektroden en het aansluiten van een subcutaan geplaatste pacemaker.',11 Union All
	Select 'Het inbrengen van twee endocardiale elektroden en ��n sinus coronarius elektrode, en het aansluiten en het afregelen van een biventriculaire pacemaker.',11 Union All
	Select 'Het inbrengen van twee endocardiale elektroden en het aansluiten van een subcutane automatische defibrillator, inclusief het aansluitend testen van de defibrillatiedrempel onder algehele anesthesie.',11 Union All
	Select 'Het inbrengen van een of twee endocardiale elektroden plus sinuscoronarius elektrode en aansluiten subcut.automatische defibrillator, incl. aansluitend testen van defibrillator onder alg.anesthesie.',11 Union All
	Select 'Vervanging van een pacemaker.',15 Union All
	Select 'Verwijdering van een pacemaker.',15 Union All
	Select 'Poliklinische controle op de werking van de pacemaker, inclusief het eventueel gebruik van de cardioverter.',55 Union All
	Select 'Het bevestigen van een stimulatie-elektrode op het epicard na het openen van het hartzakje en het aansluiten van een subcutaan geplaatste pacemaker.',11 Union All
	Select 'Inbrengen endocard.elektrode en bevestigen tweede elektrode op het epicard, of bevestigen beide elektroden op epicard na openen hartzakje en aansluiten subc.pacemaker.',11 Union All
	Select 'Resuscitatie, zonder intubatie, al of niet met defibrillatie (excl. met intubatie zie 033289).',25 Union All
	Select 'Resuscitatie, met intubatie, al of niet met defibrillatie (zie 033288 voor zonder intubatie).',25 Union All
	Select 'Behandeling met de cardioverter.',11 Union All
	Select 'Vervangen van subcutane automatische defibrillator (AICD) excl. elektroden, incl. aansluiten elektroden en afregelen van defibrillator.',11 Union All
	Select 'Implanteren en aansluiten device voor korte termijn circulatoire ondersteuning hart.',5 Union All
	Select 'Implantatie Ventricular Assist Device (VAD) - lange termijn ondersteuning hart.',5 Union All
	Select 'Implantatie BiVentricular Assist Device (BiVAD) - lange termijn ondersteuning hart.',5 Union All
	Select 'Implantatie van subcutane automatische defibrillator (AICD) excl. elektroden, incl. aansluiten elektroden en afregelen van defibrillator.',11 Union All
	Select 'Endocardresectie of destructie aandoening endocard m.b.v. laser of cryocoagulatie.',9 Union All
	Select 'Embolectomie van intrathoracale bloedvaten, open procedure (zie 033302 voor endovasculair).',5 Union All
	Select 'Embolectomie van intrathoracale bloedvaten, endovasculair (zie 033301 voor open procedure).',12 Union All
	Select 'Reconstructie van de aorta of haar directe zijtakken, zoals de arteria subclavia, open procedure (zie 033342 voor endovasculair).',5 Union All
	Select 'Reconstructie van de aorta of haar directe zijtakken, zoals de arteria subclavia, endovasculair (zie 033341 voor open procedure).',12 Union All
	Select 'Percutane transluminale angioplastiek niet-coronaire centrale arteri�n exclusief de nierarterie (zie 033360).',12 Union All
	Select 'Percutane transluminale angioplastiek van de nierarterie.',12 Union All
	Select 'Embolectomie van bloedvaten van hoofd, hals en hersenbasis.',12 Union All
	Select 'Therapeutische punctie arterioveneuze malformatie (zie 033427 voor open procedure, zie 033428 voor endoscopisch).',13 Union All
	Select 'Craniotomie voor high-flow bypass.',5 Union All
	Select 'Craniotomie voor aanleggen distale bypass (oa STA-MCA) en/of desobstructie intracranieel vat.',5 Union All
	Select 'Operatieve behandeling intracranieel aneurysma achterste deel cirkel van Willis.',5 Union All
	Select 'Operatieve behandeling intracranieel aneurysma voorste deel cirkel van Willis, frontotemporale benadering.',5 Union All
	Select 'Craniotomie voor verwijderen arterioveneuze malformatie, diep gelegen of SM-graad 3 of hoger.',5 Union All
	Select 'Craniotomie voor verwijderen arterioveneuze malformatie, oppervlakkig cerebraal of cerebellair, SM-graad 1 of 2.',5 Union All
	Select 'Herstel arterioveneuze malformatie, open procedure (zie 033428 voor endoscopisch, zie 033420 voor therapeutische punctie, zie 033425 en 033426 voor intracrani�le vaten).',5 Union All
	Select 'Endoscopisch herstel arterioveneuze malformatie (zie 033427 voor open procedure, zie 033420 voor therapeutische punctie, zie 033448 voor intracrani�le vaten).',1 Union All
	Select 'Operatieve behandeling extracrani�le aneurysmata.',5 Union All
	Select 'Occlusie van een ongeruptureerd intracranieel aneurysma met behulp van coils.',12 Union All
	Select 'Occlusie van een geruptureerd intracranieel aneurysma met behulp van coils.',12 Union All
	Select 'Occlusie van een intracrani�le vaatmalformatie met behulp van coils of lijm.',12 Union All
	Select 'Craniovasculaire neurointerventie met behulp van ballonocclusie.',12 Union All
	Select 'Preventieve craniovasculaire neurointerventie met behulp van coil of lijm ivm de behandeling van een meningeoom.',12 Union All
	Select 'Endovasculair herstel intracrani�le aneurysmata.',12 Union All
	Select 'Operatief herstel intracrani�le arterioveneuze fistel d.m.v. craniotomie.',5 Union All
	Select 'Herstel intracrani�le arterioveneuze fistel m.b.v. endovasculaire of radionucleaire technieken.',12 Union All
	Select 'Endovasculair herstel arterioveneuze malformatie intracrani�le vaten (zie 033425 en 033426 via craniotomie, zie 033449 voor radionucleair).',12 Union All
	Select 'Radionucleaire behandeling arterioveneuze malformatie intracrani�le vaten (stereotactische radiochirurgie, zie 033425 en 033426 via craniotomie, zie 033448 voor endovasculair).',14 Union All
	Select 'Reconstructie aan een slagader zoals arteria carotis door middel van transplantaat, endarteriectomie of patch.',5 Union All
	Select 'Extracraniele onderbinding van een der halsslagaders als zelfstandige ingreep bij verwondingen.',5 Union All
	Select 'Carotis onderbinding bij cerebrale vaatafwijkingen, inclusief het opzetten en op een later tijdstip verwijderen van de selverstone-klem (volledige behandeling).',5 Union All
	Select 'Excisiebiopsie van de arteria temporalis.',75 Union All
	Select 'Navigatiegeleide, endoscopische of stereotactische evacuatie intracerebraal hematoom.',1 Union All
	Select 'Percutane angioplastiek cerebropetale arteri�n (zie 033672 voor niet-coronaire perifere arteri�n en 033351 voor niet-coronaire centrale arteri�n).',12 Union All
	Select 'Evacuatie intracerebraal hematoom, supratentorieel, niet traumatisch (zie 033498 voor infratentorieel).',5 Union All
	Select 'Evacuatie intracerebraal hematoom, infratentorieel, niet traumatisch (zie 033497 voor supratentorieel).',5 Union All
	Select 'Embolectomie van bloedvaten in de buik, open procedure (zie 033502 voor endovasculair).',5 Union All
	Select 'Embolectomie van bloedvaten in de buik, endovasculair (zie 033501 voor open procedure).',12 Union All
	Select 'Embolisatie van bekken vene(n).',12 Union All
	Select 'Klepreconstructie, diep veneus.',15 Union All
	Select 'Operaties aan intra-abdominaal gelegen grote arteri�n, zonder herstel der continu�teit of ateriectomie, open procedure (zie 033521 voor endoscopisch).',5 Union All
	Select 'Endoscopische operaties aan intra-abdominaal gelegen grote arteri�n, zonder herstel der continu�teit of ateriectomie (zie 033520 voor open procedure).',1 Union All
	Select 'Reconstructie aan de aorta of haar directe zijtakken zoals arteria renales en arteria iliaca, open procedure (zie 033555 voor endovasculair).',5 Union All
	Select 'Reconstructie aan de aorta of haar directe zijtakken zoals arteria renales en arteria iliaca, endovasculair (zie 033554 voor open procedure).',12 Union All
	Select 'Inbrengen van een aorta-bifurcatie prothese en reconstructie van een arteria renales, open procedure (zie 033560 voor endovasculair).',5 Union All
	Select 'Inbrengen van een aorta-bifurcatie prothese en reconstructie van een arteria renales, endovasculair (zie 033559 voor open procedure).',12 Union All
	Select 'Inbrengen van een aorta-bifurcatie prothese en reconstructie van beide arteriae renales, open procedure (zie 033562 voor endovasculair).',5 Union All
	Select 'Inbrengen van een aorta-bifurcatie prothese en reconstructie van beide arteriae renales, endovasculair (zie 033561 voor open procedure).',12 Union All
	Select 'Aanleggen arterioveneuze fistel centrale vaten.',5 Union All
	Select 'Opheffen arterioveneuze fistel centrale vaten.',5 Union All
	Select 'Mechano-chemische endoveneuze ablatiebehandeling (Clarivein), voor overige endoveneuze behandeling stamvene onderste extremiteit zie 033621.',12 Union All
	Select 'Rekanalisatie van gecomprimeerde vena cava inferior of van haar directe zijtak(ken).',5 Union All
	Select 'Rekanalisatie van geobstrueerde vena cava inferior of van haar directe zijtak(ken).',5 Union All
	Select 'Rekanalisatie van geobstrueerde vena cava inferior met rekanalisatie van haar directe zijtak(ken).',5 Union All
	Select 'Rekanalisatie van gecomprimeerde vena cava superior of van haar directe zijtak(ken).',5 Union All
	Select 'Rekanalisatie van de geobstrueerde vena cava superior of van haar directe zijtak(ken).',5 Union All
	Select 'Embolectomie van perifere bloedvaten.',5 Union All
	Select 'Venasectie.',15 Union All
	Select 'Aanleggen van locale intraveneuze anesthesie + bloedleegte of plexus blokkade van een extremiteit in combinatie met andere ingrepen in dezelfde zitting.',97 Union All
	Select 'Inbrengen van een port-a-cath systeem.',5 Union All
	Select 'Veneuze trombectomie, open procedure, exclusief bij acute diepe trombose (zie 033607).',5 Union All
	Select 'Veneuze trombectomie bij acute diepe trombose, open procedure (bij niet acute diepe trombose zie 033606).',5 Union All
	Select 'Veneuze trombectomie met plaatsen stent bij acute diepe trombose, open procedure.',5 Union All
	Select 'Intraveneuze trombolyse (IVT), exclusief bij acute diepe trombose (zie 033611).',13 Union All
	Select 'Intraveneuze trombolyse (IVT) bij acute diepe trombose (bij niet acute diepe trombose zie 033610).',48 Union All
	Select 'Intraveneuze trombolyse (IVT) met plaatsen stent bij acute diepe trombose.',12 Union All
	Select 'Operatieve behandeling vaatlijden stamvene onderste extremiteit (zie 033582 voor Clarivein en 033621 voor overige endoveneuze behandeling).',15 Union All
	Select 'Endoveneuze behandeling vaatlijden stamvene onderste extremiteit exclusief Clarivein (zie 033582).',12 Union All
	Select 'Flebectomie volgens Muller of transilluminated powered flebectomie (TIPP).',5 Union All
	Select 'Sclerocompressietherapie (exclusief echogeleide sclerocompressietherapie zie 033624).',10 Union All
	Select 'Echogeleide sclerocompressietherapie.',10 Union All
	Select 'Operaties aan extra-thoracaal gelegen grote arteri�n, zonder herstel der continu�teit arteriectomie aan de extremiteiten.',5 Union All
	Select 'Onderbinden van een groot bloedvat of lymfevat.',5 Union All
	Select 'Rekanalisatie van geobstrueerde vena femoralis of van haar directe diep veneuze zijtak(ken).',12 Union All
	Select 'Endov.reconstr.van perifere slagader d.m.v.transplant., endarteriectomie, endostent of patch (zie 033669 voor open reconstr.m.b.v. operatiemicr., zie 033670 voor open reconstr.zonder operatiemicr.).',12 Union All
	Select 'Open reconstructie van een perifere slagader d.m.v. transplantaat, endarteriectomie of patch m.b.v. operatiemicroscoop (zie 033670 voor reconstructie zonder operatiemicrosc., zie 033668 voor endov.).',4 Union All
	Select 'Open reconstructie van een perifere slagader door middel van transplantaat, endarteriectomie of patch (zie 033669 voor reconstructie m.b.v. operatiemicroscoop, zie 033668 voor endov.).',5 Union All
	Select 'Percutane angioplastiek niet-coronaire perifere arteri�n (zie 033351 voor niet-coronaire centrale arteri�n).',12 Union All
	Select 'Aanleggen axillo-bifemorale bypass.',5 Union All
	Select 'Aanleggen axillo-femorale bypass.',5 Union All
	Select 'Aanleggen cross-over arteria subclavia of arteria femoralis.',5 Union All
	Select 'Aanleggen femoro-popliteale bypass, open procedure (zie 033679 voor endovasculair).',5 Union All
	Select 'Endovasculaire behandeling femoro-popliteale traject (zie 033678 voor open procedure).',12 Union All
	Select 'Aanleggen femoro-tibiale bypass, open procedure (zie 033681 voor endovasculair).',5 Union All
	Select 'Endovasculaire behandeling femoro-tibiale traject (zie 033680 voor open procedure).',12 Union All
	Select 'Operatie voor perifere aneurysma(ta) of perifere arterioveneuze fistel(s), open procedure (zie 033683 voor endovasculair).',5 Union All
	Select 'Endovasculaire operatie voor perifere aneurysma(ta) of perifere arterioveneuze fistel(s) (zie 033682 voor open procedure).',12 Union All
	Select 'Reconstructie van perifere (slag)ader zonder transplantaat, open procedure (zie 033685 voor endovasculair).',5 Union All
	Select 'Reconstructie van perifere (slag)ader zonder transplantaat, endovasculair (zie 033684 voor open procedure).',12 Union All
	Select 'Aanleggen intraperitoneale shunt ten behoeve van continue ambulante peritoneale dialyse (CAPD), open procedure (zie 033687 voor laparoscopisch).',5 Union All
	Select 'Laparoscopisch aanleggen intraperitoneale shunt ten behoeve van continue ambulante peritoneale dialyse (CAPD, zie 033686 voor open procedure).',1 Union All
	Select 'Aanleggen uitwendige arterioveneuze shunt.',5 Union All
	Select 'Aanleggen inwendige arterioveneuze shunt.',5 Union All
	Select 'Aanleggen inwendige arterioveneuze shunt met bypass.',5 Union All
	Select 'Doppler met eventuele polsvolumerecording (PVR).',72 Union All
	Select 'Opheffen uitwendige arterioveneuze shunt.',5 Union All
	Select 'Opheffen inwendige arterioveneuze shunt.',5 Union All
	Select 'Reconstructie arteri�le of veneuze pool bij in- of uitwendige arterioveneuze shunt exclusief revisie inwendige arterioveneuze shunt (zie 033700 en 033701).',5 Union All
	Select 'Inbrengen centrale veneuze katheter of een navelkatheter bij pasgeborenen voor voeding of drukmeting.',12 Union All
	Select 'Revisie inwendige arterioveneuze shunt, endovasculair (zie 033701 voor open procedure).',12 Union All
	Select 'Revisie inwendige arterioveneuze shunt, open procedure (zie 033700 voor endovasculair).',5 Union All
	Select 'Revisie intraperitoneale shunt ten behoeve van continue ambulante peritoneale dialyse (CAPD), open procedure (zie 033703 voor laparoscopisch).',5 Union All
	Select 'Revisie intraperitoneale shunt ten behoeve van continue ambulante peritoneale dialyse, laparoscopisch (CAPD, zie 033702 voor open procedure).',1 Union All
	Select 'Uitgebreide verwijdering van para-aortale lymfklieren, open procedure (zie 033723 voor laparoscopisch).',5 Union All
	Select 'Stageringslymfadenectomie van het kleine bekken, open procedure (zie 033724 voor laparoscopisch niet retroperitoneaal, zie 033725 voor laparoscopisch retroperitoneaal).',5 Union All
	Select 'Laparoscopische uitgebreide verwijdering van para-aortale lymfklieren (zie 033721 voor open procedure).',1 Union All
	Select 'Laparoscopische stageringslymfadenectomie van het kleine bekken (zie 033722 voor open procedure, zie 033725 voor laparoscopisch retroperitoneaal).',1 Union All
	Select 'Laparoscopische retroperitoneale stageringslymfadenectomie van het kleine bekken (zie 033722 voor open procedure, zie 033724 voor laparoscopisch niet retroperitoneaal).',1 Union All
	Select 'Therapeutische verwijdering van alle lymfklieren tussen onderkaak en clavicula incl. verwijdering van de musculus sternocleidomastoideus en vena jugularis.',5 Union All
	Select 'Regionale lymfklierextirpatie, open procedure (zie 033742 voor endoscopisch).',5 Union All
	Select 'Endoscopische regionale lymfklierextirpatie (zie 033741 voor open procedure).',1 Union All
	Select 'Een of meerdere lymfatico-veneuze anastomosen van een volledige extremiteit.',4 Union All
	Select 'Diagnostische lymfklierextirpatie, supraclaviculair of infraclaviculair (excl. sentinel node procedure zie 033781 voor open procedure en 033782 voor laparoscopisch).',5 Union All
	Select 'Verwijderen poortwachterklier, open procedure (sentinel node procedure, zie 033782 voor laparoscopisch).',5 Union All
	Select 'Laparoscopisch verwijderen poortwachterklier (sentinel node procedure, zie 033781 voor open procedure).',1 Union All
	Select 'Miltoperatie, waaronder extirpatie, open procedure (zie 033821 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische miltoperatie, waaronder extirpatie (zie 033820 voor open procedure).',1 Union All
	Select 'Stageringslaparotomie bijvoorbeeld maligne lymfomen inclusief miltextirpatie en eventuele fixatie van de ovaria (zie 033824 voor stageringslaparoscopie).',5 Union All
	Select 'Miltextirpatie als onderdeel van een laparotomie om andere redenen, open procedure (zie 033825 voor laparoscopisch).',5 Union All
	Select 'Stageringslaparoscopie bijvoorbeeld maligne lymfomen inclusief miltextirpatie en eventuele fixatie van de ovaria (zie 033822 voor stageringslaparotomie).',1 Union All
	Select 'Laparoscopische miltextirpatie als onderdeel van een laparoscopie om andere redenen (zie 033823 voor open procedure).',1 Union All
	Select 'Locale excisie mammatumor met vriescoupe of onder rontgencontrole onder algehele anesthesie.',5 Union All
	Select 'Conusexcisie van de mamma.',5 Union All
	Select 'Therapeutische ductoscopie.',1 Union All
	Select 'Diagnostische ductoscopie, inclusief eventueel biopt(en) en/of eventuele excisie(s).',1 Union All
	Select '(Subcutane) mastectomie met of zonder huidreductie, zonder okseltoilet.',5 Union All
	Select 'Gynaecomastie-extirpatie.',5 Union All
	Select 'Mamma amputatie met verwijderen van oksellymfklieren.',5 Union All
	Select 'Mamma amputatie met uitgebreide verwijdering van axillaire infraclaviculaire en retrosternale lymfklieren.',5 Union All
	Select 'Plastische correctie deformiteit van mamma (excl. plastische correctie deformiteit van mamma d.m.v. Autologe Vet Transplantatie na eerdere mammareconstructie of mammasparende operatie, zie 033974).',5 Union All
	Select 'Chirurgische tepel(hof) reconstructie.',5 Union All
	Select 'Mammareconstructie d.m.v. BRAVA-AFT (Autologous Fat Transfer) systeem i.h.k.v. BREAST-studie.',5 Union All
	Select 'Plastische correctie deformiteit van mamma d.m.v. Autologe Vet Transplantatie na eerdere mammareconstructie of mammasparende operatie.',5 Union All
	Select 'Operatieve verwijdering van een of meerdere geretineerde tandelementen.',5 Union All
	Select 'Plastiek Frenulum linguae door middel van opschuif- of Z-plastiek.',5 Union All
	Select 'Extirpatie van een gedeelte van de tong.',5 Union All
	Select 'Primaire behandeling van gehemeltespleten in het voorste gedeelte van het palatum.',5 Union All
	Select 'Primaire behandeling van gehemeltespleten in het achterste gedeelte van het palatum.',5 Union All
	Select 'Sluiten palatumfistel.',5 Union All
	Select 'Aanspannen lip d.m.v. wig excisie.',5 Union All
	Select 'Uvulopalatofaryngoplastiek (UPPP).',5 Union All
	Select 'Laser-geassisteerde uvulopalatoplastiek (LAUP).',9 Union All
	Select 'Uvulopalateale flap (UPF).',5 Union All
	Select 'Radiofrequente thermotherapie van de tongbasis (RFTB).',10 Union All
	Select 'Hyo�dthyro�dpexie (HTP, hyo�dsuspensie).',5 Union All
	Select 'Extirpatie tumor weke delen van de mond.',5 Union All
	Select 'Verwijdering van een of meerdere speekselstenen, per klier en/of ductus.',5 Union All
	Select 'Partiele extirpatie van het opppervlakkig deel van de glandula parotis.',5 Union All
	Select 'Totale extirpatie van het oppervlakkig deel van de glandula parotis.',5 Union All
	Select 'Extirpatie van de glandula submandibularis of de glandula sublingualis.',5 Union All
	Select 'Totale parotidectomie.',5 Union All
	Select 'Operatie van een speekselfistel.',5 Union All
	Select 'Operatieve behandeling oesophagusstenose, open procedure (zie 034303 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie cardiospasmus.',1 Union All
	Select 'Endoscopische operatieve behandeling oesophagusstenose (zie 034301 voor open procedure).',1 Union All
	Select 'Endoscopische oesophagotomie (zie 034309 voor open procedure).',1 Union All
	Select 'Oesophagotomie, open procedure (zie 034308 voor endoscopisch).',5 Union All
	Select 'Operatieve behandeling oesophagus-divertikel volgens Zenker, open procedure (zie 034311 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatieve behandeling oesophagus-divertikel volgens Zenker (zie 034310 voor open procedure).',1 Union All
	Select 'Behandeling van een oesophagus-divertikel met laserchirurgie.',9 Union All
	Select 'Oesofago-oesofagostomie.',5 Union All
	Select 'Endoscopische radiofrequente ablatie (RF-ablatie) aandoening oesophagus (voor endoscopische mucosectomie zie 034640).',2 Union All
	Select 'Resectie van oesophaguscarcinoom.',1 Union All
	Select 'Oesophagusresectie, open procedure (zie 034324 voor thoracoscopisch).',5 Union All
	Select 'Thoracoscopische oesophagusresectie (zie 034323 voor open procedure).',1 Union All
	Select 'Oesophagusresectie met colonimplantatie (met jejunuminterpositie zie 034398, met gastric pull-up zie 034399).',5 Union All
	Select 'Operatieve behandeling oesofagusatresie excl. long gap oesofagusatresie (zie 035354), open procedure (zie 034355 voor thoracoscopisch).',5 Union All
	Select 'Thoracoscopische operatieve behandeling oesofagusatresie excl. long gap oesofagusatresie (zie 035353) (zie 034353 voor open procedure).',1 Union All
	Select 'Operatieve behandeling oesophagusperforatie.',5 Union All
	Select 'Implantatie van een elektrode in de lagere oesofageale sphincter (LES).',11 Union All
	Select 'Verwijderen van een elektrode in de lagere oesofageale sphincter (LES).',11 Union All
	Select 'Echo-oesofagoscopie, inclusief eventuele biopten.',123 Union All
	Select 'Echo-bronchoscopie (EBUS), inclusief eventuele biopten.',123 Union All
	Select 'Endo-echografie ter beoordeling bovenbuikorganen, inclusief eventuele biopten.',123 Union All
	Select 'Endo-echografie ter beoordeling van tumoren in het distale colon, inclusief eventuele biopten.',123 Union All
	Select 'Oesofagusfunctieonderzoek, inclusief eventuele 24-uurs metingen (manometrie, impedantiemetrie en/of pH-meting).',75 Union All
	Select 'Behandeling Zenker-divertikel.',1 Union All
	Select 'Therapeutische endoscopie van oesofagus, maag of duodenum.',1 Union All
	Select 'Therapeutische endo-echografie van de pancreas (exclusief ETN en ETD, zie 035418 en 035419).',1 Union All
	Select 'Oesophagusresectie met jejunuminterpositie (met colonimplantatie zie 034342, met gastric pull-up zie 034399).',5 Union All
	Select 'Oesophagusresectie met gastric pull-up (met jejunuminterpositie zie 034398, met colonimplantatie zie 034342).',5 Union All
	Select 'Endoscopisch inbrengen maagballon.',1 Union All
	Select 'Gastrotomie (bijvoorbeeld voor het verwijderen van een of meerdere poliepen of corpora aliena), open procedure (zie 034402 voor endoscopisch).',5 Union All
	Select 'Endoscopische gastrotomie (bijvoorbeeld voor het verwijderen van een of meerdere poliepen of corpora aliena) (zie 034401 voor open procedure).',1 Union All
	Select 'Ramstedt operatie voor pylorusstenose, open procedure (zie 034411 voor endoscopisch).',5 Union All
	Select 'Endoscopische ramstedt operatie voor pylorusstenose (zie 034410 voor open procedure).',1 Union All
	Select 'Stamvagotomie plus antrumresectie.',5 Union All
	Select 'Maagresectie.',5 Union All
	Select 'Maagresectie in combinatie met cholecystectomie.',5 Union All
	Select 'R2-resectie van de maag.',5 Union All
	Select 'Reconstructieve operatie aan de resectiemaag volgens bijvoorbeeld Henley of Roux-Y.',5 Union All
	Select 'Totale maagresectie, thoracaal of abdominaal.',5 Union All
	Select 'Volumereductieoperatie maag, open procedure (zie 034451 voor endoscopisch).',5 Union All
	Select 'Endoscopische volumereductieoperatie maag (zie 034450 voor open procedure).',1 Union All
	Select 'Laparoscopische gastric bypass operatie (oa. biliopancreatische deviatie, duodenale switch).',1 Union All
	Select 'Laparoscopisch inbrengen maagband.',1 Union All
	Select 'Laparoscopisch verwijderen maagbandje.',1 Union All
	Select 'Fundoplicatie, open procedure (zie 034471 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische fundoplicatie (zie 034470 voor open procedure).',1 Union All
	Select '13C octaanzuur ademtest (maagledigingstest).',73 Union All
	Select '13C ureum ademtest (Helicobacter pylori).',73 Union All
	Select 'Waterstofademtest (glucose, fructose of lactose).',73 Union All
	Select 'Orale maagbiopsie met capsule onder beeldvormende techniek.',75 Union All
	Select 'Gastrostomie, open procedure (zie 034503 voor endoscopisch).',5 Union All
	Select 'Aanleggen gastrostomie als onderdeel van een laparotomie, open procedure (zie 034504 voor endoscopisch).',5 Union All
	Select 'Endoscopische gastrostomie (zie 034501 voor open procedure).',1 Union All
	Select 'Endoscopisch aanleggen gastrostomie als onderdeel van een laparoscopie (zie 034502 voor open procedure).',1 Union All
	Select 'Operatief sluiten van gastroschisis (voor sluiten omfalocele zie 034535).',5 Union All
	Select 'Gastro-enterostomie, open procedure (zie 034533 voor endoscopisch).',5 Union All
	Select 'Endoscopische gastro-enterostomie (zie 034531 voor open procedure).',1 Union All
	Select 'Endoscopische stamvagotomie plus gastro-enterostomie als zelfstandige verrichting.',1 Union All
	Select 'Operatief sluiten van omfalocele (voor sluiten gastroschisis zie 034530).',5 Union All
	Select 'Endoscopisch opheffen van een gastro-enterostomie, als zelfstandige verrichting.',1 Union All
	Select 'Operatie bij maagdarmcolonfistel, open procedure.',5 Union All
	Select 'Overhechting maagperforatie, open procedure (zie 034566 voor endoscopisch).',5 Union All
	Select 'Endoscopische overhechting maagperforatie (zie 034564 voor open procedure).',1 Union All
	Select 'Enterotomie bijvoorbeeld voor het verwijderen van een of meerdere poliepen of corpora aliena, open procedure (zie 034603 voor endoscopisch).',5 Union All
	Select 'Endoscopische enterotomie bijvoorbeeld voor het verwijderen van een of meerdere poliepen of corpora aliena (zie 034602 voor open procedure).',1 Union All
	Select 'Resectie meckels divertikel, inclusief eventuele appendectomie, open procedure (zie 034613 voor endoscopisch).',5 Union All
	Select 'Endoscopische resectie meckels divertikel, inclusief eventuele appendectomie (zie 034612 voor open procedure).',1 Union All
	Select 'Diagnostische endoscopie van oesofagus, maag en/of duodenum met behulp van flexibele endoscoop, eventueel inclusief biopten of antroduodenale manometrie.',123 Union All
	Select 'Endoscopisch inbrengen endoluminale sleeve.',1 Union All
	Select 'Beklemde breuk + darmresectie.',5 Union All
	Select 'Dunne darmresectie, open procedure (zie 034639 voor endoscopisch).',5 Union All
	Select 'Endoscopische dunne darmresectie (zie 034638 voor open procedure).',1 Union All
	Select 'Endoscopische mucosectomie.',1 Union All
	Select 'Rectale zuigbiopsie.',75 Union All
	Select 'Orale dunnedarm biopsie met capsule onder beeldvormende techniek.',75 Union All
	Select 'Diagnostische endoscopie van het colon met behulp van flexibele endoscoop, eventueel inclusief biopten, poliepectomie of colonmanometrie.',123 Union All
	Select 'Capsule endoscopie.',72 Union All
	Select 'Diagnostische endoscopie alleen van het sigmo�d met behulp van een flexibele endoscoop, inclusief eventuele biopten en poliepectomie.',123 Union All
	Select 'Rectoscopie of proctoscopie.',123 Union All
	Select 'Endoscopische retrograde cholangiopancreaticografie (ERCP).',1 Union All
	Select 'Enteroscopie (b.v. enkel- of dubbelballon) met behulp van een flexibele endoscoop inclusief eventuele biopten en poliepectomie.',1 Union All
	Select 'Endoscopisch plaatsen stent in tractus digestivus (proximaal of distaal).',1 Union All
	Select 'Interventie-coloscopie (behandeling bloeding, dilatatie) niet zijnde stentplaatsing (zie 034696).',1 Union All
	Select 'Adjuvante hyperthermische intraperitoneale chemotherapie (HIPEC, voor HIPEC in combinatie met cytoreductie zie 039958, voor HIPEC i.h.k.v. HIPECmaag-studie zie 032714).',3 Union All
	Select 'Totale colectomie plus rectumamputatie, open procedure (zie 034734 voor endoscopisch).',5 Union All
	Select 'Totale colectomie met ileorectale anastomose, open procedure (zie 034735 voor endoscopisch).',5 Union All
	Select 'Endoscopische totale colectomie plus rectumamputatie (zie 034732 voor open procedure).',1 Union All
	Select 'Endoscopische totale colectomie met ileorectale anastomose (zie 034733 voor open procedure).',1 Union All
	Select 'Colonresectie, al dan niet met coecostomie, open procedure (zie 034739 voor endoscopisch).',5 Union All
	Select 'Endoscopische colonresectie, al dan niet met coecostomie (zie 034738 voor open procedure).',1 Union All
	Select 'Aanleggen van een anus preaternaturalis na laparotomie bijvoorbeeld bij ileus of peritonitis, open procedure (zie 034753 voor endoscopisch).',5 Union All
	Select 'Endoscopisch aanleggen van een anus preaternaturalis na laparotomie bijvoorbeeld bij ileus of peritonitis (zie 034752 voor open procedure).',1 Union All
	Select 'Enterostomie als onderdeel van een laparotomie of om andere redenen, open procedure (zie 034793 voor endoscopisch).',5 Union All
	Select 'Endoscopische enterostomie als onderdeel van een laparoscopie of om andere redenen (zie 034792 voor open procedure).',1 Union All
	Select 'Ileostomie, open procedure (zie 034797 voor endoscopisch).',5 Union All
	Select 'Endoscopische ileostomie (zie 034796 voor open procedure).',1 Union All
	Select 'Enterostomie, open procedure (zie 034799 voor endoscopisch).',5 Union All
	Select 'Endoscopische enterostomie (zie 034798 voor open procedure).',1 Union All
	Select 'Entero-anastomose operatie, open procedure (zie 034809 voor endoscopisch).',5 Union All
	Select 'Endoscopische entero-anastomose operatie (zie 034808 voor open procedure).',1 Union All
	Select 'Ileorectale anastomose, open procedure (zie 034811 voor endoscopisch).',5 Union All
	Select 'Endoscopische ileorectale anastomose (zie 034810 voor open procedure).',1 Union All
	Select 'Duodeno-duodenostomie, open procedure (zie 034813 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische duodeno-duodenostomie (zie 034812 voor open procedure).',1 Union All
	Select 'Overhechten darmperforatie, open procedure (zie 034835 voor laparoscopisch).',5 Union All
	Select 'Reconstructie anus praeternaturalis van het colon, intraperitoneaal.',5 Union All
	Select 'Reconstructie anus praeternaturalis van het colon, extraperitoneaal.',5 Union All
	Select 'Laparoscopisch overhechten darmperforatie (zie 034832 voor open procedure).',1 Union All
	Select 'Opheffen van anus praeternaturalis door middel van colonresectie, waarna buikwandplastiek.',5 Union All
	Select 'Sluiten van een anus praeternaturalis, extraperitoneaal.',5 Union All
	Select 'Opheffen van een entero- of ileostomie, open procedure (zie 034854 voor laparoscopisch).',5 Union All
	Select 'Laparoscopisch opheffen van een entero- of ileostomie (zie 034853 voor open procedure).',1 Union All
	Select 'Klieven laddse banden en darmen in non-rotatie stand brengen, open procedure (zie 034879 voor laparoscopisch).',5 Union All
	Select 'Laparoscopisch klieven laddse banden en darmen in non-rotatie stand brengen (zie 034878 voor open procedure).',1 Union All
	Select 'Ileusoperatie zonder resectie of anastomose, open procedure (zie 034881 voor endoscopisch).',5 Union All
	Select 'Endoscopische ileusoperatie zonder resectie of anastomose (zie 034880 voor open procedure).',1 Union All
	Select 'Resectie darmweefsel levende donor.',5 Union All
	Select 'Operatie van appendiculair abces, open procedure (zie 034901 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie van appendiculair abces, zie 034900 voor open procedure).',1 Union All
	Select 'Appendectomie, open procedure (zie 034911 voor laparoscopisch).',5 Union All
	Select 'Endoscopische appendectomie (zie 034910 voor open procedure).',1 Union All
	Select 'Electro-coagulatie of cryochirurgische behandeling rectumcarcinoom, de eerste behandeling.',10 Union All
	Select 'Electro-coagulatie of cryochirurgische behandeling rectumcarcinoom, iedere volgende behandeling binnen een jaar.',10 Union All
	Select 'Verwijderen aandoening m.b.v. transanale endoscopische microchirurgie (TEM, zie 037332 voor opheffen recto-vaginale fistel m.b.v. TEM).',1 Union All
	Select 'Operatie rectumprolaps bij volwassenen, resectie anaal.',5 Union All
	Select 'Operatie rectumprolaps bij volwassenen, abdominaal.',5 Union All
	Select 'Operatie rectumprolaps bij kinderen.',5 Union All
	Select 'Anterior resectie van het rectosigmoid, al dan niet met coecostomie of tijdelijke anus praeternaturalis, open procedure (zie 035025 voor endoscopisch).',5 Union All
	Select 'Endoscopische anterior resectie van het rectosigmoid, al dan niet met coecostomie of tijdelijke anus praeternaturalis (zie 035024 voor open procedure).',1 Union All
	Select 'Rectum-extirpatie, inclusief aanleggen anus praeternaturalis, open procedure (zie 035027 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische rectum-extirpatie, inclusief aanleggen anus praeternaturalis (zie 035026 voor open procedure).',1 Union All
	Select 'Implantatie artificial bowel sphincter.',5 Union All
	Select 'Vervangen (deel van) artificial bowel sphincter.',5 Union All
	Select 'Revisie (deel van) artificial bowel sphincter.',5 Union All
	Select 'Verwijderen (deel van) artificial bowel sphincter.',5 Union All
	Select 'Excisie van een fissura ani.',5 Union All
	Select 'Operatie van een fistula ani.',5 Union All
	Select 'Operatie recidief fistula ani.',5 Union All
	Select 'Post anal repair.',5 Union All
	Select 'Niet operatieve ambulante behandeling van haemorrho�den door middel van scleroseren, bandligatie, infraroodcoagulatie of cryochirurgie. De eerste behandeling.',10 Union All
	Select 'Niet operatieve ambulante behandeling van haemorrho�den door middel van scleroseren, bandligatie, infraroodcoagulatie of cryochirurgie. Iedere volgende behandeling binnen een jaar.',10 Union All
	Select 'Operatie van haemorrho�den (niet het scleroseren).',5 Union All
	Select 'Behandeling haemorrho�den door middel van manuele dilatatie onder narcose.',46 Union All
	Select 'Posterieure sagittale anorectaal plastiek (PSARP), open procedure (zie 035141 voor ASARP, zie 035142 voor LARP).',5 Union All
	Select 'Anterieure sagittale anorectaal plastiek (ASARP), open procedure (zie 035140 voor PSARP, zie 035142 voor LARP).',5 Union All
	Select 'Laparoscopische anorectale pull-through plastiek (LARP, zie 035140 voor PSARP, zie 035141 voor ASARP).',1 Union All
	Select 'Operatieve behandeling atresia ani in een of meerdere zittingen.',5 Union All
	Select 'Operatie rectumprolaps bij volwassenen, sphincterplastiek, open procedure (zie 035154 voor endoscopisch).',5 Union All
	Select 'Secundaire sphincter reconstructie in verband met fecale incontinentie, open procedure.',5 Union All
	Select 'Endoscopische operatie rectumprolaps bij volwassenen, sphincterplastiek (zie 035152 voor open procedure).',1 Union All
	Select 'Rekking sluitspier van de endeldarm.',46 Union All
	Select 'Endoscopische leveroperatie wegens een of meerdere abcessen, cysten of een ruptuur (zie 035212 voor open procedure).',1 Union All
	Select 'Open leveroperatie wegens een of meerdere abcessen, cysten of een ruptuur (zie 035211 voor endoscopisch).',5 Union All
	Select 'Kwabresectie lever, open procedure (zie 035222 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische kwabresectie lever (zie 035221 voor open procedure).',1 Union All
	Select 'Resectie leverweefsel levende donor.',5 Union All
	Select 'Radiofrequentie ablatie (RF-ablatie) aandoening lever (zie 039690 voor tumorablatie algemeen).',10 Union All
	Select 'Cryo-ablatie aandoening lever (zie 039690 voor tumorablatie algemeen).',10 Union All
	Select 'Leverbiopsie.',75 Union All
	Select 'Heropenen van de galwegen, eventueel papilla Vateri-plastiek, open procedure.',5 Union All
	Select 'Primair openen van de galwegen met bilidigestieve anastomose al of niet met cholecystectomie, open procedure.',5 Union All
	Select 'Heropenen van de galwegen met bilidigestieve anastomose.',5 Union All
	Select 'Hepatico-jejunostomie.',5 Union All
	Select 'Resectie choledochuscyste en herstel van galwegen.',5 Union All
	Select 'Galblaas drainage, open procedure (zie 035342 voor endoscopisch).',5 Union All
	Select 'Extracorporele Shock Wave Lithotrypsie (ESWL) voor galwegstenen (zie 038858 voor ESWT bot- en spierstelsel).',64 Union All
	Select 'Endoscopische galblaas drainage (zie 035340 voor open procedure).',1 Union All
	Select 'Cholecystectomie.',5 Union All
	Select 'Cholecystectomie inclusief choledochotomie, open procedure (zie 035356 voor endoscopisch).',5 Union All
	Select 'Cholecystectomie plus appendectomie, open procedure (zie 035357 voor endoscopisch).',5 Union All
	Select 'Thoracoscopische operatieve behandeling long gap oesofagusatresie (zie 035354 voor open procedure).',1 Union All
	Select 'Operatieve behandeling long gap oesofagusatresie, open procedure (zie 035353 voor thoracoscopisch).',5 Union All
	Select 'Cholecystectomie per laparoscoop, inclusief eventueel peroperatief te verrichten cholangiogram.',1 Union All
	Select 'Endoscopische cholecystectomie inclusief choledochotomie (zie 035351 voor open procedure).',1 Union All
	Select 'Endoscopische cholecystectomie plus appendectomie (zie 035352 voor open procedure).',1 Union All
	Select 'Endoscopische transluminale necrosectomie (ETN) pancreas (zie 035419 voor ETD pancreas).',1 Union All
	Select 'Endoscopische transluminale drainage (ETD) pancreas (zie 035418 voor ETN pancreas).',1 Union All
	Select 'Pancreas extirpatie, open procedure (zie 035422 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische pancreas extirpatie (zie 035421 voor open procedure).',1 Union All
	Select 'Pancreatico-duodenectomie volgens Whipple.',5 Union All
	Select 'Pancreas operatie, open procedure (zie 035497 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische pancreas operatie (zie 035496 voor open procedure).',1 Union All
	Select 'Diagnostische ascitespunctie.',75 Union All
	Select 'Therapeutische ascitespunctie.',13 Union All
	Select 'Subcutaan inbrengen van anticonceptiestaafje met behulp van applicator.',5 Union All
	Select 'Proeflaparotomie.',5 Union All
	Select 'Plaatsen van implanteerbare insulinepomp (CIPII) voor intraperitoneale toediening van insuline.',5 Union All
	Select 'Verwijderen of revisie van implanteerbare insulinepomp (CIPII) voor intraperitoneale toediening van insuline.',5 Union All
	Select 'Vervangen van implanteerbare insulinepomp (CIPII) voor intraperitoneale toediening van insuline.',5 Union All
	Select 'Bijvullen van implanteerbare insulinepomp (CIPII) voor intraperitoneale toediening van insuline.',29 Union All
	Select 'Excisie vet en operatieve correctie van huiddeformiteit van de onderbuik, met of zonder behandeling van een navelbreuk, de zogenaamde vetschortoperatie.',5 Union All
	Select 'Therapeutische laparoscopie, bv. ter opheffing van adhesiolysis, excisie intra-abdominale cysten, endometriose (excl. bij vruchtbaarheidsproblematiek zie 035581).',1 Union All
	Select 'Therapeutische laparoscopie bij vruchtbaarheidsproblematiek.',1 Union All
	Select 'Diagnostische laparoscopie, inclusief eventuele proefexcisie(s) (excl. bij vruchtbaarheidsproblematiek, zie 035583).',1 Union All
	Select 'Diagnostische laparoscopie bij vruchtbaarheidsproblematiek (inclusief tubatesten).',1 Union All
	Select 'Laparoscopische behandeling endometriosis, cyste punctie.',1 Union All
	Select 'Laparoscopische of laparotomische behandeling endometriosis, uitgebreide chirurgie in een stadium IV-V.',6 Union All
	Select 'Laparoscopische of laparotomische behandeling endometriosis, cysteverwijdering.',6 Union All
	Select 'Aanleggen en periodiek bijvullen pneumoperitoneum.',1 Union All
	Select 'Hernia inguinalis, open procedure (zie 035710 voor laparoscopisch).',5 Union All
	Select 'Hernia incarcerata, zonder darmresectie, open procedure (zie 035712 voor endoscopisch).',5 Union All
	Select 'Recidief hernia inguinalis, open procedure (zie 035713 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie hernia inguinalis (zie 035700 voor open procedure.',1 Union All
	Select 'Endoscopische operatie hernia incarcerata, zonder darmresectie (zie 035702 voor open procedure).',1 Union All
	Select 'Endoscopische operatie recidief hernia inguinalis (zie 035703 voor open procedure).',1 Union All
	Select 'Hernia femoralis, open procedure (zie 035721 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie hernia femoralis (zie 035720 voor open procedure).',1 Union All
	Select 'Hernia cicatricialis, open procedure (zie 035741 voor laparoscopisch).',5 Union All
	Select 'Laparoscopische operatie hernia cicatricialis (zie 035740 voor open procedure).',1 Union All
	Select 'Hernia epigastrica, open procedure (zie 035751 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie hernia epigastrica (zie 035750 voor open procedure).',1 Union All
	Select 'Hernia umbilicalis bij personen vanaf 12 jaar, open procedure (zie 035762 voor endoscopisch).',5 Union All
	Select 'Hernia umbilicalis bij personen tot 12 jaar, open procedure (zie 035763 voor endoscopisch).',5 Union All
	Select 'Endoscopische operatie hernia umbilicalis bij personen vanaf 12 jaar (zie 035760 voor open procedure).',1 Union All
	Select 'Endoscopische operatie hernia umbilicalis bij personen tot 12 jaar (zie 035761 voor open procedure).',1 Union All
	Select 'Hernia diaphragmatica, abdominaal, open procedure (zie 035774 voor endoscopisch, zie 034470 voor open fundoplicatie).',5
) d


insert into dbo.test_treatment_subcategories
(
	subcategory_id,
	[name],
	treatment_category_id,
	[rank]
)
select
	subcategory_id,
	[name],
	treatment_category_id,
	[rank]
from (
	Select 1 subcategory_id, 1 [rank],1 treatment_category_id,'Endo-/laparoscopische ingreep' [name] Union all
	Select 2, 1,1,'Endoscopische radiofrequentietherapie' Union all
	Select 3, 1,1,'Hyperthermische Intraperitoneale Chemotherapie (HIPEC)' Union all
	Select 4, 1,1,'Microchirurgische ingreep' Union all
	Select 5, 1,1,'Open chirurgische ingreep' Union all
	Select 6, 1,1,'Open of endoscopische ingreep' Union all
	Select 7, 1,1,'Transurethrale ingreep' Union all
	Select 8, 1,1,'Transvaginale ingreep' Union all
	Select 9, 2,2,'(Invasieve) Laserbehandeling' Union all
	Select 10, 2,2,'Coagulatie-, ablatie-, abrasie- of sclerotherapie' Union all
	Select 11, 2,2,'Elektrische stimulatietherapie' Union all
	Select 12, 2,2,'Endovasculaire procedure' Union all
	Select 13, 2,2,'Injectie, punctie of katheterisatie' Union all
	Select 14, 2,2,'Invasieve radiologische/-nucleaire therapie' Union all
	Select 15, 2,2,'Lichte chirurgische ingreep' Union all
	Select 16, 2,2,'Sondage procedure of plaatsen sonde (niet endoscopisch)' Union all
	Select 17, 3,3,'Add-on geneesmiddelen' Union all
	Select 18, 3,3,'Anticonceptie' Union all
	Select 19, 3,3,'Beademing' Union all
	Select 20, 3,3,'Begeleiding bij complexe thuisbehandeling' Union all
	Select 21, 3,3,'Begeleiding bij oncologische behandeling' Union all
	Select 22, 3,3,'Begeleiding bij transplantatiezorg' Union all
	Select 23, 3,3,'Behandeling met hyperbare zuurstof' Union all
	Select 24, 3,3,'Bloedproducten' Union all
	Select 25, 3,3,'Cardiologische resucitatie' Union all
	Select 26, 3,3,'Chemotherapie' Union all
	Select 27, 3,3,'Compressietherapie' Union all
	Select 28, 3,3,'Conservatieve fractuur, constusie, luxatie of bandlaesie behandeling' Union all
	Select 29, 3,3,'Controle van medische hulpmiddelen en thuisapparatuur' Union all
	Select 30, 3,3,'Dagverpleging' Union all
	Select 31, 3,3,'Dermatologische laserbehandeling' Union all
	Select 32, 3,3,'Dialyse' Union all
	Select 33, 3,3,'Dieetadvisering' Union all
	Select 34, 3,3,'Druktherapie' Union all
	Select 35, 3,3,'Exsanguinatie' Union all
	Select 36, 3,3,'Fototherapie (lichttherapie, fotodynamisch, fotochemisch)' Union all
	Select 37, 3,3,'Gipsnegatief' Union all
	Select 38, 3,3,'Gipsredressie' Union all
	Select 39, 3,3,'Infuusbeleid pasgeborene' Union all
	Select 40, 3,3,'Inhalatietherapie' Union all
	Select 41, 3,3,'Intensive Care' Union all
	Select 42, 3,3,'Kinderoncologische therapie' Union all
	Select 43, 3,3,'Klinische opname' Union all
	Select 44, 3,3,'Kunstverlossing' Union all
	Select 45, 3,3,'Longastmacentrum therapie' Union all
	Select 46, 3,3,'Manuele dilatatie' Union all
	Select 47, 3,3,'Manuele therapeutische handeling' Union all
	Select 48, 3,3,'Medicamenteuze therapie (aspecifiek voor geneesmiddel)' Union all
	Select 49, 3,3,'Neustamponade' Union all
	Select 50, 3,3,'Opvang pasgeborene' Union all
	Select 51, 3,3,'Paramedische behandeling' Union all
	Select 52, 3,3,'Perifeer infuus inbrengen' Union all
	Select 53, 3,3,'Plasma-, foto- of aferese' Union all
	Select 54, 3,3,'Poliklinische bevalling' Union all
	Select 55, 3,3,'Poliklinische controle pacemaker' Union all
	Select 56, 3,3,'Protonentherapie' Union all
	Select 57, 3,3,'Radionucleaire therapie' Union all
	Select 58, 3,3,'Radiotherapie' Union all
	Select 59, 3,3,'Redressie/repositie onder narcose' Union all
	Select 60, 3,3,'Repositie (poliklinisch / zonder narcose)' Union all
	Select 61, 3,3,'Reumatologische hyperthermie behandeling' Union all
	Select 62, 3,3,'Revalidatie' Union all
	Select 63, 3,3,'Sexuologische behandeling vaginisme' Union all
	Select 64, 3,3,'Shockwave therapie (bijv. bij nierstenen)' Union all
	Select 65, 3,3,'Spontane partus' Union all
	Select 66, 3,3,'Stabiliseren pati�nt voor overplaatsing' Union all
	Select 67, 3,3,'Stollingsfactoren' Union all
	Select 68, 3,3,'Traumaopvang' Union all
	Select 69, 3,3,'Urologische zelfkatheterisatie instructie' Union all
	Select 70, 3,3,'Vruchtbaarheidsbehandeling' Union all
	Select 71, 3,3,'Wondbehandeling' Union all
	Select 72, 4,4,'Beeldvorming' Union all
	Select 73, 4,4,'Functieonderzoek' Union all
	Select 74, 4,4,'Laboratorium diagnostiek' Union all
	Select 75, 4,4,'Overige diagnostiek' Union all
	Select 76, 5,5,'(Intercollegiaal) consult' Union all
	Select 77, 5,5,'Analyse doorverwijzing' Union all
	Select 78, 5,5,'Begeleiding / controle bloedstollingswaarde' Union all
	Select 79, 5,5,'Consult Kaakchirurgie' Union all
	Select 80, 5,5,'Counseling en informatieverstrekking' Union all
	Select 81, 5,5,'Eerste consult / intake' Union all
	Select 82, 5,5,'Herhaalconsult / follow-up' Union all
	Select 83, 5,5,'Huisbezoek' Union all
	Select 84, 5,5,'Keuringen' Union all
	Select 85, 5,5,'Medebehandeling' Union all
	Select 86, 5,5,'Multidisciplinair Overleg' Union all
	Select 87, 5,5,'Nazorg' Union all
	Select 88, 5,5,'Paramedisch consult' Union all
	Select 89, 5,5,'Paramedische screening' Union all
	Select 90, 5,5,'Preassessment' Union all
	Select 91, 5,5,'Rapportage' Union all
	Select 92, 5,5,'Second opinion' Union all
	Select 93, 5,5,'SEH contact' Union all
	Select 94, 5,5,'Teleconsult' Union all
	Select 95, 6,6,'Anesthesie' Union all
	Select 96, 6,6,'ECC-perfusie' Union all
	Select 97, 6,6,'Regionale Anesthesie' Union all
	Select 98, 6,6,'Sedatie' Union all
	Select 99, 7,7,'Bijzondere kunst- en hulpmiddelen' Union all
	Select 100, 7,7,'Cardiologische hulpmiddelen' Union all
	Select 101, 7,7,'Hulpmiddelen bewegingsapparaat' Union all
	Select 102, 7,7,'Neurologische hulpmiddelen' Union all
	Select 103, 8,8,'Intensive care toeslag' Union all
	Select 104, 8,8,'Kosten bij kaakchirurgische ingreep' Union all
	Select 105, 8,8,'Opslag van ei- of spermacellen' Union all
	Select 106, 8,8,'Paramedische toeslag' Union all
	Select 107, 8,8,'Reiskosten' Union all
	Select 108, 8,8,'Toeslag ondersteunend specialisme' Union all
	Select 109, 8,8,'Toeslag specialistische zorg' Union all
	Select 110, 8,8,'Vacatiegelden' Union all
	Select 111, 8,8,'Zorgcoordinatie' Union all
	Select 112, 9,9,'IC transport' Union all
	Select 113, 9,9,'Micu transport' Union all
	Select 114, 9,9,'Transport pati�nt buiten het OK-complex.' Union all
	Select 115, 10,10,'Donorbindweefsel' Union all
	Select 116, 10,10,'Donorbloedvatweefsel' Union all
	Select 117, 10,10,'Donorbotpoeder of botmatrix' Union all
	Select 118, 10,10,'Donorbotweefsel' Union all
	Select 119, 10,10,'Donorcornea' Union all
	Select 120, 10,10,'Donorhuid' Union all
	Select 121, 10,10,'Donorsclera' Union all
	Select 122, 11,11,'Administratief' Union all
	Select 123, 2,4,'Diagnostische endoscopie�n' Union all
	Select 124, 4,4,'Diagnostische punctie of biopsie'
) d

insert into dbo.test_treatment_categories
(
	category_id,
	[name],
	[rank]
)
select 
	category_id,
	[name],
	[rank]
from (
	Select 1 category_id, 1 [rank],'Operatieve behandeling' [name] Union all
	Select 2, 2,'Injecties, katheterisaties en andere minimaal invasieve therapie�n' Union all
	Select 3, 3,'Niet-invasieve therapie' Union all
	Select 4, 4,'Diagnostiek' Union all
	Select 5, 5,'Consultatie' Union all
	Select 6, 6,'Anesthesie' Union all
	Select 7, 7,'Hulpmiddelen' Union all
	Select 8, 8,'Kosten of toeslagen' Union all
	Select 9, 9,'Transport' Union all
	Select 10, 10,'Weefselproducten' Union all
	Select 11, 11,'Overige'
) d