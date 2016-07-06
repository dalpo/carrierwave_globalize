require 'spec_helper'

describe CarrierwaveGlobalize do
  it 'has a version number' do
    expect(CarrierwaveGlobalize::VERSION).not_to be nil
  end

  context 'with :en as locale' do
    before { I18n.locale = :en }

    let!(:asset) do
      Asset.create!(
        name: 'sample',
        attachment: File.open(data_path('ramen.jpg'))
      )
    end

    subject { asset }

    its(:attachment) { is_expected.to be_an_instance_of(AttachmentUploader) }

    it 'should store an :en translation record' do
      expect(asset.translations.size).to eq 1
      expect(asset.translation.locale).to eq :en
    end

    it 'should store the correct file' do
      expect(asset.attachment.filename).to eq 'ramen.jpg'
    end

    context 'with :it as current locale' do
      before do
        I18n.locale = :it
        asset.reload
        asset.attachment = File.open(data_path('sashimi.jpg'))
        asset.save!
      end

      it 'should store an :it translation record' do
        expect(asset.translations.size).to eq 2
        expect(asset.translation.locale).to eq :it
      end

      it 'should store the correct file' do
        expect(asset.attachment.filename).to eq 'sashimi.jpg'
      end

      it 'should not override the english attachment' do
        I18n.locale = :en
        expect(asset.attachment.filename).to eq 'ramen.jpg'
      end
    end
  end
end
