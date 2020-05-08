Then /the "(.*)" property should be "(.*)"$/ do |property, value|
    expect(find('tr', text: property)).to have_content(value)
end

Then /^(?:|I )should see an image named "([^"]*)"$/ do |name|
	expect(page).to have_css("img[src$='#{name}']")
end

Then /^(?:|I )should see (?:a|an) "([^"]*)" plot for matrix "([^"]*)"$/ do |plot_type, name|
	case plot_type
	when "pattern"
		expect(page).to have_css("img[src*='#{name}.']")
		expect(page).to have_css("img[alt*='Nonzero Pattern of ']")
	when "graph"
		expect(page).to have_css("img[src*='#{name}_graph.']")
		expect(page).to have_css("img[alt*='Force-Directed Graph Visualization of ']")
	when "APlusAT"
		expect(page).to have_css("img[src*='#{name}_APlusAT_graph.']")
		expect(page).to have_css(%Q|img[alt*="Graph Visualization of A+A' for "]|)
	when "svd"
		expect(page).to have_css("img[src*='#{name}_svd.']")
		expect(page).to have_css("img[alt*='Singular Values of ']")
	when "gplot"
		expect(page).to have_css("img[src*='#{name}_gplot.']")
		expect(page).to have_css("img[alt*='3D Graph Plot of ']")
	when "dmperm"
		expect(page).to have_css("img[src*='#{name}_dmperm.']")
		expect(page).to have_css("img[alt*='Dulmage-Mendelsohn Permutation of ']")
	when "scc"
		expect(page).to have_css("img[src*='#{name}_scc.']")
		expect(page).to have_css("img[alt*='Connected Components of the Bipartite Graph of ']")
	end
end

Then /^(?:|I )should not see (?:a|an) "([^"]*)" plot for matrix "([^"]*)"$/ do |plot_type, name|
	case plot_type
	when "pattern"
		expect(page).not_to have_css("img[src*='#{name}.']")
		expect(page).not_to have_css("img[alt*='Nonzero Pattern of ']")
	when "graph"
		expect(page).not_to have_css("img[src*='#{name}_graph.']")
		expect(page).not_to have_css("img[alt*='Force-Directed Graph Visualization of ']")
	when "APlusAT"
		expect(page).not_to have_css("img[src*='#{name}_APlusAT_graph.']")
		expect(page).not_to have_css(%Q|img[alt*="Graph Visualization of A+A' for "]|)
	when "svd"
		expect(page).not_to have_css("img[src*='#{name}_svd.']")
		expect(page).not_to have_css("img[alt*='Singular Values of ']")
	when "gplot"
		expect(page).not_to have_css("img[src*='#{name}_gplot.']")
		expect(page).not_to have_css("img[alt*='3D Graph Plot of ']")
	when "dmperm"
		expect(page).not_to have_css("img[src*='#{name}_dmperm.']")
		expect(page).not_to have_css("img[alt*='Dulmage-Mendelsohn Permutation of ']")
	when "scc"
		expect(page).not_to have_css("img[src*='#{name}_scc.']")
		expect(page).not_to have_css("img[alt*='Connected Components of the Bipartite Graph of ']")
	end
end