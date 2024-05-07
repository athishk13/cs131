categories=("Music" "Entertainment" "Gaming" "Comedy")

for category in "${categories[@]}"
do

	grep "$category" youtubeUS.csv | cut -d ',' -f 2 >> "UnitedStates/$category.txt"
	wc -l "UnitedStates/$category.txt" >> ws5.txt
done

wc -l "United States/Music.txt" >> ws5.txt
wc -l "United States/Entertainment.txt" >> ws5.txt
wc -l "United States/Gaming.txt" >> ws5.txt
wc -l "United States/Comedy.txt" >> ws5.txt
