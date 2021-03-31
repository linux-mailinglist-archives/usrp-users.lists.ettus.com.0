Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 854D8350728
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 21:14:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 512EC383E67
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 15:14:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EEHmSB/k";
	dkim-atps=neutral
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 38EB1380926
	for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 15:13:24 -0400 (EDT)
Received: by mail-qk1-f181.google.com with SMTP id g20so20520394qkk.1
        for <usrp-users@lists.ettus.com>; Wed, 31 Mar 2021 12:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=SCx2dBEZwKsEgDJzG3IfuskWqekjENSSS29K7hIM0JY=;
        b=EEHmSB/kUeAR8OrIBswgQZ4pNJW/1WTBCrZbmkp8ERuFN2x+qZ9fe+Fy0IvDMltzXb
         AGmi4jFd1AgfB8EwJtXk3lkwXyJAfoorOPFXq7SM0y1+b2tg86jzMtxcEPQ2rlkNEtBO
         qyeTzUV/grFakysqxsyv9xkLYFWnVToOV9RlECUEYbtBqbQGaYYFYg9aOp6OGbUP8v29
         7R5NBdNxyj9O4uZPLQuq4rhqkPEh8jfJyPc3L5QqsmDIUcOD+Q8MfFgxnPsunMSmQ7AH
         0uu2VCyt05DMau6SzfLG9bcWANaZ7Rb1TZ2btxV64+CLm2AsnbDSkDGu6FzEWbcVIN4B
         TJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=SCx2dBEZwKsEgDJzG3IfuskWqekjENSSS29K7hIM0JY=;
        b=rESOzsexleeEqK0znqGiavP5GZf7U7GhFGROVYz7s/c7fb6yGovk+gQjQV9f9Mh8p9
         /u+mY6Ar3bJnmFubv6FbNln8VVOaZUWBMDqk27VVnkxmV0TdBUSuKo5c52luKRInWxuE
         hbw7/aTHdNHKt/IxiJcdbMg8A2la8+Z7Zyk7SJhQhbgiW8WqSUwnL4vUBQ2XCRsjRF/U
         donjgjCzgYTNo12GS0wIDuH0NNAd+8uyU3qTh+uN7F2fzHZlBqEP6nfvxvtO2AfqXT7I
         kTcLoF9FeoilRNQPRsSrBh5alpgAG+R0/aYDSNdoyHV3IyYtxANbGo0c0zTb1+f+3Z4K
         vojA==
X-Gm-Message-State: AOAM531S9g5/CZOnOIikfugucUM8HbbdeaGh8nfN8hdILgvWZb+rrgoz
	2V64oV5MoUCiY3mXzGRS83Y=
X-Google-Smtp-Source: ABdhPJzufj8jFZqhIsWoYTINObRw0v9FLrSUiqW5xCpIKx8p43rWwNONR+TCO28cczLD5WmB8sMSzQ==
X-Received: by 2002:a05:620a:791:: with SMTP id 17mr4846945qka.170.1617218003611;
        Wed, 31 Mar 2021 12:13:23 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id i17sm1989329qtr.33.2021.03.31.12.13.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 12:13:23 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 31 Mar 2021 15:13:22 -0400
Message-Id: <A515B4DD-A356-41B3-A1A2-23E6AF5F3F3A@gmail.com>
References: <CAB__hTS1hZ+BrmZ2pMnLiss0FF=HEW6qq3owAT9X9egB69WCwA@mail.gmail.com>
In-Reply-To: <CAB__hTS1hZ+BrmZ2pMnLiss0FF=HEW6qq3owAT9X9egB69WCwA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: GUGXRSGQFYOLSWM3WT7LMDJLCBUXJX56
X-Message-ID-Hash: GUGXRSGQFYOLSWM3WT7LMDJLCBUXJX56
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ofer Saferman <ofer@navigicom.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GUGXRSGQFYOLSWM3WT7LMDJLCBUXJX56/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9082805461569239093=="


--===============9082805461569239093==
Content-Type: multipart/alternative; boundary=Apple-Mail-84A9B5FE-26F6-44D7-8AC8-9B2ACBEC5AC2
Content-Transfer-Encoding: 7bit


--Apple-Mail-84A9B5FE-26F6-44D7-8AC8-9B2ACBEC5AC2
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



Sent from my iPhone

> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> Hi Ofer,
> Take a look at the Ettus source code gps_ctrl.cpp.  In particular, look at=
 the get_sentence() usage which in the case of "gps_time" waits for the next=
 occurrence (wait=3Dtrue),  but for the others does not wait.  But this does=
n't fully explain the behavior you are seeing.  If you do the following:
> 1) wait for PPS time to change
> 2) read the "gps_time" sensor
> 3) set_time_next_pps (use the value you just read)
Add 1 to the time you just read before calling set_time_next_pps.=20


> It should still work because the "gps_time" command should just wait until=
 the next PPS.  I guess it depends upon how "synchronized" are the received N=
MEA string with the PPS edge.  Step 1 above waits for the PPS edge, but mayb=
e the NMEA string arrives 0.1 secs before or after that.  I don't really kno=
w.  Perhaps you need to switch to using "gps_gpgga" such that there is no ad=
ditional wait added and also perhaps you should add step 1B which would be j=
ust a fixed delay of perhaps 0.4 secs so that you will read the NMEA string i=
n between the PPS edges.
> Rob
>=20
>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:
>> Hi Ofer,
>> I don't know why the "gps_time" sensor takes long to read. But, can you t=
ry the other sensors (perhaps there is a "gps_gpgga" sensor?)?  The time is e=
mbedded in these as well. =20
>> Rob
>>=20
>>=20
>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman <ofer@navigicom.com> wrot=
e:
>>> Marcus Hi,
>>>=20
>>> If the gps_time "sensor" returns a value only once per second how come I=
 manage to read it sometimes in less than 1 second?
>>> In my code the situation is worse than the simple example below. It usua=
lly takes more than 1 sec. to read it and sometimes even 1.7 or 1.8 seconds.=
 I don't understand how the size or complexity of the code affects the time i=
t takes to read gps_time.
>>>=20
>>> How to treat your comment about the use of GPSD and good synchronization=
 as it relates to code?
>>> Should I not change the time source in code and go through the whole pro=
cess of synchronization using gps_time?
>>> Can I "assume" the systems are synced just by the effect they were conne=
cted enough time to a GPS antenna? and then just access their time - radio_c=
trl->get_time_last_pps()?
>>> How to use this information programmatically?
>>>=20
>>> Regards,
>>> Ofer Saferman
>>>=20
>>>=20
>>>> ---------- Forwarded message ----------
>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>> To: usrp-users@lists.ettus.com
>>>> Cc:=20
>>>> Bcc:=20
>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>>>> Subject: [USRP-users] Re: Intermittent problem with GPS synchronization=
 for multiple E310 units
>>>> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
>>>> > Hello,
>>>> >
>>>> > I have a system that uses 4 USRP E310 units.
>>>> > Each unit is connected to a GPS antenna.
>>>> > Time source is set to gpsdo.
>>>> >
>>>> > I run the same software remotely on all 4 units from a PC. Software=20=

>>>> > runs on the units themselves.
>>>> > I print out messages to show if the reference is locked and the GPS i=
s=20
>>>> > locked and also what is the GPS time that each unit was synchronized t=
o.
>>>> > In some cases the units synchronize to the same GPS time and in other=
=20
>>>> > cases there is 1 second difference between GPS time of different unit=
s=20
>>>> > thus causing the units to be unsynchronized.
>>>> >
>>>> > I was wondering how this was possible.
>>>> > The synchronization process (documented by others in the past on the=20=

>>>> > mailing list) is:
>>>> > * Wait for ref and GPS lock
>>>> > * Wait for a pps edge (get_time_last_pps)
>>>> > * Read gps_time value
>>>> > * Sync system clock to GPS clock on next PPS edge (set_time_next_pps +=
=20
>>>> > 1.0 sec)
>>>> >
>>>> > Something similar is also implemented in the sync_to_gps example.
>>>> >
>>>> > In order to debug the problem I decided to time the reading of the=20=

>>>> > gps_time sensor to see if there is a clue why different units miss th=
e=20
>>>> > PPS edge and lock to a time of the next second.
>>>> >
>>>> > I was very surprised to find out that it takes between 0.9 to 1.2=20
>>>> > seconds to read the gps_time sensor.
>>>> > This explains exactly why it is difficult to synchronize multiple=20
>>>> > units to the same time instance because if one unit takes 0.9 seconds=
=20
>>>> > to read the sensor and the other unit takes 1.2 seconds to read the=20=

>>>> > sensor then each unit will lock on a different GPS time 1 second apar=
t.
>>>> >
>>>> > Here is a short software I wrote to time the gps_time sensor reading:=

>>>> > ---------------------------------------------------------
>>>> > #include <uhd/utils/safe_main.hpp>
>>>> > #include <uhd/device3.hpp>
>>>> > //#include <uhd/usrp/multi_usrp.hpp>
>>>> > #include <uhd/types/sensors.hpp>
>>>> > #include <boost/program_options.hpp>
>>>> > #include <boost/format.hpp>
>>>> > #include <chrono>
>>>> > #include <iostream>
>>>> >
>>>> > namespace po =3D boost::program_options;
>>>> >
>>>> > int UHD_SAFE_MAIN(int argc, char *argv[]){
>>>> >
>>>> > std::string args;
>>>> >
>>>> >     po::options_description desc("Allowed options");
>>>> >     desc.add_options()
>>>> >         ("help", "help message")
>>>> > ("args", po::value<std::string>(&args)->default_value(""), "device=20=

>>>> > address args")
>>>> >     ;
>>>> >
>>>> >     po::variables_map vm;
>>>> >     po::store(po::parse_command_line(argc, argv, desc), vm);
>>>> >     po::notify(vm);
>>>> >
>>>> >     //print the help message
>>>> >     if (vm.count("help")){
>>>> >         std::cout << boost::format("Timinig of gps_time: %s") % desc=20=

>>>> > << std::endl;
>>>> >         return ~0;
>>>> >     }
>>>> >
>>>> > uhd::device3::sptr usrp =3D uhd::device3::make(args);
>>>> > //uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(ar=
gs);
>>>> >
>>>> > uhd::sensor_value_t gps_time =3D=20
>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps=
_time").get();
>>>> > //uhd::sensor_value_t gps_time =3D usrp->get_mboard_sensor("gps_time"=
, 0);
>>>> >
>>>> > std::chrono::steady_clock::time_point start_time, end_time;
>>>> > std::chrono::duration<double> time_diff; // Default unit for duration=
=20
>>>> > is seconds.
>>>> >
>>>> > for(int ii=3D0 ; ii<20 ; ii++)
>>>> > {
>>>> > start_time =3D std::chrono::steady_clock::now();
>>>> > gps_time =3D=20
>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps=
_time").get();
>>>> > //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
>>>> > end_time =3D std::chrono::steady_clock::now();
>>>> > time_diff =3D end_time - start_time;
>>>> >
>>>> > std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: " <<=20=

>>>> > int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<=20
>>>> > (boost::format("%0.9f") % time_diff.count()) << " seconds" << std::en=
dl;
>>>> > }
>>>> >
>>>> >     return 0;
>>>> > }
>>>> > ---------------------------------------------------------------------=
-----------
>>>> > Here are the results of one typical run:
>>>> > gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 second=
s
>>>> > gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 second=
s
>>>> > gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 second=
s
>>>> > gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 second=
s
>>>> > gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 second=
s
>>>> > gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 second=
s
>>>> > gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 second=
s
>>>> > gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 second=
s
>>>> > gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 second=
s
>>>> > gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 second=
s
>>>> > gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 second=
s
>>>> > gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 second=
s
>>>> > gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 second=
s
>>>> > gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 second=
s
>>>> > gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 second=
s
>>>> > gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 second=
s
>>>> > gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 second=
s
>>>> > gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 second=
s
>>>> > gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 second=
s
>>>> > gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 second=
s
>>>> > ---------------------------------------------------------------------=
--------------
>>>> > In the code you can find commented out the usual way to access the=20=

>>>> > sensor using multi_usrp and get_mboard_sensor. The results are quite=20=

>>>> > similar.
>>>> >
>>>> > I wonder if anybody encountered this issue before or addressed it in=20=

>>>> > any way.
>>>> > I wonder why it takes so much time to get the value of GPS time when=20=

>>>> > it is a simple parsing of an NMEA message coming from the GPS receive=
r.
>>>> >
>>>> > I am trying now various tricks to make the software robust and immune=
=20
>>>> > to this phenomenon. I can report my findings further if I succeed to=20=

>>>> > find a workaround if there is any interest.
>>>> >
>>>> > Can anyone comment on this? Can this be resolved so that the reading=20=

>>>> > of gps_time will be much faster?
>>>> > Is there another way to get GPS time faster indirectly? Maybe from=20=

>>>> > parsing NMEA messages ourselves?
>>>> >
>>>> > Regards,
>>>> > Ofer Saferman
>>>> >
>>>> This probably has to do with the way that particular "sensor" works--th=
e=20
>>>> NMEA time value is only emitted once per second, and the
>>>>    code for that sensor has some heuristic for determining "freshness"=20=

>>>> of the value.
>>>>=20
>>>> I'll point out that on E310, the system is configured to use GPSD, so=20=

>>>> that the Linux system time across several systems that have all been
>>>>    "listening" to GPS for a while will all be synchronized quite well.
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>> --=20
>>> This message has been scanned for viruses and=20
>>> dangerous content by MailScanner, and is=20
>>> believed to be clean. _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-84A9B5FE-26F6-44D7-8AC8-9B2ACBEC5AC2
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><br><div dir=3D"ltr">Sent from my iPhon=
e</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Mar 31, 2021, at 2:=
22 PM, Rob Kossler &lt;rkossler@nd.edu&gt; wrote:<br><br></blockquote></div>=
<blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div di=
r=3D"ltr">Hi Ofer,</div><div dir=3D"ltr">Take a look at the Ettus source cod=
e gps_ctrl.cpp.&nbsp; In particular, look at the get_sentence() usage which i=
n the case of "gps_time" waits for the next occurrence (wait=3Dtrue), &nbsp;=
but for the others does not wait.&nbsp; But this doesn't fully explain the b=
ehavior you are seeing.&nbsp; If you do the following:<br>1) wait for PPS ti=
me to change<br>2) read the "gps_time" sensor<br>3) set_time_next_pps (use t=
he value you just read)<br></div></div></div></blockquote>Add 1 to the time y=
ou just read before calling set_time_next_pps.&nbsp;<div><br></div><div><br>=
<blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
>It should still work because the "gps_time" command should just wait until t=
he next PPS.&nbsp; I guess it depends upon how "synchronized" are the receiv=
ed NMEA string with the PPS edge.&nbsp; Step 1 above waits for the PPS edge,=
 but maybe the NMEA string arrives 0.1 secs before or after that.&nbsp; I do=
n't really know.&nbsp; Perhaps you need to switch to using "gps_gpgga" such t=
hat there is no additional wait added and also perhaps you should add step 1=
B which would be just a fixed delay of perhaps 0.4 secs so that you will rea=
d the NMEA string in between the PPS edges.<br>Rob<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at 1=
:22 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Hi Ofer,</div><div>I don't know why the "gps_time" sensor ta=
kes long to read. But, can you try the other sensors (perhaps there is a "gp=
s_gpgga" sensor?)?&nbsp; The time is embedded in these as well.&nbsp;&nbsp;<=
/div><div>Rob</div><div><br></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman &l=
t;<a href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div dir=3D"ltr">Marcus Hi,</div><div dir=3D"ltr"><br></div><=
div>If the gps_time "sensor" returns a value only once per second how come I=
 manage to read it sometimes in less than 1 second?</div><div>In my code the=
 situation is worse than the simple example below. It usually takes more tha=
n 1 sec. to read it and sometimes even 1.7 or 1.8 seconds. I don't understan=
d how the size or complexity of the code affects the time it takes to read g=
ps_time.<br></div><div dir=3D"ltr"><br></div><div>How to treat your comment a=
bout the use of GPSD and good synchronization as it relates to code?</div><d=
iv>Should I not change the time source in code and go through the whole proc=
ess of synchronization using gps_time?</div><div>Can I "assume" the systems a=
re synced just by the effect they were connected enough time to a GPS antenn=
a? and then just access their time - radio_ctrl-&gt;get_time_last_pps()?</di=
v><div>How to use this information programmatically?<br></div><div><br></div=
><div>Regards,</div><div>Ofer Saferman<br></div><br><div class=3D"gmail_quot=
e"><br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">---------- Forwarded=
 message ----------<br>From:&nbsp;"Marcus D. Leech" &lt;<a href=3D"mailto:pa=
tchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>=
To:&nbsp;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usr=
p-users@lists.ettus.com</a><br>Cc:&nbsp;<br>Bcc:&nbsp;<br>Date:&nbsp;Wed, 31=
 Mar 2021 09:19:20 -0400<br>Subject:&nbsp;[USRP-users] Re: Intermittent prob=
lem with GPS synchronization for multiple E310 units<br>On 03/31/2021 06:49 A=
M, Ofer Saferman wrote:<br>
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
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-84A9B5FE-26F6-44D7-8AC8-9B2ACBEC5AC2--

--===============9082805461569239093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9082805461569239093==--
