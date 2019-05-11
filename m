Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AF71A612
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 03:16:47 +0200 (CEST)
Received: from [::1] (port=34664 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPGd3-0005m1-4r; Fri, 10 May 2019 21:16:45 -0400
Received: from atl4mhob05.registeredsite.com ([209.17.115.43]:33454)
 by mm2.emwd.com with esmtp (Exim 4.91)
 (envelope-from <k5so@k5so.com>) id 1hPGcy-0005cf-GU
 for usrp-users@lists.ettus.com; Fri, 10 May 2019 21:16:40 -0400
Received: from mailpod.hostingplatform.com
 (atl4qobmail02pod3.registeredsite.com [10.30.77.68])
 by atl4mhob05.registeredsite.com (8.14.4/8.14.4) with ESMTP id x4B1FsoN008444
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <usrp-users@lists.ettus.com>; Fri, 10 May 2019 21:15:54 -0400
Received: (qmail 15163 invoked by uid 0); 11 May 2019 01:15:54 -0000
X-TCPREMOTEIP: 192.206.203.10
X-Authenticated-UID: k5so@k5so.com
Received: from unknown (HELO ?192.168.1.76?) (k5so@k5so.com@192.206.203.10)
 by 0 with ESMTPA; 11 May 2019 01:15:53 -0000
Message-Id: <6A14E23C-AAFE-43EF-A207-C830BFD62642@k5so.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Fri, 10 May 2019 19:15:51 -0600
In-Reply-To: <5CD61E2C.5020703@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
 <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
 <691F0564-B5AA-48C6-9258-D15F006E9F7D@k5so.com>
 <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com> <5CD48C58.9050302@gmail.com>
 <8481269A-B583-40D7-B93C-1BDDFD50D338@k5so.com>
 <CA+JMMq_h4jKhUH7d6_WiMCstfC8anxeamESGAQ7Q=YLaaKG59A@mail.gmail.com>
 <31E31040-1F5D-4C84-BD3B-65CC609519A9@k5so.com>
 <CA+JMMq8kE4vL3wJz42NexKc=xicWUCGTsu0+Sb9sArw7OX8Tcw@mail.gmail.com>
 <72E6FBD3-F92B-4D0C-BC85-EEA19120596F@k5so.com>
 <161408E6-6B69-48D1-B606-48D3D4D7B22B@gmail.com>
 <ECD2FD88-0308-4D27-B17F-07F8FF4DCF6E@k5so.com>
 <82C6C97F-F209-435E-8C4C-37E43E71B827@gmail.com>
 <A0D159D0-D4D7-4645-8132-44768EF28D22@k5so.com>
 <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com> <5CD61E2C.5020703@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [USRP-users] Need a little help with running legacy prebuilt
 UHD versions
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Joe Martin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Joe Martin <k5so@k5so.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============4027961927802136704=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 


--===============4027961927802136704==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6A3C134E-7D35-4089-9A44-8685A36EE1D9"


--Apple-Mail=_6A3C134E-7D35-4089-9A44-8685A36EE1D9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Yes, Nick=E2=80=99s suggestion concerning S2 was certainly the key!  I =
learned a ton about this from all of you guys though and do sincerely =
appreciate the patient and helpful manner you all have exhibited to me. =20=


The daughter card is the DBSRX2 that they=E2=80=99ll use for =
hydrogen-line work and some pulsar work in the 1400MHz range and they =
also have a GPSDO board installed.  As an alternate daughter card they =
also have a TVRX2 that could replace the DBSRX2 if they wish. =20

This will be fun!

Joe

> On May 10, 2019, at 6:58 PM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com> wrote:
>=20
> On 05/10/2019 07:53 PM, Joe Martin via USRP-users wrote:
>> Holy smoke!  SUCCESS!!  Nick pointed out that there are two switches =
on the N210; S1 and S2 and S1 is a reset, so an upload of FPGA code =
fails if that is held (which I was holding for his suggested test!).  =
Holding S2 during iMPACT loading of the .bit image results in the =
uhd_image_loader step being SUCCESSFUL!!  I am so happy to see that!  =
Uhd_usrp_probe works wonderfully.  Finally.  We now can put this little =
to work doing some tough things! =20
>>=20
>> Thank you all SO MUCH for your assistance with reviving this N210.  A =
monumental achievement in my book!   I don=E2=80=99t know what to say =
except that we TOTALLY appreciate you efforts to get us running.  You =
guys are GREAT!=20
>>=20
>> Very best wishes to you each and every one!  =20
>>=20
>> Joe
> I think Nick deserves most of the credit--he was in Ettus R&D during =
the N210 development days.
>=20
> Hopefully DSES will now have a receiver -- what daughtercard do they =
have in it?
>=20
>=20
>>> On May 10, 2019, at 5:30 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>=20
>>> Ian and all,=20
>>>=20
>>> I have been very careful to avoid the pitfalls you detailed.  I =
began with a fresh installation of Ubuntu 18.04 then performed a =
successful build of UHD 3.9.7, then used command:
>>>=20
>>> uhd_images_downloader
>>>=20
>>> to load the appropriate/associated images into the PC.=20
>>>=20
>>> Then used ISE iMPACT to load the =E2=80=9Cusrp_n210_r3_fpga.bit=E2=80=9D=
 file into the FPGA of the N210.  iMPACT reports =E2=80=9CPROGRAM =
SUCCESSFUL=E2=80=9D.=20
>>>=20
>>> Then without power cycling the N210 used the command:=20
>>>=20
>>> usrp_image_loader =
=E2=80=94args=3D=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10.2,overwrite-safe=E2=
=80=9D =E2=80=94fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin =
=E2=80=94fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin
>>>=20
>>> To load the non-volatile memory of the N210 but I always get the =
=E2=80=9CRuntimeError: Received invalid 32 reply from device=E2=80=9D =
error when running usrp_image_loader.=20
>>>=20
>>> I am able to successfully ping 192.168.10.2 but no matter what =
combinations of r2 or r3 .bit file and firmware and fpga image .bin =
files I use the response when invoking the usrp_image_loader is always =
the same, namely =E2=80=9Cinvalid reply 32 from device=E2=80=9D. =20
>>>=20
>>> The command uhd_find_devices returns by reporting it can find a =
usrp2 device at address 192.168.10.2, as you would hope. =20
>>>=20
>>> After trying every conceivable combination of these actions with =
numerous versions of UHD and r2/r3 .bit FPGA files and r2/r3 .bin files =
on several fresh installations of Ubuntu 18.04 and 16.04 the result is =
always the same in that things proceed normally as the various documents =
concerning un-bricking an N210 explains, until the step of using the =
usrp_image_loader is executed, at which point a RuntimeError returns =
stating that the =E2=80=9Cinvalid 32 reply=E2=80=9D has occurred. =20
>>>=20
>>> I was hopeful that careful use of rev3 .bit and .bin files with UHD =
3.9.7 would do the trick but alas that is not the case. =20
>>>=20
>>> I suspect that you are near the bottom of the list of suggestions =
for me and I do appreciate the time and thinking you have afforded me on =
this issue.  If there is anything remaining to try I=E2=80=99d be most =
willing to try it.=20
>>>=20
>>> BTW, the suggestion made by someone earlier to try holding the safe =
button down during the loading of the FPGA from iMPACT causes the =
programming to fail (as reported by iMPACT), so that=E2=80=99s =
apparently not a good thing to do.  But one can recover from that state =
by simply by re-programming with the safe button not held but the =
fundamental problem with the uhd_image_loader step in the unbricking =
process always seems to result.=20
>>>=20
>>> Joe
>>>=20
>>>> On May 10, 2019, at 9:31 AM, Ian Buckley <ian.buckley@gmail.com =
<mailto:ian.buckley@gmail.com>> wrote:
>>>>=20
>>>> Joe,=20
>>>> To save you time, It may well be worth you trying jumping to the 3) =
step initially and seeing if your current loaded image or safe image is =
capable of being upgraded =E2=80=A6it likely is since that protocol is =
widely compatible across UHD variants. The key here I have to emphasize =
(since you appear to have been previously getting stuck with =
incompatibility between whatever is loaded in the USRP and your host UHD =
installation) is to be sure your new UHD installation is the only one on =
your system, and that you have the binary images that are version =
matched with it=E2=80=A6people often get caught out by reminants of =
various UHD versions installed in various system directories from =
different install methods.
>>>> -Ian
>>>>=20
>>>>> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>=20
>>>>> Ian,=20
>>>>>=20
>>>>> Very good, that=E2=80=99s encouraging at least.  Yes, I am =
familiar with using ISE iMPACT to load the FPGA with .bit code and even =
how to create the .bit from the associated .bin file and did try doing =
that earlier but perhaps not identically to your prescribed steps below. =
 I=E2=80=99ll revisit it.  I successfully built UHD 003_009_000 earlier =
so I can probably also successfully build UHD 003_009_007 too.  I=E2=80=99=
ll do that and give it a go.  I am familiar with the documents you =
mentioned.  Generally things have gone exactly as described right up =
until UHD needs to communicate with the stored images at which point it =
never does; so far anyway.
>>>>>=20
>>>>> Thanks much for the additional information.  I=E2=80=99ll =
certainly hammer on it some more now that I have a few more pertinent =
details under my belt to                                       guide the =
process appropriately.=20
>>>>>=20
>>>>> Joe
>>>>>=20
>>>>>> On May 10, 2019, at 12:32 AM, Ian Buckley <ian.buckley@gmail.com =
<mailto:ian.buckley@gmail.com>> wrote:
>>>>>>=20
>>>>>> Joe,=20
>>>>>> This is generally all good news and somewhat hopeful. The fact =
you can ping 192.168.10.2 in safe mode tell=E2=80=99s you that the FPGA =
has loaded an image from Flash, that it=E2=80=99s passed CRC and booted =
the embedded micro controller on the FPGA and run the firmware that =
replies to ICMP                                                 =
packets=E2=80=A6that=E2=80=99s a sign the hardware is in reasonable =
shape, regardless of what actually version of image ins currently =
loaded. If you had the internal UART connected to a 3.3V interface you =
would be seeing the FPGA and FW compatibility numbers for this image =
printed at boot if it got this far.
>>>>>> (Sorry if I=E2=80=99m telling you stuff you know here, too many =
messages in this thread to go reread them)
>>>>>>=20
>>>>>> You should now refer to these 2 pages:
>>>>>> https://kb.ettus.com/N200/N210_Device_Recovery =
<https://kb.ettus.com/N200/N210_Device_Recovery>
>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load =
<http://files.ettus.com/manual/page_usrp2.html#usrp2_load> (N-series =
sections, not USRP2)
>>>>>>=20
>>>>>> The general outline of what to try is as follows:
>>>>>> 1) Start with a relatively modern and stable UHD version: Any =
3.9.x version is pretty ideal, it=E2=80=99s well supported in Gnuradio, =
is perhaps the most                                                 =
stable, and has N210 support. If you are building UHD yourself from =
GitHub, then checkout the tag =E2=80=9Crelease_003_009_007=E2=80=9D.
>>>>>> (Note there is no reason to look for old UHD versions to support =
your H/W, the N210 specific code has changed very little for some time, =
but you will benefit from much improved general UHD functionality and =
much better community support)
>>>>>> 2. (Given you understand how to load a new image via JTAG) Follow =
the procedure outlined in =E2=80=9CUnbricking an N Series Device=E2=80=9D.=
 Run =E2=80=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to be sure =
you have a compatible set of FPGA images for this version of UHD. Use an =
R3 .bit file (Stay away from R4 images since we know that is =
electrically incompatible with your H/W) and load this via JTAG. Verify =
you can ping this once it=E2=80=99s loaded. Remember this is a volatile =
load, no flash has changed yet, if you reset the H/W this download is =
lost. The goal now is to use                                             =
    the embedded firmware in this JTAG image to load the same images in =
.bin format via the ethernet network and update both slot=E2=80=99s in =
the flash                                                 memory with =
non-volatile images that load automatically after reset/power cycle.
>>>>>> 3) Follow the instructions in =
http://files.ettus.com/manual/page_usrp2.html#usrp2_load =
<http://files.ettus.com/manual/page_usrp2.html#usrp2_load> to perform =
the image update via the network. You can also take a peek at the =
settings in your EEPROM (=E2=80=9CRecovery process=E2=80=9D =
instructions) to verify that all fields are sane and match your case =
label.
>>>>>> 4) At this point, if all has gone as intended, USRP and UHD =
should be in sync, power cycling H/W should work, and tools like =
=E2=80=9Cuhd_usrp_probe=E2=80=9D should find the USRP and print it=E2=80=99=
s detailed H/W config. There are a few common useful things to check in =
the =E2=80=9CTroubleshooting=E2=80=9D section if things still don=E2=80=99=
t seem to have worked.
>>>>>>=20
>>>>>> -Ian
>>>>>>=20
>>>>>>=20
>>>>>>> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>=20
>>>>>>> Oh, okay, I didn=E2=80=99t get that.  Understood now.  I have =
UHD 3.14.0 running on my main machine so I could try again some newer =
.bit files into the FPGA than I previously have tried (I tried the =
current version of UHD and N210 usrp_n210_r4_fpga.bit to no avail) to =
see if any of them are compatible.  I also was able to build UHD 3.9.0 =
on a different machine so I can try that too with some of the other .bit =
files.  Will hold the safe button down while loading the FPGA this time =
around. =20
>>>>>>>=20
>>>>>>> Joe
>>>>>>>=20
>>>>>>>> On May 9, 2019, at 3:38 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>>>>>>>=20
>>>>>>>> I'm saying that you might try to continue the effort to JTAG =
load a more modern FPGA image. It's possible you have to hold down the =
safe mode button while loading the image.=20
>>>>>>>>=20
>>>>>>>> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>> Thanks for digging into that for us, Nick.  Interesting.  As =
the hardware change to rev4 occurred around mid 2011 and the earliest =
UHD version that exists on the files.ettus.com/uhd =
<http://files.ettus.com/uhd> page is Feb 2104, what is the likelihood in =
your opinion that the UHD version will be compatible with the rev2/3 =
hardware from 2011?  =20
>>>>>>>>=20
>>>>>>>> So far I=E2=80=99ve not been successful in reviving the 2014 =
UHD version so I=E2=80=99m asking to determine whether continued effort =
to do so is likely to yield anything positive with respect to =
interfacing with the 2011 hardware. =20
>>>>>>>>=20
>>>>>>>> Joe
>>>>>>>>=20
>>>>>>>>> On May 9, 2019, at 3:06 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>=20
>>>>>>>>> So I really dug into the old archives here and literally =
pulled an old hard drive out of a closet, and found a copy of the old =
hardware repository from back in the days when N210 was called "USRP2+". =
Best that I can tell, we only ever released two versions to the public. =
We might have sold R3 stickered as R2 -- I don't see anything in the =
repository that would indicate otherwise. Rev 2/3 was sold until around =
June or July 2011, when we moved to rev 4. The only firmware/host code =
changes I can see between any of the versions are that R4 used LVDS =
clocking to the daughterboard where previous versions used CMOS. So I =
think you should be able to run r3 firmware on your N210.
>>>>>>>>>=20
>>>>>>>>> That said, the very very old N210s with very very old firmware =
might not have used the same safe/production firmware/fpga image =
arrangement that we later arrived at. The hardware is still fine, but =
you might be in for a bit of a deep dive to get it all running again.
>>>>>>>>>=20
>>>>>>>>> If you have a TTL-serial adapter or a logic analyzer that =
works as such, you can connect to the debug UART header and get printout =
information from the firmware at boot time. Another good idea would be =
to take a video of the front panel LEDs as you apply power -- the boot =
LED lights give good indication of the firmware/FPGA image loading =
process.
>>>>>>>>>=20
>>>>>>>>> Nick
>>>>>>>>>=20
>>>>>>>>> On Thu, May 9, 2019 at 1:42 PM Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>> Thanks for the info, Marcus.  However, seeing that Jason went =
through this last year with a couple of N210 he has it would seem =
unlikely that all three of the N210 are broken.  That being said and =
considering what you jus said it seems that I should=E2=80=99ve been =
able to find some version of UHD that will successfully communicate with =
the firmware and fpga images stored in the unit;  I have not, using UHD =
versions from 3.9.0 to 3.14.0. =20
>>>>>>>>>=20
>>>>>>>>> I wanted to try with even earlier versions of UHD but am =
finding trouble in utilizing UHD v3.4.0 (earliest version I could find) =
as it seems that =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only Ubuntu =
10.10 or 11.10 which so far I=E2=80=99m not able to successfully install =
and run.   Seems we=E2=80=99re running out of option on this one so the =
Deep Space Exploration Society, who I=E2=80=99m trying to help with =
this, may have to come to grasps with the notion that their N210 is a =
true brick.=20
>>>>>>>>>=20
>>>>>>>>> Joe
>>>>>>>>>=20
>>>>>>>>>> On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>=20
>>>>>>>>>> On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
>>>>>>>>>>> Nick, Ian,=20
>>>>>>>>>>>=20
>>>>>>>>>>> If this unit happens to be incorrectly labeled as a rev 2 =
N210 and it is actually a rev 3 N210, is there hope in being able to =
load rev 3 firmware and fpga images (which I have located previously and =
tried actually) with some available UHD version?  If so, would you be =
able to tell me which UHD version(s) might be able to communicate with =
it? =20
>>>>>>>>>>>=20
>>>>>>>>>>> Joe
>>>>>>>>>>>=20
>>>>>>>>>> Theoretically, most versions in the last several years should =
be able to talk to it.  In *general* UHD never drops support for older =
hardware,
>>>>>>>>>>   and tries to maintain compatibility.  Now, it is the case =
that newer features are almost never "back-ported", but basic =
functionality                                                           =
should
>>>>>>>>>>   always be there. =20
>>>>>>>>>>=20
>>>>>>>>>> What this *should* mean is that you should be able to use the =
firmware tools once the device is in "safe mode" to get yourself to =
where you
>>>>>>>>>>   want to be.  If that doesn't work, that may well mean that =
the hardware is broken, and it's unlikely to be economical to repair.
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>=20
>>>>>>>>>>>> Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99=
s a rev 2, based on the factory label.  Is this N210 a lost cause if it =
is actually a Rev2 N210?=20
>>>>>>>>>>>>=20
>>>>>>>>>>>> Joe
>>>>>>>>>>>>=20
>>>>>>>>>>>>> On May 9, 2019, at 2:05 PM, Nick Foster =
<bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Well, it's not a rev 4. It's either 2 or 3 in terms of =
hardware revision.=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>> =E2=80=A6able to ping 192.168.10.2 successfully.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Ian,=20
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Yes, I have tried many times to boot in safe mode, same =
result regardless.  Yes, I am able to pin to 192.168.10.2 successfully.=20=

>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Ian and Nick,=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Thanks for the assistance.  Attached are dropbox links =
to two snapshot photos:  1) the factory label on the back of the         =
                                                  N210, showing N210 =
r:2.0 and 2) a top side view of the N210.=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> 1) =
https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0 =
<https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0>
>>>>>>>>>>>>>>> 2) =
https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0 =
<https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0>
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Seems this unit is indeed a rev 2 N210, yes?=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On May 9, 2019, at 12:40 PM, Nick Foster =
<bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Moreover, the best "tell" is to look at the N210 =
motherboard. If the SRAM chip is on the top side, it's a rev 2/3. If the =
SRAM is on the bottom side, it's a rev 4. If you send a picture along of =
the top of the N210, I can tell you if it's early or late rev.
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>> Joe,
>>>>>>>>>>>>>>>> So I scratched my head about this a little late last =
night and looked back through the development repository for the N210 =
and as far as I can tell there was never customer facing FPGA code for a =
Rev2 N210. Chatting with Matt this morning he shared my feeling that a =
Rev2 wasn't sold to customers, so I'm curious if you have a unit that =
has a factory label that says N210Rev2 or if you have seen "usrp2 =
rev2.0" on the PCB (which can be missleading).
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Also have you tried booting into the safe image and =
verifying that it at least pings on 192.168.10.2?
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> If we can conclusively identify which rev of h/w you =
have I can probably help further.
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Ian
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>>>>> USRP-users@lists.ettus.com =
<mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>=20
>>>>>>>>>>>> _______________________________________________
>>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>>> USRP-users@lists.ettus.com =
<mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>>>>>>=20
>>>>>>>>>>>=20
>>>>>>>>>>>=20
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list
>>>>>>>>>>> USRP-users@lists.ettus.com =
<mailto:USRP-users@lists.ettus.com>
>>>>>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>>>>>=20
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list
>>>>>>>>>> USRP-users@lists.ettus.com =
<mailto:USRP-users@lists.ettus.com>
>>>>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>>>>=20
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list
>>>>>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>>>=20
>>>>>>>=20
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>>>> =
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>>>=20
>>>>>=20
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>>>=20
>>>=20
>>>=20
>>>> On May 10, 2019, at 9:31 AM, Ian Buckley <ian.buckley@gmail.com =
<mailto:ian.buckley@gmail.com>> wrote:
>>>>=20
>>>> Joe,=20
>>>> To save you time, It may well be worth you trying jumping to the 3) =
step initially and seeing if your current loaded image or safe image is =
capable of being upgraded =E2=80=A6it likely is since that protocol is =
widely compatible across UHD variants. The key here I have to emphasize =
(since you appear to have been previously getting stuck with =
incompatibility between whatever is loaded in the USRP and your host UHD =
installation) is to be sure your new UHD installation is the only one on =
your system, and that you have the binary images that are version =
matched with it=E2=80=A6people often get caught out by reminants of =
various UHD versions installed in various system directories from =
different install methods.
>>>> -Ian
>>>>=20
>>>>> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>=20
>>>>> Ian,=20
>>>>>=20
>>>>> Very good, that=E2=80=99s encouraging at least.  Yes, I am =
familiar with using ISE iMPACT to load the FPGA with .bit code and even =
how to create the .bit from the associated .bin file and did try doing =
that earlier but perhaps not identically to your prescribed steps below. =
 I=E2=80=99ll revisit it.  I successfully built UHD 003_009_000 earlier =
so I can probably also successfully build UHD 003_009_007 too.  I=E2=80=99=
ll do that and give it a go.  I am familiar with the documents you =
mentioned.  Generally things have gone exactly as described right up =
until UHD needs to communicate with the stored images at which point it =
never does; so far anyway.
>>>>>=20
>>>>> Thanks much for the additional information.  I=E2=80=99ll =
certainly hammer on it some more now that I have a few more pertinent =
details under my belt to guide the process appropriately.=20
>>>>>=20
>>>>> Joe
>>>>>=20
>>>>>> On May 10, 2019, at 12:32 AM, Ian Buckley <ian.buckley@gmail.com =
<mailto:ian.buckley@gmail.com>> wrote:
>>>>>>=20
>>>>>> Joe,=20
>>>>>> This is generally all good news and somewhat hopeful. The fact =
you can ping 192.168.10.2 in safe mode tell=E2=80=99s you that the FPGA =
has loaded an image from Flash, that it=E2=80=99s passed CRC and booted =
the embedded micro controller on the FPGA and run the firmware that =
replies to ICMP packets=E2=80=A6that=E2=80=99s a sign the hardware is in =
reasonable shape, regardless of what actually version of image ins =
currently loaded. If you had the internal UART connected to a 3.3V =
interface you would be seeing the FPGA and FW compatibility numbers for =
this image printed at boot if it got this far.
>>>>>> (Sorry if I=E2=80=99m telling you stuff you know here, too many =
messages in this thread to go reread them)
>>>>>>=20
>>>>>> You should now refer to these 2 pages:
>>>>>> https://kb.ettus.com/N200/N210_Device_Recovery =
<https://kb.ettus.com/N200/N210_Device_Recovery>
>>>>>> http://files.ettus.com/manual/page_usrp2.html#usrp2_load =
<http://files.ettus.com/manual/page_usrp2.html#usrp2_load> (N-series =
sections, not USRP2)
>>>>>>=20
>>>>>> The general outline of what to try is as follows:
>>>>>> 1) Start with a relatively modern and stable UHD version: Any =
3.9.x version is pretty ideal, it=E2=80=99s well supported in Gnuradio, =
is perhaps the most stable, and has N210 support. If you are building =
UHD yourself from GitHub, then checkout the tag =
=E2=80=9Crelease_003_009_007=E2=80=9D.
>>>>>> (Note there is no reason to look for old UHD versions to support =
your H/W, the N210 specific code has changed very little for some time, =
but you will benefit from much improved general UHD functionality and =
much better community support)
>>>>>> 2. (Given you understand how to load a new image via JTAG) Follow =
the procedure outlined in =E2=80=9CUnbricking an N Series Device=E2=80=9D.=
 Run =E2=80=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to be sure =
you have a compatible set of FPGA images for this version of UHD. Use an =
R3 .bit file (Stay away from R4 images since we know that is =
electrically incompatible with your H/W) and load this via JTAG. Verify =
you can ping this once it=E2=80=99s loaded. Remember this is a volatile =
load, no flash has changed yet, if you reset the H/W this download is =
lost. The goal now is to use the embedded firmware in this JTAG image to =
load the same images in .bin format via the ethernet network and update =
both slot=E2=80=99s in the flash memory with non-volatile images that =
load automatically after reset/power cycle.
>>>>>> 3) Follow the instructions in =
http://files.ettus.com/manual/page_usrp2.html#usrp2_load =
<http://files.ettus.com/manual/page_usrp2.html#usrp2_load> to perform =
the image update via the network. You can also take a peek at the =
settings in your EEPROM (=E2=80=9CRecovery process=E2=80=9D =
instructions) to verify that all fields are sane and match your case =
label.
>>>>>> 4) At this point, if all has gone as intended, USRP and UHD =
should be in sync, power cycling H/W should work, and tools like =
=E2=80=9Cuhd_usrp_probe=E2=80=9D should find the USRP and print it=E2=80=99=
s detailed H/W config. There are a few common useful things to check in =
the =E2=80=9CTroubleshooting=E2=80=9D section if things still don=E2=80=99=
t seem to have worked.
>>>>>>=20
>>>>>> -Ian
>>>>>>=20
>>>>>>=20
>>>>>>> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>=20
>>>>>>> Oh, okay, I didn=E2=80=99t get that.  Understood now.  I have =
UHD 3.14.0 running on my main machine so I could try again some newer =
.bit files into the FPGA than I previously have tried (I tried the =
current version of UHD and N210 usrp_n210_r4_fpga.bit to no avail) to =
see if any of them are compatible.  I also was able to build UHD 3.9.0 =
on a different machine so I can try that too with some of the other .bit =
files.  Will hold the safe button down while loading the FPGA this time =
around. =20
>>>>>>>=20
>>>>>>> Joe
>>>>>>>=20
>>>>>>>> On May 9, 2019, at 3:38 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>>>>>>>=20
>>>>>>>> I'm saying that you might try to continue the effort to JTAG =
load a more modern FPGA image. It's possible you have to hold down the =
safe mode button while loading the image.=20
>>>>>>>>=20
>>>>>>>> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>> Thanks for digging into that for us, Nick.  Interesting.  As =
the hardware change to rev4 occurred around mid 2011 and the earliest =
UHD version that exists on the files.ettus.com/uhd =
<http://files.ettus.com/uhd> page is Feb 2104, what is the likelihood in =
your opinion that the UHD version will be compatible with the rev2/3 =
hardware from 2011?  =20
>>>>>>>>=20
>>>>>>>> So far I=E2=80=99ve not been successful in reviving the 2014 =
UHD version so I=E2=80=99m asking to determine whether continued effort =
to do so is likely to yield anything positive with respect to =
interfacing with the 2011 hardware. =20
>>>>>>>>=20
>>>>>>>> Joe
>>>>>>>>=20
>>>>>>>>> On May 9, 2019, at 3:06 PM, Nick Foster <bistromath@gmail.com =
<mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>=20
>>>>>>>>> So I really dug into the old archives here and literally =
pulled an old hard drive out of a closet, and found a copy of the old =
hardware repository from back in the days when N210 was called "USRP2+". =
Best that I can tell, we only ever released two versions to the public. =
We might have sold R3 stickered as R2 -- I don't see anything in the =
repository that would indicate otherwise. Rev 2/3 was sold until around =
June or July 2011, when we moved to rev 4. The only firmware/host code =
changes I can see between any of the versions are that R4 used LVDS =
clocking to the daughterboard where previous versions used CMOS. So I =
think you should be able to run r3 firmware on your N210.
>>>>>>>>>=20
>>>>>>>>> That said, the very very old N210s with very very old firmware =
might not have used the same safe/production firmware/fpga image =
arrangement that we later arrived at. The hardware is still fine, but =
you might be in for a bit of a deep dive to get it all running again.
>>>>>>>>>=20
>>>>>>>>> If you have a TTL-serial adapter or a logic analyzer that =
works as such, you can connect to the debug UART header and get printout =
information from the firmware at boot time. Another good idea would be =
to take a video of the front panel LEDs as you apply power -- the boot =
LED lights give good indication of the firmware/FPGA image loading =
process.
>>>>>>>>>=20
>>>>>>>>> Nick
>>>>>>>>>=20
>>>>>>>>> On Thu, May 9, 2019 at 1:42 PM Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>> Thanks for the info, Marcus.  However, seeing that Jason went =
through this last year with a couple of N210 he has it would seem =
unlikely that all three of the N210 are broken.  That being said and =
considering what you jus said it seems that I should=E2=80=99ve been =
able to find some version of UHD that will successfully communicate with =
the firmware and fpga images stored in the unit;  I have not, using UHD =
versions from 3.9.0 to 3.14.0. =20
>>>>>>>>>=20
>>>>>>>>> I wanted to try with even earlier versions of UHD but am =
finding trouble in utilizing UHD v3.4.0 (earliest version I could find) =
as it seems that =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only Ubuntu =
10.10 or 11.10 which so far I=E2=80=99m not able to successfully install =
and run.   Seems we=E2=80=99re running out of option on this one so the =
Deep Space Exploration Society, who I=E2=80=99m trying to help with =
this, may have to come to grasps with the notion that their N210 is a =
true brick.=20
>>>>>>>>>=20
>>>>>>>>> Joe
>>>>>>>>>=20
>>>>>>>>>> On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>=20
>>>>>>>>>> On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
>>>>>>>>>>> Nick, Ian,=20
>>>>>>>>>>>=20
>>>>>>>>>>> If this unit happens to be incorrectly labeled as a rev 2 =
N210 and it is actually a rev 3 N210, is there hope in being able to =
load rev 3 firmware and fpga images (which I have located previously and =
tried actually) with some available UHD version?  If so, would you be =
able to tell me which UHD version(s) might be able to communicate with =
it? =20
>>>>>>>>>>>=20
>>>>>>>>>>> Joe
>>>>>>>>>>>=20
>>>>>>>>>> Theoretically, most versions in the last several years should =
be able to talk to it.  In *general* UHD never drops support for older =
hardware,
>>>>>>>>>>   and tries to maintain compatibility.  Now, it is the case =
that newer features are almost never "back-ported", but basic =
functionality                                                           =
should
>>>>>>>>>>   always be there. =20
>>>>>>>>>>=20
>>>>>>>>>> What this *should* mean is that you should be able to use the =
firmware tools once the device is in "safe mode" to get yourself to =
where you
>>>>>>>>>>   want to be.  If that doesn't work, that may well mean that =
the hardware is broken, and it's unlikely to be economical to repair.
>>>>>>>>>>=20
>>>>>>>>>>=20
>>>>>>>>>>>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>=20
>>>>>>>>>>>> Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99=
s a rev 2, based on the factory label.  Is this N210 a lost cause if it =
is actually a Rev2 N210?=20
>>>>>>>>>>>>=20
>>>>>>>>>>>> Joe
>>>>>>>>>>>>=20
>>>>>>>>>>>>> On May 9, 2019, at 2:05 PM, Nick Foster =
<bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> Well, it's not a rev 4. It's either 2 or 3 in terms of =
hardware revision.=20
>>>>>>>>>>>>>=20
>>>>>>>>>>>>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>> =E2=80=A6able to ping 192.168.10.2 successfully.
>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com =
<mailto:k5so@k5so.com>> wrote:
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Ian,=20
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Yes, I have tried many times to boot in safe mode, same =
result regardless.  Yes, I am able to pin to 192.168.10.2 successfully.=20=

>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Ian and Nick,=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Thanks for the assistance.  Attached are dropbox links =
to two snapshot photos:  1) the factory label on the back of the         =
                                                  N210, showing N210 =
r:2.0 and 2) a top side view of the N210.=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> 1) =
https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0 =
<https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0>
>>>>>>>>>>>>>>> 2) =
https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0 =
<https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0>
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Seems this unit is indeed a rev 2 N210, yes?=20
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>> Joe
>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On May 9, 2019, at 12:40 PM, Nick Foster =
<bistromath@gmail.com <mailto:bistromath@gmail.com>> wrote:
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Moreover, the best "tell" is to look at the N210 =
motherboard. If the SRAM chip is on the top side, it's a rev 2/3. If the =
SRAM is on the bottom side, it's a rev 4. If you send a picture along of =
the top of the N210, I can tell you if it's early or late rev.
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via =
USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>> wrote:
>>>>>>>>>>>>>>>> Joe,
>>>>>>>>>>>>>>>> So I scratched my head about this a little late last =
night and looked back through the development repository for the N210 =
and as far as I can tell there was never customer facing FPGA code for a =
Rev2 N210. Chatting with Matt this morning he shared my feeling that a =
Rev2 wasn't sold to customers, so I'm curious if you have a unit that =
has a factory label that says N210Rev2 or if you have seen "usrp2 =
rev2.0" on the PCB (which can be missleading).
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Also have you tried booting into the safe image and =
verifying that it at least pings on 192.168.10.2?
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> If we can conclusively identify which rev of h/w you =
have I can probably help further.
>>>>>>>>>>>>>>>>=20
>>>>>>>>>>>>>>>> Ian
>>>>>>>>>>>>>>>=20
>>>=20
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>>=20
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com =
<http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--Apple-Mail=_6A3C134E-7D35-4089-9A44-8685A36EE1D9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Yes, =
Nick=E2=80=99s suggestion concerning S2 was certainly the key! &nbsp;I =
learned a ton about this from all of you guys though and do sincerely =
appreciate the patient and helpful manner you all have exhibited to me. =
&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">The daughter =
card is the DBSRX2 that they=E2=80=99ll use for hydrogen-line work and =
some pulsar work in the 1400MHz range and they also have a GPSDO board =
installed. &nbsp;As an alternate daughter card they also have a TVRX2 =
that could replace the DBSRX2 if they wish. &nbsp;<div class=3D""><br =
class=3D""></div><div class=3D"">This will be fun!</div><div =
class=3D""><br class=3D""></div><div class=3D"">Joe</div><div =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 10, 2019, at 6:58 PM, Marcus D. Leech via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3D"Content-Type" class=3D"">
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    <div class=3D"moz-cite-prefix">On 05/10/2019 07:53 PM, Joe Martin =
via
      USRP-users wrote:<br class=3D"">
    </div>
    <blockquote cite=3D"mid:365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com"=
 type=3D"cite" class=3D"">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252" class=3D"">
      Holy smoke! &nbsp;SUCCESS!! &nbsp;Nick pointed out that there are =
two
      switches on the N210; S1 and S2 and S1 is a reset, so an upload of
      FPGA code fails if that is held (which I was holding for his
      suggested test!). &nbsp;Holding S2 during iMPACT loading of the =
.bit
      image results in the uhd_image_loader step being SUCCESSFUL!! =
&nbsp;I
      am so happy to see that! &nbsp;Uhd_usrp_probe works wonderfully.
      &nbsp;Finally. &nbsp;We now can put this little to work doing some =
tough
      things! &nbsp;
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Thank you all SO MUCH for your assistance with
        reviving this N210. &nbsp;A monumental achievement in my book! =
&nbsp; I
        don=E2=80=99t know what to say except that we TOTALLY appreciate =
you
        efforts to get us running. &nbsp;You guys are GREAT!&nbsp;</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Very best wishes to you each and every one! =
&nbsp;&nbsp;</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Joe<br class=3D"">
      </div>
    </blockquote>
    I think Nick deserves most of the credit--he was in Ettus R&amp;D
    during the N210 development days.<br class=3D"">
    <br class=3D"">
    Hopefully DSES will now have a receiver -- what daughtercard do they
    have in it?<br class=3D"">
    <br class=3D"">
    <br class=3D"">
    <blockquote cite=3D"mid:365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com"=
 type=3D"cite" class=3D"">
      <div class=3D"">
        <div class=3D"">
          <blockquote type=3D"cite" class=3D"">
            <div class=3D"">On May 10, 2019, at 5:30 PM, Joe Martin via
              USRP-users &lt;<a moz-do-not-send=3D"true" =
href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
              wrote:</div>
            <br class=3D"Apple-interchange-newline">
            <div class=3D"">
              <meta http-equiv=3D"Content-Type" content=3D"text/html;
                charset=3Dwindows-1252" class=3D"">
              <div style=3D"word-wrap: break-word; -webkit-nbsp-mode:
                space; line-break: after-white-space;" class=3D"">Ian =
and
                all,&nbsp;
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I have been very careful to avoid the
                  pitfalls you detailed. &nbsp;I began with a fresh
                  installation of Ubuntu 18.04 then performed a
                  successful build of UHD 3.9.7, then used =
command:</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">uhd_images_downloader</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">to load the appropriate/associated =
images
                  into the PC.&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Then used ISE iMPACT to load the
                  =E2=80=9Cusrp_n210_r3_fpga.bit=E2=80=9D file into the =
FPGA of the
                  N210. &nbsp;iMPACT reports =E2=80=9CPROGRAM =
SUCCESSFUL=E2=80=9D.&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Then without power cycling the N210 used
                  the command:&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">usrp_image_loader
                  =
=E2=80=94args=3D=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10.2,overwrite-safe=E2=
=80=9D
                  =
=E2=80=94fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin
=E2=80=94fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin</di=
v>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">To load the non-volatile memory of the
                  N210 but I always get the =E2=80=9CRuntimeError: =
Received
                  invalid 32 reply from device=E2=80=9D error when =
running
                  usrp_image_loader.&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I am able to successfully ping
                  192.168.10.2 but no matter what combinations of r2 or
                  r3 .bit file and firmware and fpga image .bin files I
                  use the response when invoking the usrp_image_loader
                  is always the same, namely =E2=80=9Cinvalid reply 32 =
from
                  device=E2=80=9D. &nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">The command uhd_find_devices returns by
                  reporting it can find a usrp2 device at address
                  192.168.10.2, as you would hope. &nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">After trying every conceivable =
combination
                  of these actions with numerous versions of UHD and
                  r2/r3 .bit FPGA files and r2/r3 .bin files on several
                  fresh installations of Ubuntu 18.04 and 16.04 the
                  result is always the same in that things proceed
                  normally as the various documents concerning
                  un-bricking an N210 explains, until the step of using
                  the usrp_image_loader is executed, at which point a
                  RuntimeError returns stating that the =E2=80=9Cinvalid =
32
                  reply=E2=80=9D has occurred. &nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I was hopeful that careful use of rev3
                  .bit and .bin files with UHD 3.9.7 would do the trick
                  but alas that is not the case. &nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">I suspect that you are near the bottom =
of
                  the list of suggestions for me and I do appreciate the
                  time and thinking you have afforded me on this issue.
                  &nbsp;If there is anything remaining to try I=E2=80=99d =
be most
                  willing to try it.&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">BTW, the suggestion made by someone
                  earlier to try holding the safe button down during the
                  loading of the FPGA from iMPACT causes the programming
                  to fail (as reported by iMPACT), so that=E2=80=99s =
apparently
                  not a good thing to do. &nbsp;But one can recover from =
that
                  state by simply by re-programming with the safe button
                  not held but the fundamental problem with the
                  uhd_image_loader step in the unbricking process always
                  seems to result.&nbsp;</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">Joe</div>
                <div class=3D""><br class=3D"">
                </div>
                <div class=3D"">
                  <div class=3D"">
                    <blockquote type=3D"cite" class=3D"">
                      <div class=3D"">On May 10, 2019, at 9:31 AM, Ian
                        Buckley &lt;<a moz-do-not-send=3D"true" =
href=3D"mailto:ian.buckley@gmail.com" =
class=3D"">ian.buckley@gmail.com</a>&gt;
                        wrote:</div>
                      <br class=3D"Apple-interchange-newline">
                      <div class=3D"">
                        <div class=3D"" style=3D"word-wrap: break-word;
                          -webkit-nbsp-mode: space; line-break:
                          after-white-space;">Joe,&nbsp;
                          <div class=3D"">To save you time, It may well =
be
                            worth you trying jumping to the 3) step
                            initially and seeing if your current loaded
                            image or safe image is capable of being
                            upgraded =E2=80=A6it likely is since that =
protocol
                            is widely compatible across UHD variants.
                            The key here I have to emphasize (since you
                            appear to have been previously getting stuck
                            with incompatibility between whatever is
                            loaded in the USRP and your host UHD
                            installation) is to be sure your new UHD
                            installation is the only one on your system,
                            and that you have the binary images that are
                            version matched with it=E2=80=A6people often =
get
                            caught out by reminants of various UHD
                            versions installed in various system
                            directories from different install =
methods.</div>
                          <div class=3D"">-Ian</div>
                          <div class=3D""><br class=3D"">
                            <div class=3D"">
                              <blockquote type=3D"cite" class=3D"">
                                <div class=3D"">On May 10, 2019, at 5:58
                                  AM, Joe Martin via USRP-users &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                  wrote:</div>
                                <br class=3D"Apple-interchange-newline">
                                <div class=3D"">
                                  <div class=3D"" style=3D"word-wrap:
                                    break-word; -webkit-nbsp-mode:
                                    space; line-break:
                                    after-white-space;">Ian,&nbsp;
                                    <div class=3D""><br class=3D"">
                                    </div>
                                    <div class=3D"">Very good, that=E2=80=99=
s
                                      encouraging at least. &nbsp;Yes, I =
am
                                      familiar with using ISE iMPACT to
                                      load the FPGA with .bit code and
                                      even how to create the .bit from
                                      the associated .bin file and did
                                      try doing that earlier but perhaps
                                      not identically to your prescribed
                                      steps below. &nbsp;I=E2=80=99ll =
revisit it. &nbsp;I
                                      successfully built UHD 003_009_000
                                      earlier so I can probably also
                                      successfully build UHD 003_009_007
                                      too. &nbsp;I=E2=80=99ll do that =
and give it a
                                      go. &nbsp;I am familiar with the
                                      documents you mentioned.
                                      &nbsp;Generally things have gone
                                      exactly as described right up
                                      until UHD needs to communicate
                                      with the stored images at which
                                      point it never does; so far
                                      anyway.</div>
                                    <div class=3D""><br class=3D"">
                                    </div>
                                    <div class=3D"">Thanks much for the
                                      additional information. =
&nbsp;I=E2=80=99ll
                                      certainly hammer on it some more
                                      now that I have a few more
                                      pertinent details under my belt to
                                      guide the process =
appropriately.&nbsp;</div>
                                    <div class=3D""><br class=3D"">
                                    </div>
                                    <div class=3D"">Joe<br class=3D"">
                                      <div class=3D""><br class=3D"">
                                        <blockquote type=3D"cite" =
class=3D"">
                                          <div class=3D"">On May 10, =
2019,
                                            at 12:32 AM, Ian Buckley
                                            &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:ian.buckley@gmail.com" =
class=3D"">ian.buckley@gmail.com</a>&gt;
                                            wrote:</div>
                                          <br =
class=3D"Apple-interchange-newline">
                                          <div class=3D"">
                                            <div class=3D"" =
style=3D"word-wrap:
                                              break-word;
                                              -webkit-nbsp-mode: space;
                                              line-break:
                                              =
after-white-space;">Joe,&nbsp;
                                              <div class=3D"">This is
                                                generally all good news
                                                and somewhat hopeful.
                                                The fact you can ping
                                                192.168.10.2 in safe
                                                mode tell=E2=80=99s you =
that the
                                                FPGA has loaded an image
                                                from Flash, that it=E2=80=99=
s
                                                passed CRC and booted
                                                the embedded micro
                                                controller on the FPGA
                                                and run the firmware
                                                that replies to ICMP
                                                packets=E2=80=A6that=E2=80=
=99s a sign
                                                the hardware is in
                                                reasonable shape,
                                                regardless of what
                                                actually version of
                                                image ins currently
                                                loaded. If you had the
                                                internal UART connected
                                                to a 3.3V interface you
                                                would be seeing the FPGA
                                                and FW compatibility
                                                numbers for this image
                                                printed at boot if it
                                                got this far.</div>
                                              <div class=3D"">(Sorry if
                                                I=E2=80=99m telling you =
stuff
                                                you know here, too many
                                                messages in this thread
                                                to go reread them)</div>
                                              <div class=3D""><br =
class=3D"">
                                              </div>
                                              <div class=3D"">You should
                                                now refer to these 2
                                                pages:</div>
                                              <div class=3D""><a =
moz-do-not-send=3D"true" =
href=3D"https://kb.ettus.com/N200/N210_Device_Recovery" =
class=3D"">https://kb.ettus.com/N200/N210_Device_Recovery</a></div>
                                              <div class=3D""><a =
moz-do-not-send=3D"true" =
href=3D"http://files.ettus.com/manual/page_usrp2.html#usrp2_load" =
class=3D"">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a>&nb=
sp;(N-series
                                                sections, not =
USRP2)</div>
                                              <div class=3D""><br =
class=3D"">
                                              </div>
                                              <div class=3D"">The =
general
                                                outline of what to try
                                                is as follows:</div>
                                              <div class=3D"">1) Start
                                                with a relatively modern
                                                and stable UHD version:
                                                Any 3.9.x version is
                                                pretty ideal, it=E2=80=99s=
 well
                                                supported in Gnuradio,
                                                is perhaps the most
                                                stable, and has N210
                                                support. If you are
                                                building UHD yourself
                                                from GitHub, then
                                                checkout the tag
                                                =
=E2=80=9Crelease_003_009_007=E2=80=9D.</div>
                                              <div class=3D"">(Note =
there
                                                is no reason to look for
                                                old UHD versions to
                                                support your H/W, the
                                                N210 specific code has
                                                changed very little for
                                                some time, but you will
                                                benefit from much
                                                improved general UHD
                                                functionality and much
                                                better community
                                                support)</div>
                                              <div class=3D"">2. (Given
                                                you understand how to
                                                load a new image via
                                                JTAG) Follow the
                                                procedure outlined in
                                                =E2=80=9CUnbricking an N =
Series
                                                Device=E2=80=9D. Run
                                                =
=E2=80=9Cuhd_images_downloader=E2=80=9D
                                                under UHD3.9.x to be
                                                sure you have a
                                                compatible set of FPGA
                                                images for this version
                                                of UHD. Use an R3 .bit
                                                file (Stay away from R4
                                                images since we know
                                                that is electrically
                                                incompatible with your
                                                H/W) and load this via
                                                JTAG. Verify you can
                                                ping this once it=E2=80=99=
s
                                                loaded. Remember this is
                                                a volatile load, no
                                                flash has changed yet,
                                                if you reset the H/W
                                                this download is lost.
                                                The goal now is to use
                                                the embedded firmware in
                                                this JTAG image to load
                                                the same images in .bin
                                                format via the ethernet
                                                network and update both
                                                slot=E2=80=99s in the =
flash
                                                memory with non-volatile
                                                images that load
                                                automatically after
                                                reset/power cycle.</div>
                                              <div class=3D"">3) Follow
                                                the instructions =
in&nbsp;<a moz-do-not-send=3D"true" =
href=3D"http://files.ettus.com/manual/page_usrp2.html#usrp2_load" =
class=3D"">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a>&nb=
sp;to
                                                perform the image update
                                                via the network. You can
                                                also take a peek at the
                                                settings in your EEPROM
                                                (=E2=80=9CRecovery =
process=E2=80=9D
                                                instructions) to verify
                                                that all fields are sane
                                                and match your case
                                                label.</div>
                                              <div class=3D"">4) At this
                                                point, if all has gone
                                                as intended, USRP and
                                                UHD should be in sync,
                                                power cycling H/W should
                                                work, and tools like
                                                =E2=80=9Cuhd_usrp_probe=E2=
=80=9D should
                                                find the USRP and print
                                                it=E2=80=99s detailed =
H/W
                                                config. There are a few
                                                common useful things to
                                                check in the
                                                =E2=80=9CTroubleshooting=E2=
=80=9D
                                                section if things still
                                                don=E2=80=99t seem to =
have
                                                worked.</div>
                                              <div class=3D""><br =
class=3D"">
                                              </div>
                                              <div class=3D"">-Ian</div>
                                              <div class=3D""><br =
class=3D"">
                                              </div>
                                              <div class=3D""><br =
class=3D"">
                                              </div>
                                              <div class=3D"">
                                                <div class=3D"">
                                                  <blockquote =
type=3D"cite" class=3D"">
                                                    <div class=3D"">On =
May
                                                      9, 2019, at 2:48
                                                      PM, Joe Martin via
                                                      USRP-users &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                      wrote:</div>
                                                    <br =
class=3D"Apple-interchange-newline">
                                                    <div class=3D"">
                                                      <div class=3D"" =
style=3D"word-wrap:
                                                        break-word;
                                                        =
-webkit-nbsp-mode:
                                                        space;
                                                        line-break:
                                                        =
after-white-space;">Oh,
                                                        okay, I didn=E2=80=
=99t
                                                        get that.
                                                        &nbsp;Understood =
now.
                                                        &nbsp;I have UHD
                                                        3.14.0 running
                                                        on my main
                                                        machine so I
                                                        could try again
                                                        some newer .bit
                                                        files into the
                                                        FPGA than I
                                                        previously have
                                                        tried (I tried
                                                        the current
                                                        version of UHD
                                                        and N210
                                                        =
usrp_n210_r4_fpga.bit
                                                        to no avail) to
                                                        see if any of
                                                        them are
                                                        compatible. =
&nbsp;I
                                                        also was able to
                                                        build UHD 3.9.0
                                                        on a different
                                                        machine so I can
                                                        try that too
                                                        with some of the
                                                        other .bit
                                                        files. =
&nbsp;Will
                                                        hold the safe
                                                        button down
                                                        while loading
                                                        the FPGA this
                                                        time around. =
&nbsp;
                                                        <div =
class=3D""><br class=3D"">
                                                        </div>
                                                        <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 3:38 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
dir=3D"auto" class=3D"">I'm
                                                          saying that
                                                          you might try
                                                          to continue
                                                          the effort to
                                                          JTAG load a
                                                          more modern
                                                          FPGA image.
                                                          It's possible
                                                          you have to
                                                          hold down the
                                                          safe mode
                                                          button while
                                                          loading the
                                                          =
image.&nbsp;</div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" =
class=3D"">k5so@k5so.com</a>&gt; wrote:<br class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          =
border-left-width:
                                                          1px;
                                                          =
border-left-style:
                                                          solid;
                                                          =
border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div class=3D"" =
style=3D"word-wrap:
                                                          break-word;
                                                          line-break:
                                                          =
after-white-space;">Thanks
                                                          for digging
                                                          into that for
                                                          us, =
Nick.&nbsp;
                                                          =
Interesting.&nbsp;
                                                          As the
                                                          hardware
                                                          change to rev4
                                                          occurred
                                                          around mid
                                                          2011 and the
                                                          earliest UHD
                                                          version that
                                                          exists on =
the&nbsp;<a moz-do-not-send=3D"true" href=3D"http://files.ettus.com/uhd" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">files.ettus.com/uhd</a>&nbsp;page is Feb 2104, what
                                                          is the
                                                          likelihood in
                                                          your opinion
                                                          that the UHD
                                                          version will
                                                          be compatible
                                                          with the
                                                          rev2/3
                                                          hardware from
                                                          2011? =
&nbsp;&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">So
                                                          far I=E2=80=99ve=
 not
                                                          been
                                                          successful in
                                                          reviving the
                                                          2014 UHD
                                                          version so =
I=E2=80=99m
                                                          asking to
                                                          determine
                                                          whether
                                                          continued
                                                          effort to do
                                                          so is likely
                                                          to yield
                                                          anything
                                                          positive with
                                                          respect to
                                                          interfacing
                                                          with the 2011
                                                          hardware. =
&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div class=3D"">=

                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 3:06 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">
                                                          <div =
class=3D"">So
                                                          I really dug
                                                          into the old
                                                          archives here
                                                          and literally
                                                          pulled an old
                                                          hard drive out
                                                          of a closet,
                                                          and found a
                                                          copy of the
                                                          old hardware
                                                          repository
                                                          from back in
                                                          the days when
                                                          N210 was
                                                          called
                                                          "USRP2+". Best
                                                          that I can
                                                          tell, we only
                                                          ever released
                                                          two versions
                                                          to the public.
                                                          We might have
                                                          sold R3
                                                          stickered as
                                                          R2 -- I don't
                                                          see anything
                                                          in the
                                                          repository
                                                          that would
                                                          indicate
                                                          otherwise. Rev
                                                          2/3 was sold
                                                          until around
                                                          June or July
                                                          2011, when we
                                                          moved to rev
                                                          4. The only
                                                          firmware/host
                                                          code changes I
                                                          can see
                                                          between any of
                                                          the versions
                                                          are that R4
                                                          used LVDS
                                                          clocking to
                                                          the
                                                          daughterboard
                                                          where previous
                                                          versions used
                                                          CMOS. So I
                                                          think you
                                                          should be able
                                                          to run r3
                                                          firmware on
                                                          your =
N210.</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">That
                                                          said, the very
                                                          very old N210s
                                                          with very very
                                                          old firmware
                                                          might not have
                                                          used the same
                                                          =
safe/production
                                                          firmware/fpga
                                                          image
                                                          arrangement
                                                          that we later
                                                          arrived at.
                                                          The hardware
                                                          is still fine,
                                                          but you might
                                                          be in for a
                                                          bit of a deep
                                                          dive to get it
                                                          all running
                                                          again.</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">If
                                                          you have a
                                                          TTL-serial
                                                          adapter or a
                                                          logic analyzer
                                                          that works as
                                                          such, you can
                                                          connect to the
                                                          debug UART
                                                          header and get
                                                          printout
                                                          information
                                                          from the
                                                          firmware at
                                                          boot time.
                                                          Another good
                                                          idea would be
                                                          to take a
                                                          video of the
                                                          front panel
                                                          LEDs as you
                                                          apply power --
                                                          the boot LED
                                                          lights give
                                                          good
                                                          indication of
                                                          the
                                                          firmware/FPGA
                                                          image loading
                                                          process.<br =
class=3D"">
                                                          </div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Nick<br class=3D"">
                                                          </div>
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 1:42 PM Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          =
border-left-width:
                                                          1px;
                                                          =
border-left-style:
                                                          solid;
                                                          =
border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div =
class=3D"">Thanks
                                                          for the info,
                                                          Marcus.&nbsp;
                                                          However,
                                                          seeing that
                                                          Jason went
                                                          through this
                                                          last year with
                                                          a couple of
                                                          N210 he has it
                                                          would seem
                                                          unlikely that
                                                          all three of
                                                          the N210 are
                                                          broken.&nbsp; =
That
                                                          being said and
                                                          considering
                                                          what you jus
                                                          said it seems
                                                          that I
                                                          should=E2=80=99v=
e been
                                                          able to find
                                                          some version
                                                          of UHD that
                                                          will
                                                          successfully
                                                          communicate
                                                          with the
                                                          firmware and
                                                          fpga images
                                                          stored in the
                                                          unit; &nbsp;I =
have
                                                          not, using UHD
                                                          versions from
                                                          3.9.0 to
                                                          3.14.0. &nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">I
                                                          wanted to try
                                                          with even
                                                          earlier
                                                          versions of
                                                          UHD but am
                                                          finding
                                                          trouble in
                                                          utilizing UHD
                                                          v3.4.0
                                                          (earliest
                                                          version I
                                                          could find) as
                                                          it seems that
                                                          =E2=80=9Cprebuil=
t=E2=80=9D
                                                          v3.4.0 needs
                                                          only Ubuntu
                                                          10.10 or 11.10
                                                          which so far
                                                          I=E2=80=99m =
not able
                                                          to
                                                          successfully
                                                          install and
                                                          run. &nbsp; =
Seems
                                                          we=E2=80=99re =
running
                                                          out of option
                                                          on this one so
                                                          the Deep Space
                                                          Exploration
                                                          Society, who
                                                          I=E2=80=99m =
trying to
                                                          help with
                                                          this, may have
                                                          to come to
                                                          grasps with
                                                          the notion
                                                          that their
                                                          N210 is a true
                                                          =
brick.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:23 PM,
                                                          Marcus D.
                                                          Leech via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div =
bgcolor=3D"#FFFFFF" class=3D"">
                                                          <div =
class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-cite-prefix">=
On
                                                          05/09/2019
                                                          04:18 PM, Joe
                                                          Martin via
                                                          USRP-users
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
type=3D"cite" class=3D"">Nick,
                                                          Ian,&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">If
                                                          this unit
                                                          happens to be
                                                          incorrectly
                                                          labeled as a
                                                          rev 2 N210 and
                                                          it is actually
                                                          a rev 3 N210,
                                                          is there hope
                                                          in being able
                                                          to load rev 3
                                                          firmware and
                                                          fpga images
                                                          (which I have
                                                          located
                                                          previously and
                                                          tried
                                                          actually) with
                                                          some available
                                                          UHD =
version?&nbsp;
                                                          If so, would
                                                          you be able to
                                                          tell me which
                                                          UHD version(s)
                                                          might be able
                                                          to communicate
                                                          with it? =
&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          Theoretically,
                                                          most versions
                                                          in the last
                                                          several years
                                                          should be able
                                                          to talk to
                                                          it.&nbsp; In
                                                          *general* UHD
                                                          never drops
                                                          support for
                                                          older
                                                          hardware,<br =
class=3D"">
                                                          &nbsp; and =
tries to
                                                          maintain
                                                          =
compatibility.&nbsp;
                                                          Now, it is the
                                                          case that
                                                          newer features
                                                          are almost
                                                          never
                                                          "back-ported",
                                                          but basic
                                                          functionality
                                                          should<br =
class=3D"">
                                                          &nbsp; always =
be
                                                          =
there.&nbsp;&nbsp;<br class=3D"">
                                                          <br class=3D"">
                                                          What this
                                                          *should* mean
                                                          is that you
                                                          should be able
                                                          to use the
                                                          firmware tools
                                                          once the
                                                          device is in
                                                          "safe mode" to
                                                          get yourself
                                                          to where =
you<br class=3D"">
                                                          &nbsp; want to =
be.&nbsp;
                                                          If that
                                                          doesn't work,
                                                          that may well
                                                          mean that the
                                                          hardware is
                                                          broken, and
                                                          it's unlikely
                                                          to be
                                                          economical to
                                                          repair.<br =
class=3D"">
                                                          <br class=3D"">
                                                          <br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div class=3D"">=

                                                          <div class=3D"">=

                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:12 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Okay.
                                                          &nbsp;I=E2=80=99=
ve asserted
                                                          from the
                                                          outset that
                                                          it=E2=80=99s a =
rev 2,
                                                          based on the
                                                          factory
                                                          label.&nbsp; =
Is
                                                          this N210 a
                                                          lost cause if
                                                          it is actually
                                                          a Rev2 =
N210?&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:05 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">Well,
                                                          it's not a rev
                                                          4. It's either
                                                          2 or 3 in
                                                          terms of
                                                          hardware
                                                          =
revision.&nbsp;<br class=3D"">
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 12:58 PM Joe Martin &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" target=3D"_blank" =
rel=3D"noreferrer" class=3D"">k5so@k5so.com</a>&gt;
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          =
border-left-width:
                                                          1px;
                                                          =
border-left-style:
                                                          solid;
                                                          =
border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div =
class=3D"">=E2=80=A6able
                                                          to ping
                                                          192.168.10.2
                                                          =
successfully.<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 1:54 PM,
                                                          Joe Martin
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" target=3D"_blank" =
rel=3D"noreferrer" class=3D"">k5so@k5so.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Ian,&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Yes,
                                                          I have tried
                                                          many times to
                                                          boot in safe
                                                          mode, same
                                                          result
                                                          =
regardless.&nbsp;
                                                          Yes, I am able
                                                          to pin to
                                                          192.168.10.2
                                                          =
successfully.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 1:47 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Ian
                                                          and =
Nick,&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Thanks
                                                          for the
                                                          =
assistance.&nbsp;
                                                          Attached are
                                                          dropbox links
                                                          to two
                                                          snapshot
                                                          photos: =
&nbsp;1)
                                                          the factory
                                                          label on the
                                                          back of the
                                                          N210, showing
                                                          N210 r:2.0 and
                                                          2) a top side
                                                          view of the
                                                          =
N210.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">1)&nbsp;<a moz-do-not-send=3D"true" =
href=3D"https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D=
0" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?d=
l=3D0</a></div>
                                                          <div =
class=3D"">2)&nbsp;<a moz-do-not-send=3D"true" =
href=3D"https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?d=
l=3D0</a></div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Seems
                                                          this unit is
                                                          indeed a rev 2
                                                          N210, =
yes?&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 12:40 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">Moreover,
                                                          the best
                                                          "tell" is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it's
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it's a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it's early or
                                                          late rev.<br =
class=3D"">
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:
                                                          0px 0px 0px
                                                          0.8ex;
                                                          =
border-left-width:
                                                          1px;
                                                          =
border-left-style:
                                                          solid;
                                                          =
border-left-color:
                                                          rgb(204, 204,
                                                          204);
                                                          padding-left:
                                                          1ex;">
                                                          <div =
dir=3D"auto" class=3D"">Joe,
                                                          <div =
dir=3D"auto" class=3D"">So I
                                                          scratched my
                                                          head about
                                                          this a little
                                                          late last
                                                          night and
                                                          looked back
                                                          through the
                                                          development
                                                          repository for
                                                          the N210 and
                                                          as far as I
                                                          can tell there
                                                          was never
                                                          customer
                                                          facing FPGA
                                                          code for a
                                                          Rev2 N210.
                                                          Chatting with
                                                          Matt
                                                          =
this&nbsp;morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn't
                                                          sold to
                                                          customers, so
                                                          I'm curious if
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen "usrp2
                                                          rev2.0" on the
                                                          PCB (which can
                                                          be
                                                          =
missleading).</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          =
192.168.10.2?</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">Ian</div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
_______________________________________________<br class=3D"">
                                                          USRP-users
                                                          mailing =
list<br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
_______________________________________________<br class=3D"">
                                                          USRP-users
                                                          mailing =
list<br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" =
class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-free=
text" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" =
rel=3D"noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a><br class=3D"">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          <br class=3D"">
                                                          <fieldset =
class=3D"m_3343428221959612084gmail-m_3428410372027926386mimeAttachmentHea=
der"></fieldset>
                                                          <br class=3D"">
                                                          <pre =
class=3D"">_______________________________________________
USRP-users mailing list
<a moz-do-not-send=3D"true" =
class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-abbr=
eviated" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noreferrer">USRP-users@lists.ettus.com</a>
<a moz-do-not-send=3D"true" =
class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-free=
text" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" =
rel=3D"noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com</a>
</pre>
                                                          </blockquote>
                                                          <br class=3D"">
                                                          </div>
_______________________________________________<br class=3D"">
                                                          USRP-users
                                                          mailing =
list<br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
_______________________________________________<br class=3D"">
                                                          USRP-users
                                                          mailing =
list<br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                                          <a =
moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" rel=3D"noreferrer
                                                          noreferrer" =
target=3D"_blank" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                        </div>
                                                      </div>
_______________________________________________<br class=3D"">
                                                      USRP-users mailing
                                                      list<br class=3D"">
                                                      <a =
moz-do-not-send=3D"true" href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                                      <a =
moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
                                                    </div>
                                                  </blockquote>
                                                </div>
                                                <br class=3D"">
                                              </div>
                                            </div>
                                          </div>
                                        </blockquote>
                                      </div>
                                      <br class=3D"">
                                    </div>
                                  </div>
_______________________________________________<br class=3D"">
                                  USRP-users mailing list<br class=3D"">
                                  <a moz-do-not-send=3D"true" =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
                                  <a moz-do-not-send=3D"true" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
" =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br class=3D"">
                                </div>
                              </blockquote>
                            </div>
                            <br class=3D"">
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </div>
                <div class=3D""><br class=3D"">
                  <blockquote type=3D"cite" class=3D"">
                    <div class=3D"">On May 10, 2019, at 9:31 AM, Ian
                      Buckley &lt;<a moz-do-not-send=3D"true" =
href=3D"mailto:ian.buckley@gmail.com" =
class=3D"">ian.buckley@gmail.com</a>&gt;
                      wrote:</div>
                    <br class=3D"Apple-interchange-newline">
                    <div class=3D"">
                      <meta http-equiv=3D"Content-Type" =
content=3D"text/html; charset=3Dwindows-1252" class=3D"">
                      <div style=3D"word-wrap: break-word;
                        -webkit-nbsp-mode: space; -webkit-line-break:
                        after-white-space;" class=3D"">Joe,&nbsp;
                        <div class=3D"">To save you time, It may well be
                          worth you trying jumping to the 3) step
                          initially and seeing if your current loaded
                          image or safe image is capable of being
                          upgraded =E2=80=A6it likely is since that =
protocol is
                          widely compatible across UHD variants. The key
                          here I have to emphasize (since you appear to
                          have been previously getting stuck with
                          incompatibility between whatever is loaded in
                          the USRP and your host UHD installation) is to
                          be sure your new UHD installation is the only
                          one on your system, and that you have the
                          binary images that are version matched with
                          it=E2=80=A6people often get caught out by =
reminants of
                          various UHD versions installed in various
                          system directories from different install
                          methods.</div>
                        <div class=3D"">-Ian</div>
                        <div class=3D""><br class=3D"">
                          <div class=3D"">
                            <blockquote type=3D"cite" class=3D"">
                              <div class=3D"">On May 10, 2019, at 5:58 =
AM,
                                Joe Martin via USRP-users &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                wrote:</div>
                              <br class=3D"Apple-interchange-newline">
                              <div class=3D"">
                                <meta http-equiv=3D"Content-Type" =
content=3D"text/html;
                                  charset=3Dwindows-1252" class=3D"">
                                <div style=3D"word-wrap: break-word;
                                  -webkit-nbsp-mode: space; line-break:
                                  after-white-space;" =
class=3D"">Ian,&nbsp;
                                  <div class=3D""><br class=3D"">
                                  </div>
                                  <div class=3D"">Very good, that=E2=80=99=
s
                                    encouraging at least. &nbsp;Yes, I =
am
                                    familiar with using ISE iMPACT to
                                    load the FPGA with .bit code and
                                    even how to create the .bit from the
                                    associated .bin file and did try
                                    doing that earlier but perhaps not
                                    identically to your prescribed steps
                                    below. &nbsp;I=E2=80=99ll revisit =
it. &nbsp;I
                                    successfully built UHD 003_009_000
                                    earlier so I can probably also
                                    successfully build UHD 003_009_007
                                    too. &nbsp;I=E2=80=99ll do that and =
give it a go.
                                    &nbsp;I am familiar with the =
documents
                                    you mentioned. &nbsp;Generally =
things
                                    have gone exactly as described right
                                    up until UHD needs to communicate
                                    with the stored images at which
                                    point it never does; so far =
anyway.</div>
                                  <div class=3D""><br class=3D"">
                                  </div>
                                  <div class=3D"">Thanks much for the
                                    additional information. &nbsp;I=E2=80=99=
ll
                                    certainly hammer on it some more now
                                    that I have a few more pertinent
                                    details under my belt to guide the
                                    process appropriately.&nbsp;</div>
                                  <div class=3D""><br class=3D"">
                                  </div>
                                  <div class=3D"">Joe<br class=3D"">
                                    <div class=3D""><br class=3D"">
                                      <blockquote type=3D"cite" =
class=3D"">
                                        <div class=3D"">On May 10, 2019,
                                          at 12:32 AM, Ian Buckley =
&lt;<a moz-do-not-send=3D"true" href=3D"mailto:ian.buckley@gmail.com" =
class=3D"">ian.buckley@gmail.com</a>&gt;
                                          wrote:</div>
                                        <br =
class=3D"Apple-interchange-newline">
                                        <div class=3D"">
                                          <meta =
http-equiv=3D"Content-Type" content=3D"text/html;
                                            charset=3Dwindows-1252" =
class=3D"">
                                          <div style=3D"word-wrap:
                                            break-word;
                                            -webkit-nbsp-mode: space;
                                            -webkit-line-break:
                                            after-white-space;" =
class=3D"">Joe,&nbsp;
                                            <div class=3D"">This is
                                              generally all good news
                                              and somewhat hopeful. The
                                              fact you can ping
                                              192.168.10.2 in safe mode
                                              tell=E2=80=99s you that =
the FPGA
                                              has loaded an image from
                                              Flash, that it=E2=80=99s =
passed
                                              CRC and booted the
                                              embedded micro controller
                                              on the FPGA and run the
                                              firmware that replies to
                                              ICMP packets=E2=80=A6that=E2=
=80=99s a sign
                                              the hardware is in
                                              reasonable shape,
                                              regardless of what
                                              actually version of image
                                              ins currently loaded. If
                                              you had the internal UART
                                              connected to a 3.3V
                                              interface you would be
                                              seeing the FPGA and FW
                                              compatibility numbers for
                                              this image printed at boot
                                              if it got this far.</div>
                                            <div class=3D"">(Sorry if =
I=E2=80=99m
                                              telling you stuff you know
                                              here, too many messages in
                                              this thread to go reread
                                              them)</div>
                                            <div class=3D""><br =
class=3D"">
                                            </div>
                                            <div class=3D"">You should =
now
                                              refer to these 2 =
pages:</div>
                                            <div class=3D""><a =
moz-do-not-send=3D"true" =
href=3D"https://kb.ettus.com/N200/N210_Device_Recovery" =
class=3D"">https://kb.ettus.com/N200/N210_Device_Recovery</a></div>
                                            <div class=3D""><a =
moz-do-not-send=3D"true" =
href=3D"http://files.ettus.com/manual/page_usrp2.html#usrp2_load" =
class=3D"">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a>&nb=
sp;(N-series
                                              sections, not USRP2)</div>
                                            <div class=3D""><br =
class=3D"">
                                            </div>
                                            <div class=3D"">The general
                                              outline of what to try is
                                              as follows:</div>
                                            <div class=3D"">1) Start =
with
                                              a relatively modern and
                                              stable UHD version: Any
                                              3.9.x version is pretty
                                              ideal, it=E2=80=99s well =
supported
                                              in Gnuradio, is perhaps
                                              the most stable, and has
                                              N210 support. If you are
                                              building UHD yourself from
                                              GitHub, then checkout the
                                              tag =
=E2=80=9Crelease_003_009_007=E2=80=9D.</div>
                                            <div class=3D"">(Note there =
is
                                              no reason to look for old
                                              UHD versions to support
                                              your H/W, the N210
                                              specific code has changed
                                              very little for some time,
                                              but you will benefit from
                                              much improved general UHD
                                              functionality and much
                                              better community =
support)</div>
                                            <div class=3D"">2. (Given =
you
                                              understand how to load a
                                              new image via JTAG) Follow
                                              the procedure outlined in
                                              =E2=80=9CUnbricking an N =
Series
                                              Device=E2=80=9D. Run
                                              =
=E2=80=9Cuhd_images_downloader=E2=80=9D
                                              under UHD3.9.x to be sure
                                              you have a compatible set
                                              of FPGA images for this
                                              version of UHD. Use an R3
                                              .bit file (Stay away from
                                              R4 images since we know
                                              that is electrically
                                              incompatible with your
                                              H/W) and load this via
                                              JTAG. Verify you can ping
                                              this once it=E2=80=99s =
loaded.
                                              Remember this is a
                                              volatile load, no flash
                                              has changed yet, if you
                                              reset the H/W this
                                              download is lost. The goal
                                              now is to use the embedded
                                              firmware in this JTAG
                                              image to load the same
                                              images in .bin format via
                                              the ethernet network and
                                              update both slot=E2=80=99s =
in the
                                              flash memory with
                                              non-volatile images that
                                              load automatically after
                                              reset/power cycle.</div>
                                            <div class=3D"">3) Follow =
the
                                              instructions in&nbsp;<a =
moz-do-not-send=3D"true" =
href=3D"http://files.ettus.com/manual/page_usrp2.html#usrp2_load" =
class=3D"">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</a>&nb=
sp;to
                                              perform the image update
                                              via the network. You can
                                              also take a peek at the
                                              settings in your EEPROM
                                              (=E2=80=9CRecovery =
process=E2=80=9D
                                              instructions) to verify
                                              that all fields are sane
                                              and match your case =
label.</div>
                                            <div class=3D"">4) At this
                                              point, if all has gone as
                                              intended, USRP and UHD
                                              should be in sync, power
                                              cycling H/W should work,
                                              and tools like
                                              =E2=80=9Cuhd_usrp_probe=E2=80=
=9D should
                                              find the USRP and print
                                              it=E2=80=99s detailed H/W =
config.
                                              There are a few common
                                              useful things to check in
                                              the =E2=80=9CTroubleshooting=
=E2=80=9D
                                              section if things still
                                              don=E2=80=99t seem to have =
worked.</div>
                                            <div class=3D""><br =
class=3D"">
                                            </div>
                                            <div class=3D"">-Ian</div>
                                            <div class=3D""><br =
class=3D"">
                                            </div>
                                            <div class=3D""><br =
class=3D"">
                                            </div>
                                            <div class=3D"">
                                              <div class=3D"">
                                                <blockquote type=3D"cite" =
class=3D"">
                                                  <div class=3D"">On May
                                                    9, 2019, at 2:48 PM,
                                                    Joe Martin via
                                                    USRP-users &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                    wrote:</div>
                                                  <br =
class=3D"Apple-interchange-newline">
                                                  <div class=3D"">
                                                    <meta =
http-equiv=3D"Content-Type" content=3D"text/html;
charset=3Dwindows-1252" class=3D"">
                                                    <div =
style=3D"word-wrap:
                                                      break-word;
                                                      -webkit-nbsp-mode:
                                                      space; line-break:
after-white-space;" class=3D"">Oh, okay, I didn=E2=80=99t get that. =
&nbsp;Understood
                                                      now. &nbsp;I have =
UHD
                                                      3.14.0 running on
                                                      my main machine so
                                                      I could try again
                                                      some newer .bit
                                                      files into the
                                                      FPGA than I
                                                      previously have
                                                      tried (I tried the
                                                      current version of
                                                      UHD and N210
                                                      =
usrp_n210_r4_fpga.bit
                                                      to no avail) to
                                                      see if any of them
                                                      are compatible. =
&nbsp;I
                                                      also was able to
                                                      build UHD 3.9.0 on
                                                      a different
                                                      machine so I can
                                                      try that too with
                                                      some of the other
                                                      .bit files. =
&nbsp;Will
                                                      hold the safe
                                                      button down while
                                                      loading the FPGA
                                                      this time around.
                                                      &nbsp;
                                                      <div class=3D""><br =
class=3D"">
                                                      </div>
                                                      <div =
class=3D"">Joe<br class=3D"">
                                                        <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 3:38 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
dir=3D"auto" class=3D"">I'm
                                                          saying that
                                                          you might try
                                                          to continue
                                                          the effort to
                                                          JTAG load a
                                                          more modern
                                                          FPGA image.
                                                          It's possible
                                                          you have to
                                                          hold down the
                                                          safe mode
                                                          button while
                                                          loading the
                                                          =
image.&nbsp;</div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" =
class=3D"">k5so@k5so.com</a>&gt; wrote:<br class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:0
                                                          0 0
                                                          =
.8ex;border-left:1px
                                                          #ccc
                                                          =
solid;padding-left:1ex">
                                                          <div =
style=3D"word-wrap:break-word;line-break:after-white-space" =
class=3D"">Thanks
                                                          for digging
                                                          into that for
                                                          us, =
Nick.&nbsp;
                                                          =
Interesting.&nbsp;
                                                          As the
                                                          hardware
                                                          change to rev4
                                                          occurred
                                                          around mid
                                                          2011 and the
                                                          earliest UHD
                                                          version that
                                                          exists on the
                                                          <a =
moz-do-not-send=3D"true" href=3D"http://files.ettus.com/uhd" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">files.ettus.com/uhd</a>&nbsp;page
                                                          is Feb 2104,
                                                          what is the
                                                          likelihood in
                                                          your opinion
                                                          that the UHD
                                                          version will
                                                          be compatible
                                                          with the
                                                          rev2/3
                                                          hardware from
                                                          2011? =
&nbsp;&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">So
                                                          far I=E2=80=99ve=
 not
                                                          been
                                                          successful in
                                                          reviving the
                                                          2014 UHD
                                                          version so =
I=E2=80=99m
                                                          asking to
                                                          determine
                                                          whether
                                                          continued
                                                          effort to do
                                                          so is likely
                                                          to yield
                                                          anything
                                                          positive with
                                                          respect to
                                                          interfacing
                                                          with the 2011
                                                          hardware. =
&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div class=3D"">=

                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 3:06 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">
                                                          <div =
class=3D"">So
                                                          I really dug
                                                          into the old
                                                          archives here
                                                          and literally
                                                          pulled an old
                                                          hard drive out
                                                          of a closet,
                                                          and found a
                                                          copy of the
                                                          old hardware
                                                          repository
                                                          from back in
                                                          the days when
                                                          N210 was
                                                          called
                                                          "USRP2+". Best
                                                          that I can
                                                          tell, we only
                                                          ever released
                                                          two versions
                                                          to the public.
                                                          We might have
                                                          sold R3
                                                          stickered as
                                                          R2 -- I don't
                                                          see anything
                                                          in the
                                                          repository
                                                          that would
                                                          indicate
                                                          otherwise. Rev
                                                          2/3 was sold
                                                          until around
                                                          June or July
                                                          2011, when we
                                                          moved to rev
                                                          4. The only
                                                          firmware/host
                                                          code changes I
                                                          can see
                                                          between any of
                                                          the versions
                                                          are that R4
                                                          used LVDS
                                                          clocking to
                                                          the
                                                          daughterboard
                                                          where previous
                                                          versions used
                                                          CMOS. So I
                                                          think you
                                                          should be able
                                                          to run r3
                                                          firmware on
                                                          your =
N210.</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">That
                                                          said, the very
                                                          very old N210s
                                                          with very very
                                                          old firmware
                                                          might not have
                                                          used the same
                                                          =
safe/production
                                                          firmware/fpga
                                                          image
                                                          arrangement
                                                          that we later
                                                          arrived at.
                                                          The hardware
                                                          is still fine,
                                                          but you might
                                                          be in for a
                                                          bit of a deep
                                                          dive to get it
                                                          all running
                                                          again.</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">If
                                                          you have a
                                                          TTL-serial
                                                          adapter or a
                                                          logic analyzer
                                                          that works as
                                                          such, you can
                                                          connect to the
                                                          debug UART
                                                          header and get
                                                          printout
                                                          information
                                                          from the
                                                          firmware at
                                                          boot time.
                                                          Another good
                                                          idea would be
                                                          to take a
                                                          video of the
                                                          front panel
                                                          LEDs as you
                                                          apply power --
                                                          the boot LED
                                                          lights give
                                                          good
                                                          indication of
                                                          the
                                                          firmware/FPGA
                                                          image loading
                                                          process.<br =
class=3D"">
                                                          </div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Nick<br class=3D"">
                                                          </div>
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 1:42 PM Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:0px
                                                          0px 0px
                                                          =
0.8ex;border-left:1px
                                                          solid
                                                          =
rgb(204,204,204);padding-left:1ex">
                                                          <div =
class=3D"">Thanks
                                                          for the info,
                                                          Marcus.&nbsp;
                                                          However,
                                                          seeing that
                                                          Jason went
                                                          through this
                                                          last year with
                                                          a couple of
                                                          N210 he has it
                                                          would seem
                                                          unlikely that
                                                          all three of
                                                          the N210 are
                                                          broken.&nbsp; =
That
                                                          being said and
                                                          considering
                                                          what you jus
                                                          said it seems
                                                          that I
                                                          should=E2=80=99v=
e been
                                                          able to find
                                                          some version
                                                          of UHD that
                                                          will
                                                          successfully
                                                          communicate
                                                          with the
                                                          firmware and
                                                          fpga images
                                                          stored in the
                                                          unit; &nbsp;I =
have
                                                          not, using UHD
                                                          versions from
                                                          3.9.0 to
                                                          3.14.0. &nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">I
                                                          wanted to try
                                                          with even
                                                          earlier
                                                          versions of
                                                          UHD but am
                                                          finding
                                                          trouble in
                                                          utilizing UHD
                                                          v3.4.0
                                                          (earliest
                                                          version I
                                                          could find) as
                                                          it seems that
                                                          =E2=80=9Cprebuil=
t=E2=80=9D
                                                          v3.4.0 needs
                                                          only Ubuntu
                                                          10.10 or 11.10
                                                          which so far
                                                          I=E2=80=99m =
not able
                                                          to
                                                          successfully
                                                          install and
                                                          run. &nbsp; =
Seems
                                                          we=E2=80=99re =
running
                                                          out of option
                                                          on this one so
                                                          the Deep Space
                                                          Exploration
                                                          Society, who
                                                          I=E2=80=99m =
trying to
                                                          help with
                                                          this, may have
                                                          to come to
                                                          grasps with
                                                          the notion
                                                          that their
                                                          N210 is a true
                                                          =
brick.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:23 PM,
                                                          Marcus D.
                                                          Leech via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;
                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div =
bgcolor=3D"#FFFFFF" class=3D"">
                                                          <div =
class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-cite-prefix">=
On
                                                          05/09/2019
                                                          04:18 PM, Joe
                                                          Martin via
                                                          USRP-users
                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          Nick, =
Ian,&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">If
                                                          this unit
                                                          happens to be
                                                          incorrectly
                                                          labeled as a
                                                          rev 2 N210 and
                                                          it is actually
                                                          a rev 3 N210,
                                                          is there hope
                                                          in being able
                                                          to load rev 3
                                                          firmware and
                                                          fpga images
                                                          (which I have
                                                          located
                                                          previously and
                                                          tried
                                                          actually) with
                                                          some available
                                                          UHD =
version?&nbsp;
                                                          If so, would
                                                          you be able to
                                                          tell me which
                                                          UHD version(s)
                                                          might be able
                                                          to communicate
                                                          with it? =
&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          Theoretically,
                                                          most versions
                                                          in the last
                                                          several years
                                                          should be able
                                                          to talk to
                                                          it.&nbsp; In
                                                          *general* UHD
                                                          never drops
                                                          support for
                                                          older
                                                          hardware,<br =
class=3D"">
                                                          &nbsp; and =
tries to
                                                          maintain
                                                          =
compatibility.&nbsp;
                                                          Now, it is the
                                                          case that
                                                          newer features
                                                          are almost
                                                          never
                                                          "back-ported",
                                                          but basic
                                                          functionality
                                                          should<br =
class=3D"">
                                                          &nbsp; always =
be
                                                          there.&nbsp; =
<br class=3D"">
                                                          <br class=3D"">
                                                          What this
                                                          *should* mean
                                                          is that you
                                                          should be able
                                                          to use the
                                                          firmware tools
                                                          once the
                                                          device is in
                                                          "safe mode" to
                                                          get yourself
                                                          to where =
you<br class=3D"">
                                                          &nbsp; want to =
be.&nbsp;
                                                          If that
                                                          doesn't work,
                                                          that may well
                                                          mean that the
                                                          hardware is
                                                          broken, and
                                                          it's unlikely
                                                          to be
                                                          economical to
                                                          repair.<br =
class=3D"">
                                                          <br class=3D"">
                                                          <br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div class=3D"">=

                                                          <div class=3D"">=

                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:12 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;

                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Okay.

                                                          &nbsp;I=E2=80=99=
ve asserted
                                                          from the
                                                          outset that
                                                          it=E2=80=99s a =
rev 2,
                                                          based on the
                                                          factory
                                                          label.&nbsp; =
Is
                                                          this N210 a
                                                          lost cause if
                                                          it is actually
                                                          a Rev2 =
N210?&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 2:05 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;

                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386Apple-interchange=
-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">Well,
                                                          it's not a rev
                                                          4. It's either
                                                          2 or 3 in
                                                          terms of
                                                          hardware
                                                          revision. <br =
class=3D"">
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 12:58 PM Joe Martin &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" target=3D"_blank" =
rel=3D"noreferrer" class=3D"">k5so@k5so.com</a>&gt;

                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:0px
                                                          0px 0px
                                                          =
0.8ex;border-left:1px
                                                          solid
                                                          =
rgb(204,204,204);padding-left:1ex">
                                                          <div =
class=3D"">=E2=80=A6able
                                                          to ping
                                                          192.168.10.2
                                                          =
successfully.<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 1:54 PM,
                                                          Joe Martin
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:k5so@k5so.com" target=3D"_blank" =
rel=3D"noreferrer" class=3D"">k5so@k5so.com</a>&gt;

                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Ian,&nbsp;

                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Yes,
                                                          I have tried
                                                          many times to
                                                          boot in safe
                                                          mode, same
                                                          result
                                                          =
regardless.&nbsp;
                                                          Yes, I am able
                                                          to pin to
                                                          192.168.10.2
                                                          =
successfully.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On
                                                          May 9, 2019,
                                                          at 1:47 PM,
                                                          Joe Martin via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;

                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div =
class=3D"">Ian

                                                          and =
Nick,&nbsp;
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Thanks
                                                          for the
                                                          =
assistance.&nbsp;
                                                          Attached are
                                                          dropbox links
                                                          to two
                                                          snapshot
                                                          photos: =
&nbsp;1)
                                                          the factory
                                                          label on the
                                                          back of the
                                                          N210, showing
                                                          N210 r:2.0 and
                                                          2) a top side
                                                          view of the
                                                          =
N210.&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">1)&nbsp;<a moz-do-not-send=3D"true" =
href=3D"https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D=
0" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?d=
l=3D0</a></div>
                                                          <div =
class=3D"">2)&nbsp;<a moz-do-not-send=3D"true" =
href=3D"https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0" target=3D"_blank" rel=3D"noreferrer" =
class=3D"">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?d=
l=3D0</a></div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Seems
                                                          this unit is
                                                          indeed a rev 2
                                                          N210, =
yes?&nbsp;</div>
                                                          <div =
class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
class=3D"">Joe<br class=3D"">
                                                          <div =
class=3D""><br class=3D"">
                                                          <blockquote =
type=3D"cite" class=3D"">
                                                          <div =
class=3D"">On

                                                          May 9, 2019,
                                                          at 12:40 PM,
                                                          Nick Foster
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:bistromath@gmail.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">bistromath@gmail.com</a>&gt;

                                                          wrote:</div>
                                                          <br =
class=3D"m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                                          <div class=3D"">=

                                                          <div dir=3D"ltr"=
 class=3D"">Moreover,

                                                          the best
                                                          "tell" is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it's
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it's a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it's early or
                                                          late rev.<br =
class=3D"">
                                                          </div>
                                                          <br class=3D"">
                                                          <div =
class=3D"gmail_quote">
                                                          <div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a =
moz-do-not-send=3D"true" href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" rel=3D"noreferrer" =
class=3D"">usrp-users@lists.ettus.com</a>&gt;

                                                          wrote:<br =
class=3D"">
                                                          </div>
                                                          <blockquote =
class=3D"gmail_quote" style=3D"margin:0px
                                                          0px 0px
                                                          =
0.8ex;border-left:1px
                                                          solid
                                                          =
rgb(204,204,204);padding-left:1ex">
                                                          <div =
dir=3D"auto" class=3D"">Joe,
                                                          <div =
dir=3D"auto" class=3D"">So I
                                                          scratched my
                                                          head about
                                                          this a little
                                                          late last
                                                          night and
                                                          looked back
                                                          through the
                                                          development
                                                          repository for
                                                          the N210 and
                                                          as far as I
                                                          can tell there
                                                          was never
                                                          customer
                                                          facing FPGA
                                                          code for a
                                                          Rev2 N210.
                                                          Chatting with
                                                          Matt
                                                          =
this&nbsp;morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn't
                                                          sold to
                                                          customers, so
                                                          I'm curious if
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen "usrp2
                                                          rev2.0" on the
                                                          PCB (which can
                                                          be
                                                          =
missleading).</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          =
192.168.10.2?</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div =
dir=3D"auto" class=3D""><br class=3D"">
                                                          </div>
                                                          <div =
dir=3D"auto" class=3D"">Ian</div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br class=3D"">
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </blockquote>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </blockquote>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                          </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                </div>
                <br class=3D"">
              </div>
              _______________________________________________<br =
class=3D"">
              USRP-users mailing list<br class=3D"">
              <a moz-do-not-send=3D"true" =
href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br class=3D"">
<a class=3D"moz-txt-link-freetext" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><b=
r class=3D"">
            </div>
          </blockquote>
        </div>
        <br class=3D"">
      </div>
      <br class=3D"">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br class=3D"">
      <pre wrap=3D"" =
class=3D"">_______________________________________________
USRP-users mailing list
<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class=3D"moz-txt-link-freetext" =
href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br class=3D"">
  </div>

_______________________________________________<br class=3D"">USRP-users =
mailing list<br class=3D""><a href=3D"mailto:USRP-users@lists.ettus.com" =
class=3D"">USRP-users@lists.ettus.com</a><br =
class=3D"">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com<br class=3D""></div></blockquote></div><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_6A3C134E-7D35-4089-9A44-8685A36EE1D9--


--===============4027961927802136704==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4027961927802136704==--

