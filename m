Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 540F3352B17
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 15:42:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 93FEE383E08
	for <lists+usrp-users@lfdr.de>; Fri,  2 Apr 2021 09:42:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HWgZze0W";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 8E9463839B9
	for <usrp-users@lists.ettus.com>; Fri,  2 Apr 2021 09:41:45 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id x14so5256126qki.10
        for <usrp-users@lists.ettus.com>; Fri, 02 Apr 2021 06:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=folfD9Gv9aBDxAg+sSU8iRJIDS6ufvgw4FJ+jrFrydo=;
        b=HWgZze0Wlrqq/oc7ArxzezXocpnhePvflDHbS8St+pQHDPyniFFY7aO8fP+G0SQexi
         L5zetdLntFsNm3ifFeFH1OZ9Ds8L6iuufhDvAObTIk1uiCAd0/H52MJ6tV5j6677nSwE
         FQOksbnY5bGd8ZyoaUHI3DSwn3JV4j4NBjxjXw5rgkTnqtST/I8gxIu5+vszNK9+3d/0
         QL8d744FZjbA1KCzWNmkiKQMfREEY3nm6MyWTAES6ndqZA7njQkQD2oPkETZoi3kaHY3
         veG8jh5GDU5a+qi+O7Nfmg93ZX1HV8xSzG0u4stAs9krdzTFSK4EZzrGBjl6UmSv9wb3
         LlzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=folfD9Gv9aBDxAg+sSU8iRJIDS6ufvgw4FJ+jrFrydo=;
        b=RdnmN7vu1G9aYqSJrRDs/mNlSyxpl8L6eZkgTsiXqnPS0F5FkouTofzVSS0AOalxid
         pOiE7W/d2cv35hAm+ynrW+gijIA0qS5rfS4nMt7g45IGQkAB5R2W84E+fGX7XDTlTXdU
         b+0yd8xcF2RcmSaigjgefrNtZ4MtwTqAJl+ug3xOxyk7OdptlLGTCmymSmyU6y9LpZVD
         S/FJYBVqDeX8YBYQ2m1iybWF0y4dtTylJz57N6P+Q8I0UTKqrJtPfZn4qPf8ELarXybL
         UY9OqW+tXwfL3tXEXtFFCU8WyeaQAyH/qBIypvHsr5U/2Xpoqrb89I+59v8JYU268K9C
         fBVA==
X-Gm-Message-State: AOAM531k+2gpxW5I6YuTipfTsNGaGE6CsWiyQojqxguh61uElPHb+Ao/
	EBwZtbRkf0TYu8HJhs1Gfhw=
X-Google-Smtp-Source: ABdhPJzd7wrpZLLpwdZvuzChs6S+9ImKqUxv2+/A0oRaAwJs8pf0IU2Gl2JPb6GguLQK/T2mhV0L5Q==
X-Received: by 2002:a05:620a:7:: with SMTP id j7mr13260048qki.161.1617370904934;
        Fri, 02 Apr 2021 06:41:44 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id o7sm7376619qkb.104.2021.04.02.06.41.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 06:41:44 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 2 Apr 2021 09:41:43 -0400
Message-Id: <80D16539-D712-4128-9EC8-3E3ED3549544@gmail.com>
References: <CACDReSw+=bZJhNwcaSHRb25vgVo1zWGhaOFyJ62UvanmATmHgw@mail.gmail.com>
In-Reply-To: <CACDReSw+=bZJhNwcaSHRb25vgVo1zWGhaOFyJ62UvanmATmHgw@mail.gmail.com>
To: Ofer Saferman <ofer@navigicom.com>
X-Mailer: iPhone Mail (18D61)
Message-ID-Hash: IOGHEO3R2Z6XNPJVBOHLIYHHRPBSJWTB
X-Message-ID-Hash: IOGHEO3R2Z6XNPJVBOHLIYHHRPBSJWTB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IOGHEO3R2Z6XNPJVBOHLIYHHRPBSJWTB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5840943112421080767=="


--===============5840943112421080767==
Content-Type: multipart/alternative; boundary=Apple-Mail-88EA9510-897E-4430-9A57-AC35807772E8
Content-Transfer-Encoding: 7bit


--Apple-Mail-88EA9510-897E-4430-9A57-AC35807772E8
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It may be the case that either the current OE image they use chronyd rather t=
han ntpd. I have a query in to Ettus/NI R&D for guidance.=20

Sent from my iPhone

> On Apr 2, 2021, at 7:26 AM, Ofer Saferman <ofer@navigicom.com> wrote:
>=20
> =EF=BB=BF
> Marcus Hi,
>=20
> Your suggestion below to install ntpd does not work.
> The image does not include it. Although the old thread says otherwise I th=
ink it refers to an older UHD release that did include ntpd.
> Any accurate instructions on how to install it anyway?=20
> Maybe opkg should be configured to access another repository?=20
> Doing: opkg list | grep ntpd, does not yield anything useful so it is not j=
ust a question of typing it correctly.
>=20
> Regards,
> Ofer Saferman
>=20
>> On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech <patchvonbraun@gmail.com> w=
rote:
>> On 04/01/2021 06:00 AM, Ofer Saferman wrote:
>>> Hello Marcus,
>>>=20
>>> I am working on E310 with the latest UHD-3.15 SD card image.
>>> It seems not to include ntpd that is required to synchronize system time=
 to GPS time.
>>> Any idea how to install it on the E310?
>>>=20
>>> Regards,
>>> Ofer Saferman
>> sudo opkg install ntpd
>>=20
>> should work, but it has been a while since I installed any packages on my=
 E310.
>>=20
>> The E310 is based on OpenEmbedded Linux, so all the info about installing=
 and managing packages on OpenEmbedded apply.
>>=20
>>=20
>>>=20
>>> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech <patchvonbraun@gmail.com=
> wrote:
>>>> Just use gettimeofday() or any of the myriad subtle variants available i=
n boost to get you the Linux system time, and use that in a call to set_time=
_next_pps().=20
>>>>=20
>>>> The fact that all your E310s will be running GPSD means they=E2=80=99ll=
 be adjusting system time appropriately and they=E2=80=99ll all agree on wha=
t time it is, depending on the level of precision you need.=20
>>>>=20
>>>> Sent from my iPhone
>>>>=20
>>>>> On Mar 31, 2021, at 3:50 PM, Ofer Saferman <ofer@navigicom.com> wrote:=

>>>>>=20
>>>>> =EF=BB=BF
>>>>> Thank you Rob. Your suggestions are always helpful. I will look into u=
sing gps_gpgga.
>>>>> Thank you Marcus. I am already adding one, per other examples posted h=
ere and sync_to_gps example. Can you please comment how I can benefit from t=
he fact that E310 units use gpsd in Linux?
>>>>>=20
>>>>> Regards,
>>>>> Ofer Saferman
>>>>>=20
>>>>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <patchvonbraun@gmail.c=
om> wrote:
>>>>>>=20
>>>>>>=20
>>>>>> Sent from my iPhone
>>>>>>=20
>>>>>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>>=20
>>>>>>> =EF=BB=BF
>>>>>>> Hi Ofer,
>>>>>>> Take a look at the Ettus source code gps_ctrl.cpp.  In particular, l=
ook at the get_sentence() usage which in the case of "gps_time" waits for th=
e next occurrence (wait=3Dtrue),  but for the others does not wait.  But thi=
s doesn't fully explain the behavior you are seeing.  If you do the followin=
g:
>>>>>>> 1) wait for PPS time to change
>>>>>>> 2) read the "gps_time" sensor
>>>>>>> 3) set_time_next_pps (use the value you just read)
>>>>>> Add 1 to the time you just read before calling set_time_next_pps.=20
>>>>>>=20
>>>>>>=20
>>>>>>> It should still work because the "gps_time" command should just wait=
 until the next PPS.  I guess it depends upon how "synchronized" are the rec=
eived NMEA string with the PPS edge.  Step 1 above waits for the PPS edge, b=
ut maybe the NMEA string arrives 0.1 secs before or after that.  I don't rea=
lly know.  Perhaps you need to switch to using "gps_gpgga" such that there i=
s no additional wait added and also perhaps you should add step 1B which wou=
ld be just a fixed delay of perhaps 0.4 secs so that you will read the NMEA s=
tring in between the PPS edges.
>>>>>>> Rob
>>>>>>>=20
>>>>>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:=

>>>>>>>> Hi Ofer,
>>>>>>>> I don't know why the "gps_time" sensor takes long to read. But, can=
 you try the other sensors (perhaps there is a "gps_gpgga" sensor?)?  The ti=
me is embedded in these as well. =20
>>>>>>>> Rob
>>>>>>>>=20
>>>>>>>>=20
>>>>>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman <ofer@navigicom.com>=
 wrote:
>>>>>>>>> Marcus Hi,
>>>>>>>>>=20
>>>>>>>>> If the gps_time "sensor" returns a value only once per second how c=
ome I manage to read it sometimes in less than 1 second?
>>>>>>>>> In my code the situation is worse than the simple example below. I=
t usually takes more than 1 sec. to read it and sometimes even 1.7 or 1.8 se=
conds. I don't understand how the size or complexity of the code affects the=
 time it takes to read gps_time.
>>>>>>>>>=20
>>>>>>>>> How to treat your comment about the use of GPSD and good synchroni=
zation as it relates to code?
>>>>>>>>> Should I not change the time source in code and go through the who=
le process of synchronization using gps_time?
>>>>>>>>> Can I "assume" the systems are synced just by the effect they were=
 connected enough time to a GPS antenna? and then just access their time - r=
adio_ctrl->get_time_last_pps()?
>>>>>>>>> How to use this information programmatically?
>>>>>>>>>=20
>>>>>>>>> Regards,
>>>>>>>>> Ofer Saferman
>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>>> ---------- Forwarded message ----------
>>>>>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>>>>>>>>>> To: usrp-users@lists.ettus.com
>>>>>>>>>> Cc:=20
>>>>>>>>>> Bcc:=20
>>>>>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
>>>>>>>>>> Subject: [USRP-users] Re: Intermittent problem with GPS synchroni=
zation for multiple E310 units
>>>>>>>>>> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
>>>>>>>>>> > Hello,
>>>>>>>>>> >
>>>>>>>>>> > I have a system that uses 4 USRP E310 units.
>>>>>>>>>> > Each unit is connected to a GPS antenna.
>>>>>>>>>> > Time source is set to gpsdo.
>>>>>>>>>> >
>>>>>>>>>> > I run the same software remotely on all 4 units from a PC. Soft=
ware=20
>>>>>>>>>> > runs on the units themselves.
>>>>>>>>>> > I print out messages to show if the reference is locked and the=
 GPS is=20
>>>>>>>>>> > locked and also what is the GPS time that each unit was synchro=
nized to.
>>>>>>>>>> > In some cases the units synchronize to the same GPS time and in=
 other=20
>>>>>>>>>> > cases there is 1 second difference between GPS time of differen=
t units=20
>>>>>>>>>> > thus causing the units to be unsynchronized.
>>>>>>>>>> >
>>>>>>>>>> > I was wondering how this was possible.
>>>>>>>>>> > The synchronization process (documented by others in the past o=
n the=20
>>>>>>>>>> > mailing list) is:
>>>>>>>>>> > * Wait for ref and GPS lock
>>>>>>>>>> > * Wait for a pps edge (get_time_last_pps)
>>>>>>>>>> > * Read gps_time value
>>>>>>>>>> > * Sync system clock to GPS clock on next PPS edge (set_time_nex=
t_pps +=20
>>>>>>>>>> > 1.0 sec)
>>>>>>>>>> >
>>>>>>>>>> > Something similar is also implemented in the sync_to_gps exampl=
e.
>>>>>>>>>> >
>>>>>>>>>> > In order to debug the problem I decided to time the reading of t=
he=20
>>>>>>>>>> > gps_time sensor to see if there is a clue why different units m=
iss the=20
>>>>>>>>>> > PPS edge and lock to a time of the next second.
>>>>>>>>>> >
>>>>>>>>>> > I was very surprised to find out that it takes between 0.9 to 1=
.2=20
>>>>>>>>>> > seconds to read the gps_time sensor.
>>>>>>>>>> > This explains exactly why it is difficult to synchronize multip=
le=20
>>>>>>>>>> > units to the same time instance because if one unit takes 0.9 s=
econds
>>>>>>>>>> > to read the sensor and the other unit takes 1.2 seconds to read=
 the=20
>>>>>>>>>> > sensor then each unit will lock on a different GPS time 1 secon=
d apart.
>>>>>>>>>> >
>>>>>>>>>> > Here is a short software I wrote to time the gps_time sensor re=
ading:
>>>>>>>>>> > ---------------------------------------------------------
>>>>>>>>>> > #include <uhd/utils/safe_main.hpp>
>>>>>>>>>> > #include <uhd/device3.hpp>
>>>>>>>>>> > //#include <uhd/usrp/multi_usrp.hpp>
>>>>>>>>>> > #include <uhd/types/sensors.hpp>
>>>>>>>>>> > #include <boost/program_options.hpp>
>>>>>>>>>> > #include <boost/format.hpp>
>>>>>>>>>> > #include <chrono>
>>>>>>>>>> > #include <iostream>
>>>>>>>>>> >
>>>>>>>>>> > namespace po =3D boost::program_options;
>>>>>>>>>> >
>>>>>>>>>> > int UHD_SAFE_MAIN(int argc, char *argv[]){
>>>>>>>>>> >
>>>>>>>>>> > std::string args;
>>>>>>>>>> >
>>>>>>>>>> >     po::options_description desc("Allowed options");
>>>>>>>>>> >     desc.add_options()
>>>>>>>>>> >         ("help", "help message")
>>>>>>>>>> > ("args", po::value<std::string>(&args)->default_value(""), "dev=
ice=20
>>>>>>>>>> > address args")
>>>>>>>>>> >     ;
>>>>>>>>>> >
>>>>>>>>>> >     po::variables_map vm;
>>>>>>>>>> >     po::store(po::parse_command_line(argc, argv, desc), vm);
>>>>>>>>>> >     po::notify(vm);
>>>>>>>>>> >
>>>>>>>>>> >     //print the help message
>>>>>>>>>> >     if (vm.count("help")){
>>>>>>>>>> >         std::cout << boost::format("Timinig of gps_time: %s") %=
 desc=20
>>>>>>>>>> > << std::endl;
>>>>>>>>>> >         return ~0;
>>>>>>>>>> >     }
>>>>>>>>>> >
>>>>>>>>>> > uhd::device3::sptr usrp =3D uhd::device3::make(args);
>>>>>>>>>> > //uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::m=
ake(args);
>>>>>>>>>> >
>>>>>>>>>> > uhd::sensor_value_t gps_time =3D=20
>>>>>>>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/senso=
rs/gps_time").get();
>>>>>>>>>> > //uhd::sensor_value_t gps_time =3D usrp->get_mboard_sensor("gps=
_time", 0);
>>>>>>>>>> >
>>>>>>>>>> > std::chrono::steady_clock::time_point start_time, end_time;
>>>>>>>>>> > std::chrono::duration<double> time_diff; // Default unit for du=
ration=20
>>>>>>>>>> > is seconds.
>>>>>>>>>> >
>>>>>>>>>> > for(int ii=3D0 ; ii<20 ; ii++)
>>>>>>>>>> > {
>>>>>>>>>> > start_time =3D std::chrono::steady_clock::now();
>>>>>>>>>> > gps_time =3D=20
>>>>>>>>>> > usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/senso=
rs/gps_time").get();
>>>>>>>>>> > //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
>>>>>>>>>> > end_time =3D std::chrono::steady_clock::now();
>>>>>>>>>> > time_diff =3D end_time - start_time;
>>>>>>>>>> >
>>>>>>>>>> > std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]:=
 " <<=20
>>>>>>>>>> > int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <=
<=20
>>>>>>>>>> > (boost::format("%0.9f") % time_diff.count()) << " seconds" << s=
td::endl;
>>>>>>>>>> > }
>>>>>>>>>> >
>>>>>>>>>> >     return 0;
>>>>>>>>>> > }
>>>>>>>>>> > ---------------------------------------------------------------=
-----------------
>>>>>>>>>> > Here are the results of one typical run:
>>>>>>>>>> > gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380 s=
econds
>>>>>>>>>> > gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469 s=
econds
>>>>>>>>>> > gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661 s=
econds
>>>>>>>>>> > gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987 s=
econds
>>>>>>>>>> > gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154 s=
econds
>>>>>>>>>> > gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985 s=
econds
>>>>>>>>>> > gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099 s=
econds
>>>>>>>>>> > gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282 s=
econds
>>>>>>>>>> > gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551 s=
econds
>>>>>>>>>> > gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231 s=
econds
>>>>>>>>>> > gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740 s=
econds
>>>>>>>>>> > gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817 s=
econds
>>>>>>>>>> > gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945 s=
econds
>>>>>>>>>> > gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533 s=
econds
>>>>>>>>>> > gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726 s=
econds
>>>>>>>>>> > gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380 s=
econds
>>>>>>>>>> > gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096 s=
econds
>>>>>>>>>> > gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229 s=
econds
>>>>>>>>>> > gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593 s=
econds
>>>>>>>>>> > gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247 s=
econds
>>>>>>>>>> > ---------------------------------------------------------------=
--------------------
>>>>>>>>>> > In the code you can find commented out the usual way to access t=
he=20
>>>>>>>>>> > sensor using multi_usrp and get_mboard_sensor. The results are q=
uite=20
>>>>>>>>>> > similar.
>>>>>>>>>> >
>>>>>>>>>> > I wonder if anybody encountered this issue before or addressed i=
t in=20
>>>>>>>>>> > any way.
>>>>>>>>>> > I wonder why it takes so much time to get the value of GPS time=
 when=20
>>>>>>>>>> > it is a simple parsing of an NMEA message coming from the GPS r=
eceiver.
>>>>>>>>>> >
>>>>>>>>>> > I am trying now various tricks to make the software robust and i=
mmune=20
>>>>>>>>>> > to this phenomenon. I can report my findings further if I succe=
ed to=20
>>>>>>>>>> > find a workaround if there is any interest.
>>>>>>>>>> >
>>>>>>>>>> > Can anyone comment on this? Can this be resolved so that the re=
ading=20
>>>>>>>>>> > of gps_time will be much faster?
>>>>>>>>>> > Is there another way to get GPS time faster indirectly? Maybe f=
rom=20
>>>>>>>>>> > parsing NMEA messages ourselves?
>>>>>>>>>> >
>>>>>>>>>> > Regards,
>>>>>>>>>> > Ofer Saferman
>>>>>>>>>> >
>>>>>>>>>> This probably has to do with the way that particular "sensor" wor=
ks--the=20
>>>>>>>>>> NMEA time value is only emitted once per second, and the
>>>>>>>>>>    code for that sensor has some heuristic for determining "fresh=
ness"=20
>>>>>>>>>> of the value.
>>>>>>>>>>=20
>>>>>>>>>> I'll point out that on E310, the system is configured to use GPSD=
, so=20
>>>>>>>>>> that the Linux system time across several systems that have all b=
een
>>>>>>>>>>    "listening" to GPS for a while will all be synchronized quite w=
ell.
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>=20
>>>>>>>>> --=20
>>>>>>>>> This message has been scanned for viruses and=20
>>>>>>>>> dangerous content by MailScanner, and is=20
>>>>>>>>> believed to be clean. ____________________________________________=
___
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>=20
>>>>> --=20
>>>>> This message has been scanned for viruses and=20
>>>>> dangerous content by MailScanner, and is=20
>>>>> believed to be clean.
>>>=20
>>> --=20
>>> This message has been scanned for viruses and=20
>>> dangerous content by MailScanner, and is=20
>>> believed to be clean.
>>=20
>=20
> --=20
> This message has been scanned for viruses and=20
> dangerous content by MailScanner, and is=20
> believed to be clean.

--Apple-Mail-88EA9510-897E-4430-9A57-AC35807772E8
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It may be the case that either the current O=
E image they use chronyd rather than ntpd. I have a query in to Ettus/NI R&a=
mp;D for guidance.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</div><d=
iv dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 2, 2021, at 7:26 AM, Ofe=
r Saferman &lt;ofer@navigicom.com&gt; wrote:<br><br></blockquote></div><bloc=
kquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr"><div>Marcus H=
i,</div><div><br></div><div>Your suggestion below to install ntpd does not w=
ork.</div><div>The image does not include it. Although the old thread says o=
therwise I think it refers to an older UHD release that did include ntpd.</d=
iv><div>Any accurate instructions on how to install it anyway? <br></div><di=
v>Maybe opkg should be configured to access another repository? <br></div><d=
iv>Doing: opkg list | grep ntpd, does not yield anything useful so it is not=
 just a question of typing it correctly.</div><div><br></div><div>Regards,</=
div><div>Ofer Saferman<br></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
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
            11:40 PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmai=
l.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"auto">Just use gettimeofday() or any of the myriad
              subtle variants available in boost to get you the Linux
              system time, and use that in a call to
              set_time_next_pps().&nbsp;
              <div><br>
              </div>
              <div>The fact that all your E310s will be running GPSD
                means they=E2=80=99ll be adjusting system time appropriately=
 and
                they=E2=80=99ll all agree on what time it is, depending on t=
he
                level of precision you need.&nbsp;<br>
                <br>
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br>
                  <blockquote type=3D"cite">On Mar 31, 2021, at 3:50 PM,
                    Ofer Saferman &lt;<a href=3D"mailto:ofer@navigicom.com" t=
arget=3D"_blank">ofer@navigicom.com</a>&gt;
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
                          31, 2021 at 10:13 PM Marcus D Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</=
a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"auto"><br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Mar 31, 2021,
                                at 2:22 PM, Rob Kossler &lt;<a href=3D"mailt=
o:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">Hi Ofer,</div>
                                  <div dir=3D"ltr">Take a look at the
                                    Ettus source code gps_ctrl.cpp.&nbsp; In=

                                    particular, look at the
                                    get_sentence() usage which in the
                                    case of "gps_time" waits for the
                                    next occurrence (wait=3Dtrue), &nbsp;but=

                                    for the others does not wait.&nbsp; But
                                    this doesn't fully explain the
                                    behavior you are seeing.&nbsp; If you do=

                                    the following:<br>
                                    1) wait for PPS time to change<br>
                                    2) read the "gps_time" sensor<br>
                                    3) set_time_next_pps (use the value
                                    you just read)<br>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                            Add 1 to the time you just read before
                            calling set_time_next_pps.&nbsp;
                            <div><br>
                            </div>
                            <div><br>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">It should still work
                                      because the "gps_time" command
                                      should just wait until the next
                                      PPS.&nbsp; I guess it depends upon how=

                                      "synchronized" are the received
                                      NMEA string with the PPS edge.&nbsp;
                                      Step 1 above waits for the PPS
                                      edge, but maybe the NMEA string
                                      arrives 0.1 secs before or after
                                      that.&nbsp; I don't really know.&nbsp;=

                                      Perhaps you need to switch to
                                      using "gps_gpgga" such that there
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
                                      <div dir=3D"ltr" class=3D"gmail_attr">=
On
                                        Wed, Mar 31, 2021 at 1:22 PM Rob
                                        Kossler &lt;<a href=3D"mailto:rkossl=
er@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
                                        <div dir=3D"ltr">
                                          <div>Hi Ofer,</div>
                                          <div>I don't know why the
                                            "gps_time" sensor takes long
                                            to read. But, can you try
                                            the other sensors (perhaps
                                            there is a "gps_gpgga"
                                            sensor?)?&nbsp; The time is
                                            embedded in these as well.&nbsp;=
&nbsp;</div>
                                          <div>Rob</div>
                                          <div><br>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr" class=3D"gmail_=
attr">On Wed,
                                              Mar 31, 2021 at 12:21 PM
                                              Ofer Saferman &lt;<a href=3D"m=
ailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;
                                              wrote:<br>
                                            </div>
                                            <blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">Marcus
                                                  Hi,</div>
                                                <div dir=3D"ltr"><br>
                                                </div>
                                                <div>If the gps_time
                                                  "sensor" returns a
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
                                                  don't understand how
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
                                                <div>Can I "assume" the
                                                  systems are synced
                                                  just by the effect
                                                  they were connected
                                                  enough time to a GPS
                                                  antenna? and then just
                                                  access their time -
                                                  radio_ctrl-&gt;get_time_la=
st_pps()?</div>
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
                                                <div class=3D"gmail_quote"><=
br>
                                                  <blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">----------
                                                    Forwarded message
                                                    ----------<br>
                                                    From:&nbsp;"Marcus D.
                                                    Leech" &lt;<a href=3D"ma=
ilto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt;<br>
                                                    To:&nbsp;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com<=
/a><br>
                                                    Cc:&nbsp;<br>
                                                    Bcc:&nbsp;<br>
                                                    Date:&nbsp;Wed, 31 Mar
                                                    2021 09:19:20 -0400<br>
                                                    Subject:&nbsp;[USRP-user=
s]
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
                                                    sync_to_gps example.<br>=

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
                                                    the gps_time sensor.<br>=

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
                                                    time 1 second apart.<br>=

                                                    &gt;<br>
                                                    &gt; Here is a short
                                                    software I wrote to
                                                    time the gps_time
                                                    sensor reading:<br>
                                                    &gt;
                                                    ------------------------=
---------------------------------<br>
                                                    &gt; #include
                                                    &lt;uhd/utils/safe_main.=
hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/device3.hpp&gt;<=
br>
                                                    &gt; //#include
                                                    &lt;uhd/usrp/multi_usrp.=
hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/types/sensors.hp=
p&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/program_option=
s.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/format.hpp&gt;=
<br>
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
                                                    argc, char *argv[]){<br>=

                                                    &gt;<br>
                                                    &gt; std::string
                                                    args;<br>
                                                    &gt;<br>
                                                    &gt;&nbsp; &nbsp;
                                                    &nbsp;po::options_descri=
ption
                                                    desc("Allowed
                                                    options");<br>
                                                    &gt;&nbsp; &nbsp;
                                                    &nbsp;desc.add_options()=
<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp;
                                                    &nbsp;("help", "help
                                                    message")<br>
                                                    &gt; ("args",
                                                    po::value&lt;std::string=
&gt;(&amp;args)-&gt;default_value(""),
                                                    "device <br>
                                                    &gt; address args")<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
;<br>
                                                    &gt;<br>
                                                    &gt;&nbsp; &nbsp;
                                                    &nbsp;po::variables_map
                                                    vm;<br>
                                                    &gt;&nbsp; &nbsp;
                                                    &nbsp;po::store(po::pars=
e_command_line(argc,
                                                    argv, desc), vm);<br>
                                                    &gt;&nbsp; &nbsp;
                                                    &nbsp;po::notify(vm);<br=
>
                                                    &gt;<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
//print the
                                                    help message<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
if
                                                    (vm.count("help")){<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp;
                                                    &nbsp;std::cout &lt;&lt;=

                                                    boost::format("Timinig
                                                    of gps_time: %s") %
                                                    desc <br>
                                                    &gt; &lt;&lt;
                                                    std::endl;<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return
                                                    ~0;<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
}<br>
                                                    &gt;<br>
                                                    &gt;
                                                    uhd::device3::sptr
                                                    usrp =3D
                                                    uhd::device3::make(args)=
;<br>
                                                    &gt;
                                                    //uhd::usrp::multi_usrp:=
:sptr
                                                    usrp =3D
                                                    uhd::usrp::multi_usrp::m=
ake(args);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    uhd::sensor_value_t
                                                    gps_time =3D <br>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sensor=
s/gps_time").get();<br>
                                                    &gt;
                                                    //uhd::sensor_value_t
                                                    gps_time =3D
                                                    usrp-&gt;get_mboard_sens=
or("gps_time",
                                                    0);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    std::chrono::steady_cloc=
k::time_point
                                                    start_time,
                                                    end_time;<br>
                                                    &gt;
                                                    std::chrono::duration&lt=
;double&gt;
                                                    time_diff; //
                                                    Default unit for
                                                    duration <br>
                                                    &gt; is seconds.<br>
                                                    &gt;<br>
                                                    &gt; for(int ii=3D0 ;
                                                    ii&lt;20 ; ii++)<br>
                                                    &gt; {<br>
                                                    &gt; start_time =3D
                                                    std::chrono::steady_cloc=
k::now();<br>
                                                    &gt; gps_time =3D <br>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sensor=
s/gps_time").get();<br>
                                                    &gt; //gps_time =3D
                                                    usrp-&gt;get_mboard_sens=
or("gps_time",
                                                    0);<br>
                                                    &gt; end_time =3D
                                                    std::chrono::steady_cloc=
k::now();<br>
                                                    &gt; time_diff =3D
                                                    end_time -
                                                    start_time;<br>
                                                    &gt;<br>
                                                    &gt; std::cout
                                                    &lt;&lt; "gps_time["
                                                    &lt;&lt;
                                                    (boost::format("%02d")
                                                    % ii) &lt;&lt; "]: "
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    int64_t(gps_time.to_int(=
))
                                                    &lt;&lt; ". Time to
                                                    read \"gps_time\": "
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    (boost::format("%0.9f")
                                                    % time_diff.count())
                                                    &lt;&lt; " seconds"
                                                    &lt;&lt; std::endl;<br>
                                                    &gt; }<br>
                                                    &gt;<br>
                                                    &gt;&nbsp; &nbsp; &nbsp;=
return 0;<br>
                                                    &gt; }<br>
                                                    &gt;
----------------------------------------------------------------------------=
----<br>
                                                    &gt; Here are the
                                                    results of one
                                                    typical run:<br>
                                                    &gt; gps_time[00]:
                                                    1617183840. Time to
                                                    read "gps_time":
                                                    0.884164380 seconds<br>
                                                    &gt; gps_time[01]:
                                                    1617183841. Time to
                                                    read "gps_time":
                                                    0.877966469 seconds<br>
                                                    &gt; gps_time[02]:
                                                    1617183842. Time to
                                                    read "gps_time":
                                                    1.170869661 seconds<br>
                                                    &gt; gps_time[03]:
                                                    1617183843. Time to
                                                    read "gps_time":
                                                    0.882917987 seconds<br>
                                                    &gt; gps_time[04]:
                                                    1617183844. Time to
                                                    read "gps_time":
                                                    1.172120154 seconds<br>
                                                    &gt; gps_time[05]:
                                                    1617183845. Time to
                                                    read "gps_time":
                                                    0.879271985 seconds<br>
                                                    &gt; gps_time[06]:
                                                    1617183846. Time to
                                                    read "gps_time":
                                                    0.878609099 seconds<br>
                                                    &gt; gps_time[07]:
                                                    1617183847. Time to
                                                    read "gps_time":
                                                    1.115639282 seconds<br>
                                                    &gt; gps_time[08]:
                                                    1617183848. Time to
                                                    read "gps_time":
                                                    1.125365551 seconds<br>
                                                    &gt; gps_time[09]:
                                                    1617183849. Time to
                                                    read "gps_time":
                                                    0.843803231 seconds<br>
                                                    &gt; gps_time[10]:
                                                    1617183850. Time to
                                                    read "gps_time":
                                                    1.125065740 seconds<br>
                                                    &gt; gps_time[11]:
                                                    1617183851. Time to
                                                    read "gps_time":
                                                    0.847519817 seconds<br>
                                                    &gt; gps_time[12]:
                                                    1617183852. Time to
                                                    read "gps_time":
                                                    1.121398945 seconds<br>
                                                    &gt; gps_time[13]:
                                                    1617183853. Time to
                                                    read "gps_time":
                                                    0.844371533 seconds<br>
                                                    &gt; gps_time[14]:
                                                    1617183854. Time to
                                                    read "gps_time":
                                                    1.124722726 seconds<br>
                                                    &gt; gps_time[15]:
                                                    1617183855. Time to
                                                    read "gps_time":
                                                    0.845688380 seconds<br>
                                                    &gt; gps_time[16]:
                                                    1617183856. Time to
                                                    read "gps_time":
                                                    1.129568096 seconds<br>
                                                    &gt; gps_time[17]:
                                                    1617183857. Time to
                                                    read "gps_time":
                                                    0.882436229 seconds<br>
                                                    &gt; gps_time[18]:
                                                    1617183858. Time to
                                                    read "gps_time":
                                                    1.168227593 seconds<br>
                                                    &gt; gps_time[19]:
                                                    1617183859. Time to
                                                    read "gps_time":
                                                    0.881948247 seconds<br>
                                                    &gt;
----------------------------------------------------------------------------=
-------<br>
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
                                                    will be much faster?<br>=

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
                                                    particular "sensor"
                                                    works--the <br>
                                                    NMEA time value is
                                                    only emitted once
                                                    per second, and the<br>
                                                    &nbsp; &nbsp;code for th=
at
                                                    sensor has some
                                                    heuristic for
                                                    determining
                                                    "freshness" <br>
                                                    of the value.<br>
                                                    <br>
                                                    I'll point out that
                                                    on E310, the system
                                                    is configured to use
                                                    GPSD, so <br>
                                                    that the Linux
                                                    system time across
                                                    several systems that
                                                    have all been<br>
                                                    &nbsp; &nbsp;"listening"=
 to
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
                                              <a href=3D"http://www.mailscan=
ner.info/" target=3D"_blank"><b>MailScanner</b></a>,
                                              and is
                                              <br>
                                              believed to be clean.
_______________________________________________<br>
                                              USRP-users mailing list --
                                              <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                                              To unsubscribe send an
                                              email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettu=
s.com</a><br>
                                            </blockquote>
                                          </div>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </div>
                                  <span>____________________________________=
___________</span><br>
                                  <span>USRP-users mailing list -- <a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a></span><br>
                                  <span>To unsubscribe send an email to
                                    <a href=3D"mailto:usrp-users-leave@lists=
.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a></span><br=
>
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
                    <a href=3D"http://www.mailscanner.info/" target=3D"_blan=
k"><b>MailScanner</b></a>, and is
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
      <a href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScan=
ner</b></a>,
      and is
      <br>
      believed to be clean.
    </blockquote>
    <br>
  </div>

</blockquote></div></div>
<br>--=20
<br>This message has been scanned for viruses and
<br>dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br>believed to be clean.

</div></blockquote></body></html>=

--Apple-Mail-88EA9510-897E-4430-9A57-AC35807772E8--

--===============5840943112421080767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5840943112421080767==--
