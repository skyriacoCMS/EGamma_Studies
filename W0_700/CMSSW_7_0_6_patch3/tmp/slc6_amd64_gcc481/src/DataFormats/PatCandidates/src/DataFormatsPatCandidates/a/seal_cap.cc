static  const char* clnames[] = {
  "LCGReflex/StringMap",
  "LCGReflex/std::pair<pat::IsolationKeys,reco::IsoDeposit>",
  "LCGReflex/std::pair<std::basic_string<char>,std::vector<float> >",
  "LCGReflex/pat::CandKinResolution",
  "LCGReflex/std::vector<pat::CandKinResolution>",
  "LCGReflex/pat::LookupTableRecord",
  "LCGReflex/std::vector<pat::LookupTableRecord>",
  "LCGReflex/std::vector<std::pair<pat::IsolationKeys,reco::IsoDeposit> >",
  "LCGReflex/pat::EventHypothesis",
  "LCGReflex/std::vector<pat::EventHypothesis>",
  "LCGReflex/pat::VertexAssociation",
  "LCGReflex/std::vector<pat::VertexAssociation>",
  "LCGReflex/pat::TauJetCorrFactors",
  "LCGReflex/std::vector<pat::TauJetCorrFactors>",
  "LCGReflex/pat::JetCorrFactors",
  "LCGReflex/std::vector<pat::JetCorrFactors>",
  "LCGReflex/edm::ValueMap<pat::LookupTableRecord>",
  "LCGReflex/edm::Wrapper<edm::ValueMap<pat::LookupTableRecord> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::EventHypothesis> >",
  "LCGReflex/edm::ValueMap<pat::VertexAssociation>",
  "LCGReflex/edm::Wrapper<edm::ValueMap<pat::VertexAssociation> >",
  "LCGReflex/edm::Wrapper<StringMap>",
  "LCGReflex/edm::ValueMap<pat::TauJetCorrFactors>",
  "LCGReflex/edm::Wrapper<edm::ValueMap<pat::TauJetCorrFactors> >",
  "LCGReflex/edm::ValueMap<pat::JetCorrFactors>",
  "LCGReflex/edm::Wrapper<edm::ValueMap<pat::JetCorrFactors> >",
  "LCGReflex/edm::Wrapper<std::pair<std::basic_string<char>,std::vector<float> > >",
  "LCGReflex/edm::ValueMap<pat::CandKinResolution>",
  "LCGReflex/std::vector<std::pair<std::basic_string<char>,std::vector<float> > >",
  "LCGReflex/edm::Wrapper<edm::ValueMap<pat::CandKinResolution> >",
  "LCGReflex/edm::Wrapper<std::vector<std::pair<std::basic_string<char>,std::vector<float> > > >",
  "LCGReflex/pat::TriggerAlgorithm",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >,long,edm::Ref<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >*,edm::Ref<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >&>",
  "LCGReflex/pat::TriggerCondition",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >,long,edm::Ref<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >*,edm::Ref<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >&>",
  "LCGReflex/pat::TriggerObject",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >,long,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >*,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >&>",
  "LCGReflex/pat::TriggerFilter",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >,long,edm::Ref<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >*,edm::Ref<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >&>",
  "LCGReflex/pat::TriggerObjectStandAlone",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >,long,edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >*,edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >&>",
  "LCGReflex/pat::TriggerPath",
  "LCGReflex/std::iterator<std::random_access_iterator_tag,edm::Ref<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >,long,edm::Ref<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >*,edm::Ref<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >&>",
  "LCGReflex/std::vector<pat::TriggerObject>",
  "LCGReflex/edm::Association<std::vector<pat::TriggerObject> >",
  "LCGReflex/std::pair<std::basic_string<char>,edm::RefProd<edm::Association<std::vector<pat::TriggerObject> > > >",
  "LCGReflex/std::vector<pat::TriggerAlgorithm>",
  "LCGReflex/std::vector<pat::TriggerCondition>",
  "LCGReflex/std::vector<pat::TriggerFilter>",
  "LCGReflex/std::vector<pat::TriggerObjectStandAlone>",
  "LCGReflex/std::vector<pat::TriggerPath>",
  "LCGReflex/std::map<std::basic_string<char>,edm::RefProd<edm::Association<std::vector<pat::TriggerObject> > > >",
  "LCGReflex/pat::PackedTriggerPrescales",
  "LCGReflex/edm::Wrapper<pat::PackedTriggerPrescales>",
  "LCGReflex/pat::TriggerEvent",
  "LCGReflex/edm::Wrapper<pat::TriggerEvent>",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerAlgorithm> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerCondition> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerPath> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerFilter> >",
  "LCGReflex/edm::Association<std::vector<pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::Wrapper<edm::Association<std::vector<pat::TriggerObjectStandAlone> > >",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::Wrapper<std::map<std::basic_string<char>,edm::RefProd<edm::Association<std::vector<pat::TriggerObject> > > > >",
  "LCGReflex/edm::Wrapper<edm::Association<std::vector<pat::TriggerObject> > >",
  "LCGReflex/edm::Wrapper<std::vector<pat::TriggerObject> >",
  "LCGReflex/edm::RefProd<edm::Association<std::vector<pat::TriggerObject> > >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerPath> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerAlgorithm>,pat::TriggerAlgorithm> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >",
  "LCGReflex/std::pair<bool,std::basic_string<char> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >",
  "LCGReflex/edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerCondition>,pat::TriggerCondition,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerCondition>,pat::TriggerCondition> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerObject> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerCondition> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerAlgorithm> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> >",
  "LCGReflex/edm::RefVectorIterator<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerPath>,pat::TriggerPath,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerPath>,pat::TriggerPath> >",
  "LCGReflex/edm::RefVector<std::vector<pat::TriggerFilter>,pat::TriggerFilter,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerFilter>,pat::TriggerFilter> >",
  "LCGReflex/edm::RefProd<std::vector<pat::TriggerFilter> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerAlgorithm*,std::vector<pat::TriggerAlgorithm> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerCondition*,std::vector<pat::TriggerCondition> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerObject*,std::vector<pat::TriggerObject> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerFilter*,std::vector<pat::TriggerFilter> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerObjectStandAlone*,std::vector<pat::TriggerObjectStandAlone> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::TriggerPath*,std::vector<pat::TriggerPath> >",
  "LCGReflex/std::_Rb_tree_const_iterator<std::pair<const std::basic_string<char>,edm::RefProd<edm::Association<std::vector<pat::TriggerObject> > > > >",
  "LCGReflex/std::pair<std::basic_string<char>,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> > >",
  "LCGReflex/std::vector<std::pair<bool,std::basic_string<char> > >",
  "LCGReflex/std::map<std::basic_string<char>,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerAlgorithm> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerCondition> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerPath> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerFilter> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerObjectStandAlone> > >",
  "LCGReflex/edm::Wrapper<edm::RefProd<std::vector<pat::TriggerObject> > >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const std::pair<bool,std::basic_string<char> >*,std::vector<std::pair<bool,std::basic_string<char> > > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObjectStandAlone>,pat::TriggerObjectStandAlone> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::TriggerObject>,pat::TriggerObject,edm::refhelper::FindUsingAdvance<std::vector<pat::TriggerObject>,pat::TriggerObject> > >",
  "LCGReflex/pat::UserData",
  "LCGReflex/edm::Ptr<pat::UserData>",
  "LCGReflex/std::vector<edm::Ptr<pat::UserData> >",
  "LCGReflex/std::vector<pat::UserData*>",
  "LCGReflex/edm::ValueMap<edm::Ptr<pat::UserData> >",
  "LCGReflex/edm::Wrapper<edm::ValueMap<edm::Ptr<pat::UserData> > >",
  "LCGReflex/pat::UserHolder<reco::Vertex>",
  "LCGReflex/pat::UserHolder<reco::Track>",
  "LCGReflex/pat::UserHolder<ROOT::Math::SVector<double,5> >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SVector<double,4> >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SVector<double,3> >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SVector<double,2> >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SMatrix<double,5,5,ROOT::Math::MatRepSym<double,5> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SMatrix<double,4,4,ROOT::Math::MatRepSym<double,4> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SMatrix<double,3,3,ROOT::Math::MatRepSym<double,3> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::SMatrix<double,2,2,ROOT::Math::MatRepSym<double,2> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::LorentzVector<ROOT::Math::PtEtaPhiM4D<double> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::LorentzVector<ROOT::Math::PxPyPzE4D<double> > >",
  "LCGReflex/pat::UserHolder<ROOT::Math::PositionVector3D<ROOT::Math::Cartesian3D<double>,ROOT::Math::DefaultCoordinateSystemTag> >",
  "LCGReflex/pat::UserHolder<ROOT::Math::DisplacementVector3D<ROOT::Math::Cartesian3D<double>,ROOT::Math::DefaultCoordinateSystemTag> >",
  "LCGReflex/edm::OwnVector<pat::UserData,edm::ClonePolicy<pat::UserData> >",
  "LCGReflex/edm::Wrapper<edm::OwnVector<pat::UserData,edm::ClonePolicy<pat::UserData> > >",
  "LCGReflex/pat::PackedGenParticle",
  "LCGReflex/std::vector<pat::PackedGenParticle>",
  "LCGReflex/pat::PackedCandidate",
  "LCGReflex/std::vector<pat::PackedCandidate>",
  "LCGReflex/pat::Conversion",
  "LCGReflex/std::vector<pat::Conversion>",
  "LCGReflex/pat::Hemisphere",
  "LCGReflex/std::vector<pat::Hemisphere>",
  "LCGReflex/pat::GenericParticle",
  "LCGReflex/std::vector<pat::GenericParticle>",
  "LCGReflex/pat::PFParticle",
  "LCGReflex/std::vector<pat::PFParticle>",
  "LCGReflex/pat::CompositeCandidate",
  "LCGReflex/std::vector<pat::CompositeCandidate>",
  "LCGReflex/pat::Particle",
  "LCGReflex/std::vector<pat::Particle>",
  "LCGReflex/pat::MET",
  "LCGReflex/std::vector<pat::MET>",
  "LCGReflex/pat::Jet",
  "LCGReflex/std::vector<pat::Jet>",
  "LCGReflex/pat::Photon",
  "LCGReflex/std::vector<pat::Photon>",
  "LCGReflex/pat::Tau",
  "LCGReflex/std::vector<pat::Tau>",
  "LCGReflex/pat::Muon",
  "LCGReflex/std::vector<pat::Muon>",
  "LCGReflex/pat::Electron",
  "LCGReflex/std::vector<pat::Electron>",
  "LCGReflex/pat::MHT",
  "LCGReflex/std::vector<pat::MHT>",
  "LCGReflex/pat::MET::PackedMETUncertainty",
  "LCGReflex/std::vector<pat::MET::PackedMETUncertainty>",
  "LCGReflex/pat::tau::TauPFSpecific",
  "LCGReflex/std::vector<pat::tau::TauPFSpecific>",
  "LCGReflex/pat::tau::TauCaloSpecific",
  "LCGReflex/std::vector<pat::tau::TauCaloSpecific>",
  "LCGReflex/pat::tau::TauPFEssential",
  "LCGReflex/std::vector<pat::tau::TauPFEssential>",
  "LCGReflex/edm::Wrapper<std::vector<pat::PackedGenParticle> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::PackedCandidate> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Conversion> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Hemisphere> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::GenericParticle> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::PFParticle> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::CompositeCandidate> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Particle> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::MHT> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::MET> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Jet> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Photon> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Tau> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Muon> >",
  "LCGReflex/edm::Wrapper<std::vector<pat::Electron> >",
  "LCGReflex/edm::AtomicPtrCache<std::vector<reco::SuperCluster> >",
  "LCGReflex/edm::Ptr<pat::Tau>",
  "LCGReflex/edm::Ptr<pat::Muon>",
  "LCGReflex/edm::Ptr<pat::Conversion>",
  "LCGReflex/edm::Ptr<pat::Electron>",
  "LCGReflex/edm::Ptr<pat::MET>",
  "LCGReflex/edm::Ptr<pat::Jet>",
  "LCGReflex/pat::Lepton<reco::BaseTau>",
  "LCGReflex/pat::Lepton<reco::Muon>",
  "LCGReflex/pat::Lepton<reco::GsfElectron>",
  "LCGReflex/pat::PATObject<reco::RecoCandidate>",
  "LCGReflex/pat::PATObject<reco::PFCandidate>",
  "LCGReflex/pat::PATObject<reco::CompositeCandidate>",
  "LCGReflex/pat::PATObject<reco::LeafCandidate>",
  "LCGReflex/pat::PATObject<reco::MET>",
  "LCGReflex/pat::PATObject<reco::Jet>",
  "LCGReflex/pat::PATObject<reco::Photon>",
  "LCGReflex/pat::PATObject<reco::BaseTau>",
  "LCGReflex/pat::PATObject<reco::Muon>",
  "LCGReflex/pat::PATObject<reco::GsfElectron>",
  "LCGReflex/edm::RefVector<std::vector<pat::Particle>,pat::Particle,edm::refhelper::FindUsingAdvance<std::vector<pat::Particle>,pat::Particle> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Photon>,pat::Photon,edm::refhelper::FindUsingAdvance<std::vector<pat::Photon>,pat::Photon> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Muon>,pat::Muon,edm::refhelper::FindUsingAdvance<std::vector<pat::Muon>,pat::Muon> >",
  "LCGReflex/edm::Ref<std::vector<pat::PackedGenParticle>,pat::PackedGenParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PackedGenParticle>,pat::PackedGenParticle> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Jet>,pat::Jet,edm::refhelper::FindUsingAdvance<std::vector<pat::Jet>,pat::Jet> >",
  "LCGReflex/edm::RefVector<std::vector<pat::GenericParticle>,pat::GenericParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::GenericParticle>,pat::GenericParticle> >",
  "LCGReflex/edm::Ref<std::vector<pat::Particle>,pat::Particle,edm::refhelper::FindUsingAdvance<std::vector<pat::Particle>,pat::Particle> >",
  "LCGReflex/edm::Ref<std::vector<pat::GenericParticle>,pat::GenericParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::GenericParticle>,pat::GenericParticle> >",
  "LCGReflex/edm::RefVector<std::vector<pat::PackedCandidate>,pat::PackedCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::PackedCandidate>,pat::PackedCandidate> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Hemisphere>,pat::Hemisphere,edm::refhelper::FindUsingAdvance<std::vector<pat::Hemisphere>,pat::Hemisphere> >",
  "LCGReflex/edm::RefVector<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> >",
  "LCGReflex/edm::Ref<std::vector<pat::PFParticle>,pat::PFParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PFParticle>,pat::PFParticle> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Conversion>,pat::Conversion,edm::refhelper::FindUsingAdvance<std::vector<pat::Conversion>,pat::Conversion> >",
  "LCGReflex/edm::Ref<std::vector<pat::Tau>,pat::Tau,edm::refhelper::FindUsingAdvance<std::vector<pat::Tau>,pat::Tau> >",
  "LCGReflex/edm::Ref<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Tau>,pat::Tau,edm::refhelper::FindUsingAdvance<std::vector<pat::Tau>,pat::Tau> >",
  "LCGReflex/edm::RefVector<std::vector<pat::MET>,pat::MET,edm::refhelper::FindUsingAdvance<std::vector<pat::MET>,pat::MET> >",
  "LCGReflex/edm::Ref<std::vector<pat::PackedCandidate>,pat::PackedCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::PackedCandidate>,pat::PackedCandidate> >",
  "LCGReflex/edm::Ref<std::vector<pat::MET>,pat::MET,edm::refhelper::FindUsingAdvance<std::vector<pat::MET>,pat::MET> >",
  "LCGReflex/edm::Ref<std::vector<pat::Photon>,pat::Photon,edm::refhelper::FindUsingAdvance<std::vector<pat::Photon>,pat::Photon> >",
  "LCGReflex/edm::RefVector<std::vector<pat::PFParticle>,pat::PFParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PFParticle>,pat::PFParticle> >",
  "LCGReflex/edm::Ref<std::vector<pat::Muon>,pat::Muon,edm::refhelper::FindUsingAdvance<std::vector<pat::Muon>,pat::Muon> >",
  "LCGReflex/edm::Ref<std::vector<pat::Jet>,pat::Jet,edm::refhelper::FindUsingAdvance<std::vector<pat::Jet>,pat::Jet> >",
  "LCGReflex/edm::Ref<std::vector<pat::Hemisphere>,pat::Hemisphere,edm::refhelper::FindUsingAdvance<std::vector<pat::Hemisphere>,pat::Hemisphere> >",
  "LCGReflex/edm::RefVector<std::vector<pat::Electron>,pat::Electron,edm::refhelper::FindUsingAdvance<std::vector<pat::Electron>,pat::Electron> >",
  "LCGReflex/edm::Ref<std::vector<pat::Conversion>,pat::Conversion,edm::refhelper::FindUsingAdvance<std::vector<pat::Conversion>,pat::Conversion> >",
  "LCGReflex/edm::Ref<std::vector<pat::Electron>,pat::Electron,edm::refhelper::FindUsingAdvance<std::vector<pat::Electron>,pat::Electron> >",
  "LCGReflex/edm::RefVector<std::vector<pat::PackedGenParticle>,pat::PackedGenParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PackedGenParticle>,pat::PackedGenParticle> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::PackedGenParticle*,std::vector<pat::PackedGenParticle> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::PackedCandidate*,std::vector<pat::PackedCandidate> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Conversion*,std::vector<pat::Conversion> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Hemisphere*,std::vector<pat::Hemisphere> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::GenericParticle*,std::vector<pat::GenericParticle> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::PFParticle*,std::vector<pat::PFParticle> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::CompositeCandidate*,std::vector<pat::CompositeCandidate> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Particle*,std::vector<pat::Particle> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::MET*,std::vector<pat::MET> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Jet*,std::vector<pat::Jet> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Photon*,std::vector<pat::Photon> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Tau*,std::vector<pat::Tau> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Muon*,std::vector<pat::Muon> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::Electron*,std::vector<pat::Electron> >",
  "LCGReflex/__gnu_cxx::__normal_iterator<const pat::MHT*,std::vector<pat::MHT> >",
  "LCGReflex/edm::Association<std::vector<pat::PackedCandidate> >",
  "LCGReflex/edm::Wrapper<edm::Association<std::vector<pat::PackedCandidate> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Conversion>,pat::Conversion,edm::refhelper::FindUsingAdvance<std::vector<pat::Conversion>,pat::Conversion> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Hemisphere>,pat::Hemisphere,edm::refhelper::FindUsingAdvance<std::vector<pat::Hemisphere>,pat::Hemisphere> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::GenericParticle>,pat::GenericParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::GenericParticle>,pat::GenericParticle> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::PFParticle>,pat::PFParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PFParticle>,pat::PFParticle> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Particle>,pat::Particle,edm::refhelper::FindUsingAdvance<std::vector<pat::Particle>,pat::Particle> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::MET>,pat::MET,edm::refhelper::FindUsingAdvance<std::vector<pat::MET>,pat::MET> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Jet>,pat::Jet,edm::refhelper::FindUsingAdvance<std::vector<pat::Jet>,pat::Jet> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Photon>,pat::Photon,edm::refhelper::FindUsingAdvance<std::vector<pat::Photon>,pat::Photon> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Tau>,pat::Tau,edm::refhelper::FindUsingAdvance<std::vector<pat::Tau>,pat::Tau> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Muon>,pat::Muon,edm::refhelper::FindUsingAdvance<std::vector<pat::Muon>,pat::Muon> > >",
  "LCGReflex/edm::Wrapper<edm::RefVector<std::vector<pat::Electron>,pat::Electron,edm::refhelper::FindUsingAdvance<std::vector<pat::Electron>,pat::Electron> > >",
  "LCGReflex/edm::AtomicPtrCache<std::vector<edm::Ptr<reco::PFCandidate> > >",
  "LCGReflex/edm::AtomicPtrCache<edm::RefVector<std::vector<reco::Track>,reco::Track,edm::refhelper::FindUsingAdvance<std::vector<reco::Track>,reco::Track> > >",
  "LCGReflex/edm::RefProd<std::vector<pat::PackedCandidate> >",
  "LCGReflex/edm::reftobase::RefVectorHolder<edm::RefVector<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::GenericParticle>,pat::GenericParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::GenericParticle>,pat::GenericParticle> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::PFParticle>,pat::PFParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PFParticle>,pat::PFParticle> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Particle>,pat::Particle,edm::refhelper::FindUsingAdvance<std::vector<pat::Particle>,pat::Particle> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::MET>,pat::MET,edm::refhelper::FindUsingAdvance<std::vector<pat::MET>,pat::MET> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Jet>,pat::Jet,edm::refhelper::FindUsingAdvance<std::vector<pat::Jet>,pat::Jet> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Photon>,pat::Photon,edm::refhelper::FindUsingAdvance<std::vector<pat::Photon>,pat::Photon> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Tau>,pat::Tau,edm::refhelper::FindUsingAdvance<std::vector<pat::Tau>,pat::Tau> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Muon>,pat::Muon,edm::refhelper::FindUsingAdvance<std::vector<pat::Muon>,pat::Muon> > >",
  "LCGReflex/edm::reftobase::RefHolder<edm::Ref<std::vector<pat::Electron>,pat::Electron,edm::refhelper::FindUsingAdvance<std::vector<pat::Electron>,pat::Electron> > >",
  "LCGReflex/edm::reftobase::VectorHolder<reco::Candidate,edm::RefVector<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::GenericParticle>,pat::GenericParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::GenericParticle>,pat::GenericParticle> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::PFParticle>,pat::PFParticle,edm::refhelper::FindUsingAdvance<std::vector<pat::PFParticle>,pat::PFParticle> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate,edm::refhelper::FindUsingAdvance<std::vector<pat::CompositeCandidate>,pat::CompositeCandidate> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Particle>,pat::Particle,edm::refhelper::FindUsingAdvance<std::vector<pat::Particle>,pat::Particle> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::MET>,pat::MET,edm::refhelper::FindUsingAdvance<std::vector<pat::MET>,pat::MET> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Jet>,pat::Jet,edm::refhelper::FindUsingAdvance<std::vector<pat::Jet>,pat::Jet> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Photon>,pat::Photon,edm::refhelper::FindUsingAdvance<std::vector<pat::Photon>,pat::Photon> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Tau>,pat::Tau,edm::refhelper::FindUsingAdvance<std::vector<pat::Tau>,pat::Tau> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Muon>,pat::Muon,edm::refhelper::FindUsingAdvance<std::vector<pat::Muon>,pat::Muon> > >",
  "LCGReflex/edm::reftobase::Holder<reco::Candidate,edm::Ref<std::vector<pat::Electron>,pat::Electron,edm::refhelper::FindUsingAdvance<std::vector<pat::Electron>,pat::Electron> > >",
};
extern "C" void SEAL_CAPABILITIES (const char**& names, int& n )
{names = clnames;n = sizeof(clnames)/sizeof(char*);}
