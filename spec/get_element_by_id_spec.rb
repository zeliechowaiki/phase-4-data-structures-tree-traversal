describe '#get_element_by_id' do
  let(:tree) { Tree.new({ value: 'houses_of_thrones', children: [{ value: 'house_baratheon', children: [{ value: 'steffon_baratheon', children: [{ value: 'robert_baratheon', children: [{ value: 'joffrey_baratheon', children: []}, { value: 'tommen_baratheon', children: []}, { value: 'gendry_baratheon', children: []}]}, { value: 'stannis_baratheon', children: []}]}]}, { value: 'house_targaryen', children: [{ value: 'aerys_targaryen', children: [{ value: 'daenerys_targaryen', children: []}, { value: 'viserys_targaryen', children: []}]}]}, { value: 'house_stark', children: [{ value: 'ned_stark', children: [{ value: 'arya_stark', children: []}, { value: 'bran_stark', children: []}, { value: 'robb_stark', children: []}, { value: 'rickon_stark', children: []}, { value: 'sansa_stark', children: []}]}, { value: 'jon_snow', children: []}]}, { value: 'house_lannister', children: [{ value: 'tywin_lannister', children: [{ value: 'jamie_lannister', children: []}, { value: 'cersei_lannister', children: []}, { value: 'tyrion_lannister', children: []}]}]}]}) }

  it 'finds the correct node' do
    arya_stark = { value: 'arya_stark', children: [] }
    expect(tree.get_element_by_id('arya_stark')).to eq(arya_stark)
  end

  it 'returns "Not found" if the node is not found' do
    expect(tree.get_element_by_id('theon_greyjoy')).to eq(nil)
  end
end
