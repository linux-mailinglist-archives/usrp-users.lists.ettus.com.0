Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ADACB352A34
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 13:27:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8E02F383F5C
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 07:27:03 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTP id 83590383943
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 07:26:12 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 5D9E4432E0
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 14:24:03 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 4B4149F9C5
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 14:24:03 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Fnadq1Dliw0i for <usrp-users@lists.ettus.com>;
	Fri,  2 Apr 2021 14:24:01 +0300 (IDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by o.dtnt.email (Postfix) with ESMTPSA id 813A19FB80
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 14:24:00 +0300 (IDT)
Received: by mail-oi1-f174.google.com with SMTP id i3so4665578oik.7
        for <usrp-users@lists.ettus.com>; Fri, 02 Apr 2021 04:24:00 -0700 (PDT)
X-Gm-Message-State: AOAM531NYvtLd4YMagZEjahkkyi8sEtKdiVXYiIpJCoFnrh/I8KAHH6y
	D2wEjqHVzbsVxPpQdPalvx3YL0lxI1e3+D/yMdo=
X-Google-Smtp-Source: ABdhPJyN1i/E9p+KvNham2wwrH/lvNgQYj8NvqNbNe54hu9jjCA9clS/QNXHPAFEVph0LnwSk5ggFlxCOGt+TmSV6Yc=
X-Received: by 2002:a54:4883:: with SMTP id r3mr9727552oic.147.1617362252153;
 Fri, 02 Apr 2021 04:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <CACDReSxORSk+h2=1K1M0yCHdy0Fe2526M77+U896KUW6_zYj2Q@mail.gmail.com>
 <43ACF8A6-727F-4B81-8696-51BA770C9CC3@gmail.com> <CACDReSz8BcZU8=KDRw3v4y9GqNEDi8C-_YQXHydd3FcFJ7_JWg@mail.gmail.com>
 <6065CBDF.4090603@gmail.com>
In-Reply-To: <6065CBDF.4090603@gmail.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Fri, 2 Apr 2021 14:17:20 +0300
X-Gmail-Original-Message-ID: <CACDReSw+=bZJhNwcaSHRb25vgVo1zWGhaOFyJ62UvanmATmHgw@mail.gmail.com>
Message-ID: <CACDReSw+=bZJhNwcaSHRb25vgVo1zWGhaOFyJ62UvanmATmHgw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 5D9E4432E0.A4CF5
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: FQ5EXXKHUD6LWOPQCRGOLTQABBQWSK45
X-Message-ID-Hash: FQ5EXXKHUD6LWOPQCRGOLTQABBQWSK45
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQ5EXXKHUD6LWOPQCRGOLTQABBQWSK45/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2722762696988125118=="

--===============2722762696988125118==
Content-Type: multipart/alternative; boundary="000000000000834a7b05befb7e77"

--000000000000834a7b05befb7e77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus Hi,

Your suggestion below to install ntpd does not work.
The image does not include it. Although the old thread says otherwise I
think it refers to an older UHD release that did include ntpd.
Any accurate instructions on how to install it anyway?
Maybe opkg should be configured to access another repository?
Doing: opkg list | grep ntpd, does not yield anything useful so it is not
just a question of typing it correctly.

Regards,
Ofer Saferman

On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 04/01/2021 06:00 AM, Ofer Saferman wrote:
>
> Hello Marcus,
>
> I am working on E310 with the latest UHD-3.15 SD card image.
> It seems not to include ntpd that is required to synchronize system time
> to GPS time.
> Any idea how to install it on the E310?
>
> Regards,
> Ofer Saferman
>
> sudo opkg install ntpd
>
> should work, but it has been a while since I installed any packages on my
> E310.
>
> The E310 is based on OpenEmbedded Linux, so all the info about installing
> and managing packages on OpenEmbedded apply.
>
>
>
> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Just use gettimeofday() or any of the myriad subtle variants available in
>> boost to get you the Linux system time, and use that in a call to
>> set_time_next_pps().
>>
>> The fact that all your E310s will be running GPSD means they=E2=80=99ll =
be
>> adjusting system time appropriately and they=E2=80=99ll all agree on wha=
t time it
>> is, depending on the level of precision you need.
>>
>> Sent from my iPhone
>>
>> On Mar 31, 2021, at 3:50 PM, Ofer Saferman <ofer@navigicom.com> wrote:
>>
>> =EF=BB=BF
>> Thank you Rob. Your suggestions are always helpful. I will look into
>> using gps_gpgga.
>> Thank you Marcus. I am already adding one, per other examples posted here
>> and sync_to_gps example. Can you please comment how I can benefit from t=
he
>> fact that E310 units use gpsd in Linux?
>>
>> Regards,
>> Ofer Saferman
>>
>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>>
>>>
>>> Sent from my iPhone
>>>
>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>> =EF=BB=BF
>>> Hi Ofer,
>>> Take a look at the Ettus source code gps_ctrl.cpp.  In particular, look
>>> at the get_sentence() usage which in the case of "gps_time" waits for t=
he
>>> next occurrence (wait=3Dtrue),  but for the others does not wait.  But =
this
>>> doesn't fully explain the behavior you are seeing.  If you do the follo=
wing:
>>> 1) wait for PPS time to change
>>> 2) read the "gps_time" sensor
>>> 3) set_time_next_pps (use the value you just read)
>>>
>>> Add 1 to the time you just read before calling set_time_next_pps.
>>>
>>>
>>> It should still work because the "gps_time" command should just wait
>>> until the next PPS.  I guess it depends upon how "synchronized" are the
>>> received NMEA string with the PPS edge.  Step 1 above waits for the PPS
>>> edge, but maybe the NMEA string arrives 0.1 secs before or after that. =
 I
>>> don't really know.  Perhaps you need to switch to using "gps_gpgga" such
>>> that there is no additional wait added and also perhaps you should add =
step
>>> 1B which would be just a fixed delay of perhaps 0.4 secs so that you wi=
ll
>>> read the NMEA string in between the PPS edges.
>>> Rob
>>>
>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Ofer,
>>>> I don't know why the "gps_time" sensor takes long to read. But, can you
>>>> try the other sensors (perhaps there is a "gps_gpgga" sensor?)?  The t=
ime
>>>> is embedded in these as well.
>>>> Rob
>>>>
>>>>
>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman <ofer@navigicom.com>
>>>> wrote:
>>>>
>>>>> Marcus Hi,
>>>>>
>>>>> If the gps_time "sensor" returns a value only once per second how come
>>>>> I manage to read it sometimes in less than 1 second?
>>>>> In my code the situation is worse than the simple example below. It
>>>>> usually takes more than 1 sec. to read it and sometimes even 1.7 or 1=
.8
>>>>> seconds. I don't understand how the size or complexity of the code af=
fects
>>>>> the time it takes to read gps_time.
>>>>>
>>>>> How to treat your comment about the use of GPSD and good
>>>>> synchronization as it relates to code?
>>>>> Should I not change the time source in code and go through the whole
>>>>> process of synchronization using gps_time?
>>>>> Can I "assume" the systems are synced just by the effect they were
>>>>> connected enough time to a GPS antenna? and then just access their ti=
me -
>>>>> radio_ctrl->get_time_last_pps()?
>>>>> How to use this information programmatically?
>>>>>
>>>>> Regards,
>>>>> Ofer Saferman
>>>>>
>>>>>
>>>>> ---------- Forwarded message ----------
>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>>>> To: usrp-users@lists.ettus.com
>>>>>> Cc:
>>>>>> Bcc:
>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>>>>>> Subject: [USRP-users] Re: Intermittent problem with GPS
>>>>>> synchronization for multiple E310 units
>>>>>> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
>>>>>> > Hello,
>>>>>> >
>>>>>> > I have a system that uses 4 USRP E310 units.
>>>>>> > Each unit is connected to a GPS antenna.
>>>>>> > Time source is set to gpsdo.
>>>>>> >
>>>>>> > I run the same software remotely on all 4 units from a PC. Software
>>>>>> > runs on the units themselves.
>>>>>> > I print out messages to show if the reference is locked and the GPS
>>>>>> is
>>>>>> > locked and also what is the GPS time that each unit was
>>>>>> synchronized to.
>>>>>> > In some cases the units synchronize to the same GPS time and in
>>>>>> other
>>>>>> > cases there is 1 second difference between GPS time of different
>>>>>> units
>>>>>> > thus causing the units to be unsynchronized.
>>>>>> >
>>>>>> > I was wondering how this was possible.
>>>>>> > The synchronization process (documented by others in the past on
>>>>>> the
>>>>>> > mailing list) is:
>>>>>> > * Wait for ref and GPS lock
>>>>>> > * Wait for a pps edge (get_time_last_pps)
>>>>>> > * Read gps_time value
>>>>>> > * Sync system clock to GPS clock on next PPS edge
>>>>>> (set_time_next_pps +
>>>>>> > 1.0 sec)
>>>>>> >
>>>>>> > Something similar is also implemented in the sync_to_gps example.
>>>>>> >
>>>>>> > In order to debug the problem I decided to time the reading of the
>>>>>> > gps_time sensor to see if there is a clue why different units miss
>>>>>> the
>>>>>> > PPS edge and lock to a time of the next second.
>>>>>> >
>>>>>> > I was very surprised to find out that it takes between 0.9 to 1.2
>>>>>> > seconds to read the gps_time sensor.
>>>>>> > This explains exactly why it is difficult to synchronize multiple
>>>>>> > units to the same time instance because if one unit takes 0.9
>>>>>> seconds
>>>>>> > to read the sensor and the other unit takes 1.2 seconds to read the
>>>>>> > sensor then each unit will lock on a different GPS time 1 second
>>>>>> apart.
>>>>>> >
>>>>>> > Here is a short software I wrote to time the gps_time sensor
>>>>>> reading:
>>>>>> > ---------------------------------------------------------
>>>>>> > #include <uhd/utils/safe_main.hpp>
>>>>>> > #include <uhd/device3.hpp>
>>>>>> > //#include <uhd/usrp/multi_usrp.hpp>
>>>>>> > #include <uhd/types/sensors.hpp>
>>>>>> > #include <boost/program_options.hpp>
>>>>>> > #include <boost/format.hpp>
>>>>>> > #include <chrono>
>>>>>> > #include <iostream>
>>>>>> >
>>>>>> > namespace po =3D boost::program_options;
>>>>>> >
>>>>>> > int UHD_SAFE_MAIN(int argc, char *argv[]){
>>>>>> >
>>>>>> > std::string args;
>>>>>> >
>>>>>> >     po::options_description desc("Allowed options");
>>>>>> >     desc.add_options()
>>>>>> >         ("help", "help message")
>>>>>> > ("args", po::value<std::string>(&args)->default_value(""), "device
>>>>>> > address args")
>>>>>> >     ;
>>>>>> >
>>>>>> >     po::variables_map vm;
>>>>>> >     po::store(po::parse_command_line(argc, argv, desc), vm);
>>>>>> >     po::notify(vm);
>>>>>> >
>>>>>> >     //print the help message
>>>>>> >     if (vm.count("help")){
>>>>>> >         std::cout << boost::format("Timinig of gps_time: %s") %
>>>>>> desc
>>>>>> > << std::endl;
>>>>>> >         return ~0;
>>>>>> >     }
>>>>>> >
>>>>>> > uhd::device3::sptr usrp =3D uhd::device3::make(args);
>>>>>> > //uhd::usrp::multi_usrp::sptr usrp =3D
>>>>>> uhd::usrp::multi_usrp::make(args);
>>>>>> >
>>>>>> > uhd::sensor_value_t gps_time =3D
>>>>>> >
>>>>>> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gp=
s_time").get();
>>>>>> > //uhd::sensor_value_t gps_time =3D
>>>>>> usrp->get_mboard_sensor("gps_time", 0);
>>>>>> >
>>>>>> > std::chrono::steady_clock::time_point start_time, end_time;
>>>>>> > std::chrono::duration<double> time_diff; // Default unit for
>>>>>> duration
>>>>>> > is seconds.
>>>>>> >
>>>>>> > for(int ii=3D0 ; ii<20 ; ii++)
>>>>>> > {
>>>>>> > start_time =3D std::chrono::steady_clock::now();
>>>>>> > gps_time =3D
>>>>>> >
>>>>>> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gp=
s_time").get();
>>>>>> > //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
>>>>>> > end_time =3D std::chrono::steady_clock::now();
>>>>>> > time_diff =3D end_time - start_time;
>>>>>> >
>>>>>> > std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: "
>>>>>> <<
>>>>>> > int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<
>>>>>> > (boost::format("%0.9f") % time_diff.count()) << " seconds" <<
>>>>>> std::endl;
>>>>>> > }
>>>>>> >
>>>>>> >     return 0;
>>>>>> > }
>>>>>> >
>>>>>> --------------------------------------------------------------------=
------------
>>>>>> > Here are the results of one typical run:
>>>>>> > gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380
>>>>>> seconds
>>>>>> > gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469
>>>>>> seconds
>>>>>> > gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661
>>>>>> seconds
>>>>>> > gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987
>>>>>> seconds
>>>>>> > gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154
>>>>>> seconds
>>>>>> > gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985
>>>>>> seconds
>>>>>> > gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099
>>>>>> seconds
>>>>>> > gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282
>>>>>> seconds
>>>>>> > gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551
>>>>>> seconds
>>>>>> > gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231
>>>>>> seconds
>>>>>> > gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740
>>>>>> seconds
>>>>>> > gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817
>>>>>> seconds
>>>>>> > gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945
>>>>>> seconds
>>>>>> > gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533
>>>>>> seconds
>>>>>> > gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726
>>>>>> seconds
>>>>>> > gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380
>>>>>> seconds
>>>>>> > gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096
>>>>>> seconds
>>>>>> > gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229
>>>>>> seconds
>>>>>> > gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593
>>>>>> seconds
>>>>>> > gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247
>>>>>> seconds
>>>>>> >
>>>>>> --------------------------------------------------------------------=
---------------
>>>>>> > In the code you can find commented out the usual way to access the
>>>>>> > sensor using multi_usrp and get_mboard_sensor. The results are
>>>>>> quite
>>>>>> > similar.
>>>>>> >
>>>>>> > I wonder if anybody encountered this issue before or addressed it
>>>>>> in
>>>>>> > any way.
>>>>>> > I wonder why it takes so much time to get the value of GPS time
>>>>>> when
>>>>>> > it is a simple parsing of an NMEA message coming from the GPS
>>>>>> receiver.
>>>>>> >
>>>>>> > I am trying now various tricks to make the software robust and
>>>>>> immune
>>>>>> > to this phenomenon. I can report my findings further if I succeed
>>>>>> to
>>>>>> > find a workaround if there is any interest.
>>>>>> >
>>>>>> > Can anyone comment on this? Can this be resolved so that the
>>>>>> reading
>>>>>> > of gps_time will be much faster?
>>>>>> > Is there another way to get GPS time faster indirectly? Maybe from
>>>>>> > parsing NMEA messages ourselves?
>>>>>> >
>>>>>> > Regards,
>>>>>> > Ofer Saferman
>>>>>> >
>>>>>> This probably has to do with the way that particular "sensor"
>>>>>> works--the
>>>>>> NMEA time value is only emitted once per second, and the
>>>>>>    code for that sensor has some heuristic for determining
>>>>>> "freshness"
>>>>>> of the value.
>>>>>>
>>>>>> I'll point out that on E310, the system is configured to use GPSD, so
>>>>>> that the Linux system time across several systems that have all been
>>>>>>    "listening" to GPS for a while will all be synchronized quite wel=
l.
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>> --
>>>>> This message has been scanned for viruses and
>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
>>>>> and is
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>>
>> --
>> This message has been scanned for viruses and
>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
>> is
>> believed to be clean.
>>
>>
> --
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and is
> believed to be clean.
>
>
>

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000834a7b05befb7e77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus Hi,</div><div><br></div><div>Your suggestion b=
elow to install ntpd does not work.</div><div>The image does not include it=
. Although the old thread says otherwise I think it refers to an older UHD =
release that did include ntpd.</div><div>Any accurate instructions on how t=
o install it anyway? <br></div><div>Maybe opkg should be configured to acce=
ss another repository? <br></div><div>Doing: opkg list | grep ntpd, does no=
t yield anything useful so it is not just a question of typing it correctly=
.</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr =
1, 2021 at 4:34 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
=20=20
=20=20=20=20
=20=20
  <div bgcolor=3D"#FFFFFF">
    <div>On 04/01/2021 06:00 AM, Ofer Saferman
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hello Marcus,</div>
        <div><br>
        </div>
        <div>I am working on E310 with the latest UHD-3.15 SD card
          image.</div>
        <div>It seems not to include ntpd that is required to
          synchronize system time to GPS time.</div>
        <div>Any idea how to install it on the E310?</div>
        <div><br>
        </div>
        <div>Regards,</div>
        <div>Ofer Saferman<br>
        </div>
      </div>
    </blockquote>
    sudo opkg install ntpd<br>
    <br>
    should work, but it has been a while since I installed any packages
    on my E310.<br>
    <br>
    The E310 is based on OpenEmbedded Linux, so all the info about
    installing and managing packages on OpenEmbedded apply.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at
            11:40 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"auto">Just use gettimeofday() or any of the myriad
              subtle variants available in boost to get you the Linux
              system time, and use that in a call to
              set_time_next_pps().=C2=A0
              <div><br>
              </div>
              <div>The fact that all your E310s will be running GPSD
                means they=E2=80=99ll be adjusting system time appropriatel=
y and
                they=E2=80=99ll all agree on what time it is, depending on =
the
                level of precision you need.=C2=A0<br>
                <br>
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br>
                  <blockquote type=3D"cite">On Mar 31, 2021, at 3:50 PM,
                    Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com"=
 target=3D"_blank">ofer@navigicom.com</a>&gt;
                    wrote:<br>
                    <br>
                  </blockquote>
                </div>
                <blockquote type=3D"cite">
                  <div dir=3D"ltr">=EF=BB=BF
                    <div dir=3D"ltr">
                      <div>Thank you Rob. Your suggestions are always
                        helpful. I will look into using gps_gpgga.</div>
                      <div>Thank you Marcus. I am already adding one,
                        per other examples posted here and sync_to_gps
                        example. Can you please comment how I can
                        benefit from the fact that E310 units use gpsd
                        in Linux?</div>
                      <div><br>
                      </div>
                      <div>Regards,</div>
                      <div>Ofer Saferman<br>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar
                          31, 2021 at 10:13 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"auto"><br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Mar 31, 2021,
                                at 2:22 PM, Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">Hi Ofer,</div>
                                  <div dir=3D"ltr">Take a look at the
                                    Ettus source code gps_ctrl.cpp.=C2=A0 In
                                    particular, look at the
                                    get_sentence() usage which in the
                                    case of &quot;gps_time&quot; waits for =
the
                                    next occurrence (wait=3Dtrue), =C2=A0but
                                    for the others does not wait.=C2=A0 But
                                    this doesn&#39;t fully explain the
                                    behavior you are seeing.=C2=A0 If you do
                                    the following:<br>
                                    1) wait for PPS time to change<br>
                                    2) read the &quot;gps_time&quot; sensor=
<br>
                                    3) set_time_next_pps (use the value
                                    you just read)<br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Add 1 to the time you just read before
                            calling set_time_next_pps.=C2=A0
                            <div><br>
                            </div>
                            <div><br>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">It should still work
                                      because the &quot;gps_time&quot; comm=
and
                                      should just wait until the next
                                      PPS.=C2=A0 I guess it depends upon how
                                      &quot;synchronized&quot; are the rece=
ived
                                      NMEA string with the PPS edge.=C2=A0
                                      Step 1 above waits for the PPS
                                      edge, but maybe the NMEA string
                                      arrives 0.1 secs before or after
                                      that.=C2=A0 I don&#39;t really know.=
=C2=A0
                                      Perhaps you need to switch to
                                      using &quot;gps_gpgga&quot; such that=
 there
                                      is no additional wait added and
                                      also perhaps you should add step
                                      1B which would be just a fixed
                                      delay of perhaps 0.4 secs so that
                                      you will read the NMEA string in
                                      between the PPS edges.<br>
                                      Rob<br>
                                    </div>
                                    <br>
                                    <div class=3D"gmail_quote">
                                      <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                        Wed, Mar 31, 2021 at 1:22 PM Rob
                                        Kossler &lt;<a href=3D"mailto:rkoss=
ler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
                                        <div dir=3D"ltr">
                                          <div>Hi Ofer,</div>
                                          <div>I don&#39;t know why the
                                            &quot;gps_time&quot; sensor tak=
es long
                                            to read. But, can you try
                                            the other sensors (perhaps
                                            there is a &quot;gps_gpgga&quot;
                                            sensor?)?=C2=A0 The time is
                                            embedded in these as well.=C2=
=A0=C2=A0</div>
                                          <div>Rob</div>
                                          <div><br>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr" class=3D"gmail=
_attr">On Wed,
                                              Mar 31, 2021 at 12:21 PM
                                              Ofer Saferman &lt;<a href=3D"=
mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;
                                              wrote:<br>
                                            </div>
                                            <blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">Marcus
                                                  Hi,</div>
                                                <div dir=3D"ltr"><br>
                                                </div>
                                                <div>If the gps_time
                                                  &quot;sensor&quot; return=
s a
                                                  value only once per
                                                  second how come I
                                                  manage to read it
                                                  sometimes in less than
                                                  1 second?</div>
                                                <div>In my code the
                                                  situation is worse
                                                  than the simple
                                                  example below. It
                                                  usually takes more
                                                  than 1 sec. to read it
                                                  and sometimes even 1.7
                                                  or 1.8 seconds. I
                                                  don&#39;t understand how
                                                  the size or complexity
                                                  of the code affects
                                                  the time it takes to
                                                  read gps_time.<br>
                                                </div>
                                                <div dir=3D"ltr"><br>
                                                </div>
                                                <div>How to treat your
                                                  comment about the use
                                                  of GPSD and good
                                                  synchronization as it
                                                  relates to code?</div>
                                                <div>Should I not change
                                                  the time source in
                                                  code and go through
                                                  the whole process of
                                                  synchronization using
                                                  gps_time?</div>
                                                <div>Can I &quot;assume&quo=
t; the
                                                  systems are synced
                                                  just by the effect
                                                  they were connected
                                                  enough time to a GPS
                                                  antenna? and then just
                                                  access their time -
                                                  radio_ctrl-&gt;get_time_l=
ast_pps()?</div>
                                                <div>How to use this
                                                  information
                                                  programmatically?<br>
                                                </div>
                                                <div><br>
                                                </div>
                                                <div>Regards,</div>
                                                <div>Ofer Saferman<br>
                                                </div>
                                                <br>
                                                <div class=3D"gmail_quote">=
<br>
                                                  <blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">----------
                                                    Forwarded message
                                                    ----------<br>
                                                    From:=C2=A0&quot;Marcus=
 D.
                                                    Leech&quot; &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;<br>
                                                    To:=C2=A0<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a><br>
                                                    Cc:=C2=A0<br>
                                                    Bcc:=C2=A0<br>
                                                    Date:=C2=A0Wed, 31 Mar
                                                    2021 09:19:20 -0400<br>
                                                    Subject:=C2=A0[USRP-use=
rs]
                                                    Re: Intermittent
                                                    problem with GPS
                                                    synchronization for
                                                    multiple E310 units<br>
                                                    On 03/31/2021 06:49
                                                    AM, Ofer Saferman
                                                    wrote:<br>
                                                    &gt; Hello,<br>
                                                    &gt;<br>
                                                    &gt; I have a system
                                                    that uses 4 USRP
                                                    E310 units.<br>
                                                    &gt; Each unit is
                                                    connected to a GPS
                                                    antenna.<br>
                                                    &gt; Time source is
                                                    set to gpsdo.<br>
                                                    &gt;<br>
                                                    &gt; I run the same
                                                    software remotely on
                                                    all 4 units from a
                                                    PC. Software <br>
                                                    &gt; runs on the
                                                    units themselves.<br>
                                                    &gt; I print out
                                                    messages to show if
                                                    the reference is
                                                    locked and the GPS
                                                    is <br>
                                                    &gt; locked and also
                                                    what is the GPS time
                                                    that each unit was
                                                    synchronized to.<br>
                                                    &gt; In some cases
                                                    the units
                                                    synchronize to the
                                                    same GPS time and in
                                                    other <br>
                                                    &gt; cases there is
                                                    1 second difference
                                                    between GPS time of
                                                    different units <br>
                                                    &gt; thus causing
                                                    the units to be
                                                    unsynchronized.<br>
                                                    &gt;<br>
                                                    &gt; I was wondering
                                                    how this was
                                                    possible.<br>
                                                    &gt; The
                                                    synchronization
                                                    process (documented
                                                    by others in the
                                                    past on the <br>
                                                    &gt; mailing list)
                                                    is:<br>
                                                    &gt; * Wait for ref
                                                    and GPS lock<br>
                                                    &gt; * Wait for a
                                                    pps edge
                                                    (get_time_last_pps)<br>
                                                    &gt; * Read gps_time
                                                    value<br>
                                                    &gt; * Sync system
                                                    clock to GPS clock
                                                    on next PPS edge
                                                    (set_time_next_pps +
                                                    <br>
                                                    &gt; 1.0 sec)<br>
                                                    &gt;<br>
                                                    &gt; Something
                                                    similar is also
                                                    implemented in the
                                                    sync_to_gps example.<br>
                                                    &gt;<br>
                                                    &gt; In order to
                                                    debug the problem I
                                                    decided to time the
                                                    reading of the <br>
                                                    &gt; gps_time sensor
                                                    to see if there is a
                                                    clue why different
                                                    units miss the <br>
                                                    &gt; PPS edge and
                                                    lock to a time of
                                                    the next second.<br>
                                                    &gt;<br>
                                                    &gt; I was very
                                                    surprised to find
                                                    out that it takes
                                                    between 0.9 to 1.2 <br>
                                                    &gt; seconds to read
                                                    the gps_time sensor.<br>
                                                    &gt; This explains
                                                    exactly why it is
                                                    difficult to
                                                    synchronize multiple
                                                    <br>
                                                    &gt; units to the
                                                    same time instance
                                                    because if one unit
                                                    takes 0.9 seconds <br>
                                                    &gt; to read the
                                                    sensor and the other
                                                    unit takes 1.2
                                                    seconds to read the
                                                    <br>
                                                    &gt; sensor then
                                                    each unit will lock
                                                    on a different GPS
                                                    time 1 second apart.<br>
                                                    &gt;<br>
                                                    &gt; Here is a short
                                                    software I wrote to
                                                    time the gps_time
                                                    sensor reading:<br>
                                                    &gt;
                                                    -----------------------=
----------------------------------<br>
                                                    &gt; #include
                                                    &lt;uhd/utils/safe_main=
.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/device3.hpp&gt;=
<br>
                                                    &gt; //#include
                                                    &lt;uhd/usrp/multi_usrp=
.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/types/sensors.h=
pp&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/program_optio=
ns.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/format.hpp&gt=
;<br>
                                                    &gt; #include
                                                    &lt;chrono&gt;<br>
                                                    &gt; #include
                                                    &lt;iostream&gt;<br>
                                                    &gt;<br>
                                                    &gt; namespace po =3D
boost::program_options;<br>
                                                    &gt;<br>
                                                    &gt; int
                                                    UHD_SAFE_MAIN(int
                                                    argc, char *argv[]){<br>
                                                    &gt;<br>
                                                    &gt; std::string
                                                    args;<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::options_descr=
iption
                                                    desc(&quot;Allowed
                                                    options&quot;);<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0desc.add_options(=
)<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                                    =C2=A0(&quot;help&quot;=
, &quot;help
                                                    message&quot;)<br>
                                                    &gt; (&quot;args&quot;,
                                                    po::value&lt;std::strin=
g&gt;(&amp;args)-&gt;default_value(&quot;&quot;),
                                                    &quot;device <br>
                                                    &gt; address args&quot;=
)<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0;<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::variables_map
                                                    vm;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::store(po::par=
se_command_line(argc,
                                                    argv, desc), vm);<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::notify(vm);<b=
r>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0//print the
                                                    help message<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0if
                                                    (vm.count(&quot;help&qu=
ot;)){<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                                    =C2=A0std::cout &lt;&lt;
                                                    boost::format(&quot;Tim=
inig
                                                    of gps_time: %s&quot;) %
                                                    desc <br>
                                                    &gt; &lt;&lt;
                                                    std::endl;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0return
                                                    ~0;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0}<br>
                                                    &gt;<br>
                                                    &gt;
                                                    uhd::device3::sptr
                                                    usrp =3D
                                                    uhd::device3::make(args=
);<br>
                                                    &gt;
                                                    //uhd::usrp::multi_usrp=
::sptr
                                                    usrp =3D
                                                    uhd::usrp::multi_usrp::=
make(args);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    uhd::sensor_value_t
                                                    gps_time =3D <br>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/=
sensors/gps_time&quot;).get();<br>
                                                    &gt;
                                                    //uhd::sensor_value_t
                                                    gps_time =3D
                                                    usrp-&gt;get_mboard_sen=
sor(&quot;gps_time&quot;,
                                                    0);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    std::chrono::steady_clo=
ck::time_point
                                                    start_time,
                                                    end_time;<br>
                                                    &gt;
                                                    std::chrono::duration&l=
t;double&gt;
                                                    time_diff; //
                                                    Default unit for
                                                    duration <br>
                                                    &gt; is seconds.<br>
                                                    &gt;<br>
                                                    &gt; for(int ii=3D0 ;
                                                    ii&lt;20 ; ii++)<br>
                                                    &gt; {<br>
                                                    &gt; start_time =3D
                                                    std::chrono::steady_clo=
ck::now();<br>
                                                    &gt; gps_time =3D <br>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;(&quot;/mboards/0/=
sensors/gps_time&quot;).get();<br>
                                                    &gt; //gps_time =3D
                                                    usrp-&gt;get_mboard_sen=
sor(&quot;gps_time&quot;,
                                                    0);<br>
                                                    &gt; end_time =3D
                                                    std::chrono::steady_clo=
ck::now();<br>
                                                    &gt; time_diff =3D
                                                    end_time -
                                                    start_time;<br>
                                                    &gt;<br>
                                                    &gt; std::cout
                                                    &lt;&lt; &quot;gps_time=
[&quot;
                                                    &lt;&lt;
                                                    (boost::format(&quot;%0=
2d&quot;)
                                                    % ii) &lt;&lt; &quot;]:=
 &quot;
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    int64_t(gps_time.to_int=
())
                                                    &lt;&lt; &quot;. Time to
                                                    read \&quot;gps_time\&q=
uot;: &quot;
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    (boost::format(&quot;%0=
.9f&quot;)
                                                    % time_diff.count())
                                                    &lt;&lt; &quot; seconds=
&quot;
                                                    &lt;&lt; std::endl;<br>
                                                    &gt; }<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0return 0;<br>
                                                    &gt; }<br>
                                                    &gt;
---------------------------------------------------------------------------=
-----<br>
                                                    &gt; Here are the
                                                    results of one
                                                    typical run:<br>
                                                    &gt; gps_time[00]:
                                                    1617183840. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.884164380 seconds<br>
                                                    &gt; gps_time[01]:
                                                    1617183841. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.877966469 seconds<br>
                                                    &gt; gps_time[02]:
                                                    1617183842. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.170869661 seconds<br>
                                                    &gt; gps_time[03]:
                                                    1617183843. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.882917987 seconds<br>
                                                    &gt; gps_time[04]:
                                                    1617183844. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.172120154 seconds<br>
                                                    &gt; gps_time[05]:
                                                    1617183845. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.879271985 seconds<br>
                                                    &gt; gps_time[06]:
                                                    1617183846. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.878609099 seconds<br>
                                                    &gt; gps_time[07]:
                                                    1617183847. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.115639282 seconds<br>
                                                    &gt; gps_time[08]:
                                                    1617183848. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.125365551 seconds<br>
                                                    &gt; gps_time[09]:
                                                    1617183849. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.843803231 seconds<br>
                                                    &gt; gps_time[10]:
                                                    1617183850. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.125065740 seconds<br>
                                                    &gt; gps_time[11]:
                                                    1617183851. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.847519817 seconds<br>
                                                    &gt; gps_time[12]:
                                                    1617183852. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.121398945 seconds<br>
                                                    &gt; gps_time[13]:
                                                    1617183853. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.844371533 seconds<br>
                                                    &gt; gps_time[14]:
                                                    1617183854. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.124722726 seconds<br>
                                                    &gt; gps_time[15]:
                                                    1617183855. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.845688380 seconds<br>
                                                    &gt; gps_time[16]:
                                                    1617183856. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.129568096 seconds<br>
                                                    &gt; gps_time[17]:
                                                    1617183857. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.882436229 seconds<br>
                                                    &gt; gps_time[18]:
                                                    1617183858. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    1.168227593 seconds<br>
                                                    &gt; gps_time[19]:
                                                    1617183859. Time to
                                                    read &quot;gps_time&quo=
t;:
                                                    0.881948247 seconds<br>
                                                    &gt;
---------------------------------------------------------------------------=
--------<br>
                                                    &gt; In the code you
                                                    can find commented
                                                    out the usual way to
                                                    access the <br>
                                                    &gt; sensor using
                                                    multi_usrp and
                                                    get_mboard_sensor.
                                                    The results are
                                                    quite <br>
                                                    &gt; similar.<br>
                                                    &gt;<br>
                                                    &gt; I wonder if
                                                    anybody encountered
                                                    this issue before or
                                                    addressed it in <br>
                                                    &gt; any way.<br>
                                                    &gt; I wonder why it
                                                    takes so much time
                                                    to get the value of
                                                    GPS time when <br>
                                                    &gt; it is a simple
                                                    parsing of an NMEA
                                                    message coming from
                                                    the GPS receiver.<br>
                                                    &gt;<br>
                                                    &gt; I am trying now
                                                    various tricks to
                                                    make the software
                                                    robust and immune <br>
                                                    &gt; to this
                                                    phenomenon. I can
                                                    report my findings
                                                    further if I succeed
                                                    to <br>
                                                    &gt; find a
                                                    workaround if there
                                                    is any interest.<br>
                                                    &gt;<br>
                                                    &gt; Can anyone
                                                    comment on this? Can
                                                    this be resolved so
                                                    that the reading <br>
                                                    &gt; of gps_time
                                                    will be much faster?<br>
                                                    &gt; Is there
                                                    another way to get
                                                    GPS time faster
                                                    indirectly? Maybe
                                                    from <br>
                                                    &gt; parsing NMEA
                                                    messages ourselves?<br>
                                                    &gt;<br>
                                                    &gt; Regards,<br>
                                                    &gt; Ofer Saferman<br>
                                                    &gt;<br>
                                                    This probably has to
                                                    do with the way that
                                                    particular &quot;sensor=
&quot;
                                                    works--the <br>
                                                    NMEA time value is
                                                    only emitted once
                                                    per second, and the<br>
                                                    =C2=A0 =C2=A0code for t=
hat
                                                    sensor has some
                                                    heuristic for
                                                    determining
                                                    &quot;freshness&quot; <=
br>
                                                    of the value.<br>
                                                    <br>
                                                    I&#39;ll point out that
                                                    on E310, the system
                                                    is configured to use
                                                    GPSD, so <br>
                                                    that the Linux
                                                    system time across
                                                    several systems that
                                                    have all been<br>
                                                    =C2=A0 =C2=A0&quot;list=
ening&quot; to
                                                    GPS for a while will
                                                    all be synchronized
                                                    quite well.<br>
                                                    <br>
                                                    <br>
                                                    <br>
                                                  </blockquote>
                                                </div>
                                              </div>
                                              <br>
                                              -- <br>
                                              This message has been
                                              scanned for viruses and
                                              <br>
                                              dangerous content by
                                              <a href=3D"http://www.mailsca=
nner.info/" target=3D"_blank"><b>MailScanner</b></a>,
                                              and is
                                              <br>
                                              believed to be clean.
_______________________________________________<br>
                                              USRP-users mailing list --
                                              <a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                                              To unsubscribe send an
                                              email to <a href=3D"mailto:us=
rp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.et=
tus.com</a><br>
                                            </blockquote>
                                          </div>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </div>
                                  <span>___________________________________=
____________</span><br>
                                  <span>USRP-users mailing list -- <a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a></span><br>
                                  <span>To unsubscribe send an email to
                                    <a href=3D"mailto:usrp-users-leave@list=
s.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><=
br>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </blockquote>
                      </div>
                    </div>
                    <br>
                    -- <br>
                    This message has been scanned for viruses and
                    <br>
                    dangerous content by
                    <a href=3D"http://www.mailscanner.info/" target=3D"_bla=
nk"><b>MailScanner</b></a>, and is
                    <br>
                    believed to be clean.
                  </div>
                </blockquote>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      -- <br>
      This message has been scanned for viruses and
      <br>
      dangerous content by
      <a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailSca=
nner</b></a>,
      and is
      <br>
      believed to be clean.
    </blockquote>
    <br>
  </div>

</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000834a7b05befb7e77--

--===============2722762696988125118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2722762696988125118==--
