Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F6435153C
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 15:35:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E9F7B383AAA
	for <lists+usrp-users@lfdr.de>; Thu,  1 Apr 2021 09:35:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Q5b9Qxyo";
	dkim-atps=neutral
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 90A2C3837F6
	for <usrp-users@lists.ettus.com>; Thu,  1 Apr 2021 09:34:25 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id q26so2140136qkm.6
        for <usrp-users@lists.ettus.com>; Thu, 01 Apr 2021 06:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=ArRVyBv+Rue/I/0h0zxwZSsT1gisRVZvrx0y5md/Vb4=;
        b=Q5b9Qxyo2zNFDolqJUivhIfHBgKkp2Cnkr2HZRnDE+ofW1wSufH0uwoOJ0oogEly2h
         4B3MSdRXZ0ox05KUOmfeWsQ8MCiE5AKYQ5Wmuxgyy/5eT7Pxi1oKOoDDtlcamCDSvPJo
         v+//wMk/rkTdiZ/X6uKpixNhZI/Q6YTgW2XWF7bENA5PEzW3LJ+ezWpAjOXBHAlXsUyk
         R8xCZpDgaPh4z1Nit3IuDY37dXo27sn9FaSwDOcOdxqZhlJtaLc/+eTuXpug2X4NJElO
         c018MKaiQqLF+tvklIbXlqNqOOvEFAD3uZOhvJ2S7Qv1ZZn1KgpHld1ik8Mn6MEynH/R
         H6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=ArRVyBv+Rue/I/0h0zxwZSsT1gisRVZvrx0y5md/Vb4=;
        b=JzQe5s2IbUu0nXtrepaeIQafdk9pIrS71fiHMJetxOJoHTIXrSGeVbD4B+K2QSR0xd
         OCsa56CSwKGsiD3T5jJjqmZN3nbDkaR7fzel9UgoJ0rPoIqFuwDxm4+lDLFx2/WANQVk
         Ass18zr8LceO0KGhGvvFT7AasJe6odKml+osiW4Fm+oY9/Qpfaq1Xn54IVSheLI2PaUc
         KwZT1EQvHq/opwOw+IgwjIRTtG/6eFlbEL+k8/lcGDjEos8CMz6iOM8uGaKJJ9yizQ6o
         d/OldMPkotWYr0y360AAwKKt0Efr1UpntkCSXFbroCtnt/m9hVH2/C75kuRf1tH/xzm3
         WNCQ==
X-Gm-Message-State: AOAM5324uLAqarcaksXERb59yzb9hI9/Uzkb1eIu4cG3BDneMadtNfJL
	O8pKKFhDyXRFKZttmACKfcXvR2+Sb2E=
X-Google-Smtp-Source: ABdhPJxVYMySrOUsx5GViCyboy/xD+VDMvEsOQF1cYJdVU6q7JHlNHuHwVOY/pvbUGnvzAxJdBvN/w==
X-Received: by 2002:ae9:f444:: with SMTP id z4mr8430857qkl.226.1617284064659;
        Thu, 01 Apr 2021 06:34:24 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id e2sm3429042qto.50.2021.04.01.06.34.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Apr 2021 06:34:23 -0700 (PDT)
Message-ID: <6065CBDF.4090603@gmail.com>
Date: Thu, 01 Apr 2021 09:34:23 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Ofer Saferman <ofer@navigicom.com>
References: <CACDReSxORSk+h2=1K1M0yCHdy0Fe2526M77+U896KUW6_zYj2Q@mail.gmail.com> <43ACF8A6-727F-4B81-8696-51BA770C9CC3@gmail.com> <CACDReSz8BcZU8=KDRw3v4y9GqNEDi8C-_YQXHydd3FcFJ7_JWg@mail.gmail.com>
In-Reply-To: <CACDReSz8BcZU8=KDRw3v4y9GqNEDi8C-_YQXHydd3FcFJ7_JWg@mail.gmail.com>
Message-ID-Hash: E23U2QV7OUAE7YKEQFFX5CQ647E5A2FQ
X-Message-ID-Hash: E23U2QV7OUAE7YKEQFFX5CQ647E5A2FQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E23U2QV7OUAE7YKEQFFX5CQ647E5A2FQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6172839522001620223=="

This is a multi-part message in MIME format.
--===============6172839522001620223==
Content-Type: multipart/alternative;
 boundary="------------070109060409040509070507"

This is a multi-part message in MIME format.
--------------070109060409040509070507
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/01/2021 06:00 AM, Ofer Saferman wrote:
> Hello Marcus,
>
> I am working on E310 with the latest UHD-3.15 SD card image.
> It seems not to include ntpd that is required to synchronize system=20
> time to GPS time.
> Any idea how to install it on the E310?
>
> Regards,
> Ofer Saferman
sudo opkg install ntpd

should work, but it has been a while since I installed any packages on=20
my E310.

The E310 is based on OpenEmbedded Linux, so all the info about=20
installing and managing packages on OpenEmbedded apply.


>
> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech=20
> <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>
>     Just use gettimeofday() or any of the myriad subtle variants
>     available in boost to get you the Linux system time, and use that
>     in a call to set_time_next_pps().
>
>     The fact that all your E310s will be running GPSD means they=E2=80=99=
ll be
>     adjusting system time appropriately and they=E2=80=99ll all agree o=
n what
>     time it is, depending on the level of precision you need.
>
>     Sent from my iPhone
>
>>     On Mar 31, 2021, at 3:50 PM, Ofer Saferman <ofer@navigicom.com
>>     <mailto:ofer@navigicom.com>> wrote:
>>
>>     =EF=BB=BF
>>     Thank you Rob. Your suggestions are always helpful. I will look
>>     into using gps_gpgga.
>>     Thank you Marcus. I am already adding one, per other examples
>>     posted here and sync_to_gps example. Can you please comment how I
>>     can benefit from the fact that E310 units use gpsd in Linux?
>>
>>     Regards,
>>     Ofer Saferman
>>
>>     On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech
>>     <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>
>>
>>         Sent from my iPhone
>>
>>>         On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu
>>>         <mailto:rkossler@nd.edu>> wrote:
>>>
>>>         =EF=BB=BF
>>>         Hi Ofer,
>>>         Take a look at the Ettus source code gps_ctrl.cpp.  In
>>>         particular, look at the get_sentence() usage which in the
>>>         case of "gps_time" waits for the next occurrence
>>>         (wait=3Dtrue),  but for the others does not wait.  But this
>>>         doesn't fully explain the behavior you are seeing.  If you
>>>         do the following:
>>>         1) wait for PPS time to change
>>>         2) read the "gps_time" sensor
>>>         3) set_time_next_pps (use the value you just read)
>>         Add 1 to the time you just read before calling
>>         set_time_next_pps.
>>
>>
>>>         It should still work because the "gps_time" command should
>>>         just wait until the next PPS.  I guess it depends upon how
>>>         "synchronized" are the received NMEA string with the PPS
>>>         edge. Step 1 above waits for the PPS edge, but maybe the
>>>         NMEA string arrives 0.1 secs before or after that.  I don't
>>>         really know. Perhaps you need to switch to using "gps_gpgga"
>>>         such that there is no additional wait added and also perhaps
>>>         you should add step 1B which would be just a fixed delay of
>>>         perhaps 0.4 secs so that you will read the NMEA string in
>>>         between the PPS edges.
>>>         Rob
>>>
>>>         On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu
>>>         <mailto:rkossler@nd.edu>> wrote:
>>>
>>>             Hi Ofer,
>>>             I don't know why the "gps_time" sensor takes long to
>>>             read. But, can you try the other sensors (perhaps there
>>>             is a "gps_gpgga" sensor?)?  The time is embedded in
>>>             these as well.
>>>             Rob
>>>
>>>
>>>             On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman
>>>             <ofer@navigicom.com <mailto:ofer@navigicom.com>> wrote:
>>>
>>>                 Marcus Hi,
>>>
>>>                 If the gps_time "sensor" returns a value only once
>>>                 per second how come I manage to read it sometimes in
>>>                 less than 1 second?
>>>                 In my code the situation is worse than the simple
>>>                 example below. It usually takes more than 1 sec. to
>>>                 read it and sometimes even 1.7 or 1.8 seconds. I
>>>                 don't understand how the size or complexity of the
>>>                 code affects the time it takes to read gps_time.
>>>
>>>                 How to treat your comment about the use of GPSD and
>>>                 good synchronization as it relates to code?
>>>                 Should I not change the time source in code and go
>>>                 through the whole process of synchronization using
>>>                 gps_time?
>>>                 Can I "assume" the systems are synced just by the
>>>                 effect they were connected enough time to a GPS
>>>                 antenna? and then just access their time -
>>>                 radio_ctrl->get_time_last_pps()?
>>>                 How to use this information programmatically?
>>>
>>>                 Regards,
>>>                 Ofer Saferman
>>>
>>>
>>>                     ---------- Forwarded message ----------
>>>                     From: "Marcus D. Leech" <patchvonbraun@gmail.com
>>>                     <mailto:patchvonbraun@gmail.com>>
>>>                     To: usrp-users@lists.ettus.com
>>>                     <mailto:usrp-users@lists.ettus.com>
>>>                     Cc:
>>>                     Bcc:
>>>                     Date: Wed, 31 Mar 2021 09:19:20 -0400
>>>                     Subject: [USRP-users] Re: Intermittent problem
>>>                     with GPS synchronization for multiple E310 units
>>>                     On 03/31/2021 06:49 AM, Ofer Saferman wrote:
>>>                     > Hello,
>>>                     >
>>>                     > I have a system that uses 4 USRP E310 units.
>>>                     > Each unit is connected to a GPS antenna.
>>>                     > Time source is set to gpsdo.
>>>                     >
>>>                     > I run the same software remotely on all 4
>>>                     units from a PC. Software
>>>                     > runs on the units themselves.
>>>                     > I print out messages to show if the reference
>>>                     is locked and the GPS is
>>>                     > locked and also what is the GPS time that each
>>>                     unit was synchronized to.
>>>                     > In some cases the units synchronize to the
>>>                     same GPS time and in other
>>>                     > cases there is 1 second difference between GPS
>>>                     time of different units
>>>                     > thus causing the units to be unsynchronized.
>>>                     >
>>>                     > I was wondering how this was possible.
>>>                     > The synchronization process (documented by
>>>                     others in the past on the
>>>                     > mailing list) is:
>>>                     > * Wait for ref and GPS lock
>>>                     > * Wait for a pps edge (get_time_last_pps)
>>>                     > * Read gps_time value
>>>                     > * Sync system clock to GPS clock on next PPS
>>>                     edge (set_time_next_pps +
>>>                     > 1.0 sec)
>>>                     >
>>>                     > Something similar is also implemented in the
>>>                     sync_to_gps example.
>>>                     >
>>>                     > In order to debug the problem I decided to
>>>                     time the reading of the
>>>                     > gps_time sensor to see if there is a clue why
>>>                     different units miss the
>>>                     > PPS edge and lock to a time of the next second.
>>>                     >
>>>                     > I was very surprised to find out that it takes
>>>                     between 0.9 to 1.2
>>>                     > seconds to read the gps_time sensor.
>>>                     > This explains exactly why it is difficult to
>>>                     synchronize multiple
>>>                     > units to the same time instance because if one
>>>                     unit takes 0.9 seconds
>>>                     > to read the sensor and the other unit takes
>>>                     1.2 seconds to read the
>>>                     > sensor then each unit will lock on a different
>>>                     GPS time 1 second apart.
>>>                     >
>>>                     > Here is a short software I wrote to time the
>>>                     gps_time sensor reading:
>>>                     >
>>>                     -------------------------------------------------=
--------
>>>                     > #include <uhd/utils/safe_main.hpp>
>>>                     > #include <uhd/device3.hpp>
>>>                     > //#include <uhd/usrp/multi_usrp.hpp>
>>>                     > #include <uhd/types/sensors.hpp>
>>>                     > #include <boost/program_options.hpp>
>>>                     > #include <boost/format.hpp>
>>>                     > #include <chrono>
>>>                     > #include <iostream>
>>>                     >
>>>                     > namespace po =3D boost::program_options;
>>>                     >
>>>                     > int UHD_SAFE_MAIN(int argc, char *argv[]){
>>>                     >
>>>                     > std::string args;
>>>                     >
>>>                     >  po::options_description desc("Allowed options"=
);
>>>                     >  desc.add_options()
>>>                     >  ("help", "help message")
>>>                     > ("args",
>>>                     po::value<std::string>(&args)->default_value(""),=
 "device
>>>
>>>                     > address args")
>>>                     >     ;
>>>                     >
>>>                     >  po::variables_map vm;
>>>                     >  po::store(po::parse_command_line(argc, argv,
>>>                     desc), vm);
>>>                     >  po::notify(vm);
>>>                     >
>>>                     >     //print the help message
>>>                     >     if (vm.count("help")){
>>>                     >  std::cout << boost::format("Timinig of
>>>                     gps_time: %s") % desc
>>>                     > << std::endl;
>>>                     >         return ~0;
>>>                     >     }
>>>                     >
>>>                     > uhd::device3::sptr usrp =3D
>>>                     uhd::device3::make(args);
>>>                     > //uhd::usrp::multi_usrp::sptr usrp =3D
>>>                     uhd::usrp::multi_usrp::make(args);
>>>                     >
>>>                     > uhd::sensor_value_t gps_time =3D
>>>                     >
>>>                     usrp->get_tree()->access<uhd::sensor_value_t>("/m=
boards/0/sensors/gps_time").get();
>>>                     > //uhd::sensor_value_t gps_time =3D
>>>                     usrp->get_mboard_sensor("gps_time", 0);
>>>                     >
>>>                     > std::chrono::steady_clock::time_point
>>>                     start_time, end_time;
>>>                     > std::chrono::duration<double> time_diff; //
>>>                     Default unit for duration
>>>                     > is seconds.
>>>                     >
>>>                     > for(int ii=3D0 ; ii<20 ; ii++)
>>>                     > {
>>>                     > start_time =3D std::chrono::steady_clock::now()=
;
>>>                     > gps_time =3D
>>>                     >
>>>                     usrp->get_tree()->access<uhd::sensor_value_t>("/m=
boards/0/sensors/gps_time").get();
>>>                     > //gps_time =3D
>>>                     usrp->get_mboard_sensor("gps_time", 0);
>>>                     > end_time =3D std::chrono::steady_clock::now();
>>>                     > time_diff =3D end_time - start_time;
>>>                     >
>>>                     > std::cout << "gps_time[" <<
>>>                     (boost::format("%02d") % ii) << "]: " <<
>>>                     > int64_t(gps_time.to_int()) << ". Time to read
>>>                     \"gps_time\": " <<
>>>                     > (boost::format("%0.9f") % time_diff.count())
>>>                     << " seconds" << std::endl;
>>>                     > }
>>>                     >
>>>                     >     return 0;
>>>                     > }
>>>                     >
>>>                     -------------------------------------------------=
-------------------------------
>>>                     > Here are the results of one typical run:
>>>                     > gps_time[00]: 1617183840. Time to read
>>>                     "gps_time": 0.884164380 seconds
>>>                     > gps_time[01]: 1617183841. Time to read
>>>                     "gps_time": 0.877966469 seconds
>>>                     > gps_time[02]: 1617183842. Time to read
>>>                     "gps_time": 1.170869661 seconds
>>>                     > gps_time[03]: 1617183843. Time to read
>>>                     "gps_time": 0.882917987 seconds
>>>                     > gps_time[04]: 1617183844. Time to read
>>>                     "gps_time": 1.172120154 seconds
>>>                     > gps_time[05]: 1617183845. Time to read
>>>                     "gps_time": 0.879271985 seconds
>>>                     > gps_time[06]: 1617183846. Time to read
>>>                     "gps_time": 0.878609099 seconds
>>>                     > gps_time[07]: 1617183847. Time to read
>>>                     "gps_time": 1.115639282 seconds
>>>                     > gps_time[08]: 1617183848. Time to read
>>>                     "gps_time": 1.125365551 seconds
>>>                     > gps_time[09]: 1617183849. Time to read
>>>                     "gps_time": 0.843803231 seconds
>>>                     > gps_time[10]: 1617183850. Time to read
>>>                     "gps_time": 1.125065740 seconds
>>>                     > gps_time[11]: 1617183851. Time to read
>>>                     "gps_time": 0.847519817 seconds
>>>                     > gps_time[12]: 1617183852. Time to read
>>>                     "gps_time": 1.121398945 seconds
>>>                     > gps_time[13]: 1617183853. Time to read
>>>                     "gps_time": 0.844371533 seconds
>>>                     > gps_time[14]: 1617183854. Time to read
>>>                     "gps_time": 1.124722726 seconds
>>>                     > gps_time[15]: 1617183855. Time to read
>>>                     "gps_time": 0.845688380 seconds
>>>                     > gps_time[16]: 1617183856. Time to read
>>>                     "gps_time": 1.129568096 seconds
>>>                     > gps_time[17]: 1617183857. Time to read
>>>                     "gps_time": 0.882436229 seconds
>>>                     > gps_time[18]: 1617183858. Time to read
>>>                     "gps_time": 1.168227593 seconds
>>>                     > gps_time[19]: 1617183859. Time to read
>>>                     "gps_time": 0.881948247 seconds
>>>                     >
>>>                     -------------------------------------------------=
----------------------------------
>>>                     > In the code you can find commented out the
>>>                     usual way to access the
>>>                     > sensor using multi_usrp and get_mboard_sensor.
>>>                     The results are quite
>>>                     > similar.
>>>                     >
>>>                     > I wonder if anybody encountered this issue
>>>                     before or addressed it in
>>>                     > any way.
>>>                     > I wonder why it takes so much time to get the
>>>                     value of GPS time when
>>>                     > it is a simple parsing of an NMEA message
>>>                     coming from the GPS receiver.
>>>                     >
>>>                     > I am trying now various tricks to make the
>>>                     software robust and immune
>>>                     > to this phenomenon. I can report my findings
>>>                     further if I succeed to
>>>                     > find a workaround if there is any interest.
>>>                     >
>>>                     > Can anyone comment on this? Can this be
>>>                     resolved so that the reading
>>>                     > of gps_time will be much faster?
>>>                     > Is there another way to get GPS time faster
>>>                     indirectly? Maybe from
>>>                     > parsing NMEA messages ourselves?
>>>                     >
>>>                     > Regards,
>>>                     > Ofer Saferman
>>>                     >
>>>                     This probably has to do with the way that
>>>                     particular "sensor" works--the
>>>                     NMEA time value is only emitted once per second,
>>>                     and the
>>>                        code for that sensor has some heuristic for
>>>                     determining "freshness"
>>>                     of the value.
>>>
>>>                     I'll point out that on E310, the system is
>>>                     configured to use GPSD, so
>>>                     that the Linux system time across several
>>>                     systems that have all been
>>>                        "listening" to GPS for a while will all be
>>>                     synchronized quite well.
>>>
>>>
>>>
>>>
>>>                 --=20
>>>                 This message has been scanned for viruses and
>>>                 dangerous content by *MailScanner*
>>>                 <http://www.mailscanner.info/>, and is
>>>                 believed to be clean.
>>>                 _______________________________________________
>>>                 USRP-users mailing list --
>>>                 usrp-users@lists.ettus.com
>>>                 <mailto:usrp-users@lists.ettus.com>
>>>                 To unsubscribe send an email to
>>>                 usrp-users-leave@lists.ettus.com
>>>                 <mailto:usrp-users-leave@lists.ettus.com>
>>>
>>>         _______________________________________________
>>>         USRP-users mailing list -- usrp-users@lists.ettus.com
>>>         <mailto:usrp-users@lists.ettus.com>
>>>         To unsubscribe send an email to
>>>         usrp-users-leave@lists.ettus.com
>>>         <mailto:usrp-users-leave@lists.ettus.com>
>>
>>
>>     --=20
>>     This message has been scanned for viruses and
>>     dangerous content by *MailScanner*
>>     <http://www.mailscanner.info/>, and is
>>     believed to be clean.
>
>
> --=20
> This message has been scanned for viruses and
> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and =
is
> believed to be clean.=20


--------------070109060409040509070507
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/01/2021 06:00 AM, Ofer Saferman
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CACDReSz8BcZU8=3DKDRw3v4y9GqNEDi8C-_YQXHydd3FcFJ7_JWg@mail.gm=
ail.com"
      type=3D"cite">
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
    <blockquote
cite=3D"mid:CACDReSz8BcZU8=3DKDRw3v4y9GqNEDi8C-_YQXHydd3FcFJ7_JWg@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 31, 2021 at
            11:40 PM Marcus D Leech &lt;<a moz-do-not-send=3D"true"
              href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail=
.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"auto">Just use gettimeofday() or any of the myria=
d
              subtle variants available in boost to get you the Linux
              system time, and use that in a call to
              set_time_next_pps().=C2=A0
              <div><br>
              </div>
              <div>The fact that all your E310s will be running GPSD
                means they=E2=80=99ll be adjusting system time appropriat=
ely and
                they=E2=80=99ll all agree on what time it is, depending o=
n the
                level of precision you need.=C2=A0<br>
                <br>
                <div dir=3D"ltr">Sent from my iPhone</div>
                <div dir=3D"ltr"><br>
                  <blockquote type=3D"cite">On Mar 31, 2021, at 3:50 PM,
                    Ofer Saferman &lt;<a moz-do-not-send=3D"true"
                      href=3D"mailto:ofer@navigicom.com" target=3D"_blank=
">ofer@navigicom.com</a>&gt;
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
                          31, 2021 at 10:13 PM Marcus D Leech &lt;<a
                            moz-do-not-send=3D"true"
                            href=3D"mailto:patchvonbraun@gmail.com"
                            target=3D"_blank">patchvonbraun@gmail.com</a>=
&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"auto"><br>
                            <br>
                            <div dir=3D"ltr">Sent from my iPhone</div>
                            <div dir=3D"ltr"><br>
                              <blockquote type=3D"cite">On Mar 31, 2021,
                                at 2:22 PM, Rob Kossler &lt;<a
                                  moz-do-not-send=3D"true"
                                  href=3D"mailto:rkossler@nd.edu"
                                  target=3D"_blank">rkossler@nd.edu</a>&g=
t;
                                wrote:<br>
                                <br>
                              </blockquote>
                            </div>
                            <blockquote type=3D"cite">
                              <div dir=3D"ltr">=EF=BB=BF
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">Hi Ofer,</div>
                                  <div dir=3D"ltr">Take a look at the
                                    Ettus source code gps_ctrl.cpp.=C2=A0=
 In
                                    particular, look at the
                                    get_sentence() usage which in the
                                    case of "gps_time" waits for the
                                    next occurrence (wait=3Dtrue), =C2=A0=
but
                                    for the others does not wait.=C2=A0 B=
ut
                                    this doesn't fully explain the
                                    behavior you are seeing.=C2=A0 If you=
 do
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
                            calling set_time_next_pps.=C2=A0
                            <div><br>
                            </div>
                            <div><br>
                              <blockquote type=3D"cite">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">It should still work
                                      because the "gps_time" command
                                      should just wait until the next
                                      PPS.=C2=A0 I guess it depends upon =
how
                                      "synchronized" are the received
                                      NMEA string with the PPS edge.=C2=A0
                                      Step 1 above waits for the PPS
                                      edge, but maybe the NMEA string
                                      arrives 0.1 secs before or after
                                      that.=C2=A0 I don't really know.=C2=
=A0
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
                                      <div dir=3D"ltr" class=3D"gmail_att=
r">On
                                        Wed, Mar 31, 2021 at 1:22 PM Rob
                                        Kossler &lt;<a
                                          moz-do-not-send=3D"true"
                                          href=3D"mailto:rkossler@nd.edu"
                                          target=3D"_blank">rkossler@nd.e=
du</a>&gt;
                                        wrote:<br>
                                      </div>
                                      <blockquote class=3D"gmail_quote"
                                        style=3D"margin:0px 0px 0px
                                        0.8ex;border-left:1px solid
                                        rgb(204,204,204);padding-left:1ex=
">
                                        <div dir=3D"ltr">
                                          <div>Hi Ofer,</div>
                                          <div>I don't know why the
                                            "gps_time" sensor takes long
                                            to read. But, can you try
                                            the other sensors (perhaps
                                            there is a "gps_gpgga"
                                            sensor?)?=C2=A0 The time is
                                            embedded in these as well.=C2=
=A0=C2=A0</div>
                                          <div>Rob</div>
                                          <div><br>
                                          </div>
                                          <br>
                                          <div class=3D"gmail_quote">
                                            <div dir=3D"ltr"
                                              class=3D"gmail_attr">On Wed=
,
                                              Mar 31, 2021 at 12:21 PM
                                              Ofer Saferman &lt;<a
                                                moz-do-not-send=3D"true"
                                                href=3D"mailto:ofer@navig=
icom.com"
                                                target=3D"_blank">ofer@na=
vigicom.com</a>&gt;
                                              wrote:<br>
                                            </div>
                                            <blockquote
                                              class=3D"gmail_quote"
                                              style=3D"margin:0px 0px 0px
                                              0.8ex;border-left:1px
                                              solid
                                              rgb(204,204,204);padding-le=
ft:1ex">
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
                                                  radio_ctrl-&gt;get_time=
_last_pps()?</div>
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
                                                <div class=3D"gmail_quote=
"><br>
                                                  <blockquote
                                                    class=3D"gmail_quote"
                                                    style=3D"margin:0px
                                                    0px 0px
                                                    0.8ex;border-left:1px
                                                    solid
                                                    rgb(204,204,204);padd=
ing-left:1ex">----------
                                                    Forwarded message
                                                    ----------<br>
                                                    From:=C2=A0"Marcus D.
                                                    Leech" &lt;<a
                                                      moz-do-not-send=3D"=
true"
href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@g=
mail.com</a>&gt;<br>
                                                    To:=C2=A0<a
                                                      moz-do-not-send=3D"=
true"
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a><br>
                                                    Cc:=C2=A0<br>
                                                    Bcc:=C2=A0<br>
                                                    Date:=C2=A0Wed, 31 Ma=
r
                                                    2021 09:19:20 -0400<b=
r>
                                                    Subject:=C2=A0[USRP-u=
sers]
                                                    Re: Intermittent
                                                    problem with GPS
                                                    synchronization for
                                                    multiple E310 units<b=
r>
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
                                                    (get_time_last_pps)<b=
r>
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
                                                    sync_to_gps example.<=
br>
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
                                                    between 0.9 to 1.2 <b=
r>
                                                    &gt; seconds to read
                                                    the gps_time sensor.<=
br>
                                                    &gt; This explains
                                                    exactly why it is
                                                    difficult to
                                                    synchronize multiple
                                                    <br>
                                                    &gt; units to the
                                                    same time instance
                                                    because if one unit
                                                    takes 0.9 seconds <br=
>
                                                    &gt; to read the
                                                    sensor and the other
                                                    unit takes 1.2
                                                    seconds to read the
                                                    <br>
                                                    &gt; sensor then
                                                    each unit will lock
                                                    on a different GPS
                                                    time 1 second apart.<=
br>
                                                    &gt;<br>
                                                    &gt; Here is a short
                                                    software I wrote to
                                                    time the gps_time
                                                    sensor reading:<br>
                                                    &gt;
                                                    ---------------------=
------------------------------------<br>
                                                    &gt; #include
                                                    &lt;uhd/utils/safe_ma=
in.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/device3.hpp&g=
t;<br>
                                                    &gt; //#include
                                                    &lt;uhd/usrp/multi_us=
rp.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;uhd/types/sensors=
.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/program_opt=
ions.hpp&gt;<br>
                                                    &gt; #include
                                                    &lt;boost/format.hpp&=
gt;<br>
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
                                                    argc, char *argv[]){<=
br>
                                                    &gt;<br>
                                                    &gt; std::string
                                                    args;<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::options_des=
cription
                                                    desc("Allowed
                                                    options");<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0desc.add_option=
s()<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                                    =C2=A0("help", "help
                                                    message")<br>
                                                    &gt; ("args",
                                                    po::value&lt;std::str=
ing&gt;(&amp;args)-&gt;default_value(""),
                                                    "device <br>
                                                    &gt; address args")<b=
r>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0;<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::variables_m=
ap
                                                    vm;<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::store(po::p=
arse_command_line(argc,
                                                    argv, desc), vm);<br>
                                                    &gt;=C2=A0 =C2=A0
                                                    =C2=A0po::notify(vm);=
<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0//print the
                                                    help message<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0if
                                                    (vm.count("help")){<b=
r>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                                    =C2=A0std::cout &lt;&=
lt;
                                                    boost::format("Timini=
g
                                                    of gps_time: %s") %
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
                                                    uhd::device3::make(ar=
gs);<br>
                                                    &gt;
                                                    //uhd::usrp::multi_us=
rp::sptr
                                                    usrp =3D
                                                    uhd::usrp::multi_usrp=
::make(args);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    uhd::sensor_value_t
                                                    gps_time =3D <br>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_time").get();<br>
                                                    &gt;
                                                    //uhd::sensor_value_t
                                                    gps_time =3D
                                                    usrp-&gt;get_mboard_s=
ensor("gps_time",
                                                    0);<br>
                                                    &gt;<br>
                                                    &gt;
                                                    std::chrono::steady_c=
lock::time_point
                                                    start_time,
                                                    end_time;<br>
                                                    &gt;
                                                    std::chrono::duration=
&lt;double&gt;
                                                    time_diff; //
                                                    Default unit for
                                                    duration <br>
                                                    &gt; is seconds.<br>
                                                    &gt;<br>
                                                    &gt; for(int ii=3D0 ;
                                                    ii&lt;20 ; ii++)<br>
                                                    &gt; {<br>
                                                    &gt; start_time =3D
                                                    std::chrono::steady_c=
lock::now();<br>
                                                    &gt; gps_time =3D <br=
>
                                                    &gt;
usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_value_t&gt;("/mboards/0/sen=
sors/gps_time").get();<br>
                                                    &gt; //gps_time =3D
                                                    usrp-&gt;get_mboard_s=
ensor("gps_time",
                                                    0);<br>
                                                    &gt; end_time =3D
                                                    std::chrono::steady_c=
lock::now();<br>
                                                    &gt; time_diff =3D
                                                    end_time -
                                                    start_time;<br>
                                                    &gt;<br>
                                                    &gt; std::cout
                                                    &lt;&lt; "gps_time["
                                                    &lt;&lt;
                                                    (boost::format("%02d"=
)
                                                    % ii) &lt;&lt; "]: "
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    int64_t(gps_time.to_i=
nt())
                                                    &lt;&lt; ". Time to
                                                    read \"gps_time\": "
                                                    &lt;&lt; <br>
                                                    &gt;
                                                    (boost::format("%0.9f=
")
                                                    % time_diff.count())
                                                    &lt;&lt; " seconds"
                                                    &lt;&lt; std::endl;<b=
r>
                                                    &gt; }<br>
                                                    &gt;<br>
                                                    &gt;=C2=A0 =C2=A0 =C2=
=A0return 0;<br>
                                                    &gt; }<br>
                                                    &gt;
-------------------------------------------------------------------------=
-------<br>
                                                    &gt; Here are the
                                                    results of one
                                                    typical run:<br>
                                                    &gt; gps_time[00]:
                                                    1617183840. Time to
                                                    read "gps_time":
                                                    0.884164380 seconds<b=
r>
                                                    &gt; gps_time[01]:
                                                    1617183841. Time to
                                                    read "gps_time":
                                                    0.877966469 seconds<b=
r>
                                                    &gt; gps_time[02]:
                                                    1617183842. Time to
                                                    read "gps_time":
                                                    1.170869661 seconds<b=
r>
                                                    &gt; gps_time[03]:
                                                    1617183843. Time to
                                                    read "gps_time":
                                                    0.882917987 seconds<b=
r>
                                                    &gt; gps_time[04]:
                                                    1617183844. Time to
                                                    read "gps_time":
                                                    1.172120154 seconds<b=
r>
                                                    &gt; gps_time[05]:
                                                    1617183845. Time to
                                                    read "gps_time":
                                                    0.879271985 seconds<b=
r>
                                                    &gt; gps_time[06]:
                                                    1617183846. Time to
                                                    read "gps_time":
                                                    0.878609099 seconds<b=
r>
                                                    &gt; gps_time[07]:
                                                    1617183847. Time to
                                                    read "gps_time":
                                                    1.115639282 seconds<b=
r>
                                                    &gt; gps_time[08]:
                                                    1617183848. Time to
                                                    read "gps_time":
                                                    1.125365551 seconds<b=
r>
                                                    &gt; gps_time[09]:
                                                    1617183849. Time to
                                                    read "gps_time":
                                                    0.843803231 seconds<b=
r>
                                                    &gt; gps_time[10]:
                                                    1617183850. Time to
                                                    read "gps_time":
                                                    1.125065740 seconds<b=
r>
                                                    &gt; gps_time[11]:
                                                    1617183851. Time to
                                                    read "gps_time":
                                                    0.847519817 seconds<b=
r>
                                                    &gt; gps_time[12]:
                                                    1617183852. Time to
                                                    read "gps_time":
                                                    1.121398945 seconds<b=
r>
                                                    &gt; gps_time[13]:
                                                    1617183853. Time to
                                                    read "gps_time":
                                                    0.844371533 seconds<b=
r>
                                                    &gt; gps_time[14]:
                                                    1617183854. Time to
                                                    read "gps_time":
                                                    1.124722726 seconds<b=
r>
                                                    &gt; gps_time[15]:
                                                    1617183855. Time to
                                                    read "gps_time":
                                                    0.845688380 seconds<b=
r>
                                                    &gt; gps_time[16]:
                                                    1617183856. Time to
                                                    read "gps_time":
                                                    1.129568096 seconds<b=
r>
                                                    &gt; gps_time[17]:
                                                    1617183857. Time to
                                                    read "gps_time":
                                                    0.882436229 seconds<b=
r>
                                                    &gt; gps_time[18]:
                                                    1617183858. Time to
                                                    read "gps_time":
                                                    1.168227593 seconds<b=
r>
                                                    &gt; gps_time[19]:
                                                    1617183859. Time to
                                                    read "gps_time":
                                                    0.881948247 seconds<b=
r>
                                                    &gt;
-------------------------------------------------------------------------=
----------<br>
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
                                                    robust and immune <br=
>
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
                                                    will be much faster?<=
br>
                                                    &gt; Is there
                                                    another way to get
                                                    GPS time faster
                                                    indirectly? Maybe
                                                    from <br>
                                                    &gt; parsing NMEA
                                                    messages ourselves?<b=
r>
                                                    &gt;<br>
                                                    &gt; Regards,<br>
                                                    &gt; Ofer Saferman<br=
>
                                                    &gt;<br>
                                                    This probably has to
                                                    do with the way that
                                                    particular "sensor"
                                                    works--the <br>
                                                    NMEA time value is
                                                    only emitted once
                                                    per second, and the<b=
r>
                                                    =C2=A0 =C2=A0code for=
 that
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
                                                    =C2=A0 =C2=A0"listeni=
ng" to
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
                                              <a moz-do-not-send=3D"true"
href=3D"http://www.mailscanner.info/" target=3D"_blank"><b>MailScanner</b=
></a>,
                                              and is
                                              <br>
                                              believed to be clean.
_______________________________________________<br>
                                              USRP-users mailing list --
                                              <a moz-do-not-send=3D"true"
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@l=
ists.ettus.com</a><br>
                                              To unsubscribe send an
                                              email to <a
                                                moz-do-not-send=3D"true"
                                                href=3D"mailto:usrp-users=
-leave@lists.ettus.com"
                                                target=3D"_blank">usrp-us=
ers-leave@lists.ettus.com</a><br>
                                            </blockquote>
                                          </div>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </div>
                                  <span>_________________________________=
______________</span><br>
                                  <span>USRP-users mailing list -- <a
                                      moz-do-not-send=3D"true"
                                      href=3D"mailto:usrp-users@lists.ett=
us.com"
                                      target=3D"_blank">usrp-users@lists.=
ettus.com</a></span><br>
                                  <span>To unsubscribe send an email to
                                    <a moz-do-not-send=3D"true"
                                      href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com"
                                      target=3D"_blank">usrp-users-leave@=
lists.ettus.com</a></span><br>
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
                    <a moz-do-not-send=3D"true"
                      href=3D"http://www.mailscanner.info/"
                      target=3D"_blank"><b>MailScanner</b></a>, and is
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
      <a moz-do-not-send=3D"true" href=3D"http://www.mailscanner.info/"><=
b>MailScanner</b></a>,
      and is
      <br>
      believed to be clean.
    </blockquote>
    <br>
  </body>
</html>

--------------070109060409040509070507--

--===============6172839522001620223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6172839522001620223==--
