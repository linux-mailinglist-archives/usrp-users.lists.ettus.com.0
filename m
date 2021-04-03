Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFE53533AC
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 13:14:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 153A3383BEC
	for <lists+usrp-users@lfdr.de>; Sat,  3 Apr 2021 07:14:18 -0400 (EDT)
Received: from postman.dtnt.info (postman.dtnt.info [62.219.91.51])
	by mm2.emwd.com (Postfix) with ESMTP id EE063383F10
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 07:13:22 -0400 (EDT)
Received: from o.dtnt.email (o.dtnt.email [62.219.91.154])
	by postman.dtnt.info (Postfix) with ESMTPS id 6718643301
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 14:12:53 +0300 (IDT)
Received: from o.dtnt.email (o.dtnt.email [127.0.0.1])
	by o.dtnt.email (Postfix) with ESMTP id 25BBD9FB80
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 14:12:53 +0300 (IDT)
X-Virus-Scanned: Debian amavisd-new at o.dtnt.email
Received: from o.dtnt.email ([127.0.0.1])
	by o.dtnt.email (o.dtnt.email [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id t80x4xevYKOW for <usrp-users@lists.ettus.com>;
	Sat,  3 Apr 2021 14:12:50 +0300 (IDT)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	by o.dtnt.email (Postfix) with ESMTPSA id 675449F9C5
	for <usrp-users@lists.ettus.com>; Sat,  3 Apr 2021 14:12:49 +0300 (IDT)
Received: by mail-ot1-f51.google.com with SMTP id l12-20020a9d6a8c0000b0290238e0f9f0d8so7056254otq.8
        for <usrp-users@lists.ettus.com>; Sat, 03 Apr 2021 04:12:49 -0700 (PDT)
X-Gm-Message-State: AOAM532GDYfuPtCcmyyUm8zS0kSEV3fu/P9pF0B0MomKnawtW2VkgI+p
	oot2WeBHsAiMEiAdfIshcbZQgL/9wXuMBlti1gs=
X-Google-Smtp-Source: ABdhPJyGgTmdffYdHvm4DURDPZfEfrjuhjklYC9SArcTQzPYAwDK12dR1djPdzos5X5tSZXvra3bLP4qXQjuYUrgMlw=
X-Received: by 2002:a05:6830:144e:: with SMTP id w14mr14757732otp.0.1617448366663;
 Sat, 03 Apr 2021 04:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <161743501505.11274.15312224976631995437@mm2.emwd.com>
In-Reply-To: <161743501505.11274.15312224976631995437@mm2.emwd.com>
From: Ofer Saferman <ofer@navigicom.com>
Date: Sat, 3 Apr 2021 14:12:35 +0300
X-Gmail-Original-Message-ID: <CACDReSwXUvJ8_LimfVOn4StHQEGhNntY-nCSv0aYdBsX=AtV_w@mail.gmail.com>
Message-ID: <CACDReSwXUvJ8_LimfVOn4StHQEGhNntY-nCSv0aYdBsX=AtV_w@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-DTNT-MailScanner-Information: Please contact the ISP for more information
X-DTNT-MailScanner-ID: 6718643301.A2C42
X-DTNT-MailScanner: Found to be clean
X-DTNT-MailScanner-From: ofer@navigicom.com
X-Spam-Status: No
Message-ID-Hash: IFP3DJLOSF4DURPRR237JU5XSQCAL42P
X-Message-ID-Hash: IFP3DJLOSF4DURPRR237JU5XSQCAL42P
X-MailFrom: ofer@navigicom.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Intermittent problem with GPS synchronization for multiple E310 units
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IFP3DJLOSF4DURPRR237JU5XSQCAL42P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3037941604981614258=="

--===============3037941604981614258==
Content-Type: multipart/alternative; boundary="000000000000566d1705bf0f8b0e"

--000000000000566d1705bf0f8b0e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Philip,

Thank you for the explanation.
What would you suggest?
opkg exists. There must be a way to install ntpd without needing to rebuild
the image.
Maybe use pybombs or other methods?
git also works. Maybe download a different package manager and compile it?

It seems that Marcus pointed out a great benefit of E310 units running
gpsd, but without ntpd system clock can't sync and it seems that this
feature can vastly simplify gps synchronization among E310 units.

I would be very grateful if anybody can suggest a solution to install ntpd
on E310 units running UHD 3.15 SD-card image.

Regards,
Ofer Saferman.

On Sat, Apr 3, 2021 at 10:30 AM <usrp-users-request@lists.ettus.com> wrote:

> Send USRP-users mailing list submissions to
>         usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
>         usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
>         usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."Today's Topics:
>
>    1. Re: Intermittent problem with GPS synchronization for multiple E310
> units
>       (Philip Balister)
>
>
>
> ---------- Forwarded message ----------
> From: Philip Balister <philip@balister.org>
> To: Ofer Saferman <ofer@navigicom.com>, "Marcus D. Leech" <
> patchvonbraun@gmail.com>
> Cc: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
> Bcc:
> Date: Fri, 2 Apr 2021 10:09:43 -0400
> Subject: [USRP-users] Re: Intermittent problem with GPS synchronization
> for multiple E310 units
> On 4/2/21 7:17 AM, Ofer Saferman wrote:
> > Marcus Hi,
> >
> > Your suggestion below to install ntpd does not work.
> > The image does not include it. Although the old thread says otherwise I
> > think it refers to an older UHD release that did include ntpd.
> > Any accurate instructions on how to install it anyway?
> > Maybe opkg should be configured to access another repository?
> > Doing: opkg list | grep ntpd, does not yield anything useful so it is n=
ot
> > just a question of typing it correctly.
>
> As far as I know, no image has been setup to use package feeds.
>
> I know ntpd worked in release4 images, pretty sure the newer image was
> redone and things have been left out that used to be there.
>
> Philip
>
> >
> > Regards,
> > Ofer Saferman
> >
> > On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech <patchvonbraun@gmail.com>
> > wrote:
> >
> >> On 04/01/2021 06:00 AM, Ofer Saferman wrote:
> >>
> >> Hello Marcus,
> >>
> >> I am working on E310 with the latest UHD-3.15 SD card image.
> >> It seems not to include ntpd that is required to synchronize system ti=
me
> >> to GPS time.
> >> Any idea how to install it on the E310?
> >>
> >> Regards,
> >> Ofer Saferman
> >>
> >> sudo opkg install ntpd
> >>
> >> should work, but it has been a while since I installed any packages on
> my
> >> E310.
> >>
> >> The E310 is based on OpenEmbedded Linux, so all the info about
> installing
> >> and managing packages on OpenEmbedded apply.
> >>
> >>
> >>
> >> On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech <
> patchvonbraun@gmail.com>
> >> wrote:
> >>
> >>> Just use gettimeofday() or any of the myriad subtle variants available
> in
> >>> boost to get you the Linux system time, and use that in a call to
> >>> set_time_next_pps().
> >>>
> >>> The fact that all your E310s will be running GPSD means they=E2=80=99=
ll be
> >>> adjusting system time appropriately and they=E2=80=99ll all agree on =
what time
> it
> >>> is, depending on the level of precision you need.
> >>>
> >>> Sent from my iPhone
> >>>
> >>> On Mar 31, 2021, at 3:50 PM, Ofer Saferman <ofer@navigicom.com> wrote:
> >>>
> >>> =EF=BB=BF
> >>> Thank you Rob. Your suggestions are always helpful. I will look into
> >>> using gps_gpgga.
> >>> Thank you Marcus. I am already adding one, per other examples posted
> here
> >>> and sync_to_gps example. Can you please comment how I can benefit from
> the
> >>> fact that E310 units use gpsd in Linux?
> >>>
> >>> Regards,
> >>> Ofer Saferman
> >>>
> >>> On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech <
> patchvonbraun@gmail.com>
> >>> wrote:
> >>>
> >>>>
> >>>>
> >>>> Sent from my iPhone
> >>>>
> >>>> On Mar 31, 2021, at 2:22 PM, Rob Kossler <rkossler@nd.edu> wrote:
> >>>>
> >>>> =EF=BB=BF
> >>>> Hi Ofer,
> >>>> Take a look at the Ettus source code gps_ctrl.cpp.  In particular,
> look
> >>>> at the get_sentence() usage which in the case of "gps_time" waits for
> the
> >>>> next occurrence (wait=3Dtrue),  but for the others does not wait.  B=
ut
> this
> >>>> doesn't fully explain the behavior you are seeing.  If you do the
> following:
> >>>> 1) wait for PPS time to change
> >>>> 2) read the "gps_time" sensor
> >>>> 3) set_time_next_pps (use the value you just read)
> >>>>
> >>>> Add 1 to the time you just read before calling set_time_next_pps.
> >>>>
> >>>>
> >>>> It should still work because the "gps_time" command should just wait
> >>>> until the next PPS.  I guess it depends upon how "synchronized" are
> the
> >>>> received NMEA string with the PPS edge.  Step 1 above waits for the
> PPS
> >>>> edge, but maybe the NMEA string arrives 0.1 secs before or after
> that.  I
> >>>> don't really know.  Perhaps you need to switch to using "gps_gpgga"
> such
> >>>> that there is no additional wait added and also perhaps you should
> add step
> >>>> 1B which would be just a fixed delay of perhaps 0.4 secs so that you
> will
> >>>> read the NMEA string in between the PPS edges.
> >>>> Rob
> >>>>
> >>>> On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler <rkossler@nd.edu> wrote:
> >>>>
> >>>>> Hi Ofer,
> >>>>> I don't know why the "gps_time" sensor takes long to read. But, can
> you
> >>>>> try the other sensors (perhaps there is a "gps_gpgga" sensor?)?  The
> time
> >>>>> is embedded in these as well.
> >>>>> Rob
> >>>>>
> >>>>>
> >>>>> On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman <ofer@navigicom.com>
> >>>>> wrote:
> >>>>>
> >>>>>> Marcus Hi,
> >>>>>>
> >>>>>> If the gps_time "sensor" returns a value only once per second how
> come
> >>>>>> I manage to read it sometimes in less than 1 second?
> >>>>>> In my code the situation is worse than the simple example below. It
> >>>>>> usually takes more than 1 sec. to read it and sometimes even 1.7 or
> 1.8
> >>>>>> seconds. I don't understand how the size or complexity of the code
> affects
> >>>>>> the time it takes to read gps_time.
> >>>>>>
> >>>>>> How to treat your comment about the use of GPSD and good
> >>>>>> synchronization as it relates to code?
> >>>>>> Should I not change the time source in code and go through the who=
le
> >>>>>> process of synchronization using gps_time?
> >>>>>> Can I "assume" the systems are synced just by the effect they were
> >>>>>> connected enough time to a GPS antenna? and then just access their
> time -
> >>>>>> radio_ctrl->get_time_last_pps()?
> >>>>>> How to use this information programmatically?
> >>>>>>
> >>>>>> Regards,
> >>>>>> Ofer Saferman
> >>>>>>
> >>>>>>
> >>>>>> ---------- Forwarded message ----------
> >>>>>>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> >>>>>>> To: usrp-users@lists.ettus.com
> >>>>>>> Cc:
> >>>>>>> Bcc:
> >>>>>>> Date: Wed, 31 Mar 2021 09:19:20 -0400
> >>>>>>> Subject: [USRP-users] Re: Intermittent problem with GPS
> >>>>>>> synchronization for multiple E310 units
> >>>>>>> On 03/31/2021 06:49 AM, Ofer Saferman wrote:
> >>>>>>>> Hello,
> >>>>>>>>
> >>>>>>>> I have a system that uses 4 USRP E310 units.
> >>>>>>>> Each unit is connected to a GPS antenna.
> >>>>>>>> Time source is set to gpsdo.
> >>>>>>>>
> >>>>>>>> I run the same software remotely on all 4 units from a PC.
> Software
> >>>>>>>> runs on the units themselves.
> >>>>>>>> I print out messages to show if the reference is locked and the
> GPS
> >>>>>>> is
> >>>>>>>> locked and also what is the GPS time that each unit was
> >>>>>>> synchronized to.
> >>>>>>>> In some cases the units synchronize to the same GPS time and in
> >>>>>>> other
> >>>>>>>> cases there is 1 second difference between GPS time of different
> >>>>>>> units
> >>>>>>>> thus causing the units to be unsynchronized.
> >>>>>>>>
> >>>>>>>> I was wondering how this was possible.
> >>>>>>>> The synchronization process (documented by others in the past on
> >>>>>>> the
> >>>>>>>> mailing list) is:
> >>>>>>>> * Wait for ref and GPS lock
> >>>>>>>> * Wait for a pps edge (get_time_last_pps)
> >>>>>>>> * Read gps_time value
> >>>>>>>> * Sync system clock to GPS clock on next PPS edge
> >>>>>>> (set_time_next_pps +
> >>>>>>>> 1.0 sec)
> >>>>>>>>
> >>>>>>>> Something similar is also implemented in the sync_to_gps example.
> >>>>>>>>
> >>>>>>>> In order to debug the problem I decided to time the reading of t=
he
> >>>>>>>> gps_time sensor to see if there is a clue why different units mi=
ss
> >>>>>>> the
> >>>>>>>> PPS edge and lock to a time of the next second.
> >>>>>>>>
> >>>>>>>> I was very surprised to find out that it takes between 0.9 to 1.2
> >>>>>>>> seconds to read the gps_time sensor.
> >>>>>>>> This explains exactly why it is difficult to synchronize multiple
> >>>>>>>> units to the same time instance because if one unit takes 0.9
> >>>>>>> seconds
> >>>>>>>> to read the sensor and the other unit takes 1.2 seconds to read
> the
> >>>>>>>> sensor then each unit will lock on a different GPS time 1 second
> >>>>>>> apart.
> >>>>>>>>
> >>>>>>>> Here is a short software I wrote to time the gps_time sensor
> >>>>>>> reading:
> >>>>>>>> ---------------------------------------------------------
> >>>>>>>> #include <uhd/utils/safe_main.hpp>
> >>>>>>>> #include <uhd/device3.hpp>
> >>>>>>>> //#include <uhd/usrp/multi_usrp.hpp>
> >>>>>>>> #include <uhd/types/sensors.hpp>
> >>>>>>>> #include <boost/program_options.hpp>
> >>>>>>>> #include <boost/format.hpp>
> >>>>>>>> #include <chrono>
> >>>>>>>> #include <iostream>
> >>>>>>>>
> >>>>>>>> namespace po =3D boost::program_options;
> >>>>>>>>
> >>>>>>>> int UHD_SAFE_MAIN(int argc, char *argv[]){
> >>>>>>>>
> >>>>>>>> std::string args;
> >>>>>>>>
> >>>>>>>>     po::options_description desc("Allowed options");
> >>>>>>>>     desc.add_options()
> >>>>>>>>         ("help", "help message")
> >>>>>>>> ("args", po::value<std::string>(&args)->default_value(""), "devi=
ce
> >>>>>>>> address args")
> >>>>>>>>     ;
> >>>>>>>>
> >>>>>>>>     po::variables_map vm;
> >>>>>>>>     po::store(po::parse_command_line(argc, argv, desc), vm);
> >>>>>>>>     po::notify(vm);
> >>>>>>>>
> >>>>>>>>     //print the help message
> >>>>>>>>     if (vm.count("help")){
> >>>>>>>>         std::cout << boost::format("Timinig of gps_time: %s") %
> >>>>>>> desc
> >>>>>>>> << std::endl;
> >>>>>>>>         return ~0;
> >>>>>>>>     }
> >>>>>>>>
> >>>>>>>> uhd::device3::sptr usrp =3D uhd::device3::make(args);
> >>>>>>>> //uhd::usrp::multi_usrp::sptr usrp =3D
> >>>>>>> uhd::usrp::multi_usrp::make(args);
> >>>>>>>>
> >>>>>>>> uhd::sensor_value_t gps_time =3D
> >>>>>>>>
> >>>>>>>
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_tim=
e").get();
> >>>>>>>> //uhd::sensor_value_t gps_time =3D
> >>>>>>> usrp->get_mboard_sensor("gps_time", 0);
> >>>>>>>>
> >>>>>>>> std::chrono::steady_clock::time_point start_time, end_time;
> >>>>>>>> std::chrono::duration<double> time_diff; // Default unit for
> >>>>>>> duration
> >>>>>>>> is seconds.
> >>>>>>>>
> >>>>>>>> for(int ii=3D0 ; ii<20 ; ii++)
> >>>>>>>> {
> >>>>>>>> start_time =3D std::chrono::steady_clock::now();
> >>>>>>>> gps_time =3D
> >>>>>>>>
> >>>>>>>
> usrp->get_tree()->access<uhd::sensor_value_t>("/mboards/0/sensors/gps_tim=
e").get();
> >>>>>>>> //gps_time =3D usrp->get_mboard_sensor("gps_time", 0);
> >>>>>>>> end_time =3D std::chrono::steady_clock::now();
> >>>>>>>> time_diff =3D end_time - start_time;
> >>>>>>>>
> >>>>>>>> std::cout << "gps_time[" << (boost::format("%02d") % ii) << "]: "
> >>>>>>> <<
> >>>>>>>> int64_t(gps_time.to_int()) << ". Time to read \"gps_time\": " <<
> >>>>>>>> (boost::format("%0.9f") % time_diff.count()) << " seconds" <<
> >>>>>>> std::endl;
> >>>>>>>> }
> >>>>>>>>
> >>>>>>>>     return 0;
> >>>>>>>> }
> >>>>>>>>
> >>>>>>>
> -------------------------------------------------------------------------=
-------
> >>>>>>>> Here are the results of one typical run:
> >>>>>>>> gps_time[00]: 1617183840. Time to read "gps_time": 0.884164380
> >>>>>>> seconds
> >>>>>>>> gps_time[01]: 1617183841. Time to read "gps_time": 0.877966469
> >>>>>>> seconds
> >>>>>>>> gps_time[02]: 1617183842. Time to read "gps_time": 1.170869661
> >>>>>>> seconds
> >>>>>>>> gps_time[03]: 1617183843. Time to read "gps_time": 0.882917987
> >>>>>>> seconds
> >>>>>>>> gps_time[04]: 1617183844. Time to read "gps_time": 1.172120154
> >>>>>>> seconds
> >>>>>>>> gps_time[05]: 1617183845. Time to read "gps_time": 0.879271985
> >>>>>>> seconds
> >>>>>>>> gps_time[06]: 1617183846. Time to read "gps_time": 0.878609099
> >>>>>>> seconds
> >>>>>>>> gps_time[07]: 1617183847. Time to read "gps_time": 1.115639282
> >>>>>>> seconds
> >>>>>>>> gps_time[08]: 1617183848. Time to read "gps_time": 1.125365551
> >>>>>>> seconds
> >>>>>>>> gps_time[09]: 1617183849. Time to read "gps_time": 0.843803231
> >>>>>>> seconds
> >>>>>>>> gps_time[10]: 1617183850. Time to read "gps_time": 1.125065740
> >>>>>>> seconds
> >>>>>>>> gps_time[11]: 1617183851. Time to read "gps_time": 0.847519817
> >>>>>>> seconds
> >>>>>>>> gps_time[12]: 1617183852. Time to read "gps_time": 1.121398945
> >>>>>>> seconds
> >>>>>>>> gps_time[13]: 1617183853. Time to read "gps_time": 0.844371533
> >>>>>>> seconds
> >>>>>>>> gps_time[14]: 1617183854. Time to read "gps_time": 1.124722726
> >>>>>>> seconds
> >>>>>>>> gps_time[15]: 1617183855. Time to read "gps_time": 0.845688380
> >>>>>>> seconds
> >>>>>>>> gps_time[16]: 1617183856. Time to read "gps_time": 1.129568096
> >>>>>>> seconds
> >>>>>>>> gps_time[17]: 1617183857. Time to read "gps_time": 0.882436229
> >>>>>>> seconds
> >>>>>>>> gps_time[18]: 1617183858. Time to read "gps_time": 1.168227593
> >>>>>>> seconds
> >>>>>>>> gps_time[19]: 1617183859. Time to read "gps_time": 0.881948247
> >>>>>>> seconds
> >>>>>>>>
> >>>>>>>
> -------------------------------------------------------------------------=
----------
> >>>>>>>> In the code you can find commented out the usual way to access t=
he
> >>>>>>>> sensor using multi_usrp and get_mboard_sensor. The results are
> >>>>>>> quite
> >>>>>>>> similar.
> >>>>>>>>
> >>>>>>>> I wonder if anybody encountered this issue before or addressed it
> >>>>>>> in
> >>>>>>>> any way.
> >>>>>>>> I wonder why it takes so much time to get the value of GPS time
> >>>>>>> when
> >>>>>>>> it is a simple parsing of an NMEA message coming from the GPS
> >>>>>>> receiver.
> >>>>>>>>
> >>>>>>>> I am trying now various tricks to make the software robust and
> >>>>>>> immune
> >>>>>>>> to this phenomenon. I can report my findings further if I succeed
> >>>>>>> to
> >>>>>>>> find a workaround if there is any interest.
> >>>>>>>>
> >>>>>>>> Can anyone comment on this? Can this be resolved so that the
> >>>>>>> reading
> >>>>>>>> of gps_time will be much faster?
> >>>>>>>> Is there another way to get GPS time faster indirectly? Maybe fr=
om
> >>>>>>>> parsing NMEA messages ourselves?
> >>>>>>>>
> >>>>>>>> Regards,
> >>>>>>>> Ofer Saferman
> >>>>>>>>
> >>>>>>> This probably has to do with the way that particular "sensor"
> >>>>>>> works--the
> >>>>>>> NMEA time value is only emitted once per second, and the
> >>>>>>>    code for that sensor has some heuristic for determining
> >>>>>>> "freshness"
> >>>>>>> of the value.
> >>>>>>>
> >>>>>>> I'll point out that on E310, the system is configured to use GPSD,
> so
> >>>>>>> that the Linux system time across several systems that have all
> been
> >>>>>>>    "listening" to GPS for a while will all be synchronized quite
> well.
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>> --
> >>>>>> This message has been scanned for viruses and
> >>>>>> dangerous content by *MailScanner* <http://www.mailscanner.info/>,
> >>>>>> and is
> >>>>>> believed to be clean.
> _______________________________________________
> >>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>>>>>
> >>>>> _______________________________________________
> >>>> USRP-users mailing list -- usrp-users@lists.ettus.com
> >>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >>>>
> >>>>
> >>> --
> >>> This message has been scanned for viruses and
> >>> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
> >>> is
> >>> believed to be clean.
> >>>
> >>>
> >> --
> >> This message has been scanned for viruses and
> >> dangerous content by *MailScanner* <http://www.mailscanner.info/>, and
> is
> >> believed to be clean.
> >>
> >>
> >>
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--=20
This message has been scanned for viruses and
dangerous content by MailScanner, and is
believed to be clean.


--000000000000566d1705bf0f8b0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Philip,</div><div dir=3D"ltr"><br><=
/div><div>Thank you for the explanation.</div><div>What would you suggest?<=
/div><div>opkg exists. There must be a way to install ntpd without needing =
to rebuild the image.</div><div>Maybe use pybombs or other methods?</div><d=
iv>git also works. Maybe download a different package manager and compile i=
t?</div><div><br></div><div>It seems that Marcus pointed out a great benefi=
t of E310 units running gpsd, but without ntpd system clock can&#39;t sync =
and it seems that this feature can vastly simplify gps synchronization amon=
g E310 units.</div><div><br></div><div>I would be very grateful if anybody =
can suggest a solution to install ntpd on E310 units running UHD 3.15 SD-ca=
rd image.</div><div><br></div><div>Regards,</div><div>Ofer Saferman.<br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sat, Apr 3, 2021 at 10:30 AM &lt;<a href=3D"mailto:usrp-users-request@lists=
.ettus.com">usrp-users-request@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Send USRP-users mailing list =
submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a><br>
<br>
To subscribe or unsubscribe via email, send a message with subject or<br>
body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-request@lists.ettu=
s.com" target=3D"_blank">usrp-users-request@lists.ettus.com</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:usrp-users-owner@lists.ettus.=
com" target=3D"_blank">usrp-users-owner@lists.ettus.com</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of USRP-users digest...&quot;Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: Intermittent problem with GPS synchronization for multi=
ple E310 units<br>
=C2=A0 =C2=A0 =C2=A0 (Philip Balister)<br>
<br><br><br>---------- Forwarded message ----------<br>From:=C2=A0Philip Ba=
lister &lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@=
balister.org</a>&gt;<br>To:=C2=A0Ofer Saferman &lt;<a href=3D"mailto:ofer@n=
avigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt;, &quot;Marcus D.=
 Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blan=
k">patchvonbraun@gmail.com</a>&gt;<br>Cc:=C2=A0Rob Kossler &lt;<a href=3D"m=
ailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;, usrp-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;<br>Bcc:=C2=A0<br>Date:=C2=A0Fri, 2 Apr 2021 1=
0:09:43 -0400<br>Subject:=C2=A0[USRP-users] Re: Intermittent problem with G=
PS synchronization for multiple E310 units<br>On 4/2/21 7:17 AM, Ofer Safer=
man wrote:<br>
&gt; Marcus Hi,<br>
&gt; <br>
&gt; Your suggestion below to install ntpd does not work.<br>
&gt; The image does not include it. Although the old thread says otherwise =
I<br>
&gt; think it refers to an older UHD release that did include ntpd.<br>
&gt; Any accurate instructions on how to install it anyway?<br>
&gt; Maybe opkg should be configured to access another repository?<br>
&gt; Doing: opkg list | grep ntpd, does not yield anything useful so it is =
not<br>
&gt; just a question of typing it correctly.<br>
<br>
As far as I know, no image has been setup to use package feeds.<br>
<br>
I know ntpd worked in release4 images, pretty sure the newer image was<br>
redone and things have been left out that used to be there.<br>
<br>
Philip<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Ofer Saferman<br>
&gt; <br>
&gt; On Thu, Apr 1, 2021 at 4:34 PM Marcus D. Leech &lt;<a href=3D"mailto:p=
atchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<b=
r>
&gt; wrote:<br>
&gt; <br>
&gt;&gt; On 04/01/2021 06:00 AM, Ofer Saferman wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello Marcus,<br>
&gt;&gt;<br>
&gt;&gt; I am working on E310 with the latest UHD-3.15 SD card image.<br>
&gt;&gt; It seems not to include ntpd that is required to synchronize syste=
m time<br>
&gt;&gt; to GPS time.<br>
&gt;&gt; Any idea how to install it on the E310?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Ofer Saferman<br>
&gt;&gt;<br>
&gt;&gt; sudo opkg install ntpd<br>
&gt;&gt;<br>
&gt;&gt; should work, but it has been a while since I installed any package=
s on my<br>
&gt;&gt; E310.<br>
&gt;&gt;<br>
&gt;&gt; The E310 is based on OpenEmbedded Linux, so all the info about ins=
talling<br>
&gt;&gt; and managing packages on OpenEmbedded apply.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Mar 31, 2021 at 11:40 PM Marcus D Leech &lt;<a href=3D"mai=
lto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&=
gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Just use gettimeofday() or any of the myriad subtle variants a=
vailable in<br>
&gt;&gt;&gt; boost to get you the Linux system time, and use that in a call=
 to<br>
&gt;&gt;&gt; set_time_next_pps().<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The fact that all your E310s will be running GPSD means they=
=E2=80=99ll be<br>
&gt;&gt;&gt; adjusting system time appropriately and they=E2=80=99ll all ag=
ree on what time it<br>
&gt;&gt;&gt; is, depending on the level of precision you need.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mar 31, 2021, at 3:50 PM, Ofer Saferman &lt;<a href=3D"mail=
to:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>&gt; wrote:<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =EF=BB=BF<br>
&gt;&gt;&gt; Thank you Rob. Your suggestions are always helpful. I will loo=
k into<br>
&gt;&gt;&gt; using gps_gpgga.<br>
&gt;&gt;&gt; Thank you Marcus. I am already adding one, per other examples =
posted here<br>
&gt;&gt;&gt; and sync_to_gps example. Can you please comment how I can bene=
fit from the<br>
&gt;&gt;&gt; fact that E310 units use gpsd in Linux?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Wed, Mar 31, 2021 at 10:13 PM Marcus D Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com<=
/a>&gt;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Sent from my iPhone<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Mar 31, 2021, at 2:22 PM, Rob Kossler &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; =EF=BB=BF<br>
&gt;&gt;&gt;&gt; Hi Ofer,<br>
&gt;&gt;&gt;&gt; Take a look at the Ettus source code gps_ctrl.cpp.=C2=A0 I=
n particular, look<br>
&gt;&gt;&gt;&gt; at the get_sentence() usage which in the case of &quot;gps=
_time&quot; waits for the<br>
&gt;&gt;&gt;&gt; next occurrence (wait=3Dtrue),=C2=A0 but for the others do=
es not wait.=C2=A0 But this<br>
&gt;&gt;&gt;&gt; doesn&#39;t fully explain the behavior you are seeing.=C2=
=A0 If you do the following:<br>
&gt;&gt;&gt;&gt; 1) wait for PPS time to change<br>
&gt;&gt;&gt;&gt; 2) read the &quot;gps_time&quot; sensor<br>
&gt;&gt;&gt;&gt; 3) set_time_next_pps (use the value you just read)<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Add 1 to the time you just read before calling set_time_ne=
xt_pps.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; It should still work because the &quot;gps_time&quot; comm=
and should just wait<br>
&gt;&gt;&gt;&gt; until the next PPS.=C2=A0 I guess it depends upon how &quo=
t;synchronized&quot; are the<br>
&gt;&gt;&gt;&gt; received NMEA string with the PPS edge.=C2=A0 Step 1 above=
 waits for the PPS<br>
&gt;&gt;&gt;&gt; edge, but maybe the NMEA string arrives 0.1 secs before or=
 after that.=C2=A0 I<br>
&gt;&gt;&gt;&gt; don&#39;t really know.=C2=A0 Perhaps you need to switch to=
 using &quot;gps_gpgga&quot; such<br>
&gt;&gt;&gt;&gt; that there is no additional wait added and also perhaps yo=
u should add step<br>
&gt;&gt;&gt;&gt; 1B which would be just a fixed delay of perhaps 0.4 secs s=
o that you will<br>
&gt;&gt;&gt;&gt; read the NMEA string in between the PPS edges.<br>
&gt;&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Wed, Mar 31, 2021 at 1:22 PM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<b=
r>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Hi Ofer,<br>
&gt;&gt;&gt;&gt;&gt; I don&#39;t know why the &quot;gps_time&quot; sensor t=
akes long to read. But, can you<br>
&gt;&gt;&gt;&gt;&gt; try the other sensors (perhaps there is a &quot;gps_gp=
gga&quot; sensor?)?=C2=A0 The time<br>
&gt;&gt;&gt;&gt;&gt; is embedded in these as well.<br>
&gt;&gt;&gt;&gt;&gt; Rob<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Wed, Mar 31, 2021 at 12:21 PM Ofer Saferman &lt;<a =
href=3D"mailto:ofer@navigicom.com" target=3D"_blank">ofer@navigicom.com</a>=
&gt;<br>
&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Marcus Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; If the gps_time &quot;sensor&quot; returns a value=
 only once per second how come<br>
&gt;&gt;&gt;&gt;&gt;&gt; I manage to read it sometimes in less than 1 secon=
d?<br>
&gt;&gt;&gt;&gt;&gt;&gt; In my code the situation is worse than the simple =
example below. It<br>
&gt;&gt;&gt;&gt;&gt;&gt; usually takes more than 1 sec. to read it and some=
times even 1.7 or 1.8<br>
&gt;&gt;&gt;&gt;&gt;&gt; seconds. I don&#39;t understand how the size or co=
mplexity of the code affects<br>
&gt;&gt;&gt;&gt;&gt;&gt; the time it takes to read gps_time.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; How to treat your comment about the use of GPSD an=
d good<br>
&gt;&gt;&gt;&gt;&gt;&gt; synchronization as it relates to code?<br>
&gt;&gt;&gt;&gt;&gt;&gt; Should I not change the time source in code and go=
 through the whole<br>
&gt;&gt;&gt;&gt;&gt;&gt; process of synchronization using gps_time?<br>
&gt;&gt;&gt;&gt;&gt;&gt; Can I &quot;assume&quot; the systems are synced ju=
st by the effect they were<br>
&gt;&gt;&gt;&gt;&gt;&gt; connected enough time to a GPS antenna? and then j=
ust access their time -<br>
&gt;&gt;&gt;&gt;&gt;&gt; radio_ctrl-&gt;get_time_last_pps()?<br>
&gt;&gt;&gt;&gt;&gt;&gt; How to use this information programmatically?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---------- Forwarded message ----------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; From: &quot;Marcus D. Leech&quot; &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; To: <a href=3D"mailto:usrp-users@lists.ettus.c=
om" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cc:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Bcc:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Date: Wed, 31 Mar 2021 09:19:20 -0400<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Subject: [USRP-users] Re: Intermittent problem=
 with GPS<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; synchronization for multiple E310 units<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 03/31/2021 06:49 AM, Ofer Saferman wrote:<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I have a system that uses 4 USRP E310 unit=
s.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Each unit is connected to a GPS antenna.<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Time source is set to gpsdo.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I run the same software remotely on all 4 =
units from a PC. Software<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; runs on the units themselves.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I print out messages to show if the refere=
nce is locked and the GPS<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; is<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; locked and also what is the GPS time that =
each unit was<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; synchronized to.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In some cases the units synchronize to the=
 same GPS time and in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; other<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; cases there is 1 second difference between=
 GPS time of different<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; units<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; thus causing the units to be unsynchronize=
d.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was wondering how this was possible.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The synchronization process (documented by=
 others in the past on<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; mailing list) is:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Wait for ref and GPS lock<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Wait for a pps edge (get_time_last_pps)<=
br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Read gps_time value<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; * Sync system clock to GPS clock on next P=
PS edge<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; (set_time_next_pps +<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1.0 sec)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Something similar is also implemented in t=
he sync_to_gps example.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In order to debug the problem I decided to=
 time the reading of the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time sensor to see if there is a clue =
why different units miss<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; PPS edge and lock to a time of the next se=
cond.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I was very surprised to find out that it t=
akes between 0.9 to 1.2<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds to read the gps_time sensor.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; This explains exactly why it is difficult =
to synchronize multiple<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; units to the same time instance because if=
 one unit takes 0.9<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to read the sensor and the other unit take=
s 1.2 seconds to read the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sensor then each unit will lock on a diffe=
rent GPS time 1 second<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; apart.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here is a short software I wrote to time t=
he gps_time sensor<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; reading:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ------------------------------------------=
---------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;uhd/utils/safe_main.hpp&gt;<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;uhd/device3.hpp&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //#include &lt;uhd/usrp/multi_usrp.hpp&gt;=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;uhd/types/sensors.hpp&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;boost/program_options.hpp&gt;=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;boost/format.hpp&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;chrono&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; #include &lt;iostream&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; namespace po =3D boost::program_options;<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; int UHD_SAFE_MAIN(int argc, char *argv[]){=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::string args;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::options_description=
 desc(&quot;Allowed options&quot;);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0desc.add_options()<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(&quot;he=
lp&quot;, &quot;help message&quot;)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; (&quot;args&quot;, po::value&lt;std::strin=
g&gt;(&amp;args)-&gt;default_value(&quot;&quot;), &quot;device<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; address args&quot;)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::variables_map vm;<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::store(po::parse_com=
mand_line(argc, argv, desc), vm);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0po::notify(vm);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0//print the help messag=
e<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0if (vm.count(&quot;help=
&quot;)){<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0std::cout=
 &lt;&lt; boost::format(&quot;Timinig of gps_time: %s&quot;) %<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; desc<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt; std::endl;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ~0=
;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; uhd::device3::sptr usrp =3D uhd::device3::=
make(args);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //uhd::usrp::multi_usrp::sptr usrp =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; uhd::usrp::multi_usrp::make(args);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; uhd::sensor_value_t gps_time =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_=
value_t&gt;(&quot;/mboards/0/sensors/gps_time&quot;).get();<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //uhd::sensor_value_t gps_time =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; usrp-&gt;get_mboard_sensor(&quot;gps_time&quot=
;, 0);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::chrono::steady_clock::time_point star=
t_time, end_time;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::chrono::duration&lt;double&gt; time_d=
iff; // Default unit for<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; duration<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; is seconds.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; for(int ii=3D0 ; ii&lt;20 ; ii++)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; {<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; start_time =3D std::chrono::steady_clock::=
now();<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time =3D<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; usrp-&gt;get_tree()-&gt;access&lt;uhd::sensor_=
value_t&gt;(&quot;/mboards/0/sensors/gps_time&quot;).get();<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; //gps_time =3D usrp-&gt;get_mboard_sensor(=
&quot;gps_time&quot;, 0);<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; end_time =3D std::chrono::steady_clock::no=
w();<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; time_diff =3D end_time - start_time;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::cout &lt;&lt; &quot;gps_time[&quot; &=
lt;&lt; (boost::format(&quot;%02d&quot;) % ii) &lt;&lt; &quot;]: &quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &lt;&lt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; int64_t(gps_time.to_int()) &lt;&lt; &quot;=
. Time to read \&quot;gps_time\&quot;: &quot; &lt;&lt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; (boost::format(&quot;%0.9f&quot;) % time_d=
iff.count()) &lt;&lt; &quot; seconds&quot; &lt;&lt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; std::endl;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0return 0;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; }<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------------------=
----------------------------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Here are the results of one typical run:<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[00]: 1617183840. Time to read &qu=
ot;gps_time&quot;: 0.884164380<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[01]: 1617183841. Time to read &qu=
ot;gps_time&quot;: 0.877966469<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[02]: 1617183842. Time to read &qu=
ot;gps_time&quot;: 1.170869661<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[03]: 1617183843. Time to read &qu=
ot;gps_time&quot;: 0.882917987<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[04]: 1617183844. Time to read &qu=
ot;gps_time&quot;: 1.172120154<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[05]: 1617183845. Time to read &qu=
ot;gps_time&quot;: 0.879271985<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[06]: 1617183846. Time to read &qu=
ot;gps_time&quot;: 0.878609099<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[07]: 1617183847. Time to read &qu=
ot;gps_time&quot;: 1.115639282<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[08]: 1617183848. Time to read &qu=
ot;gps_time&quot;: 1.125365551<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[09]: 1617183849. Time to read &qu=
ot;gps_time&quot;: 0.843803231<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[10]: 1617183850. Time to read &qu=
ot;gps_time&quot;: 1.125065740<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[11]: 1617183851. Time to read &qu=
ot;gps_time&quot;: 0.847519817<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[12]: 1617183852. Time to read &qu=
ot;gps_time&quot;: 1.121398945<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[13]: 1617183853. Time to read &qu=
ot;gps_time&quot;: 0.844371533<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[14]: 1617183854. Time to read &qu=
ot;gps_time&quot;: 1.124722726<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[15]: 1617183855. Time to read &qu=
ot;gps_time&quot;: 0.845688380<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[16]: 1617183856. Time to read &qu=
ot;gps_time&quot;: 1.129568096<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[17]: 1617183857. Time to read &qu=
ot;gps_time&quot;: 0.882436229<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[18]: 1617183858. Time to read &qu=
ot;gps_time&quot;: 1.168227593<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; gps_time[19]: 1617183859. Time to read &qu=
ot;gps_time&quot;: 0.881948247<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; seconds<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; ----------------------------------------------=
-------------------------------------<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; In the code you can find commented out the=
 usual way to access the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sensor using multi_usrp and get_mboard_sen=
sor. The results are<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; quite<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; similar.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder if anybody encountered this issue=
 before or addressed it<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; in<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; any way.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder why it takes so much time to get =
the value of GPS time<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; when<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; it is a simple parsing of an NMEA message =
coming from the GPS<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; receiver.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; I am trying now various tricks to make the=
 software robust and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; immune<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; to this phenomenon. I can report my findin=
gs further if I succeed<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; find a workaround if there is any interest=
.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Can anyone comment on this? Can this be re=
solved so that the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; reading<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; of gps_time will be much faster?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Is there another way to get GPS time faste=
r indirectly? Maybe from<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; parsing NMEA messages ourselves?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Ofer Saferman<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; This probably has to do with the way that part=
icular &quot;sensor&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; works--the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; NMEA time value is only emitted once per secon=
d, and the<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 code for that sensor has some heu=
ristic for determining<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; &quot;freshness&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; of the value.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; I&#39;ll point out that on E310, the system is=
 configured to use GPSD, so<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; that the Linux system time across several syst=
ems that have all been<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 &quot;listening&quot; to GPS for =
a while will all be synchronized quite well.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt; This message has been scanned for viruses and<br>
&gt;&gt;&gt;&gt;&gt;&gt; dangerous content by *MailScanner* &lt;<a href=3D"=
http://www.mailscanner.info/" rel=3D"noreferrer" target=3D"_blank">http://w=
ww.mailscanner.info/</a>&gt;,<br>
&gt;&gt;&gt;&gt;&gt;&gt; and is<br>
&gt;&gt;&gt;&gt;&gt;&gt; believed to be clean. ____________________________=
___________________<br>
&gt;&gt;&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:=
usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.=
ettus.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-use=
rs-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.co=
m</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; This message has been scanned for viruses and<br>
&gt;&gt;&gt; dangerous content by *MailScanner* &lt;<a href=3D"http://www.m=
ailscanner.info/" rel=3D"noreferrer" target=3D"_blank">http://www.mailscann=
er.info/</a>&gt;, and<br>
&gt;&gt;&gt; is<br>
&gt;&gt;&gt; believed to be clean.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; This message has been scanned for viruses and<br>
&gt;&gt; dangerous content by *MailScanner* &lt;<a href=3D"http://www.mails=
canner.info/" rel=3D"noreferrer" target=3D"_blank">http://www.mailscanner.i=
nfo/</a>&gt;, and is<br>
&gt;&gt; believed to be clean.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
&gt; _______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
<br />--=20
<br />This message has been scanned for viruses and
<br />dangerous content by
<a href=3D"http://www.mailscanner.info/"><b>MailScanner</b></a>, and is
<br />believed to be clean.


--000000000000566d1705bf0f8b0e--

--===============3037941604981614258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3037941604981614258==--
