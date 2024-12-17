

import SwiftUI

struct FactsViewCQR: View {
    @State var timer: Timer?
    @State var selectedFact: FactCQR? = facts.randomElement()!
    @State var showSheet = false
    
    var cwrrc = "45245"
    var wrfvwr = 425245
    func vwrgvwrgv() -> String {
        return "vwrgvwrg4246246"
    }
    func wvrgvwvwrgvwrrg() {
        print("rgvvwrgvwrgv")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    var jrncfm = [352: "crfc"]
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 22, weight: .regular, color: .hex("F3D377"))
                                .padding(.top, 16)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150)
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 14.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("F3D377"))
                    .padding(.top, 12)
                
                ScrollView {
                    Text(fact.content)
                        .withFont(size: 19.5, weight: .thin)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                }
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("F3D377"))
                    
                    Rectangle()
                        .foregroundColor(.hex("402E27"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Color.hex("402E27")
                    .edgesIgnoringSafeArea(.all)
            }
    }
}

#Preview {
    ContentViewCQR(showLoading: false, selectedTab: .facts)
}


struct FactCQR {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactCQR] = [
    FactCQR(title: "Moon's Earthquake", content: "Moonquakes are seismic activities that occur on the Moon, first detected by seismometers left behind during the Apollo missions. Unlike Earth's quakes, which dissipate quickly due to the presence of water and tectonic plate movement, moonquakes can last for hours. This is because the Moon's crust is dry, rigid, and lacks the ability to absorb seismic energy. Scientists identified four types of moonquakes: deep quakes caused by tidal stresses, shallow quakes near the surface, thermal quakes from temperature changes, and impacts from meteorites. These findings challenge the idea that the Moon is completely geologically inactive and suggest it may still experience significant internal processes."),
    
    FactCQR(title: "The Moving Rocks", content: "At Racetrack Playa, a dry lakebed in California's Death Valley, rocks mysteriously move across the desert floor, leaving behind long trails in the mud. For decades, scientists were puzzled, as no one had ever observed the rocks moving. The mystery was solved when researchers discovered that during winter, thin sheets of ice form on the playa's surface. As the ice melts and breaks up under the sun, wind pushes the ice against the rocks, causing them to slide slowly across the slick mud. This phenomenon demonstrates the fascinating interplay of environmental conditions and highlights how natural forces can create seemingly inexplicable occurrences."),
    
    FactCQR(title: "Longest Animal Migration", content: "The Arctic tern, a small seabird, undertakes the longest migration of any animal on Earth. Each year, it travels an astonishing 70,000 kilometers, flying from its breeding grounds in the Arctic to the Antarctic and back. This journey allows the Arctic tern to experience nearly constant daylight, as it follows the summer seasons in both hemispheres. Using advanced tracking technology, scientists discovered that the terns fly in a zigzag pattern to take advantage of favorable winds and food sources along the way. The Arctic tern's extraordinary migration highlights the resilience of nature and the adaptations animals develop to survive in challenging environments."),
    
    FactCQR(title: "Shortest Commercial Flight", content: "The shortest scheduled commercial flight in the world takes place between the islands of Westray and Papa Westray in Scotland's Orkney archipelago. Covering a distance of just 2.7 kilometers, the flight lasts approximately 90 seconds under ideal weather conditions. Operated by Loganair, the flight primarily serves local residents, students, and medical professionals who rely on quick transportation between the islands. Despite its brevity, the route is essential for the community, as alternative travel by boat can take much longer and is dependent on tides and weather. This unique flight showcases the importance of small-scale transportation systems in remote areas."),
    
    FactCQR(title: "Oldest Living Tree", content: "Methuselah, a bristlecone pine tree located in California's White Mountains, is considered the oldest known living tree on Earth. Estimated to be over 4,800 years old, Methuselah has survived extreme weather conditions, poor soil, and the test of time. Bristlecone pines are uniquely adapted to harsh environments, growing slowly and developing dense wood that resists rot and insects. The exact location of Methuselah is kept secret to protect it from vandalism and human interference. This ancient tree serves as a living testament to nature's resilience and the remarkable longevity of some plant species."),
    
    FactCQR(title: "Deepest Ocean Point", content: "The Mariana Trench, located in the Pacific Ocean, contains the deepest point on Earth's surface. Known as the Challenger Deep, it reaches a depth of about 11,000 meters (36,000 feet). The pressure at this depth is over 1,000 times greater than at sea level, making it an incredibly hostile environment. Despite the extreme conditions, researchers have discovered organisms such as amphipods and microbial life thriving in the darkness. Only a handful of manned expeditions have reached the Challenger Deep, including dives by explorer James Cameron. The Mariana Trench remains one of the least explored and most mysterious places on the planet."),
    FactCQR(title: "Coldest Place Earth", content: "The coldest temperature ever recorded on Earth was measured in Antarctica at the Soviet Union's Vostok Station. On July 21, 1983, the temperature plummeted to −89.2°C (−128.6°F). The extreme cold results from the continent's high elevation, lack of moisture, and prolonged winter darkness. Despite these conditions, specialized organisms like ice algae and extremophile microbes thrive in the frozen landscape. This temperature highlights Antarctica's role as one of the most extreme and inhospitable environments on the planet."),
    
    FactCQR(title: "Heaviest Rainfall Record", content: "The heaviest rainfall ever recorded in a single minute occurred in Barot, Guadeloupe, on November 26, 1970. An astonishing 31.2 millimeters (1.23 inches) of rain fell in just 60 seconds. This extreme event was caused by intense thunderstorms and heavy cloud formations. Such rainfall rates are rare but can occur in tropical regions with high humidity and unstable atmospheric conditions. This record serves as a reminder of the power and unpredictability of nature's weather systems."),
    
    FactCQR(title: "Highest Waves Ever", content: "The largest wave ever recorded by humans occurred on July 9, 1958, in Lituya Bay, Alaska, when a massive landslide triggered a mega-tsunami. The wave reached a staggering height of 524 meters (1,720 feet), taller than the Empire State Building. The wave devastated the narrow bay, destroying vegetation and uprooting trees. Despite the immense size of the wave, only two fatalities occurred, as local residents managed to escape in their boats. This event remains a significant study of how natural disasters can trigger extreme oceanic waves."),
    
    FactCQR(title: "Longest Human Lifespan", content: "The longest verified human lifespan is held by Jeanne Calment of France, who lived to be 122 years and 164 days. Born in 1875, she witnessed the invention of airplanes, two World Wars, and the rise of modern technology. Calment credited her longevity to a balanced lifestyle, regular exercise, and a diet rich in olive oil. Her life story has inspired scientific research into aging, genetics, and lifestyle factors that influence human lifespan. Jeanne's remarkable longevity remains unmatched and continues to be celebrated worldwide."),
    
    FactCQR(title: "Largest Volcanic Eruption", content: "The largest volcanic eruption in recorded history occurred in 1815 when Mount Tambora in Indonesia exploded with unimaginable force. The eruption released an estimated 160 cubic kilometers of volcanic material into the atmosphere, leading to what is now called the 'Year Without a Summer' in 1816. Global temperatures dropped significantly, causing widespread crop failures, famine, and disease outbreaks across Europe, Asia, and North America. The Tambora eruption remains a sobering reminder of how natural disasters can impact the entire planet."),
    
    FactCQR(title: "Brightest Natural Light", content: "The brightest natural light on Earth comes from lightning strikes, which can release energy equivalent to one billion volts. During a single flash, the temperature of lightning can reach 30,000°C (54,000°F)—five times hotter than the surface of the Sun. Lightning is most common in tropical regions, with Venezuela's Catatumbo River experiencing near-constant storms that produce over 250 lightning strikes per hour. This unique phenomenon, called the Catatumbo Lightning, illuminates the night sky and contributes significantly to global atmospheric processes."),
    
    FactCQR(title: "World's Largest Desert", content: "Contrary to popular belief, the largest desert in the world is not the Sahara but Antarctica. Covering an area of 14 million square kilometers (5.4 million square miles), Antarctica qualifies as a desert due to its extremely low precipitation levels. Despite being covered in ice, the continent receives less than 50 millimeters of moisture annually. The freezing temperatures and harsh winds make it one of the most inhospitable places on Earth, yet microorganisms and seals manage to survive in these conditions. This icy desert highlights the diversity of Earth's extreme environments."),
    
    FactCQR(title: "Fastest Wind Speeds", content: "The fastest wind speed ever recorded occurred during a Category 5 tropical cyclone in 1996, when a gust reached 408 kilometers per hour (253 miles per hour) on Barrow Island, Australia. This extreme wind resulted from the intense low pressure and energy within the cyclone system. Such speeds can easily destroy buildings, uproot trees, and create catastrophic storm surges. Understanding extreme wind events helps scientists predict and mitigate the effects of powerful storms around the world."),
    
    FactCQR(title: "Tallest Waterfall Earth", content: "Angel Falls in Venezuela is the tallest uninterrupted waterfall in the world, with a total height of 979 meters (3,212 feet). The water originates from the Auyán-tepui mountain and plunges into the jungle below. Named after aviator Jimmie Angel, who 'discovered' it in 1933, the falls are surrounded by lush tropical rainforest. Due to its remote location, reaching Angel Falls requires boat travel and hiking, making it an awe-inspiring destination for adventurers. The falls symbolize nature's grandeur and the power of Earth's waterways."),
    
    FactCQR(title: "Deepest Cave World", content: "The Krubera Cave, located in the country of Georgia, is the deepest known cave in the world, plunging to a depth of over 2,200 meters (7,217 feet). Explorers have spent decades mapping its winding tunnels and subterranean rivers, encountering extreme conditions such as freezing temperatures, narrow passages, and underground waterfalls. Reaching the cave's deepest points requires specialized equipment and weeks of effort. The Krubera Cave remains one of the last frontiers for underground exploration and a testament to human determination to uncover Earth's hidden places."),
    FactCQR(title: "Oldest Tree Alive", content: "The oldest known tree is a bristlecone pine named Methuselah, located in California's White Mountains. Estimated to be over 4,800 years old, Methuselah has survived harsh climates and environmental changes. Its twisted, weathered appearance reflects its resilience, as it has withstood millennia of storms, droughts, and winds. The exact location is kept secret to protect the tree from damage, making Methuselah a living relic of Earth's ancient natural history."),
    
    FactCQR(title: "Widest Waterfall World", content: "Khone Falls, located on the Mekong River in Laos, is the widest waterfall in the world, stretching over 10 kilometers (6.2 miles). Although its height is only 21 meters, the sheer volume of water cascading down creates immense power. The falls are impassable for boats, blocking navigation on this part of the Mekong River. Despite its size, Khone Falls remains relatively unknown compared to more famous waterfalls like Niagara or Victoria Falls."),
    
    FactCQR(title: "Deepest Ocean Point", content: "The Challenger Deep, located in the Mariana Trench in the Pacific Ocean, is the deepest known point on Earth's seabed, plunging about 11,034 meters (36,201 feet). At these depths, the pressure is over 1,000 times greater than at sea level, creating an environment few species can survive. Only a handful of manned and unmanned missions have reached the bottom. Despite the extreme conditions, life forms like amphipods and microbial communities thrive in this unexplored abyss."),
    
    FactCQR(title: "Shortest River Earth", content: "The Roe River in Montana, USA, holds the record for the shortest river in the world, measuring just 61 meters (200 feet) long. Flowing from Giant Springs into the Missouri River, its clear, cool water is fed by underground springs. Despite its size, the Roe River attracts visitors fascinated by its unique title. Its brief journey serves as a reminder that natural wonders come in all shapes and sizes, no matter how small."),
    
    FactCQR(title: "The Oldest Book", content: "The oldest surviving book, the Etruscan Gold Book, dates back to around 600 BCE. Made of six gold sheets bound together, the book was discovered in a tomb in Bulgaria. It contains ancient inscriptions and depictions of gods, suggesting it was a religious artifact. Its construction from pure gold has preserved it for over 2,500 years, offering a rare glimpse into one of humanity's earliest recorded writings and cultural beliefs."),
    
    FactCQR(title: "Strongest Animal Strength", content: "The dung beetle holds the title of the strongest animal relative to its body weight. It can pull loads over 1,000 times its own weight—equivalent to a human lifting six double-decker buses. Dung beetles use their strength to roll and bury dung, which they feed on and use for nesting. Their incredible power and determination make them essential contributors to ecosystems by recycling nutrients and aerating soil."),
    
    FactCQR(title: "Largest Living Bird", content: "The ostrich is the largest living bird, standing up to 2.7 meters (9 feet) tall and weighing over 150 kilograms (330 pounds). Although flightless, ostriches are fast runners, reaching speeds of up to 70 kilometers per hour (43 miles per hour) to escape predators. Native to Africa, these birds lay the largest eggs of any living species, with each egg weighing as much as 1.4 kilograms. Ostriches are a symbol of speed, strength, and adaptability in harsh environments."),
    
    FactCQR(title: "Oldest Known Fossil", content: "The oldest known fossil belongs to ancient microbial life and was discovered in Western Australia. Estimated to be over 3.5 billion years old, these fossilized stromatolites were formed by cyanobacteria, the first organisms to produce oxygen through photosynthesis. Their discovery has deepened our understanding of early Earth's history, revealing how life began and gradually transformed the planet's atmosphere to support complex organisms."),
    
    FactCQR(title: "Largest Iceberg Ever", content: "The largest iceberg ever recorded, named Iceberg B-15, broke off Antarctica's Ross Ice Shelf in 2000. It measured an astonishing 295 kilometers (183 miles) long and 37 kilometers (23 miles) wide, covering an area larger than Jamaica. Iceberg B-15 drifted through the Southern Ocean for years before breaking apart into smaller pieces. Its size and longevity highlighted the massive scale of ice movement in Antarctica and its potential impact on global ocean currents."),
    
    FactCQR(title: "First Human In Space", content: "On April 12, 1961, Yuri Gagarin became the first human to travel into space aboard the Soviet spacecraft Vostok 1. He completed one orbit of Earth in 108 minutes, reaching a maximum altitude of 327 kilometers (203 miles). Gagarin's historic journey marked the beginning of human space exploration and remains a significant achievement in science and technology. His words, 'Poyekhali!' (Let's go!), continue to inspire generations of astronauts and space enthusiasts worldwide."),
    FactCQR(title: "Fastest Wind Speed", content: "The fastest wind speed ever recorded on Earth occurred during a tropical cyclone over Barrow Island, Australia, in 1996. The wind gust reached an astonishing 408 kilometers per hour (253 miles per hour). This record-breaking event demonstrates the immense power of nature during extreme weather, reminding us of the importance of preparedness in hurricane-prone regions."),
    
    FactCQR(title: "Smallest Country World", content: "Vatican City, an independent city-state within Rome, Italy, is the smallest country in the world. It covers just 44 hectares (110 acres) and serves as the spiritual and administrative center of the Roman Catholic Church. Despite its small size, it houses iconic landmarks such as St. Peter's Basilica and the Sistine Chapel, attracting millions of visitors annually."),
    
    FactCQR(title: "The Tallest Tree", content: "The tallest known tree is a coast redwood named Hyperion, standing at a height of 115.92 meters (380.3 feet). Discovered in California's Redwood National Park in 2006, Hyperion remains hidden to protect it from damage. These ancient trees can live for over 2,000 years, playing a crucial role in maintaining forest ecosystems by storing carbon and providing habitats for countless species."),
    
    FactCQR(title: "Largest Desert Earth", content: "The largest desert on Earth is the Antarctic Desert, spanning approximately 14 million square kilometers (5.4 million square miles). Despite being covered in ice, Antarctica receives very little precipitation, classifying it as a desert. Its harsh conditions make it one of the most extreme and isolated environments, yet it plays a key role in regulating Earth's climate."),
    
    FactCQR(title: "First Moon Landing", content: "On July 20, 1969, NASA's Apollo 11 mission made history when astronauts Neil Armstrong and Buzz Aldrin became the first humans to set foot on the Moon. Armstrong's famous words, 'That's one small step for man, one giant leap for mankind,' marked a monumental achievement in human exploration and inspired generations to pursue advancements in space travel."),
    
    FactCQR(title: "Deepest Cave Earth", content: "The Veryovkina Cave in Georgia is the deepest known cave in the world, plunging to a depth of 2,212 meters (7,257 feet). Discovered in the Caucasus Mountains, the cave consists of narrow passages and vertical drops that challenge even the most experienced explorers. Its depths remain a mystery, showcasing the uncharted wonders beneath Earth's surface."),
    
    FactCQR(title: "Brightest Star Visible", content: "The brightest star visible from Earth, excluding the Sun, is Sirius, located in the constellation Canis Major. It shines so brightly because of its proximity to Earth—just 8.6 light-years away—and its intrinsic luminosity. Known as the 'Dog Star,' Sirius has been a vital navigational aid and cultural symbol for civilizations throughout history."),
    
    FactCQR(title: "Longest Animal Migration", content: "The Arctic tern holds the record for the longest migration of any animal. These small seabirds travel up to 70,000 kilometers (43,500 miles) annually, flying from their breeding grounds in the Arctic to their wintering grounds in Antarctica and back. This incredible journey allows them to experience two summers every year, making them masters of endurance and navigation."),
    
    FactCQR(title: "Hottest Recorded Year", content: "The hottest year on record globally was 2016, according to NASA and NOAA. That year, global temperatures were pushed to unprecedented highs due to a combination of human-caused climate change and a strong El Niño event. This year highlighted the ongoing impacts of global warming, with rising temperatures leading to melting ice caps, extreme weather events, and changing ecosystems."),
    
    FactCQR(title: "Largest Volcano Earth", content: "Mauna Loa, located in Hawaii, is the largest volcano on Earth. Covering over 5,000 square kilometers (19,000 square miles) and rising 10.6 kilometers (6.6 miles) from its base on the ocean floor, Mauna Loa is both massive and active. Its eruptions have shaped the Hawaiian Islands for millions of years, creating breathtaking landscapes and rich ecosystems.")
]
