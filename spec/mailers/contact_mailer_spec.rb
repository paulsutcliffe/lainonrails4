require "spec_helper"

describe ContactMailer, :type => :mailer do
  describe "new_contact" do
    contact = FactoryGirl.create(:contact)
    locale  = {"pe" => ["pe", "Perú", "contacto@lainadelgaza.net"]}
    let(:contact) { contact }
    let(:locale)  { locale }
    let(:mail)    { ContactMailer.new_contact(contact, locale["pe"][0]) }

    it "renders the headers" do
      expect(mail.subject).to eq("Mensaje desde la web de LAIN #{locale["pe"][1]}")
      expect(mail.to).to eq([locale["pe"][2]])
      expect(mail.from).to eq(["info@lainadelgaza.net"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match( locale["pe"][1] )
    end
  end

end
