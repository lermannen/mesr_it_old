require 'test_helper'

class FeedTest < ActiveSupport::TestCase
  def setup
  	data = <<END 
  	<rss version="2.0"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:wfw="http://wellformedweb.org/CommentAPI/"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:atom="http://www.w3.org/2005/Atom"
	xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"
	xmlns:slash="http://purl.org/rss/1.0/modules/slash/"
	xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd"
xmlns:rawvoice="http://www.rawvoice.com/rawvoiceRssModule/"
>

<channel>
	<title>Retrograde &#8211; A Retro Gaming Podcast</title>
	<atom:link href="http://www.csicon.net/r/feed" rel="self" type="application/rss+xml" />
	<link>http://www.csicon.net/r/</link>
	<description>Retro games reviewed, the CSICON way.</description>
	<lastBuildDate>Wed, 26 Nov 2014 06:20:49 +0000</lastBuildDate>
	<language>en-GB</language>
		<sy:updatePeriod>hourly</sy:updatePeriod>
		<sy:updateFrequency>1</sy:updateFrequency>
	<generator>http://wordpress.org/?v=4.0.1</generator>
<!-- podcast_generator="Blubrry PowerPress/5.0.9" mode="advanced" -->
	<itunes:new-feed-url>http://www.csicon.net/r/feed/</itunes:new-feed-url>
	<itunes:summary>Retrograde is a fortnightly retro gaming podcast on the CSICON Network. Each episode focuses on a single game from yesteryear chosen by one of the Retrograde team, who - after playing the game for two weeks - sit down and talk about it, its legacy and overall impact on the gaming world.</itunes:summary>
	<itunes:author>The CSICON Network</itunes:author>
	<itunes:explicit>clean</itunes:explicit>
	<itunes:image href="http://www.csicon.net/wp-content/uploads/2013/03/Retrograde.png" />
	<itunes:owner>
		<itunes:name>The CSICON Network</itunes:name>
		<itunes:email>breki@csicon.net</itunes:email>
	</itunes:owner>
	<managingEditor>breki@csicon.net (The CSICON Network)</managingEditor>
	<copyright>Attribution 2.0 Generic (CC BY 2.0) - http://creativecommons.org/licenses/by/2.0/</copyright>
	<itunes:subtitle>Retro games reviewed, the CSICON way.</itunes:subtitle>
	<itunes:keywords>retro,gaming,csicon,nes,snes,gamecube,playstation,zelda,mario</itunes:keywords>
	<image>
		<title>Retrograde &#8211; A Retro Gaming Podcast</title>
		<url>http://cdn.csicon.org/images/Retrograde.png</url>
		<link>http://www.csicon.net/r/</link>
	</image>
	<itunes:category text="Games &amp; Hobbies">
		<itunes:category text="Video Games" />
	</itunes:category>
	<itunes:category text="Comedy" />
	<itunes:category text="Games &amp; Hobbies">
		<itunes:category text="Video Games" />
	</itunes:category>
		<rawvoice:rating>TV-G</rawvoice:rating>
		<rawvoice:location>Brighton, Great Britain</rawvoice:location>
		<rawvoice:frequency>Biweekly</rawvoice:frequency>
	<item>
        <title>Retrograde #64: Tomb Raider 2</title>
    <link>http://www.csicon.net/r64/</link>
		<comments>http://www.csicon.net/r64/#comments</comments>
		<pubDate>Wed, 19 Nov 2014 08:40:20 +0000</pubDate>
		<dc:creator><![CDATA[Jack Marshall]]></dc:creator>
				<category><![CDATA[Retrograde]]></category>
		<category><![CDATA[Tomb Raider 2]]></category>

		<guid isPermaLink="false">http://www.csicon.net/?p=44012</guid>
		<description><![CDATA[<div class="fright"><img src="http://www.csicon.net/wp-content/uploads/2013/03/Retrograde.png"></div>The Retrograde team finally size up one of the <em>Tomb Raider</em> games this week. We will be back flipping, shooting dogs, and accidentally pulling out flares so it promises to be a hoot!<span id="more-44012"></span>

Show notes and links:
<ul>
	<li><a href="https://www.youtube.com/watch?v=kaYfq9fLF6Q">Tomb Raider 2 Speed Run</a></li>
</ul>]]></description>
				<content:encoded><![CDATA[<div class="fright"><img src="http://www.csicon.net/wp-content/uploads/2013/03/Retrograde.png"></div>The Retrograde team finally size up one of the <em>Tomb Raider</em> games this week. We will be back flipping, shooting dogs, and accidentally pulling out flares so it promises to be a hoot!<span id="more-44012"></span>

Show notes and links:
<ul>
	<li><a href="https://www.youtube.com/watch?v=kaYfq9fLF6Q">Tomb Raider 2 Speed Run</a></li>
</ul>]]></content:encoded>
			<wfw:commentRss>http://www.csicon.net/r64/feed/</wfw:commentRss>
		<slash:comments>0</slash:comments>
<enclosure url="http://www.podtrac.com/pts/redirect.mp3/feeds.soundcloud.com/stream/177623598-breki-tomasson-retrograde-64-tomb-raider-2.mp3" length="46852524" type="audio/mpeg" />
			<itunes:keywords>Tomb Raider 2</itunes:keywords>
	<itunes:subtitle>The Retrograde team finally size up one of the Tomb Raider games this week. We will be back flipping, shooting dogs, and accidentally pulling out flares so it promises to be a hoot! - Show notes and links:  Tomb Raider 2 Speed Run</itunes:subtitle>
		<itunes:summary>The Retrograde team finally size up one of the Tomb Raider games this week. We will be back flipping, shooting dogs, and accidentally pulling out flares so it promises to be a hoot!

Show notes and links:

	Tomb Raider 2 Speed Run</itunes:summary>
		<itunes:author>The CSICON Network</itunes:author>
		<itunes:image href="http://www.csicon.net/wp-content/uploads/2013/03/Retrograde.png" />
		<itunes:explicit>clean</itunes:explicit>
		<itunes:duration>1:05:04</itunes:duration>
	</item>
	</channel>
</rss>
END
    @feed = Feed.new(name: "Example Feed", uri: "http://www.exaple.com", data: data)
  end

  test "should be valid" do
    assert @feed.valid?
  end

  test "name should be present" do
    @feed.name = ""
    assert_not @feed.valid?
  end

  test "name should not be too long" do
  	@feed.name = "a" * 51
  	assert_not @feed.valid?
  end

  test "uri should be present" do
    @feed.uri = "     "
    assert_not @feed.valid?
  end

  test "data should be valid xml" do
  	assert @feed.valid?
  end

  test "data should reject invalid xml" do
  	@feed.data = "@feed.data"
  	assert_not @feed.valid?
  end

  test "names should be unique" do
  	duplicate_feed = @feed.dup
  	@feed.save
  	assert_not duplicate_feed.valid?
  end
end
