# Addon: CL_GuildGPS
- - -
### Preliminary notes:
<i>Everything I code, <b>I do code in English</b>, and aimed for the English Client. I do no translations, no matter what.</i>
- - -
- <b>Target:</b> >= Turtle WoW 1.12
- <b>Requirements:</b> [CL_Library](https://github.com/CoderLotl/CL_Library).
- <b>Version:</b> Alpha 1.1
- <b>Description:</b> A simple 1st version of a guild GPS.
- - -
<b>Further Detail:</b>

A simple addon intended for sharing one's position with the own guild, making the own character visible for anyone in the guild using the same addon in the map.

<b>Currently</b> the addon allows only to see other characters at some location's map <i>(example: Mulgore, Durotar, Moonglade...)</i>, but not in the continental or global view.
That means that if you're at <i>Tirisfal Glades</i> and some of your guild mates is at <i>Tanaris</i>, you can see their location as if you both were in a party and they can see yours.

<b>TODO:</b>
~~- Add a tooltip to each dot on the map to display the character's name.~~
- Add capital cities.
- Add an option for disabling the position sharing (for those who want to hide from their guilds, for whatever reasons and time).
  
- - -

### Version History:

- <b>22/08/2025:</b>
    - Added a tooltip for the dots representing characters on the map. They display race, class, level, zone, and coordinates.
    - Started to implement World View dots. <b>Kalimdor</b> is almost finished. <b>Eastern Kingdoms</b> is a mess.
    - Continental View is still not implemented. It may <i>appear</i> to work, but it's just because I wanted to test it. <b>PLEASE DON'T MIND IT. I NEED TO FIX THE WORLD VIEW BEFORE TACKLING THAT.</b>

<b>NOTE:</b> Since Classic ~1.12 didn't have many of the cool things Retail had/has, and some other good stuff the devs kept them for the game's internal working, the addon won't send coords while the map is open, in order to not mess the experience for the user.