Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C188935045E
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 18:21:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA31C38385D
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 12:21:02 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTP id 04AFD3837D9
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 12:20:53 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id DBD9C42FBA
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 19:18:45 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 4108F9FF4C
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 19:18:45 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id boT6faZ07PVX for <usrp-users@lists.ettus.com>;
	Wed, 31 Mar 2021 19:18:43 +0300 (IDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	by o.dtnt.email (Postfix) with ESMTPSA id CD7DD9F9C5
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 19:18:42 +0300 (IDT)
Received: by mail-ot1-f54.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so19467336ote.6
        for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 09:18:42 -0700 (PDT)
X-Gm-Message-State: AOAM5305ZWuUkM2/KzdyX3KLMRY+TA6ACx2ELYLf1Bu6rE6rKIp/6vQ4
	3oDx0bx9YuIZJ2cy7as0K+4MrB2X5mWvCv6xG0U=
X-Google-Smtp-Source: ABdhPJzAhuIgQMr7BxWLrJzM1d66xem1aGtsX9Y0Vm9eBMiuNsHXi6oRG4gyLxGTvyTIHaI/9XRBltOWOxY4w83K170=
X-Received: by 2002:a05:6830:144e:: with SMTP id w14mr3282396otp.0.1617207520218;
 Wed, 31 Mar 2021 09:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <161720170353.3586.4697298103608832238@mm2.emwd.com>
In-Reply-To: <161720170353.3586.4697298103608832238@mm2.emwd.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Wed, 31 Mar 2021 19:18:29 +0300
X-Gmail-Original-Message-ID: <CACDReSwMd2A1V2qL=R6dGLW-Hd+N83Vej=Lg9EvJNvOyaBzv9Q@mail.gmail.com>
Message-ID: <CACDReSwMd2A1V2qL=R6dGLW-Hd+N83Vej=Lg9EvJNvOyaBzv9Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: DBD9C42FBA.A6D66
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: M6MEFMQK4EJLYR2ZQKNQ6SC524NC77XU
X-Message-ID-Hash: M6MEFMQK4EJLYR2ZQKNQ6SC524NC77XU
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M6MEFMQK4EJLYR2ZQKNQ6SC524NC77XU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0717704162366511806=="

--===============0717704162366511806==
Content-Type: multipart/alternative; boundary="000000000000c552c705bed777ad"

--000000000000c552c705bed777ad
Content-Type: text/plain; charset="UTF-8"

Marcus Hi,

If the gps_time "sensor" returns a value only once per second how come I
manage to read it sometimes in less than 1 second?
In my code the situation is worse than the simple example below. It usually
takes more than 1 sec. to read it and sometimes even 1.7 or 1.8 seconds. I
don't understand how the size or complexity of the code affects the time it
takes to read gps_time.

How to treat your comment about the use of GPSD and good synchronization as
it relates to code?
Should I not change the time source in code and go through the whole
process of synchronization using gps_time?
Can I "assume" the systems are synced just by the effect they were
connected enough time to a GPS antenna? and then just access their time -
radio_ctrl->get_time_last_pps()?
How to use this information programmatically?

Regards,
Ofer Saferman


---------- Forwarded message ----------
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: usrp-users@lists.ettus.com
> Cc:
> Bcc:
> Date: Wed, 31 Mar 2021 09:19:20 -0400
> Subject: [USRP-users] Re: Intermittent problem with GPS synchronization
> for multiple E310 units
> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
> > Hello,
> >
> > I have a system that uses 4 USRP E310 units.
> > Each unit is connected to a GPS antenna.
> > Time source is set to gpsdo.
> >
> > I run the same software remotely on all 4 units from a PC. Software
> > runs on the units themselves.
> > I print out messages to show if the reference is locked and the GPS is
> > locked and also what is the GPS time that each unit was synchronized to.
> > In some cases the units synchronize to the same GPS time and in other
> > cases there is 1 second difference between GPS time of different units
> > thus causing the units to be unsynchronized.
> >
> > I was wondering how this was possible.
> > The synchronization process (documented by others in the past on the
> > mailing list) is:
> > * Wait for ref and GPS lock
> > * Wait for a pps edge (get_time_last_pps)
> > * Read gps_time value
> > * Sync system clock to GPS clock on next PPS edge (set_time_next_pps +
> > 1.0 sec)
> >
> > Something similar is also implemented in the sync_to_gps example.
> >
> > In order to debug the problem I decided to time the reading of the
> > gps_time sensor to see if there is a clue why different units miss the
> > PPS edge and lock to a time of the next second.
> >
> > I was very surprised to find out that it takes between 0.9 to 1.2
> > seconds to read the gps_time sensor.
> > This explains exactly why it is difficult to synchronize multiple
> > units to the same time instance because if one unit takes 0.9 seconds
> > to read the sensor and the other unit takes 1.2 seconds to read the
> > sensor then each unit will lock on a different GPS time 1 second apart.
> >
> > Here is a short software I wrote to time the gps_time sensor reading:
> > ---------------------------------------------------------
> > #include <uhd/utils/safe_main.hpp>
> > #include <uhd/device3.hpp>
> > //#include <uhd/usrp/multi_usrp.hpp>
> > #include <uhd/types/sensors.hpp>
> > #include <boost/program_options.hpp>
> > #include <boost/format.hpp>
> > #include <chrono>
> > #include <iostream>
> >
> > namespace po = boost::program_options;
> >
> > int UHD_SAFE_MAIN(int argc, char *argv[]){
> >
> > std::string args;
> >
> >     po::options_description desc("Allowed options");
> >     desc.add_options()
> >         ("help", "help message")
> > ("args", po::value<std::string>(&args)->default_value(""), "device
> > address args")
> >     ;
> >
> >     po::variables_map vm;
> >     po::store(po::parse_command_line(argc, argv, desc), vm);
> >     po::notify(vm);
> >
> >     //print the help message
> >     if (vm.count("help")){
> >         std::cout << boost::format("Timinig of gps_time: %s") % desc
> > << std::endl;
> >         return ~0;
> >     }
> >
> > uhd::device3::sptr usrp = uhd::device3::make(args);
> > //uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);
> >
> > uhd::sensor_value_t gps_time =
> >
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
> > //uhd::sensor_value_t gps_time = usrp->get_mboard_sensor("gps_time", 0);
> >
> > std::chrono::steady_clock::time_point start_time, end_time;
> > std::chrono::duration<double> time_diff; // Default unit for duration
> > is seconds.
> >
> > for(int ii=0 ; ii<20 ; ii++)
> > {
> > start_time = std::chrono::steady_clock::now();
> > gps_time =
> >
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
> > //gps_time = usrp->get_mboard_sensor("gps_time", 0);
> > end_time = std::chrono::steady_clock::now();
> > time_diff = end_time - start_time;
> >
> > std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: " <<
> > int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<
> > (boost::format("%0.9f") % time_diff.count()) << " seconds" << std::endl;
> > }
> >
> >     return 0;
> > }
> >
> --------------------------------------------------------------------------------
> > Here are the results of one typical run:
> > gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 seconds
> > gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 seconds
> > gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 seconds
> > gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 seconds
> > gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 seconds
> > gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 seconds
> > gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 seconds
> > gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 seconds
> > gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 seconds
> > gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 seconds
> > gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 seconds
> > gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 seconds
> > gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 seconds
> > gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 seconds
> > gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 seconds
> > gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 seconds
> > gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 seconds
> > gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 seconds
> > gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 seconds
> > gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 seconds
> >
> -----------------------------------------------------------------------------------
> > In the code you can find commented out the usual way to access the
> > sensor using multi_usrp and get_mboard_sensor. The results are quite
> > similar.
> >
> > I wonder if anybody encountered this issue before or addressed it in
> > any way.
> > I wonder why it takes so much time to get the value of GPS time when
> > it is a simple parsing of an NMEA message coming from the GPS receiver.
> >
> > I am trying now various tricks to make the software robust and immune
> > to this phenomenon. I can report my findings further if I succeed to
> > find a workaround if there is any interest.
> >
> > Can anyone comment on this? Can this be resolved so that the reading
> > of gps_time will be much faster?
> > Is there another way to get GPS time faster indirectly? Maybe from
> > parsing NMEA messages ourselves?
> >
> > Regards,
> > Ofer Saferman
> >
> This probably has to do with the way that particular "sensor" works--the
> NMEA time value is only emitted once per second, and the
>    code for that sensor has some heuristic for determining "freshness"
> of the value.
>
> I'll point out that on E310, the system is configured to use GPSD, so
> that the Linux system time across several systems that have all been
>    "listening" to GPS for a while will all be synchronized quite well.
>
>
>
>

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000c552c705bed777ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Marcus Hi,</div><div dir=3D"ltr"><br></di=
v><div>If the gps_time &quot;sensor&quot; returns a value only once per sec=
ond how come I manage to read it sometimes in less than 1 second?</div><div=
>In my code the situation is worse than the simple example below. It usuall=
y takes more than 1 sec. to read it and sometimes even 1.7 or 1.8 seconds. =
I don&#39;t understand how the size or complexity of the code affects the t=
ime it takes to read gps_time.<br></div><div dir=3D"ltr"><br></div><div>How=
 to treat your comment about the use of GPSD and good synchronization as it=
 relates to code?</div><div>Should I not change the time source in code and=
 go through the whole process of synchronization using gps_time?</div><div>=
Can I &quot;assume&quot; the systems are synced just by the effect they wer=
e connected enough time to a GPS antenna? and then just access their time -=
 radio_ctrl-&gt;get_time_last_pps()?</div><div>How to use this information =
programmatically?<br></div><div><br></div><div>Regards,</div><div>Ofer Safe=
rman<br></div><br><div class=3D"gmail_quote"><br><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">---------- Forwarded message ----------<br>From:=C2=
=A0&quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>To:=C2=A0<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a><br>Cc:=C2=A0<br>Bcc:=C2=A0<br>Date:=C2=A0Wed, 31 Mar 2021 09:19:2=
0 -0400<br>Subject:=C2=A0[USRP-users] Re: Intermittent problem with GPS syn=
chronization for multiple E310 units<br>On 03/31/2021 06:49 AM, Ofer Saferm=
an wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have a system that uses 4 USRP E310 units.<br>
&gt; Each unit is connected to a GPS antenna.<br>
&gt; Time source is set to gpsdo.<br>
&gt;<br>
&gt; I run the same software remotely on all 4 units from a PC. Software <b=
r>
&gt; runs on the units themselves.<br>
&gt; I print out messages to show if the reference is locked and the GPS is=
 <br>
&gt; locked and also what is the GPS time that each unit was synchronized t=
o.<br>
&gt; In some cases the units synchronize to the same GPS time and in other =
<br>
&gt; cases there is 1 second difference between GPS time of different units=
 <br>
&gt; thus causing the units to be unsynchronized.<br>
&gt;<br>
&gt; I was wondering how this was possible.<br>
&gt; The synchronization process (documented by others in the past on the <=
br>
&gt; mailing list) is:<br>
&gt; * Wait for ref and GPS lock<br>
&gt; * Wait for a pps edge (get_time_last_pps)<br>
&gt; * Read gps_time value<br>
&gt; * Sync system clock to GPS clock on next PPS edge (set_time_next_pps +=
 <br>
&gt; 1.0 sec)<br>
&gt;<br>
&gt; Something similar is also implemented in the sync_to_gps example.<br>
&gt;<br>
&gt; In order to debug the problem I decided to time the reading of the <br>
&gt; gps_time sensor to see if there is a clue why different units miss the=
 <br>
&gt; PPS edge and lock to a time of the next second.<br>
&gt;<br>
&gt; I was very surprised to find out that it takes between 0.9 to 1.2 <br>
&gt; seconds to read the gps_time sensor.<br>
&gt; This explains exactly why it is difficult to synchronize multiple <br>
&gt; units to the same time instance because if one unit takes 0.9 seconds =
<br>
&gt; to read the sensor and the other unit takes 1.2 seconds to read the <b=
r>
&gt; sensor then each unit will lock on a different GPS time 1 second apart=
.<br>
&gt;<br>
&gt; Here is a short software I wrote to time the gps_time sensor reading:<=
br>
&gt; ---------------------------------------------------------<br>
&gt; #include &lt;uhd/utils/safe_main.hpp&gt;<br>
&gt; #include &lt;uhd/device3.hpp&gt;<br>
&gt; //#include &lt;uhd/usrp/multi_usrp.hpp&gt;<br>
&gt; #include &lt;uhd/types/sensors.hpp&gt;<br>
&gt; #include &lt;boost/program_options.hpp&gt;<br>
&gt; #include &lt;boost/format.hpp&gt;<br>
&gt; #include &lt;chrono&gt;<br>
&gt; #include &lt;iostream&gt;<br>
&gt;<br>
&gt; namespace po =3D boost::program_options;<br>
&gt;<br>
&gt; int UHD_SAFE_MAIN(int argc, char *argv[]){<br>
&gt;<br>
&gt; std::string args;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0po::options_description desc(&quot;Allowed options&=
quot;);<br>
&gt;=C2=A0 =C2=A0 =C2=A0desc.add_options()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(&quot;help&quot;, &quot;help message=
&quot;)<br>
&gt; (&quot;args&quot;, po::value&lt;std::string&gt;(&amp;args)-&gt;default=
_value(&quot;&quot;), &quot;device <br>
&gt; address args&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0po::variables_map vm;<br>
&gt;=C2=A0 =C2=A0 =C2=A0po::store(po::parse_command_line(argc, argv, desc),=
 vm);<br>
&gt;=C2=A0 =C2=A0 =C2=A0po::notify(vm);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0//print the help message<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (vm.count(&quot;help&quot;)){<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0std::cout &lt;&lt; boost::format(&quo=
t;Timinig of gps_time: %s&quot;) % desc <br>
&gt; &lt;&lt; std::endl;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ~0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; uhd::device3::sptr usrp =3D uhd::device3::make(args);<br>
&gt; //uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(arg=
s);<br>
&gt;<br>
&gt; uhd::sensor_value_t gps_time =3D <br>
&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboar=
ds/0/sensors/gps_time&quot;).get();<br>
&gt; //uhd::sensor_value_t gps_time =3D usrp-&gt;get_mboard_sensor(&quot;gp=
s_time&quot;, 0);<br>
&gt;<br>
&gt; std::chrono::steady_clock::time_point start_time, end_time;<br>
&gt; std::chrono::duration&lt;double&gt; time_diff; // Default unit for dur=
ation <br>
&gt; is seconds.<br>
&gt;<br>
&gt; for(int ii=3D0 ; ii&lt;20 ; ii++)<br>
&gt; {<br>
&gt; start_time =3D std::chrono::steady_clock::now();<br>
&gt; gps_time =3D <br>
&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboar=
ds/0/sensors/gps_time&quot;).get();<br>
&gt; //gps_time =3D usrp-&gt;get_mboard_sensor(&quot;gps_time&quot;, 0);<br>
&gt; end_time =3D std::chrono::steady_clock::now();<br>
&gt; time_diff =3D end_time - start_time;<br>
&gt;<br>
&gt; std::cout &lt;&lt; &quot;gps_time[&quot; &lt;&lt; (boost::format(&quot=
;%02d&quot;) % ii) &lt;&lt; &quot;]: &quot; &lt;&lt; <br>
&gt; int64_t(gps_time.to_int()) &lt;&lt; &quot;. Time to read \&quot;gps_ti=
me\&quot;: &quot; &lt;&lt; <br>
&gt; (boost::format(&quot;%0.9f&quot;) % time_diff.count()) &lt;&lt; &quot;=
 seconds&quot; &lt;&lt; std::endl;<br>
&gt; }<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt; }<br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt; Here are the results of one typical run:<br>
&gt; gps_time[00]: 1617183840. Time to read &quot;gps_time&quot;: 0.8841643=
80 seconds<br>
&gt; gps_time[01]: 1617183841. Time to read &quot;gps_time&quot;: 0.8779664=
69 seconds<br>
&gt; gps_time[02]: 1617183842. Time to read &quot;gps_time&quot;: 1.1708696=
61 seconds<br>
&gt; gps_time[03]: 1617183843. Time to read &quot;gps_time&quot;: 0.8829179=
87 seconds<br>
&gt; gps_time[04]: 1617183844. Time to read &quot;gps_time&quot;: 1.1721201=
54 seconds<br>
&gt; gps_time[05]: 1617183845. Time to read &quot;gps_time&quot;: 0.8792719=
85 seconds<br>
&gt; gps_time[06]: 1617183846. Time to read &quot;gps_time&quot;: 0.8786090=
99 seconds<br>
&gt; gps_time[07]: 1617183847. Time to read &quot;gps_time&quot;: 1.1156392=
82 seconds<br>
&gt; gps_time[08]: 1617183848. Time to read &quot;gps_time&quot;: 1.1253655=
51 seconds<br>
&gt; gps_time[09]: 1617183849. Time to read &quot;gps_time&quot;: 0.8438032=
31 seconds<br>
&gt; gps_time[10]: 1617183850. Time to read &quot;gps_time&quot;: 1.1250657=
40 seconds<br>
&gt; gps_time[11]: 1617183851. Time to read &quot;gps_time&quot;: 0.8475198=
17 seconds<br>
&gt; gps_time[12]: 1617183852. Time to read &quot;gps_time&quot;: 1.1213989=
45 seconds<br>
&gt; gps_time[13]: 1617183853. Time to read &quot;gps_time&quot;: 0.8443715=
33 seconds<br>
&gt; gps_time[14]: 1617183854. Time to read &quot;gps_time&quot;: 1.1247227=
26 seconds<br>
&gt; gps_time[15]: 1617183855. Time to read &quot;gps_time&quot;: 0.8456883=
80 seconds<br>
&gt; gps_time[16]: 1617183856. Time to read &quot;gps_time&quot;: 1.1295680=
96 seconds<br>
&gt; gps_time[17]: 1617183857. Time to read &quot;gps_time&quot;: 0.8824362=
29 seconds<br>
&gt; gps_time[18]: 1617183858. Time to read &quot;gps_time&quot;: 1.1682275=
93 seconds<br>
&gt; gps_time[19]: 1617183859. Time to read &quot;gps_time&quot;: 0.8819482=
47 seconds<br>
&gt; ----------------------------------------------------------------------=
-------------<br>
&gt; In the code you can find commented out the usual way to access the <br>
&gt; sensor using multi_usrp and get_mboard_sensor. The results are quite <=
br>
&gt; similar.<br>
&gt;<br>
&gt; I wonder if anybody encountered this issue before or addressed it in <=
br>
&gt; any way.<br>
&gt; I wonder why it takes so much time to get the value of GPS time when <=
br>
&gt; it is a simple parsing of an NMEA message coming from the GPS receiver=
.<br>
&gt;<br>
&gt; I am trying now various tricks to make the software robust and immune =
<br>
&gt; to this phenomenon. I can report my findings further if I succeed to <=
br>
&gt; find a workaround if there is any interest.<br>
&gt;<br>
&gt; Can anyone comment on this? Can this be resolved so that the reading <=
br>
&gt; of gps_time will be much faster?<br>
&gt; Is there another way to get GPS time faster indirectly? Maybe from <br>
&gt; parsing NMEA messages ourselves?<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
This probably has to do with the way that particular &quot;sensor&quot; wor=
ks--the <br>
NMEA time value is only emitted once per second, and the<br>
=C2=A0 =C2=A0code for that sensor has some heuristic for determining &quot;=
freshness&quot; <br>
of the value.<br>
<br>
I&#39;ll point out that on E310, the system is configured to use GPSD, so <=
br>
that the Linux system time across several systems that have all been<br>
=C2=A0 =C2=A0&quot;listening&quot; to GPS for a while will all be synchroni=
zed quite well.<br>
<br>
<br><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000c552c705bed777ad--

--===============0717704162366511806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0717704162366511806==--
