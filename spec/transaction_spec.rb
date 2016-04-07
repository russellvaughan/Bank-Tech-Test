describe Transaction do 

	it { is_expected.to respond_to(:process).with(2).arguments }

end
