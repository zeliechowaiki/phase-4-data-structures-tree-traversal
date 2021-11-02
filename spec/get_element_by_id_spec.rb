describe '#get_element_by_id' do
  # <body>
  #   <div id="main">
  #     <h1 id="heading">Title</h1>
  #     <h2>Subtitle</h2>
  #   </div>
  # </body>
  let(:document) do
    Tree.new(
      {
        tag_name: 'body',
        id: nil,
        children: [
          {
            tag_name: 'div',
            id: 'main',
            children: [
              {
                tag_name: 'h1',
                id: 'heading',
                text_content: 'Title',
                children: []
              },
              {
                tag_name: 'h2',
                id: nil,
                text_content: 'Subitle',
                children: []
              }
            ]
          }
        ]
      }
    )
  end

  it 'finds the correct node' do
    expect(document.get_element_by_id('heading')).to eq({
      tag_name: 'h1',
      id: 'heading',
      text_content: 'Title',
      children: []
    })
  end

  it 'returns nil if the node is not found' do
    expect(document.get_element_by_id('nope')).to eq(nil)
  end
end
