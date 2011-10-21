class AddEvents < ActiveRecord::Migration
  def up
  Event.create(:name => 'qwertyui',	
    :date=> "2011.10.10",
				:text=> 
				%{<p>
				wbg[oitnb[okjfsn[bokjfsnbg[ns
				sbnsbgjosn[bgkjosn[b
				adbs[ogibns[obkjsng[b
				</p>},
						:user_id=>6,
				:repeat_id=>1)
  end

  def down
  Event.delete_all
  end
end
