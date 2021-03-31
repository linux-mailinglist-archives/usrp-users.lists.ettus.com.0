Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0F434FE54
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 12:51:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 71C1C38382B
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 06:51:26 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTP id F23753836FD
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 06:50:31 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 60FBF43F6A
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 13:49:51 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 1DA199FF4C
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 13:49:51 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id vXJFMxDWlRKO for <usrp-users@lists.ettus.com>;
	Wed, 31 Mar 2021 13:49:49 +0300 (IDT)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by o.dtnt.email (Postfix) with ESMTPSA id 51D289F9C5
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 13:49:49 +0300 (IDT)
Received: by mail-oi1-f181.google.com with SMTP id k25so19588753oic.4
        for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 03:49:48 -0700 (PDT)
X-Gm-Message-State: AOAM5322asNzqTKnFQl+DCY08PBLSoalTusKqQ8IoLHbVspSlM3626sv
	hSayB4TDuhaIWIZt1FGAe08URaNqEnLqvQKhjrE=
X-Google-Smtp-Source: ABdhPJwQTNygDDiwLY4x7Jhv09rIW8lObfcaoMQ6NgUiEKaBo0CvFIgZ68sr80CpmGw5UjOaKRGcfdSxvzd+MOrgidQ=
X-Received: by 2002:aca:d514:: with SMTP id m20mr1851648oig.47.1617187787003;
 Wed, 31 Mar 2021 03:49:47 -0700 (PDT)
MIME-Version: 1.0
From: Ofer Saferman <ofer@navigicom.com>
Date: Wed, 31 Mar 2021 13:49:36 +0300
X-Gmail-Original-Message-ID: <CACDReSyg26P8Cae3Lr5k1s0YJYJ6sSxiYcw4eU=bb2HWkfMQxA@mail.gmail.com>
Message-ID: <CACDReSyg26P8Cae3Lr5k1s0YJYJ6sSxiYcw4eU=bb2HWkfMQxA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 60FBF43F6A.A93E5
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: X4BSRLI7CWB4XPFZADMOUHCMYUJCVIJX
X-Message-ID-Hash: X4BSRLI7CWB4XPFZADMOUHCMYUJCVIJX
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X4BSRLI7CWB4XPFZADMOUHCMYUJCVIJX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4497808021641120330=="

--===============4497808021641120330==
Content-Type: multipart/alternative; boundary="000000000000945c1b05bed2dfbe"

--000000000000945c1b05bed2dfbe
Content-Type: text/plain; charset="UTF-8"

Hello,

I have a system that uses 4 USRP E310 units.
Each unit is connected to a GPS antenna.
Time source is set to gpsdo.

I run the same software remotely on all 4 units from a PC. Software runs on
the units themselves.
I print out messages to show if the reference is locked and the GPS is
locked and also what is the GPS time that each unit was synchronized to.
In some cases the units synchronize to the same GPS time and in other cases
there is 1 second difference between GPS time of different units thus
causing the units to be unsynchronized.

I was wondering how this was possible.
The synchronization process (documented by others in the past on the
mailing list) is:
* Wait for ref and GPS lock
* Wait for a pps edge (get_time_last_pps)
* Read gps_time value
* Sync system clock to GPS clock on next PPS edge (set_time_next_pps + 1.0
sec)

Something similar is also implemented in the sync_to_gps example.

In order to debug the problem I decided to time the reading of the gps_time
sensor to see if there is a clue why different units miss the PPS edge and
lock to a time of the next second.

I was very surprised to find out that it takes between 0.9 to 1.2 seconds
to read the gps_time sensor.
This explains exactly why it is difficult to synchronize multiple units to
the same time instance because if one unit takes 0.9 seconds to read the
sensor and the other unit takes 1.2 seconds to read the sensor then each
unit will lock on a different GPS time 1 second apart.

Here is a short software I wrote to time the gps_time sensor reading:
---------------------------------------------------------
#include <uhd/utils/safe_main.hpp>
#include <uhd/device3.hpp>
//#include <uhd/usrp/multi_usrp.hpp>
#include <uhd/types/sensors.hpp>
#include <boost/program_options.hpp>
#include <boost/format.hpp>
#include <chrono>
#include <iostream>

namespace po = boost::program_options;

int UHD_SAFE_MAIN(int argc, char *argv[]){

std::string args;

    po::options_description desc("Allowed options");
    desc.add_options()
        ("help", "help message")
("args", po::value<std::string>(&args)->default_value(""), "device address
args")
    ;

    po::variables_map vm;
    po::store(po::parse_command_line(argc, argv, desc), vm);
    po::notify(vm);

    //print the help message
    if (vm.count("help")){
        std::cout << boost::format("Timinig of gps_time: %s") % desc <<
std::endl;
        return ~0;
    }

uhd::device3::sptr usrp = uhd::device3::make(args);
//uhd::usrp::multi_usrp::sptr usrp = uhd::usrp::multi_usrp::make(args);

uhd::sensor_value_t gps_time =
usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
//uhd::sensor_value_t gps_time = usrp->get_mboard_sensor("gps_time", 0);

std::chrono::steady_clock::time_point start_time, end_time;
std::chrono::duration<double> time_diff; // Default unit for duration is
seconds.

for(int ii=0 ; ii<20 ; ii++)
{
start_time = std::chrono::steady_clock::now();
gps_time =
usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_time").get();
//gps_time = usrp->get_mboard_sensor("gps_time", 0);
end_time = std::chrono::steady_clock::now();
time_diff = end_time - start_time;

std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: " <<
int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<
(boost::format("%0.9f") % time_diff.count()) << " seconds" << std::endl;
}

    return 0;
}
--------------------------------------------------------------------------------
Here are the results of one typical run:
gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 seconds
gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 seconds
gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 seconds
gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 seconds
gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 seconds
gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 seconds
gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 seconds
gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 seconds
gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 seconds
gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 seconds
gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 seconds
gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 seconds
gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 seconds
gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 seconds
gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 seconds
gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 seconds
gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 seconds
gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 seconds
gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 seconds
gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 seconds
-----------------------------------------------------------------------------------
In the code you can find commented out the usual way to access the sensor
using multi_usrp and get_mboard_sensor. The results are quite similar.

I wonder if anybody encountered this issue before or addressed it in any
way.
I wonder why it takes so much time to get the value of GPS time when it is
a simple parsing of an NMEA message coming from the GPS receiver.

I am trying now various tricks to make the software robust and immune to
this phenomenon. I can report my findings further if I succeed to find a
workaround if there is any interest.

Can anyone comment on this? Can this be resolved so that the reading of
gps_time will be much faster?
Is there another way to get GPS time faster indirectly? Maybe from parsing
NMEA messages ourselves?

Regards,
Ofer Saferman

-- 
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000945c1b05bed2dfbe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I have a system that =
uses 4 USRP E310 units.</div><div>Each unit is connected to a GPS antenna.<=
/div><div>Time source is set to gpsdo.</div><div><br></div><div>I run the s=
ame software remotely on all 4 units from a PC. Software runs on the units =
themselves.</div><div>I print out messages to show if the reference is lock=
ed and the GPS is locked and also what is the GPS time that each unit was s=
ynchronized to.</div><div>In some cases the units synchronize to the same G=
PS time and in other cases there is 1 second difference between GPS time of=
 different units thus causing the units to be unsynchronized.</div><div><br=
></div><div>I was wondering how this was possible.</div><div>The synchroniz=
ation process (documented by others in the past on the mailing list) is:</d=
iv><div>* Wait for ref and GPS lock</div><div>* Wait for a pps edge (get_ti=
me_last_pps)</div><div>* Read gps_time value</div><div>* Sync system clock =
to GPS clock on next PPS edge (set_time_next_pps + 1.0 sec)</div><div><br><=
/div><div>Something similar is also implemented in the sync_to_gps example.=
</div><div><br></div><div>In order to debug the problem I decided to time t=
he reading of the gps_time sensor to see if there is a clue why different u=
nits miss the PPS edge and lock to a time of the next second.</div><div><br=
></div><div>I was very surprised to find out that it takes between 0.9 to 1=
.2 seconds to read the gps_time sensor. <br></div><div>This explains exactl=
y why it is difficult to synchronize multiple units to the same time instan=
ce because if one unit takes 0.9 seconds to read the sensor and the other u=
nit takes 1.2 seconds to read the sensor then each unit will lock on a diff=
erent GPS time 1 second apart.</div><div><br></div><div>Here is a short sof=
tware I wrote to time the gps_time sensor reading:</div><div>--------------=
-------------------------------------------</div><div>#include &lt;uhd/util=
s/safe_main.hpp&gt;<br>#include &lt;uhd/device3.hpp&gt;<br>//#include &lt;u=
hd/usrp/multi_usrp.hpp&gt;<br>#include &lt;uhd/types/sensors.hpp&gt;<br>#in=
clude &lt;boost/program_options.hpp&gt;<br>#include &lt;boost/format.hpp&gt=
;<br>#include &lt;chrono&gt;<br>#include &lt;iostream&gt;<br><br>namespace =
po =3D boost::program_options;<br><br>int UHD_SAFE_MAIN(int argc, char *arg=
v[]){<br><br>	std::string args;<br>	<br>=C2=A0 =C2=A0 po::options_descripti=
on desc(&quot;Allowed options&quot;);<br>=C2=A0 =C2=A0 desc.add_options()<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 (&quot;help&quot;, &quot;help message&quot;)<=
br>		(&quot;args&quot;, po::value&lt;std::string&gt;(&amp;args)-&gt;default=
_value(&quot;&quot;), &quot;device address args&quot;)<br>=C2=A0 =C2=A0 ;<b=
r><br>=C2=A0 =C2=A0 po::variables_map vm;<br>=C2=A0 =C2=A0 po::store(po::pa=
rse_command_line(argc, argv, desc), vm);<br>=C2=A0 =C2=A0 po::notify(vm);<b=
r><br>=C2=A0 =C2=A0 //print the help message<br>=C2=A0 =C2=A0 if (vm.count(=
&quot;help&quot;)){<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 std::cout &lt;&lt; boost=
::format(&quot;Timinig of gps_time: %s&quot;) % desc &lt;&lt; std::endl;<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ~0;<br>=C2=A0 =C2=A0 }<br><br>	uhd::dev=
ice3::sptr usrp =3D uhd::device3::make(args);<br>	//uhd::usrp::multi_usrp::=
sptr usrp =3D uhd::usrp::multi_usrp::make(args);<br>	<br>	uhd::sensor_value=
_t gps_time =3D usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&=
quot;/mboards/0/sensors/gps_time&quot;).get();<br>	//uhd::sensor_value_t gp=
s_time =3D usrp-&gt;get_mboard_sensor(&quot;gps_time&quot;, 0);<br>	<br>	st=
d::chrono::steady_clock::time_point start_time, end_time;<br>	std::chrono::=
duration&lt;double&gt; time_diff; // Default unit for duration is seconds.<=
br>=C2=A0 =C2=A0 <br>	for(int ii=3D0 ; ii&lt;20 ; ii++)<br>	{<br>		start_ti=
me =3D std::chrono::steady_clock::now();<br>		gps_time =3D usrp-&gt;get_tre=
e()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/sensors/gps_time=
&quot;).get();<br>		//gps_time =3D usrp-&gt;get_mboard_sensor(&quot;gps_tim=
e&quot;, 0);<br>		end_time =3D std::chrono::steady_clock::now();<br>		time_=
diff =3D end_time - start_time;<br>		<br>		std::cout &lt;&lt; &quot;gps_tim=
e[&quot; &lt;&lt; (boost::format(&quot;%02d&quot;) % ii) &lt;&lt; &quot;]: =
&quot; &lt;&lt; int64_t(gps_time.to_int()) &lt;&lt; &quot;. Time to read \&=
quot;gps_time\&quot;: &quot; &lt;&lt; (boost::format(&quot;%0.9f&quot;) % t=
ime_diff.count()) &lt;&lt; &quot; seconds&quot; &lt;&lt; std::endl;<br>	}<b=
r><br>=C2=A0 =C2=A0 return 0;<br>}</div><div>------------------------------=
--------------------------------------------------</div><div>Here are the r=
esults of one typical run:</div><div>gps_time[00]: 1617183840. Time to read=
 &quot;gps_time&quot;: 0.884164380 seconds<br>gps_time[01]: 1617183841. Tim=
e to read &quot;gps_time&quot;: 0.877966469 seconds<br>gps_time[02]: 161718=
3842. Time to read &quot;gps_time&quot;: 1.170869661 seconds<br>gps_time[03=
]: 1617183843. Time to read &quot;gps_time&quot;: 0.882917987 seconds<br>gp=
s_time[04]: 1617183844. Time to read &quot;gps_time&quot;: 1.172120154 seco=
nds<br>gps_time[05]: 1617183845. Time to read &quot;gps_time&quot;: 0.87927=
1985 seconds<br>gps_time[06]: 1617183846. Time to read &quot;gps_time&quot;=
: 0.878609099 seconds<br>gps_time[07]: 1617183847. Time to read &quot;gps_t=
ime&quot;: 1.115639282 seconds<br>gps_time[08]: 1617183848. Time to read &q=
uot;gps_time&quot;: 1.125365551 seconds<br>gps_time[09]: 1617183849. Time t=
o read &quot;gps_time&quot;: 0.843803231 seconds<br>gps_time[10]: 161718385=
0. Time to read &quot;gps_time&quot;: 1.125065740 seconds<br>gps_time[11]: =
1617183851. Time to read &quot;gps_time&quot;: 0.847519817 seconds<br>gps_t=
ime[12]: 1617183852. Time to read &quot;gps_time&quot;: 1.121398945 seconds=
<br>gps_time[13]: 1617183853. Time to read &quot;gps_time&quot;: 0.84437153=
3 seconds<br>gps_time[14]: 1617183854. Time to read &quot;gps_time&quot;: 1=
.124722726 seconds<br>gps_time[15]: 1617183855. Time to read &quot;gps_time=
&quot;: 0.845688380 seconds<br>gps_time[16]: 1617183856. Time to read &quot=
;gps_time&quot;: 1.129568096 seconds<br>gps_time[17]: 1617183857. Time to r=
ead &quot;gps_time&quot;: 0.882436229 seconds<br>gps_time[18]: 1617183858. =
Time to read &quot;gps_time&quot;: 1.168227593 seconds<br>gps_time[19]: 161=
7183859. Time to read &quot;gps_time&quot;: 0.881948247 seconds</div><div>-=
---------------------------------------------------------------------------=
-------</div><div>In the code you can find commented out the usual way to a=
ccess the sensor using multi_usrp and get_mboard_sensor. The results are qu=
ite similar.</div><div></div><div><br></div><div>I wonder if anybody encoun=
tered this issue before or addressed it in any way. <br></div><div>I wonder=
 why it takes so much time to get the value of GPS time when it is a simple=
 parsing of an NMEA message coming from the GPS receiver.</div><div><br></d=
iv><div>I am trying now various tricks to make the software robust and immu=
ne to this phenomenon. I can report my findings further if I succeed to fin=
d a workaround if there is any interest.</div><div><br></div><div>Can anyon=
e comment on this? Can this be resolved so that the reading of gps_time wil=
l be much faster?</div><div>Is there another way to get GPS time faster ind=
irectly? Maybe from parsing NMEA messages ourselves?<br></div><div><br></di=
v><div>Regards,</div><div>Ofer Saferman<br></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000945c1b05bed2dfbe--

--===============4497808021641120330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4497808021641120330==--
