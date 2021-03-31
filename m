Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA2135084E
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 22:40:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5BF1383B12
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 16:40:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bRqOxCdn";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id DA153383AF2
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 16:40:11 -0400 (EDT)
Received: by mail-qk1-f175.google.com with SMTP id y5so83806qkl.9
        for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 13:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=4xy0L+S8OuCEC3hciW/swruql6DdpP8FDUCbHXHNJl0=;
        b=bRqOxCdnk5xBwIoKtaKo+E0hibjAVVkty1Jk052WlHKmv+EQosgySt3j+PUjOjAPYu
         c1BPRRt59rcOrmNCre9KXshByr3/BeV1DDU9BdROSdy6SEJfm2UrhThUz/Ksbzx0ttPt
         oSMkrCn0OPuNJOQsF6nlAc24k1DFxJb07BEcXD7udwVSXMdBaj92hIg5YNmfPkc+8N5v
         2pDbscxWo3d0KR2ptTHCddmrh9rvx10Ckw10sMOlbtaZQUinFNZkJAeLeo3N6VPk8+cB
         yF6VJYnIgh2VeqXG3TVTgxu6KTaS7qIxcxFoCPew8eWo4I0B/C23ETWToosVdRWHzPLs
         Ii4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=4xy0L+S8OuCEC3hciW/swruql6DdpP8FDUCbHXHNJl0=;
        b=DWeExyT24maHbPZns2GZ/Z4q06d9fkz88GEA0TEt8fv2giAa8zUo7//C+v74UDCIDU
         o6FABr/7rnVDDEEqMUJYaIJK5Fy7rY1UQz7+4lstT/vChzOjT/hZgcdNqOAy95FVadL2
         cGQHBHx6jguhDYZhiC5PyiyDMk+8rz63drw7NzRI0drCouBLz+TlrAzVdxdmo9JDRWeh
         u89Zj8JQqTWjoNLj4ChJaPRtW0FTqo58zPDLYiiWBqTXxSOhpeProa4Vk0bW26QwnHaU
         x1OtSNQK51dWFTTCL3onBRj9kOJggqXmiuwwBSvtYfMypc6LuG8I1CvDDXtmLeI72jTn
         S7jQ==
X-Gm-Message-State: AOAM532sz7HdY5t54pK+CRw8Ytt31e0vODsfb26/8BwQn7CfmtfoS8Hh
	AW796/p7CR/JIjo4LumuFFU=
X-Google-Smtp-Source: ABdhPJyCFk7byAQoXqcP3FUHVzH6SQ9Ct3+P/HOEZ6UZYIYC0k3s/gxkL8EWv/hwamGgsBI0LvAYhA==
X-Received: by 2002:a37:a647:: with SMTP id p68mr5056189qke.189.1617223211279;
        Wed, 31 Mar 2021 13:40:11 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id p8sm2158947qtu.8.2021.03.31.13.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 13:40:10 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 31 Mar 2021 16:40:10 -0400
Message-Id: <43ACF8A6-727F-4B81-8696-51BA770C9CC3@gmail.com>
References: <CACDReSxORSk+h2=1K1M0yCHdy0Fe2526M77+U896KUW6_zYj2Q@mail.gmail.com>
In-Reply-To: <CACDReSxORSk+h2=1K1M0yCHdy0Fe2526M77+U896KUW6_zYj2Q@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: BUWTLR5EGCVYCTLJCR52UFZ4XW7VMVXF
X-Message-ID-Hash: BUWTLR5EGCVYCTLJCR52UFZ4XW7VMVXF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BUWTLR5EGCVYCTLJCR52UFZ4XW7VMVXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7175332341542454706=="


--===============7175332341542454706==
Content-Type: multipart/alternative; boundary=Apple-Mail-B7FB4F91-AF74-4771-A356-E90E5BC516B7
Content-Transfer-Encoding: 7bit


--Apple-Mail-B7FB4F91-AF74-4771-A356-E90E5BC516B7
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just use gettimeofday() or any of the myriad subtle variants available in bo=
ost to get you the Linux system time, and use that in a call to set_time_nex=
t_pps().=20

The fact that all your E310s will be running GPSD means they=E2=80=99ll be a=
djusting system time appropriately and they=E2=80=99ll all agree on what tim=
e it is, depending on the level of precision you need.=20

Sent from my iPhone

> On Mar 31, 2021, at 3:50 PM, Ofer Saferman <ofer@navigicom.com> wrote:
>=20
> =EF=BB=BF
> Thank you Rob. Your suggestions are always helpful. I will look into using=
 gps_gpgga.
> Thank you Marcus. I am already adding one, per other examples posted here a=
nd sync_to_gps example. Can you please comment how I can benefit from the fa=
ct that E310 units use gpsd in Linux?
>=20
> Regards,
> Ofer Saferman
>=20
>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>>=20
>>=20
>> Sent from my iPhone
>>=20
>>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu> wrote:
>>>>=20
>>> =EF=BB=BF
>>> Hi Ofer,
>>> Take a look at the Ettus source code gps_ctrl.cpp.  In particular, look a=
t the get_sentence() usage which in the case of "gps_time" waits for the nex=
t occurrence (wait=3Dtrue),  but for the others does not wait.  But this doe=
sn't fully explain the behavior you are seeing.  If you do the following:
>>> 1) wait for PPS time to change
>>> 2) read the "gps_time" sensor
>>> 3) set_time_next_pps (use the value you just read)
>> Add 1 to the time you just read before calling set_time_next_pps.=20
>>=20
>>=20
>>> It should still work because the "gps_time" command should just wait unt=
il the next PPS.  I guess it depends upon how "synchronized" are the receive=
d NMEA string with the PPS edge.  Step 1 above waits for the PPS edge, but m=
aybe the NMEA string arrives 0.1 secs before or after that.  I don't really k=
now.  Perhaps you need to switch to using "gps_gpgga" such that there is no a=
dditional wait added and also perhaps you should add step 1B which would be j=
ust a fixed delay of perhaps 0.4 secs so that you will read the NMEA string i=
n between the PPS edges.
>>> Rob
>>>=20
>>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>> Hi Ofer,
>>>> I don't know why the "gps_time" sensor takes long to read. But, can you=
 try the other sensors (perhaps there is a "gps_gpgga" sensor?)?  The time i=
s embedded in these as well. =20
>>>> Rob
>>>>=20
>>>>=20
>>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman <ofer@navigicom.com> wr=
ote:
>>>>> Marcus Hi,
>>>>>=20
>>>>> If the gps_time "sensor" returns a value only once per second how come=
 I manage to read it sometimes in less than 1 second?
>>>>> In my code the situation is worse than the simple example below. It us=
ually takes more than 1 sec. to read it and sometimes even 1.7 or 1.8 second=
s. I don't understand how the size or complexity of the code affects the tim=
e it takes to read gps_time.
>>>>>=20
>>>>> How to treat your comment about the use of GPSD and good synchronizati=
on as it relates to code?
>>>>> Should I not change the time source in code and go through the whole p=
rocess of synchronization using gps_time?
>>>>> Can I "assume" the systems are synced just by the effect they were con=
nected enough time to a GPS antenna? and then just access their time - radio=
_ctrl->get_time_last_pps()?
>>>>> How to use this information programmatically?
>>>>>=20
>>>>> Regards,
>>>>> Ofer Saferman
>>>>>=20
>>>>>=20
>>>>>> ---------- Forwarded message ----------
>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>>>> To: usrp-users@lists.ettus.com
>>>>>> Cc:=20
>>>>>> Bcc:=20
>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>>>>>> Subject: [USRP-users] Re: Intermittent problem with GPS synchronizati=
on for multiple E310 units
>>>>>> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
>>>>>> > Hello,
>>>>>> >
>>>>>> > I have a system that uses 4 USRP E310 units.
>>>>>> > Each unit is connected to a GPS antenna.
>>>>>> > Time source is set to gpsdo.
>>>>>> >
>>>>>> > I run the same software remotely on all 4 units from a PC. Software=
=20
>>>>>> > runs on the units themselves.
>>>>>> > I print out messages to show if the reference is locked and the GPS=
 is=20
>>>>>> > locked and also what is the GPS time that each unit was synchronize=
d to.
>>>>>> > In some cases the units synchronize to the same GPS time and in oth=
er=20
>>>>>> > cases there is 1 second difference between GPS time of different un=
its=20
>>>>>> > thus causing the units to be unsynchronized.
>>>>>> >
>>>>>> > I was wondering how this was possible.
>>>>>> > The synchronization process (documented by others in the past on th=
e=20
>>>>>> > mailing list) is:
>>>>>> > * Wait for ref and GPS lock
>>>>>> > * Wait for a pps edge (get_time_last_pps)
>>>>>> > * Read gps_time value
>>>>>> > * Sync system clock to GPS clock on next PPS edge (set_time_next_pp=
s +=20
>>>>>> > 1.0 sec)
>>>>>> >
>>>>>> > Something similar is also implemented in the sync_to_gps example.
>>>>>> >
>>>>>> > In order to debug the problem I decided to time the reading of the=20=

>>>>>> > gps_time sensor to see if there is a clue why different units miss t=
he=20
>>>>>> > PPS edge and lock to a time of the next second.
>>>>>> >
>>>>>> > I was very surprised to find out that it takes between 0.9 to 1.2=20=

>>>>>> > seconds to read the gps_time sensor.
>>>>>> > This explains exactly why it is difficult to synchronize multiple=20=

>>>>>> > units to the same time instance because if one unit takes 0.9 secon=
ds=20
>>>>>> > to read the sensor and the other unit takes 1.2 seconds to read the=
=20
>>>>>> > sensor then each unit will lock on a different GPS time 1 second ap=
art.
>>>>>> >
>>>>>> > Here is a short software I wrote to time the gps_time sensor readin=
g:
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
>>>>>> > ("args", po::value<std::string>(&args)->default_value(""), "device=20=

>>>>>> > address args")
>>>>>> >     ;
>>>>>> >
>>>>>> >     po::variables_map vm;
>>>>>> >     po::store(po::parse_command_line(argc, argv, desc), vm);
>>>>>> >     po::notify(vm);
>>>>>> >
>>>>>> >     //print the help message
>>>>>> >     if (vm.count("help")){
>>>>>> >         std::cout << boost::format("Timinig of gps_time: %s") % des=
c=20
>>>>>> > << std::endl;
>>>>>> >         return ~0;
>>>>>> >     }
>>>>>> >
>>>>>> > uhd::device3::sptr usrp =3D uhd::device3::make(args);
>>>>>> > //uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(=
args);
>>>>>> >
>>>>>> > uhd::sensor_value_t gps_time =3D=20
>>>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/g=
ps_time").get();
>>>>>> > //uhd::sensor_value_t gps_time =3D usrp->get_mboard_sensor("gps_tim=
e", 0);
>>>>>> >
>>>>>> > std::chrono::steady_clock::time_point start_time, end_time;
>>>>>> > std::chrono::duration<double> time_diff; // Default unit for durati=
on=20
>>>>>> > is seconds.
>>>>>> >
>>>>>> > for(int ii=3D0 ; ii<20 ; ii++)
>>>>>> > {
>>>>>> > start_time =3D std::chrono::steady_clock::now();
>>>>>> > gps_time =3D=20
>>>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/g=
ps_time").get();
>>>>>> > //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
>>>>>> > end_time =3D std::chrono::steady_clock::now();
>>>>>> > time_diff =3D end_time - start_time;
>>>>>> >
>>>>>> > std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: " <=
<=20
>>>>>> > int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<=20=

>>>>>> > (boost::format("%0.9f") % time_diff.count()) << " seconds" << std::=
endl;
>>>>>> > }
>>>>>> >
>>>>>> >     return 0;
>>>>>> > }
>>>>>> > -------------------------------------------------------------------=
-------------
>>>>>> > Here are the results of one typical run:
>>>>>> > gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 seco=
nds
>>>>>> > gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 seco=
nds
>>>>>> > gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 seco=
nds
>>>>>> > gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 seco=
nds
>>>>>> > gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 seco=
nds
>>>>>> > gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 seco=
nds
>>>>>> > gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 seco=
nds
>>>>>> > gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 seco=
nds
>>>>>> > gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 seco=
nds
>>>>>> > gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 seco=
nds
>>>>>> > gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 seco=
nds
>>>>>> > gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 seco=
nds
>>>>>> > gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 seco=
nds
>>>>>> > gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 seco=
nds
>>>>>> > gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 seco=
nds
>>>>>> > gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 seco=
nds
>>>>>> > gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 seco=
nds
>>>>>> > gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 seco=
nds
>>>>>> > gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 seco=
nds
>>>>>> > gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 seco=
nds
>>>>>> > -------------------------------------------------------------------=
----------------
>>>>>> > In the code you can find commented out the usual way to access the=20=

>>>>>> > sensor using multi_usrp and get_mboard_sensor. The results are quit=
e=20
>>>>>> > similar.
>>>>>> >
>>>>>> > I wonder if anybody encountered this issue before or addressed it i=
n=20
>>>>>> > any way.
>>>>>> > I wonder why it takes so much time to get the value of GPS time whe=
n=20
>>>>>> > it is a simple parsing of an NMEA message coming from the GPS recei=
ver.
>>>>>> >
>>>>>> > I am trying now various tricks to make the software robust and immu=
ne=20
>>>>>> > to this phenomenon. I can report my findings further if I succeed t=
o=20
>>>>>> > find a workaround if there is any interest.
>>>>>> >
>>>>>> > Can anyone comment on this? Can this be resolved so that the readin=
g=20
>>>>>> > of gps_time will be much faster?
>>>>>> > Is there another way to get GPS time faster indirectly? Maybe from=20=

>>>>>> > parsing NMEA messages ourselves?
>>>>>> >
>>>>>> > Regards,
>>>>>> > Ofer Saferman
>>>>>> >
>>>>>> This probably has to do with the way that particular "sensor" works--=
the=20
>>>>>> NMEA time value is only emitted once per second, and the
>>>>>>    code for that sensor has some heuristic for determining "freshness=
"=20
>>>>>> of the value.
>>>>>>=20
>>>>>> I'll point out that on E310, the system is configured to use GPSD, so=
=20
>>>>>> that the Linux system time across several systems that have all been
>>>>>>    "listening" to GPS for a while will all be synchronized quite well=
.
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>> --=20
>>>>> This message has been scanned for viruses and=20
>>>>> dangerous content by MailScanner, and is=20
>>>>> believed to be clean. _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
> --=20
> This message has been scanned for viruses and=20
> dangerous content by MailScanner, and is=20
> believed to be clean.

--Apple-Mail-B7FB4F91-AF74-4771-A356-E90E5BC516B7
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Just use gettimeofday() or any of the myria=
d subtle variants available in boost to get you the Linux system time, and u=
se that in a call to set_time_next_pps().&nbsp;<div><br></div><div>The fact t=
hat all your E310s will be running GPSD means they=E2=80=99ll be adjusting s=
ystem time appropriately and they=E2=80=99ll all agree on what time it is, d=
epending on the level of precision you need.&nbsp;<br><br><div dir=3D"ltr">S=
ent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Ma=
r 31, 2021, at 3:50 PM, Ofer Saferman &lt;ofer@navigicom.com&gt; wrote:<br><=
br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<d=
iv dir=3D"ltr"><div>Thank you Rob. Your suggestions are always helpful. I wi=
ll look into using gps_gpgga.</div><div>Thank you Marcus. I am already addin=
g one, per other examples posted here and sync_to_gps example. Can you pleas=
e comment how I can benefit from the fact that E310 units use gpsd in Linux?=
</div><div><br></div><div>Regards,</div><div>Ofer Saferman<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31,=
 2021 at 10:13 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"auto"><br><br><div dir=3D"ltr">Sent fro=
m my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 31, 2=
021, at 2:22 PM, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D=
"_blank">rkossler@nd.edu</a>&gt; wrote:<br><br></blockquote></div><blockquot=
e type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div dir=3D"ltr">=
Hi Ofer,</div><div dir=3D"ltr">Take a look at the Ettus source code gps_ctrl=
.cpp.&nbsp; In particular, look at the get_sentence() usage which in the cas=
e of "gps_time" waits for the next occurrence (wait=3Dtrue), &nbsp;but for t=
he others does not wait.&nbsp; But this doesn't fully explain the behavior y=
ou are seeing.&nbsp; If you do the following:<br>1) wait for PPS time to cha=
nge<br>2) read the "gps_time" sensor<br>3) set_time_next_pps (use the value y=
ou just read)<br></div></div></div></blockquote>Add 1 to the time you just r=
ead before calling set_time_next_pps.&nbsp;<div><br></div><div><br><blockquo=
te type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">It shoul=
d still work because the "gps_time" command should just wait until the next P=
PS.&nbsp; I guess it depends upon how "synchronized" are the received NMEA s=
tring with the PPS edge.&nbsp; Step 1 above waits for the PPS edge, but mayb=
e the NMEA string arrives 0.1 secs before or after that.&nbsp; I don't reall=
y know.&nbsp; Perhaps you need to switch to using "gps_gpgga" such that ther=
e is no additional wait added and also perhaps you should add step 1B which w=
ould be just a fixed delay of perhaps 0.4 secs so that you will read the NME=
A string in between the PPS edges.<br>Rob<br></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at 1:22 PM R=
ob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler=
@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hi Ofer,</div><div>I don't know why the "gps_time=
" sensor takes long to read. But, can you try the other sensors (perhaps the=
re is a "gps_gpgga" sensor?)?&nbsp; The time is embedded in these as well.&n=
bsp;&nbsp;</div><div>Rob</div><div><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at 12:21 PM Ofer S=
aferman &lt;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@nav=
igicom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Marcus Hi,</div><div dir=3D"ltr"><b=
r></div><div>If the gps_time "sensor" returns a value only once per second h=
ow come I manage to read it sometimes in less than 1 second?</div><div>In my=
 code the situation is worse than the simple example below. It usually takes=
 more than 1 sec. to read it and sometimes even 1.7 or 1.8 seconds. I don't u=
nderstand how the size or complexity of the code affects the time it takes t=
o read gps_time.<br></div><div dir=3D"ltr"><br></div><div>How to treat your c=
omment about the use of GPSD and good synchronization as it relates to code?=
</div><div>Should I not change the time source in code and go through the wh=
ole process of synchronization using gps_time?</div><div>Can I "assume" the s=
ystems are synced just by the effect they were connected enough time to a GP=
S antenna? and then just access their time - radio_ctrl-&gt;get_time_last_pp=
s()?</div><div>How to use this information programmatically?<br></div><div><=
br></div><div>Regards,</div><div>Ofer Saferman<br></div><br><div class=3D"gm=
ail_quote"><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">---------- Fo=
rwarded message ----------<br>From:&nbsp;"Marcus D. Leech" &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt;<br>To:&nbsp;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a><br>Cc:&nbsp;<br>Bcc:&nbsp;<br>Date:&nbsp;=
Wed, 31 Mar 2021 09:19:20 -0400<br>Subject:&nbsp;[USRP-users] Re: Intermitte=
nt problem with GPS synchronization for multiple E310 units<br>On 03/31/2021=
 06:49 AM, Ofer Saferman wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I have a system that uses 4 USRP E310 units.<br>
&gt; Each unit is connected to a GPS antenna.<br>
&gt; Time source is set to gpsdo.<br>
&gt;<br>
&gt; I run the same software remotely on all 4 units from a PC. Software <br=
>
&gt; runs on the units themselves.<br>
&gt; I print out messages to show if the reference is locked and the GPS is <=
br>
&gt; locked and also what is the GPS time that each unit was synchronized to=
.<br>
&gt; In some cases the units synchronize to the same GPS time and in other <=
br>
&gt; cases there is 1 second difference between GPS time of different units <=
br>
&gt; thus causing the units to be unsynchronized.<br>
&gt;<br>
&gt; I was wondering how this was possible.<br>
&gt; The synchronization process (documented by others in the past on the <b=
r>
&gt; mailing list) is:<br>
&gt; * Wait for ref and GPS lock<br>
&gt; * Wait for a pps edge (get_time_last_pps)<br>
&gt; * Read gps_time value<br>
&gt; * Sync system clock to GPS clock on next PPS edge (set_time_next_pps + <=
br>
&gt; 1.0 sec)<br>
&gt;<br>
&gt; Something similar is also implemented in the sync_to_gps example.<br>
&gt;<br>
&gt; In order to debug the problem I decided to time the reading of the <br>=

&gt; gps_time sensor to see if there is a clue why different units miss the <=
br>
&gt; PPS edge and lock to a time of the next second.<br>
&gt;<br>
&gt; I was very surprised to find out that it takes between 0.9 to 1.2 <br>
&gt; seconds to read the gps_time sensor.<br>
&gt; This explains exactly why it is difficult to synchronize multiple <br>
&gt; units to the same time instance because if one unit takes 0.9 seconds <=
br>
&gt; to read the sensor and the other unit takes 1.2 seconds to read the <br=
>
&gt; sensor then each unit will lock on a different GPS time 1 second apart.=
<br>
&gt;<br>
&gt; Here is a short software I wrote to time the gps_time sensor reading:<b=
r>
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
&gt;&nbsp; &nbsp; &nbsp;po::options_description desc("Allowed options");<br>=

&gt;&nbsp; &nbsp; &nbsp;desc.add_options()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;("help", "help message")<br>
&gt; ("args", po::value&lt;std::string&gt;(&amp;args)-&gt;default_value(""),=
 "device <br>
&gt; address args")<br>
&gt;&nbsp; &nbsp; &nbsp;;<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;po::variables_map vm;<br>
&gt;&nbsp; &nbsp; &nbsp;po::store(po::parse_command_line(argc, argv, desc), v=
m);<br>
&gt;&nbsp; &nbsp; &nbsp;po::notify(vm);<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;//print the help message<br>
&gt;&nbsp; &nbsp; &nbsp;if (vm.count("help")){<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;std::cout &lt;&lt; boost::format("Timi=
nig of gps_time: %s") % desc <br>
&gt; &lt;&lt; std::endl;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ~0;<br>
&gt;&nbsp; &nbsp; &nbsp;}<br>
&gt;<br>
&gt; uhd::device3::sptr usrp =3D uhd::device3::make(args);<br>
&gt; //uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(args=
);<br>
&gt;<br>
&gt; uhd::sensor_value_t gps_time =3D <br>
&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/s=
ensors/gps_time").get();<br>
&gt; //uhd::sensor_value_t gps_time =3D usrp-&gt;get_mboard_sensor("gps_time=
", 0);<br>
&gt;<br>
&gt; std::chrono::steady_clock::time_point start_time, end_time;<br>
&gt; std::chrono::duration&lt;double&gt; time_diff; // Default unit for dura=
tion <br>
&gt; is seconds.<br>
&gt;<br>
&gt; for(int ii=3D0 ; ii&lt;20 ; ii++)<br>
&gt; {<br>
&gt; start_time =3D std::chrono::steady_clock::now();<br>
&gt; gps_time =3D <br>
&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/s=
ensors/gps_time").get();<br>
&gt; //gps_time =3D usrp-&gt;get_mboard_sensor("gps_time", 0);<br>
&gt; end_time =3D std::chrono::steady_clock::now();<br>
&gt; time_diff =3D end_time - start_time;<br>
&gt;<br>
&gt; std::cout &lt;&lt; "gps_time[" &lt;&lt; (boost::format("%02d") % ii) &l=
t;&lt; "]: " &lt;&lt; <br>
&gt; int64_t(gps_time.to_int()) &lt;&lt; ". Time to read \"gps_time\": " &lt=
;&lt; <br>
&gt; (boost::format("%0.9f") % time_diff.count()) &lt;&lt; " seconds" &lt;&l=
t; std::endl;<br>
&gt; }<br>
&gt;<br>
&gt;&nbsp; &nbsp; &nbsp;return 0;<br>
&gt; }<br>
&gt; -----------------------------------------------------------------------=
---------<br>
&gt; Here are the results of one typical run:<br>
&gt; gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 seconds<=
br>
&gt; gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 seconds<=
br>
&gt; gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 seconds<=
br>
&gt; gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 seconds<=
br>
&gt; gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 seconds<=
br>
&gt; gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 seconds<=
br>
&gt; gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 seconds<=
br>
&gt; gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 seconds<=
br>
&gt; gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 seconds<=
br>
&gt; gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 seconds<=
br>
&gt; gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 seconds<=
br>
&gt; gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 seconds<=
br>
&gt; gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 seconds<=
br>
&gt; gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 seconds<=
br>
&gt; gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 seconds<=
br>
&gt; gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 seconds<=
br>
&gt; gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 seconds<=
br>
&gt; gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 seconds<=
br>
&gt; gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 seconds<=
br>
&gt; gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 seconds<=
br>
&gt; -----------------------------------------------------------------------=
------------<br>
&gt; In the code you can find commented out the usual way to access the <br>=

&gt; sensor using multi_usrp and get_mboard_sensor. The results are quite <b=
r>
&gt; similar.<br>
&gt;<br>
&gt; I wonder if anybody encountered this issue before or addressed it in <b=
r>
&gt; any way.<br>
&gt; I wonder why it takes so much time to get the value of GPS time when <b=
r>
&gt; it is a simple parsing of an NMEA message coming from the GPS receiver.=
<br>
&gt;<br>
&gt; I am trying now various tricks to make the software robust and immune <=
br>
&gt; to this phenomenon. I can report my findings further if I succeed to <b=
r>
&gt; find a workaround if there is any interest.<br>
&gt;<br>
&gt; Can anyone comment on this? Can this be resolved so that the reading <b=
r>
&gt; of gps_time will be much faster?<br>
&gt; Is there another way to get GPS time faster indirectly? Maybe from <br>=

&gt; parsing NMEA messages ourselves?<br>
&gt;<br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt;<br>
This probably has to do with the way that particular "sensor" works--the <br=
>
NMEA time value is only emitted once per second, and the<br>
&nbsp; &nbsp;code for that sensor has some heuristic for determining "freshn=
ess" <br>
of the value.<br>
<br>
I'll point out that on E310, the system is configured to use GPSD, so <br>
that the Linux system time across several systems that have all been<br>
&nbsp; &nbsp;"listening" to GPS for a while will all be synchronized quite w=
ell.<br>
<br>
<br><br>
</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</b=
></a>, and is
<br>believed to be clean.

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D=
"_blank">usrp-users@lists.ettus.com</a></span><br><span>To unsubscribe send a=
n email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_bl=
ank">usrp-users-leave@lists.ettus.com</a></span><br></div></blockquote></div=
></div></blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br>believed to be clean.

</div></blockquote></div></body></html>=

--Apple-Mail-B7FB4F91-AF74-4771-A356-E90E5BC516B7--

--===============7175332341542454706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7175332341542454706==--
