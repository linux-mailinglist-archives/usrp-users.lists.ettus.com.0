Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2701A5AE
	for <lists+usrp-users@lfdr.de>; Sat, 11 May 2019 02:07:40 +0200 (CEST)
Received: from [::1] (port=50664 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hPFY9-0002gz-Fb; Fri, 10 May 2019 20:07:37 -0400
Received: from mail-it1-f180.google.com ([209.85.166.180]:54419)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hPFXb-0002Yf-V2
 for usrp-users@lists.ettus.com; Fri, 10 May 2019 20:07:34 -0400
Received: by mail-it1-f180.google.com with SMTP id a190so12054231ite.4
 for <usrp-users@lists.ettus.com>; Fri, 10 May 2019 17:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eVHdFMkgVhWlKdnKKWu5Pi6rIx7fkWFReBSbJfilRNs=;
 b=k6aShrT97yaqU0Z3ElkxOu/VVYTIYhT94QC/qlJ3CDtgbW6fr5g1w2w+RGQkZzt0Yn
 KEs9kQ5qxiOsm7YdrZf2wwPFbT6qKoZ3fezswercJW+EzvsTXrkY9vijeN6q4H9OJL8+
 AvsAh9hLqr+DCbuoDJw7AlHFf2DfrQ4GOSXgCDQ7qp5s23tskzNoKRAJW8ebmeAE47Hk
 e5bJXvRtLgpLNDpZOtiu8n4/ZRiSRLkOO+Z6k8nlZBh4b8SwyNWElC9AgpkNvD5xgskI
 xk1wieAV0vKT1Qh5kfEBjvmp+rBLIhXleT41iPdP5w6gWNZRyOgbQe53yRwxGYZzk3Zw
 +QyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eVHdFMkgVhWlKdnKKWu5Pi6rIx7fkWFReBSbJfilRNs=;
 b=ly2jiQtONHqttNIp45MVPrhY7eqCEzAwif3MGULBiV+YZpeDKN30lGlZ8d2PpcSRuv
 fJJgcyZdjLZeIgLlkDhz8dpQBUThMPKc+Ht2GSBeIiEd7PY98erw6q/ZaRLy/1Bnfq1y
 oSZNjHQ2bUCOJhgqRHtn2dyetysGQiHR0sARh6zaWgfwnWkAN4UxUGTSpQa77dZrCTUy
 vL8wlIvP21xiqUQUO0SXZLBuyj/wzmUq8ndiq6YXn9HgHY689Zy+ogOmRKDjPMAfKdNv
 3uzJd0y4Ap5/S8cb7ATys84VeuQ5hDWnAiquejemmDAMb/W8xkBUDHJyyS8pltGRUhxS
 lHGA==
X-Gm-Message-State: APjAAAVK3SPrVIPgxauRBqr7Lc7UejVfS97j4xI6RjaXAEOpT5J64f/X
 R8LIO11yaABSdlgJYmMLOMmUZuSO3BLtdH2SNg0=
X-Google-Smtp-Source: APXvYqzWxe/6BjUIQ5jQ9h2oIWFFfzkKT8RuyVOKYw9oQaUI/kkZ9CvzgOsHvvjMitjuRR27XHkGaLFQ52bTJpxD0Vo=
X-Received: by 2002:a24:85d4:: with SMTP id r203mr9742554itd.3.1557533183084; 
 Fri, 10 May 2019 17:06:23 -0700 (PDT)
MIME-Version: 1.0
References: <556BBE2D-2BA6-40A3-BFF5-F5FA2351DB06@k5so.com>
 <CAGVTi8VOeNG5B9X-WaMQrvbxkt96UFhm5a6-++9znYCzexfRtQ@mail.gmail.com>
 <9f223faf-add7-74cc-faa1-d4a0ed95e28a@balister.org>
 <2C9C895D-DD6D-4456-9F1D-557F699AB391@k5so.com>
 <5CD36887.5050805@gmail.com> <4F25C7C9-CB61-46DF-9163-2CB0CF86DDCF@k5so.com>
 <F19914AE-5635-4F61-A19B-13C16AE6CE8D@k5so.com>
 <2BBEC239-22F9-4F4C-B777-222484DEC314@k5so.com>
 <BL0PR12MB2340B79E071584EF5599E398AF330@BL0PR12MB2340.namprd12.prod.outlook.com>
 <84612E15-1A0B-40FF-9AA3-A810D7500BE3@k5so.com>
 <CAM_0ocHPiAfxGGUND037U3mzSDoN_+odmwZX=tzDLq-=_JjH7A@mail.gmail.com>
 <CA+JMMq9dzg+FqLVgGJRZOBW4KMmYq2ZrCOOnLEVndKCtovF+PA@mail.gmail.com>
 <73C37420-AD11-4E22-9730-493E6FC41678@k5so.com>
 <52565C8B-D078-414F-A560-3672BEADE596@k5so.com>
 <A01FCD5D-DFB6-4E9F-AA41-5D2CF9B00EEA@k5so.com>
 <CA+JMMq_wYJYoenP=wX2ruK-KSHTT6EQdM6K+ksrGFLZZEe+5jQ@mail.gmail.com>
 <691F0564-B5AA-48C6-9258-D15F006E9F7D@k5so.com>
 <E4163757-B40B-4716-888F-2328596BB5B6@k5so.com>
 <5CD48C58.9050302@gmail.com> <8481269A-B583-40D7-B93C-1BDDFD50D338@k5so.com>
 <CA+JMMq_h4jKhUH7d6_WiMCstfC8anxeamESGAQ7Q=YLaaKG59A@mail.gmail.com>
 <31E31040-1F5D-4C84-BD3B-65CC609519A9@k5so.com>
 <CA+JMMq8kE4vL3wJz42NexKc=xicWUCGTsu0+Sb9sArw7OX8Tcw@mail.gmail.com>
 <72E6FBD3-F92B-4D0C-BC85-EEA19120596F@k5so.com>
 <161408E6-6B69-48D1-B606-48D3D4D7B22B@gmail.com>
 <ECD2FD88-0308-4D27-B17F-07F8FF4DCF6E@k5so.com>
 <82C6C97F-F209-435E-8C4C-37E43E71B827@gmail.com>
 <A0D159D0-D4D7-4645-8132-44768EF28D22@k5so.com>
 <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com>
In-Reply-To: <365E5ED3-897E-402B-B5BA-D8F9A217B3EF@k5so.com>
Date: Fri, 10 May 2019 17:06:11 -0700
Message-ID: <CA+JMMq9gbq_-YgRCFfy3iOZ0Mygc2fd7uOeUgNREMi1-S2atLA@mail.gmail.com>
To: Joe Martin <k5so@k5so.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: Ian Buckley <ian.buckley@gmail.com>,
 "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>,
 wohnfeld <wohnfeld@aol.com>
Content-Type: multipart/mixed; boundary="===============7964029173808298960=="
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

--===============7964029173808298960==
Content-Type: multipart/alternative; boundary="0000000000001a8d2d05889174e5"

--0000000000001a8d2d05889174e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great news! Also great that we have this on record for others with older
hardware they'd like to put to use again.

Nick

On Fri, May 10, 2019 at 4:54 PM Joe Martin via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Holy smoke!  SUCCESS!!  Nick pointed out that there are two switches on
> the N210; S1 and S2 and S1 is a reset, so an upload of FPGA code fails if
> that is held (which I was holding for his suggested test!).  Holding S2
> during iMPACT loading of the .bit image results in the uhd_image_loader
> step being SUCCESSFUL!!  I am so happy to see that!  Uhd_usrp_probe works
> wonderfully.  Finally.  We now can put this little to work doing some tou=
gh
> things!
>
> Thank you all SO MUCH for your assistance with reviving this N210.  A
> monumental achievement in my book!   I don=E2=80=99t know what to say exc=
ept that
> we TOTALLY appreciate you efforts to get us running.  You guys are GREAT!
>
> Very best wishes to you each and every one!
>
> Joe
>
> On May 10, 2019, at 5:30 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Ian and all,
>
> I have been very careful to avoid the pitfalls you detailed.  I began wit=
h
> a fresh installation of Ubuntu 18.04 then performed a successful build of
> UHD 3.9.7, then used command:
>
> uhd_images_downloader
>
> to load the appropriate/associated images into the PC.
>
> Then used ISE iMPACT to load the =E2=80=9Cusrp_n210_r3_fpga.bit=E2=80=9D =
file into the
> FPGA of the N210.  iMPACT reports =E2=80=9CPROGRAM SUCCESSFUL=E2=80=9D.
>
> Then without power cycling the N210 used the command:
>
> usrp_image_loader =E2=80=94args=3D=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10=
.2,overwrite-safe=E2=80=9D
> =E2=80=94fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin
> =E2=80=94fpga-path=3D/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin
>
> To load the non-volatile memory of the N210 but I always get the
> =E2=80=9CRuntimeError: Received invalid 32 reply from device=E2=80=9D err=
or when running
> usrp_image_loader.
>
> I am able to successfully ping 192.168.10.2 but no matter what
> combinations of r2 or r3 .bit file and firmware and fpga image .bin files=
 I
> use the response when invoking the usrp_image_loader is always the same,
> namely =E2=80=9Cinvalid reply 32 from device=E2=80=9D.
>
> The command uhd_find_devices returns by reporting it can find a usrp2
> device at address 192.168.10.2, as you would hope.
>
> After trying every conceivable combination of these actions with numerous
> versions of UHD and r2/r3 .bit FPGA files and r2/r3 .bin files on several
> fresh installations of Ubuntu 18.04 and 16.04 the result is always the sa=
me
> in that things proceed normally as the various documents concerning
> un-bricking an N210 explains, until the step of using the usrp_image_load=
er
> is executed, at which point a RuntimeError returns stating that the
> =E2=80=9Cinvalid 32 reply=E2=80=9D has occurred.
>
> I was hopeful that careful use of rev3 .bit and .bin files with UHD 3.9.7
> would do the trick but alas that is not the case.
>
> I suspect that you are near the bottom of the list of suggestions for me
> and I do appreciate the time and thinking you have afforded me on this
> issue.  If there is anything remaining to try I=E2=80=99d be most willing=
 to try
> it.
>
> BTW, the suggestion made by someone earlier to try holding the safe butto=
n
> down during the loading of the FPGA from iMPACT causes the programming to
> fail (as reported by iMPACT), so that=E2=80=99s apparently not a good thi=
ng to do.
> But one can recover from that state by simply by re-programming with the
> safe button not held but the fundamental problem with the uhd_image_loade=
r
> step in the unbricking process always seems to result.
>
> Joe
>
> On May 10, 2019, at 9:31 AM, Ian Buckley <ian.buckley@gmail.com> wrote:
>
> Joe,
> To save you time, It may well be worth you trying jumping to the 3) step
> initially and seeing if your current loaded image or safe image is capabl=
e
> of being upgraded =E2=80=A6it likely is since that protocol is widely com=
patible
> across UHD variants. The key here I have to emphasize (since you appear t=
o
> have been previously getting stuck with incompatibility between whatever =
is
> loaded in the USRP and your host UHD installation) is to be sure your new
> UHD installation is the only one on your system, and that you have the
> binary images that are version matched with it=E2=80=A6people often get c=
aught out
> by reminants of various UHD versions installed in various system
> directories from different install methods.
> -Ian
>
> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Ian,
>
> Very good, that=E2=80=99s encouraging at least.  Yes, I am familiar with =
using ISE
> iMPACT to load the FPGA with .bit code and even how to create the .bit fr=
om
> the associated .bin file and did try doing that earlier but perhaps not
> identically to your prescribed steps below.  I=E2=80=99ll revisit it.  I
> successfully built UHD 003_009_000 earlier so I can probably also
> successfully build UHD 003_009_007 too.  I=E2=80=99ll do that and give it=
 a go.  I
> am familiar with the documents you mentioned.  Generally things have gone
> exactly as described right up until UHD needs to communicate with the
> stored images at which point it never does; so far anyway.
>
> Thanks much for the additional information.  I=E2=80=99ll certainly hamme=
r on it
> some more now that I have a few more pertinent details under my belt to
> guide the process appropriately.
>
> Joe
>
> On May 10, 2019, at 12:32 AM, Ian Buckley <ian.buckley@gmail.com> wrote:
>
> Joe,
> This is generally all good news and somewhat hopeful. The fact you can
> ping 192.168.10.2 in safe mode tell=E2=80=99s you that the FPGA has loade=
d an image
> from Flash, that it=E2=80=99s passed CRC and booted the embedded micro co=
ntroller
> on the FPGA and run the firmware that replies to ICMP packets=E2=80=A6tha=
t=E2=80=99s a sign
> the hardware is in reasonable shape, regardless of what actually version =
of
> image ins currently loaded. If you had the internal UART connected to a
> 3.3V interface you would be seeing the FPGA and FW compatibility numbers
> for this image printed at boot if it got this far.
> (Sorry if I=E2=80=99m telling you stuff you know here, too many messages =
in this
> thread to go reread them)
>
> You should now refer to these 2 pages:
> https://kb.ettus.com/N200/N210_Device_Recovery
> http://files.ettus.com/manual/page_usrp2.html#usrp2_load (N-series
> sections, not USRP2)
>
> The general outline of what to try is as follows:
> 1) Start with a relatively modern and stable UHD version: Any 3.9.x
> version is pretty ideal, it=E2=80=99s well supported in Gnuradio, is perh=
aps the
> most stable, and has N210 support. If you are building UHD yourself from
> GitHub, then checkout the tag =E2=80=9Crelease_003_009_007=E2=80=9D.
> (Note there is no reason to look for old UHD versions to support your H/W=
,
> the N210 specific code has changed very little for some time, but you wil=
l
> benefit from much improved general UHD functionality and much better
> community support)
> 2. (Given you understand how to load a new image via JTAG) Follow the
> procedure outlined in =E2=80=9CUnbricking an N Series Device=E2=80=9D. Ru=
n
> =E2=80=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to be sure you hav=
e a compatible set
> of FPGA images for this version of UHD. Use an R3 .bit file (Stay away fr=
om
> R4 images since we know that is electrically incompatible with your H/W)
> and load this via JTAG. Verify you can ping this once it=E2=80=99s loaded=
. Remember
> this is a volatile load, no flash has changed yet, if you reset the H/W
> this download is lost. The goal now is to use the embedded firmware in th=
is
> JTAG image to load the same images in .bin format via the ethernet networ=
k
> and update both slot=E2=80=99s in the flash memory with non-volatile imag=
es that
> load automatically after reset/power cycle.
> 3) Follow the instructions in
> http://files.ettus.com/manual/page_usrp2.html#usrp2_load to perform the
> image update via the network. You can also take a peek at the settings in
> your EEPROM (=E2=80=9CRecovery process=E2=80=9D instructions) to verify t=
hat all fields are
> sane and match your case label.
> 4) At this point, if all has gone as intended, USRP and UHD should be in
> sync, power cycling H/W should work, and tools like =E2=80=9Cuhd_usrp_pro=
be=E2=80=9D should
> find the USRP and print it=E2=80=99s detailed H/W config. There are a few=
 common
> useful things to check in the =E2=80=9CTroubleshooting=E2=80=9D section i=
f things still
> don=E2=80=99t seem to have worked.
>
> -Ian
>
>
> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Oh, okay, I didn=E2=80=99t get that.  Understood now.  I have UHD 3.14.0 =
running
> on my main machine so I could try again some newer .bit files into the FP=
GA
> than I previously have tried (I tried the current version of UHD and N210
> usrp_n210_r4_fpga.bit to no avail) to see if any of them are compatible. =
 I
> also was able to build UHD 3.9.0 on a different machine so I can try that
> too with some of the other .bit files.  Will hold the safe button down
> while loading the FPGA this time around.
>
> Joe
>
> On May 9, 2019, at 3:38 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> I'm saying that you might try to continue the effort to JTAG load a more
> modern FPGA image. It's possible you have to hold down the safe mode butt=
on
> while loading the image.
>
> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com> wrote:
>
>> Thanks for digging into that for us, Nick.  Interesting.  As the hardwar=
e
>> change to rev4 occurred around mid 2011 and the earliest UHD version tha=
t
>> exists on the files.ettus.com/uhd page is Feb 2104, what is the
>> likelihood in your opinion that the UHD version will be compatible with =
the
>> rev2/3 hardware from 2011?
>>
>> So far I=E2=80=99ve not been successful in reviving the 2014 UHD version=
 so I=E2=80=99m
>> asking to determine whether continued effort to do so is likely to yield
>> anything positive with respect to interfacing with the 2011 hardware.
>>
>> Joe
>>
>> On May 9, 2019, at 3:06 PM, Nick Foster <bistromath@gmail.com> wrote:
>>
>> So I really dug into the old archives here and literally pulled an old
>> hard drive out of a closet, and found a copy of the old hardware reposit=
ory
>> from back in the days when N210 was called "USRP2+". Best that I can tel=
l,
>> we only ever released two versions to the public. We might have sold R3
>> stickered as R2 -- I don't see anything in the repository that would
>> indicate otherwise. Rev 2/3 was sold until around June or July 2011, whe=
n
>> we moved to rev 4. The only firmware/host code changes I can see between
>> any of the versions are that R4 used LVDS clocking to the daughterboard
>> where previous versions used CMOS. So I think you should be able to run =
r3
>> firmware on your N210.
>>
>> That said, the very very old N210s with very very old firmware might not
>> have used the same safe/production firmware/fpga image arrangement that =
we
>> later arrived at. The hardware is still fine, but you might be in for a =
bit
>> of a deep dive to get it all running again.
>>
>> If you have a TTL-serial adapter or a logic analyzer that works as such,
>> you can connect to the debug UART header and get printout information fr=
om
>> the firmware at boot time. Another good idea would be to take a video of
>> the front panel LEDs as you apply power -- the boot LED lights give good
>> indication of the firmware/FPGA image loading process.
>>
>> Nick
>>
>> On Thu, May 9, 2019 at 1:42 PM Joe Martin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Thanks for the info, Marcus.  However, seeing that Jason went through
>>> this last year with a couple of N210 he has it would seem unlikely that=
 all
>>> three of the N210 are broken.  That being said and considering what you=
 jus
>>> said it seems that I should=E2=80=99ve been able to find some version o=
f UHD that
>>> will successfully communicate with the firmware and fpga images stored =
in
>>> the unit;  I have not, using UHD versions from 3.9.0 to 3.14.0.
>>>
>>> I wanted to try with even earlier versions of UHD but am finding troubl=
e
>>> in utilizing UHD v3.4.0 (earliest version I could find) as it seems tha=
t
>>> =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only Ubuntu 10.10 or 11.10 whic=
h so far I=E2=80=99m not
>>> able to successfully install and run.   Seems we=E2=80=99re running out=
 of option
>>> on this one so the Deep Space Exploration Society, who I=E2=80=99m tryi=
ng to help
>>> with this, may have to come to grasps with the notion that their N210 i=
s a
>>> true brick.
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
>>>
>>> Nick, Ian,
>>>
>>> If this unit happens to be incorrectly labeled as a rev 2 N210 and it i=
s
>>> actually a rev 3 N210, is there hope in being able to load rev 3 firmwa=
re
>>> and fpga images (which I have located previously and tried actually) wi=
th
>>> some available UHD version?  If so, would you be able to tell me which =
UHD
>>> version(s) might be able to communicate with it?
>>>
>>> Joe
>>>
>>> Theoretically, most versions in the last several years should be able t=
o
>>> talk to it.  In *general* UHD never drops support for older hardware,
>>>   and tries to maintain compatibility.  Now, it is the case that newer
>>> features are almost never "back-ported", but basic functionality should
>>>   always be there.
>>>
>>> What this *should* mean is that you should be able to use the firmware
>>> tools once the device is in "safe mode" to get yourself to where you
>>>   want to be.  If that doesn't work, that may well mean that the
>>> hardware is broken, and it's unlikely to be economical to repair.
>>>
>>>
>>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99s a rev 2,=
 based on the
>>> factory label.  Is this N210 a lost cause if it is actually a Rev2 N210=
?
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 2:05 PM, Nick Foster <bistromath@gmail.com> wrote:
>>>
>>> Well, it's not a rev 4. It's either 2 or 3 in terms of hardware
>>> revision.
>>>
>>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com> wrote:
>>>
>>>> =E2=80=A6able to ping 192.168.10.2 successfully.
>>>>
>>>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com> wrote:
>>>>
>>>> Ian,
>>>>
>>>> Yes, I have tried many times to boot in safe mode, same result
>>>> regardless.  Yes, I am able to pin to 192.168.10.2 successfully.
>>>>
>>>> Joe
>>>>
>>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>> Ian and Nick,
>>>>
>>>> Thanks for the assistance.  Attached are dropbox links to two snapshot
>>>> photos:  1) the factory label on the back of the N210, showing N210 r:=
2.0
>>>> and 2) a top side view of the N210.
>>>>
>>>> 1) https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D=
0
>>>> 2) https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0
>>>>
>>>> Seems this unit is indeed a rev 2 N210, yes?
>>>>
>>>> Joe
>>>>
>>>> On May 9, 2019, at 12:40 PM, Nick Foster <bistromath@gmail.com> wrote:
>>>>
>>>> Moreover, the best "tell" is to look at the N210 motherboard. If the
>>>> SRAM chip is on the top side, it's a rev 2/3. If the SRAM is on the bo=
ttom
>>>> side, it's a rev 4. If you send a picture along of the top of the N210=
, I
>>>> can tell you if it's early or late rev.
>>>>
>>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Joe,
>>>>> So I scratched my head about this a little late last night and looked
>>>>> back through the development repository for the N210 and as far as I =
can
>>>>> tell there was never customer facing FPGA code for a Rev2 N210. Chatt=
ing
>>>>> with Matt this morning he shared my feeling that a Rev2 wasn't sold t=
o
>>>>> customers, so I'm curious if you have a unit that has a factory label=
 that
>>>>> says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which ca=
n be
>>>>> missleading).
>>>>>
>>>>> Also have you tried booting into the safe image and verifying that it
>>>>> at least pings on 192.168.10.2?
>>>>>
>>>>> If we can conclusively identify which rev of h/w you have I can
>>>>> probably help further.
>>>>>
>>>>> Ian
>>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>>
>>>>
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com=
/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> On May 10, 2019, at 9:31 AM, Ian Buckley <ian.buckley@gmail.com> wrote:
>
> Joe,
> To save you time, It may well be worth you trying jumping to the 3) step
> initially and seeing if your current loaded image or safe image is capabl=
e
> of being upgraded =E2=80=A6it likely is since that protocol is widely com=
patible
> across UHD variants. The key here I have to emphasize (since you appear t=
o
> have been previously getting stuck with incompatibility between whatever =
is
> loaded in the USRP and your host UHD installation) is to be sure your new
> UHD installation is the only one on your system, and that you have the
> binary images that are version matched with it=E2=80=A6people often get c=
aught out
> by reminants of various UHD versions installed in various system
> directories from different install methods.
> -Ian
>
> On May 10, 2019, at 5:58 AM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Ian,
>
> Very good, that=E2=80=99s encouraging at least.  Yes, I am familiar with =
using ISE
> iMPACT to load the FPGA with .bit code and even how to create the .bit fr=
om
> the associated .bin file and did try doing that earlier but perhaps not
> identically to your prescribed steps below.  I=E2=80=99ll revisit it.  I
> successfully built UHD 003_009_000 earlier so I can probably also
> successfully build UHD 003_009_007 too.  I=E2=80=99ll do that and give it=
 a go.  I
> am familiar with the documents you mentioned.  Generally things have gone
> exactly as described right up until UHD needs to communicate with the
> stored images at which point it never does; so far anyway.
>
> Thanks much for the additional information.  I=E2=80=99ll certainly hamme=
r on it
> some more now that I have a few more pertinent details under my belt to
> guide the process appropriately.
>
> Joe
>
> On May 10, 2019, at 12:32 AM, Ian Buckley <ian.buckley@gmail.com> wrote:
>
> Joe,
> This is generally all good news and somewhat hopeful. The fact you can
> ping 192.168.10.2 in safe mode tell=E2=80=99s you that the FPGA has loade=
d an image
> from Flash, that it=E2=80=99s passed CRC and booted the embedded micro co=
ntroller
> on the FPGA and run the firmware that replies to ICMP packets=E2=80=A6tha=
t=E2=80=99s a sign
> the hardware is in reasonable shape, regardless of what actually version =
of
> image ins currently loaded. If you had the internal UART connected to a
> 3.3V interface you would be seeing the FPGA and FW compatibility numbers
> for this image printed at boot if it got this far.
> (Sorry if I=E2=80=99m telling you stuff you know here, too many messages =
in this
> thread to go reread them)
>
> You should now refer to these 2 pages:
> https://kb.ettus.com/N200/N210_Device_Recovery
> http://files.ettus.com/manual/page_usrp2.html#usrp2_load (N-series
> sections, not USRP2)
>
> The general outline of what to try is as follows:
> 1) Start with a relatively modern and stable UHD version: Any 3.9.x
> version is pretty ideal, it=E2=80=99s well supported in Gnuradio, is perh=
aps the
> most stable, and has N210 support. If you are building UHD yourself from
> GitHub, then checkout the tag =E2=80=9Crelease_003_009_007=E2=80=9D.
> (Note there is no reason to look for old UHD versions to support your H/W=
,
> the N210 specific code has changed very little for some time, but you wil=
l
> benefit from much improved general UHD functionality and much better
> community support)
> 2. (Given you understand how to load a new image via JTAG) Follow the
> procedure outlined in =E2=80=9CUnbricking an N Series Device=E2=80=9D. Ru=
n
> =E2=80=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to be sure you hav=
e a compatible set
> of FPGA images for this version of UHD. Use an R3 .bit file (Stay away fr=
om
> R4 images since we know that is electrically incompatible with your H/W)
> and load this via JTAG. Verify you can ping this once it=E2=80=99s loaded=
. Remember
> this is a volatile load, no flash has changed yet, if you reset the H/W
> this download is lost. The goal now is to use the embedded firmware in th=
is
> JTAG image to load the same images in .bin format via the ethernet networ=
k
> and update both slot=E2=80=99s in the flash memory with non-volatile imag=
es that
> load automatically after reset/power cycle.
> 3) Follow the instructions in
> http://files.ettus.com/manual/page_usrp2.html#usrp2_load to perform the
> image update via the network. You can also take a peek at the settings in
> your EEPROM (=E2=80=9CRecovery process=E2=80=9D instructions) to verify t=
hat all fields are
> sane and match your case label.
> 4) At this point, if all has gone as intended, USRP and UHD should be in
> sync, power cycling H/W should work, and tools like =E2=80=9Cuhd_usrp_pro=
be=E2=80=9D should
> find the USRP and print it=E2=80=99s detailed H/W config. There are a few=
 common
> useful things to check in the =E2=80=9CTroubleshooting=E2=80=9D section i=
f things still
> don=E2=80=99t seem to have worked.
>
> -Ian
>
>
> On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Oh, okay, I didn=E2=80=99t get that.  Understood now.  I have UHD 3.14.0 =
running
> on my main machine so I could try again some newer .bit files into the FP=
GA
> than I previously have tried (I tried the current version of UHD and N210
> usrp_n210_r4_fpga.bit to no avail) to see if any of them are compatible. =
 I
> also was able to build UHD 3.9.0 on a different machine so I can try that
> too with some of the other .bit files.  Will hold the safe button down
> while loading the FPGA this time around.
>
> Joe
>
> On May 9, 2019, at 3:38 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> I'm saying that you might try to continue the effort to JTAG load a more
> modern FPGA image. It's possible you have to hold down the safe mode butt=
on
> while loading the image.
>
> On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com> wrote:
>
>> Thanks for digging into that for us, Nick.  Interesting.  As the hardwar=
e
>> change to rev4 occurred around mid 2011 and the earliest UHD version tha=
t
>> exists on the files.ettus.com/uhd page is Feb 2104, what is the
>> likelihood in your opinion that the UHD version will be compatible with =
the
>> rev2/3 hardware from 2011?
>>
>> So far I=E2=80=99ve not been successful in reviving the 2014 UHD version=
 so I=E2=80=99m
>> asking to determine whether continued effort to do so is likely to yield
>> anything positive with respect to interfacing with the 2011 hardware.
>>
>> Joe
>>
>> On May 9, 2019, at 3:06 PM, Nick Foster <bistromath@gmail.com> wrote:
>>
>> So I really dug into the old archives here and literally pulled an old
>> hard drive out of a closet, and found a copy of the old hardware reposit=
ory
>> from back in the days when N210 was called "USRP2+". Best that I can tel=
l,
>> we only ever released two versions to the public. We might have sold R3
>> stickered as R2 -- I don't see anything in the repository that would
>> indicate otherwise. Rev 2/3 was sold until around June or July 2011, whe=
n
>> we moved to rev 4. The only firmware/host code changes I can see between
>> any of the versions are that R4 used LVDS clocking to the daughterboard
>> where previous versions used CMOS. So I think you should be able to run =
r3
>> firmware on your N210.
>>
>> That said, the very very old N210s with very very old firmware might not
>> have used the same safe/production firmware/fpga image arrangement that =
we
>> later arrived at. The hardware is still fine, but you might be in for a =
bit
>> of a deep dive to get it all running again.
>>
>> If you have a TTL-serial adapter or a logic analyzer that works as such,
>> you can connect to the debug UART header and get printout information fr=
om
>> the firmware at boot time. Another good idea would be to take a video of
>> the front panel LEDs as you apply power -- the boot LED lights give good
>> indication of the firmware/FPGA image loading process.
>>
>> Nick
>>
>> On Thu, May 9, 2019 at 1:42 PM Joe Martin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Thanks for the info, Marcus.  However, seeing that Jason went through
>>> this last year with a couple of N210 he has it would seem unlikely that=
 all
>>> three of the N210 are broken.  That being said and considering what you=
 jus
>>> said it seems that I should=E2=80=99ve been able to find some version o=
f UHD that
>>> will successfully communicate with the firmware and fpga images stored =
in
>>> the unit;  I have not, using UHD versions from 3.9.0 to 3.14.0.
>>>
>>> I wanted to try with even earlier versions of UHD but am finding troubl=
e
>>> in utilizing UHD v3.4.0 (earliest version I could find) as it seems tha=
t
>>> =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only Ubuntu 10.10 or 11.10 whic=
h so far I=E2=80=99m not
>>> able to successfully install and run.   Seems we=E2=80=99re running out=
 of option
>>> on this one so the Deep Space Exploration Society, who I=E2=80=99m tryi=
ng to help
>>> with this, may have to come to grasps with the notion that their N210 i=
s a
>>> true brick.
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
>>>
>>> Nick, Ian,
>>>
>>> If this unit happens to be incorrectly labeled as a rev 2 N210 and it i=
s
>>> actually a rev 3 N210, is there hope in being able to load rev 3 firmwa=
re
>>> and fpga images (which I have located previously and tried actually) wi=
th
>>> some available UHD version?  If so, would you be able to tell me which =
UHD
>>> version(s) might be able to communicate with it?
>>>
>>> Joe
>>>
>>> Theoretically, most versions in the last several years should be able t=
o
>>> talk to it.  In *general* UHD never drops support for older hardware,
>>>   and tries to maintain compatibility.  Now, it is the case that newer
>>> features are almost never "back-ported", but basic functionality should
>>>   always be there.
>>>
>>> What this *should* mean is that you should be able to use the firmware
>>> tools once the device is in "safe mode" to get yourself to where you
>>>   want to be.  If that doesn't work, that may well mean that the
>>> hardware is broken, and it's unlikely to be economical to repair.
>>>
>>>
>>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99s a rev 2,=
 based on the
>>> factory label.  Is this N210 a lost cause if it is actually a Rev2 N210=
?
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 2:05 PM, Nick Foster <bistromath@gmail.com> wrote:
>>>
>>> Well, it's not a rev 4. It's either 2 or 3 in terms of hardware
>>> revision.
>>>
>>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com> wrote:
>>>
>>>> =E2=80=A6able to ping 192.168.10.2 successfully.
>>>>
>>>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com> wrote:
>>>>
>>>> Ian,
>>>>
>>>> Yes, I have tried many times to boot in safe mode, same result
>>>> regardless.  Yes, I am able to pin to 192.168.10.2 successfully.
>>>>
>>>> Joe
>>>>
>>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>> Ian and Nick,
>>>>
>>>> Thanks for the assistance.  Attached are dropbox links to two snapshot
>>>> photos:  1) the factory label on the back of the N210, showing N210 r:=
2.0
>>>> and 2) a top side view of the N210.
>>>>
>>>> 1) https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D=
0
>>>> 2) https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D=
0
>>>>
>>>> Seems this unit is indeed a rev 2 N210, yes?
>>>>
>>>> Joe
>>>>
>>>> On May 9, 2019, at 12:40 PM, Nick Foster <bistromath@gmail.com> wrote:
>>>>
>>>> Moreover, the best "tell" is to look at the N210 motherboard. If the
>>>> SRAM chip is on the top side, it's a rev 2/3. If the SRAM is on the bo=
ttom
>>>> side, it's a rev 4. If you send a picture along of the top of the N210=
, I
>>>> can tell you if it's early or late rev.
>>>>
>>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Joe,
>>>>> So I scratched my head about this a little late last night and looked
>>>>> back through the development repository for the N210 and as far as I =
can
>>>>> tell there was never customer facing FPGA code for a Rev2 N210. Chatt=
ing
>>>>> with Matt this morning he shared my feeling that a Rev2 wasn't sold t=
o
>>>>> customers, so I'm curious if you have a unit that has a factory label=
 that
>>>>> says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which ca=
n be
>>>>> missleading).
>>>>>
>>>>> Also have you tried booting into the safe image and verifying that it
>>>>> at least pings on 192.168.10.2?
>>>>>
>>>>> If we can conclusively identify which rev of h/w you have I can
>>>>> probably help further.
>>>>>
>>>>> Ian
>>>>>
>>>>
>>>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000001a8d2d05889174e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Great news! Also great that we have this on record fo=
r others with older hardware they&#39;d like to put to use again.</div><div=
><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 10, 2019 at 4:54 PM Joe Martin vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div style=3D"overflow-wrap: break-word;">Holy smoke!=C2=A0 S=
UCCESS!!=C2=A0 Nick pointed out that there are two switches on the N210; S1=
 and S2 and S1 is a reset, so an upload of FPGA code fails if that is held =
(which I was holding for his suggested test!).=C2=A0 Holding S2 during iMPA=
CT loading of the .bit image results in the uhd_image_loader step being SUC=
CESSFUL!!=C2=A0 I am so happy to see that!=C2=A0 Uhd_usrp_probe works wonde=
rfully.=C2=A0 Finally.=C2=A0 We now can put this little to work doing some =
tough things! =C2=A0<div><br></div><div>Thank you all SO MUCH for your assi=
stance with reviving this N210.=C2=A0 A monumental achievement in my book! =
=C2=A0 I don=E2=80=99t know what to say except that we TOTALLY appreciate y=
ou efforts to get us running.=C2=A0 You guys are GREAT!=C2=A0</div><div><br=
></div><div>Very best wishes to you each and every one! =C2=A0=C2=A0</div><=
div><br></div><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 10=
, 2019, at 5:30 PM, Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:</div><br class=3D"gmail-m_-8521718945281836380Apple-interchange-newli=
ne"><div><div style=3D"overflow-wrap: break-word;">Ian and all,=C2=A0<div><=
br></div><div>I have been very careful to avoid the pitfalls you detailed.=
=C2=A0 I began with a fresh installation of Ubuntu 18.04 then performed a s=
uccessful build of UHD 3.9.7, then used command:</div><div><br></div><div>u=
hd_images_downloader</div><div><br></div><div>to load the appropriate/assoc=
iated images into the PC.=C2=A0</div><div><br></div><div>Then used ISE iMPA=
CT to load the =E2=80=9Cusrp_n210_r3_fpga.bit=E2=80=9D file into the FPGA o=
f the N210. =C2=A0iMPACT reports =E2=80=9CPROGRAM SUCCESSFUL=E2=80=9D.=C2=
=A0</div><div><br></div><div>Then without power cycling the N210 used the c=
ommand:=C2=A0</div><div><br></div><div>usrp_image_loader =E2=80=94args=3D=
=E2=80=9Ctype=3Dusrp2,addr=3D192.168.10.2,overwrite-safe=E2=80=9D =E2=80=94=
fw-path=3D/usr/local/share/uhd/images/usrp_n210_fw.bin =E2=80=94fpga-path=
=3D/usr/local/share/uhd/images/usrp_n210_r3_fpga.bin</div><div><br></div><d=
iv>To load the non-volatile memory of the N210 but I always get the =E2=80=
=9CRuntimeError: Received invalid 32 reply from device=E2=80=9D error when =
running usrp_image_loader.=C2=A0</div><div><br></div><div>I am able to succ=
essfully ping 192.168.10.2 but no matter what combinations of r2 or r3 .bit=
 file and firmware and fpga image .bin files I use the response when invoki=
ng the usrp_image_loader is always the same, namely =E2=80=9Cinvalid reply =
32 from device=E2=80=9D. =C2=A0</div><div><br></div><div>The command uhd_fi=
nd_devices returns by reporting it can find a usrp2 device at address 192.1=
68.10.2, as you would hope. =C2=A0</div><div><br></div><div>After trying ev=
ery conceivable combination of these actions with numerous versions of UHD =
and r2/r3 .bit FPGA files and r2/r3 .bin files on several fresh installatio=
ns of Ubuntu 18.04 and 16.04 the result is always the same in that things p=
roceed normally as the various documents concerning un-bricking an N210 exp=
lains, until the step of using the usrp_image_loader is executed, at which =
point a RuntimeError returns stating that the =E2=80=9Cinvalid 32 reply=E2=
=80=9D has occurred. =C2=A0</div><div><br></div><div>I was hopeful that car=
eful use of rev3 .bit and .bin files with UHD 3.9.7 would do the trick but =
alas that is not the case. =C2=A0</div><div><br></div><div>I suspect that y=
ou are near the bottom of the list of suggestions for me and I do appreciat=
e the time and thinking you have afforded me on this issue.=C2=A0 If there =
is anything remaining to try I=E2=80=99d be most willing to try it.=C2=A0</=
div><div><br></div><div>BTW, the suggestion made by someone earlier to try =
holding the safe button down during the loading of the FPGA from iMPACT cau=
ses the programming to fail (as reported by iMPACT), so that=E2=80=99s appa=
rently not a good thing to do.=C2=A0 But one can recover from that state by=
 simply by re-programming with the safe button not held but the fundamental=
 problem with the uhd_image_loader step in the unbricking process always se=
ems to result.=C2=A0</div><div><br></div><div>Joe</div><div><br></div><div>=
<div><blockquote type=3D"cite"><div>On May 10, 2019, at 9:31 AM, Ian Buckle=
y &lt;<a href=3D"mailto:ian.buckley@gmail.com" target=3D"_blank">ian.buckle=
y@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380Ap=
ple-interchange-newline"><div><div style=3D"overflow-wrap: break-word;">Joe=
,=C2=A0<div>To save you time, It may well be worth you trying jumping to th=
e 3) step initially and seeing if your current loaded image or safe image i=
s capable of being upgraded =E2=80=A6it likely is since that protocol is wi=
dely compatible across UHD variants. The key here I have to emphasize (sinc=
e you appear to have been previously getting stuck with incompatibility bet=
ween whatever is loaded in the USRP and your host UHD installation) is to b=
e sure your new UHD installation is the only one on your system, and that y=
ou have the binary images that are version matched with it=E2=80=A6people o=
ften get caught out by reminants of various UHD versions installed in vario=
us system directories from different install methods.</div><div>-Ian</div><=
div><br><div><blockquote type=3D"cite"><div>On May 10, 2019, at 5:58 AM, Jo=
e Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=
=3D"gmail-m_-8521718945281836380Apple-interchange-newline"><div><div style=
=3D"overflow-wrap: break-word;">Ian,=C2=A0<div><br></div><div>Very good, th=
at=E2=80=99s encouraging at least.=C2=A0 Yes, I am familiar with using ISE =
iMPACT to load the FPGA with .bit code and even how to create the .bit from=
 the associated .bin file and did try doing that earlier but perhaps not id=
entically to your prescribed steps below.=C2=A0 I=E2=80=99ll revisit it.=C2=
=A0 I successfully built UHD 003_009_000 earlier so I can probably also suc=
cessfully build UHD 003_009_007 too.=C2=A0 I=E2=80=99ll do that and give it=
 a go.=C2=A0 I am familiar with the documents you mentioned.=C2=A0 Generall=
y things have gone exactly as described right up until UHD needs to communi=
cate with the stored images at which point it never does; so far anyway.</d=
iv><div><br></div><div>Thanks much for the additional information.=C2=A0 I=
=E2=80=99ll certainly hammer on it some more now that I have a few more per=
tinent details under my belt to guide the process appropriately.=C2=A0</div=
><div><br></div><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May =
10, 2019, at 12:32 AM, Ian Buckley &lt;<a href=3D"mailto:ian.buckley@gmail.=
com" target=3D"_blank">ian.buckley@gmail.com</a>&gt; wrote:</div><br class=
=3D"gmail-m_-8521718945281836380Apple-interchange-newline"><div><div style=
=3D"overflow-wrap: break-word;">Joe,=C2=A0<div>This is generally all good n=
ews and somewhat hopeful. The fact you can ping 192.168.10.2 in safe mode t=
ell=E2=80=99s you that the FPGA has loaded an image from Flash, that it=E2=
=80=99s passed CRC and booted the embedded micro controller on the FPGA and=
 run the firmware that replies to ICMP packets=E2=80=A6that=E2=80=99s a sig=
n the hardware is in reasonable shape, regardless of what actually version =
of image ins currently loaded. If you had the internal UART connected to a =
3.3V interface you would be seeing the FPGA and FW compatibility numbers fo=
r this image printed at boot if it got this far.</div><div>(Sorry if I=E2=
=80=99m telling you stuff you know here, too many messages in this thread t=
o go reread them)</div><div><br></div><div>You should now refer to these 2 =
pages:</div><div><a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery"=
 target=3D"_blank">https://kb.ettus.com/N200/N210_Device_Recovery</a></div>=
<div><a href=3D"http://files.ettus.com/manual/page_usrp2.html#usrp2_load" t=
arget=3D"_blank">http://files.ettus.com/manual/page_usrp2.html#usrp2_load</=
a>=C2=A0(N-series sections, not USRP2)</div><div><br></div><div>The general=
 outline of what to try is as follows:</div><div>1) Start with a relatively=
 modern and stable UHD version: Any 3.9.x version is pretty ideal, it=E2=80=
=99s well supported in Gnuradio, is perhaps the most stable, and has N210 s=
upport. If you are building UHD yourself from GitHub, then checkout the tag=
 =E2=80=9Crelease_003_009_007=E2=80=9D.</div><div>(Note there is no reason =
to look for old UHD versions to support your H/W, the N210 specific code ha=
s changed very little for some time, but you will benefit from much improve=
d general UHD functionality and much better community support)</div><div>2.=
 (Given you understand how to load a new image via JTAG) Follow the procedu=
re outlined in =E2=80=9CUnbricking an N Series Device=E2=80=9D. Run =E2=80=
=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to be sure you have a comp=
atible set of FPGA images for this version of UHD. Use an R3 .bit file (Sta=
y away from R4 images since we know that is electrically incompatible with =
your H/W) and load this via JTAG. Verify you can ping this once it=E2=80=99=
s loaded. Remember this is a volatile load, no flash has changed yet, if yo=
u reset the H/W this download is lost. The goal now is to use the embedded =
firmware in this JTAG image to load the same images in .bin format via the =
ethernet network and update both slot=E2=80=99s in the flash memory with no=
n-volatile images that load automatically after reset/power cycle.</div><di=
v>3) Follow the instructions in=C2=A0<a href=3D"http://files.ettus.com/manu=
al/page_usrp2.html#usrp2_load" target=3D"_blank">http://files.ettus.com/man=
ual/page_usrp2.html#usrp2_load</a>=C2=A0to perform the image update via the=
 network. You can also take a peek at the settings in your EEPROM (=E2=80=
=9CRecovery process=E2=80=9D instructions) to verify that all fields are sa=
ne and match your case label.</div><div>4) At this point, if all has gone a=
s intended, USRP and UHD should be in sync, power cycling H/W should work, =
and tools like =E2=80=9Cuhd_usrp_probe=E2=80=9D should find the USRP and pr=
int it=E2=80=99s detailed H/W config. There are a few common useful things =
to check in the =E2=80=9CTroubleshooting=E2=80=9D section if things still d=
on=E2=80=99t seem to have worked.</div><div><br></div><div>-Ian</div><div><=
br></div><div><br></div><div><div><blockquote type=3D"cite"><div>On May 9, =
2019, at 2:48 PM, Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:</div><br class=3D"gmail-m_-8521718945281836380Apple-interchange-newline=
"><div><div style=3D"overflow-wrap: break-word;">Oh, okay, I didn=E2=80=99t=
 get that.=C2=A0 Understood now.=C2=A0 I have UHD 3.14.0 running on my main=
 machine so I could try again some newer .bit files into the FPGA than I pr=
eviously have tried (I tried the current version of UHD and N210 usrp_n210_=
r4_fpga.bit to no avail) to see if any of them are compatible.=C2=A0 I also=
 was able to build UHD 3.9.0 on a different machine so I can try that too w=
ith some of the other .bit files.=C2=A0 Will hold the safe button down whil=
e loading the FPGA this time around. =C2=A0<div><br></div><div>Joe<br><div>=
<br><blockquote type=3D"cite"><div>On May 9, 2019, at 3:38 PM, Nick Foster =
&lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_blank">bistromath@gm=
ail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380Apple-=
interchange-newline"><div><div dir=3D"auto">I&#39;m saying that you might t=
ry to continue the effort to JTAG load a more modern FPGA image. It&#39;s p=
ossible you have to hold down the safe mode button while loading the image.=
=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a href=3D"mailto:k5so@k5=
so.com" target=3D"_blank">k5so@k5so.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: break-w=
ord;">Thanks for digging into that for us, Nick.=C2=A0 Interesting.=C2=A0 A=
s the hardware change to rev4 occurred around mid 2011 and the earliest UHD=
 version that exists on the=C2=A0<a href=3D"http://files.ettus.com/uhd" rel=
=3D"noreferrer" target=3D"_blank">files.ettus.com/uhd</a>=C2=A0page is Feb =
2104, what is the likelihood in your opinion that the UHD version will be c=
ompatible with the rev2/3 hardware from 2011? =C2=A0=C2=A0<div><br></div><d=
iv>So far I=E2=80=99ve not been successful in reviving the 2014 UHD version=
 so I=E2=80=99m asking to determine whether continued effort to do so is li=
kely to yield anything positive with respect to interfacing with the 2011 h=
ardware. =C2=A0</div><div><br></div><div>Joe<br><div><div><br><blockquote t=
ype=3D"cite"><div>On May 9, 2019, at 3:06 PM, Nick Foster &lt;<a href=3D"ma=
ilto:bistromath@gmail.com" rel=3D"noreferrer" target=3D"_blank">bistromath@=
gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380m_33=
43428221959612084Apple-interchange-newline"><div><div dir=3D"ltr"><div>So I=
 really dug into the old archives here and literally pulled an old hard dri=
ve out of a closet, and found a copy of the old hardware repository from ba=
ck in the days when N210 was called &quot;USRP2+&quot;. Best that I can tel=
l, we only ever released two versions to the public. We might have sold R3 =
stickered as R2 -- I don&#39;t see anything in the repository that would in=
dicate otherwise. Rev 2/3 was sold until around June or July 2011, when we =
moved to rev 4. The only firmware/host code changes I can see between any o=
f the versions are that R4 used LVDS clocking to the daughterboard where pr=
evious versions used CMOS. So I think you should be able to run r3 firmware=
 on your N210.</div><div><br></div><div>That said, the very very old N210s =
with very very old firmware might not have used the same safe/production fi=
rmware/fpga image arrangement that we later arrived at. The hardware is sti=
ll fine, but you might be in for a bit of a deep dive to get it all running=
 again.</div><div><br></div><div>If you have a TTL-serial adapter or a logi=
c analyzer that works as such, you can connect to the debug UART header and=
 get printout information from the firmware at boot time. Another good idea=
 would be to take a video of the front panel LEDs as you apply power -- the=
 boot LED lights give good indication of the firmware/FPGA image loading pr=
ocess.<br></div><div><br></div><div>Nick<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 at 1:=
42 PM Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettu=
s.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=
Thanks for the info, Marcus.=C2=A0 However, seeing that Jason went through =
this last year with a couple of N210 he has it would seem unlikely that all=
 three of the N210 are broken.=C2=A0 That being said and considering what y=
ou jus said it seems that I should=E2=80=99ve been able to find some versio=
n of UHD that will successfully communicate with the firmware and fpga imag=
es stored in the unit; =C2=A0I have not, using UHD versions from 3.9.0 to 3=
.14.0. =C2=A0<div><br></div><div>I wanted to try with even earlier versions=
 of UHD but am finding trouble in utilizing UHD v3.4.0 (earliest version I =
could find) as it seems that =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only U=
buntu 10.10 or 11.10 which so far I=E2=80=99m not able to successfully inst=
all and run. =C2=A0 Seems we=E2=80=99re running out of option on this one s=
o the Deep Space Exploration Society, who I=E2=80=99m trying to help with t=
his, may have to come to grasps with the notion that their N210 is a true b=
rick.=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote type=3D"ci=
te"><div>On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8=
521718945281836380m_3343428221959612084gmail-m_3428410372027926386Apple-int=
erchange-newline"><div><div bgcolor=3D"#FFFFFF"><div class=3D"gmail-m_-8521=
718945281836380m_3343428221959612084gmail-m_3428410372027926386moz-cite-pre=
fix">On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:<br></div><blo=
ckquote type=3D"cite">Nick, Ian,=C2=A0<div><br></div><div>If this unit happ=
ens to be incorrectly labeled as a rev 2 N210 and it is actually a rev 3 N2=
10, is there hope in being able to load rev 3 firmware and fpga images (whi=
ch I have located previously and tried actually) with some available UHD ve=
rsion?=C2=A0 If so, would you be able to tell me which UHD version(s) might=
 be able to communicate with it? =C2=A0</div><div><br></div><div>Joe<br><di=
v><br></div></div></blockquote>Theoretically, most versions in the last sev=
eral years should be able to talk to it.=C2=A0 In *general* UHD never drops=
 support for older hardware,<br>=C2=A0 and tries to maintain compatibility.=
=C2=A0 Now, it is the case that newer features are almost never &quot;back-=
ported&quot;, but basic functionality should<br>=C2=A0 always be there.=C2=
=A0=C2=A0<br><br>What this *should* mean is that you should be able to use =
the firmware tools once the device is in &quot;safe mode&quot; to get yours=
elf to where you<br>=C2=A0 want to be.=C2=A0 If that doesn&#39;t work, that=
 may well mean that the hardware is broken, and it&#39;s unlikely to be eco=
nomical to repair.<br><br><br><blockquote type=3D"cite"><div><div><blockquo=
te type=3D"cite"><div>On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"gm=
ail-m_-8521718945281836380m_3343428221959612084gmail-m_3428410372027926386A=
pple-interchange-newline"><div><div>Okay.=C2=A0 I=E2=80=99ve asserted from =
the outset that it=E2=80=99s a rev 2, based on the factory label.=C2=A0 Is =
this N210 a lost cause if it is actually a Rev2 N210?=C2=A0<div><br></div><=
div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 9, 2019, at 2:05 =
PM, Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" rel=3D"noreferr=
er" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:</div><br class=3D=
"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_34284103720279263=
86Apple-interchange-newline"><div><div dir=3D"ltr">Well, it&#39;s not a rev=
 4. It&#39;s either 2 or 3 in terms of hardware revision.=C2=A0<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
May 9, 2019 at 12:58 PM Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com" rel=
=3D"noreferrer" target=3D"_blank">k5so@k5so.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div>=E2=80=A6able to ping 1=
92.168.10.2 successfully.<br><div><br><blockquote type=3D"cite"><div>On May=
 9, 2019, at 1:54 PM, Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com" rel=
=3D"noreferrer" target=3D"_blank">k5so@k5so.com</a>&gt; wrote:</div><br cla=
ss=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_342841037202=
7926386gmail-m_-2513206580084366361Apple-interchange-newline"><div><div>Ian=
,=C2=A0<div><br></div><div>Yes, I have tried many times to boot in safe mod=
e, same result regardless.=C2=A0 Yes, I am able to pin to 192.168.10.2 succ=
essfully.=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote type=
=3D"cite"><div>On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users &lt;<a=
 href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"gmail-m_-=
8521718945281836380m_3343428221959612084gmail-m_3428410372027926386gmail-m_=
-2513206580084366361Apple-interchange-newline"><div><div>Ian and Nick,=C2=
=A0<div><br></div><div>Thanks for the assistance.=C2=A0 Attached are dropbo=
x links to two snapshot photos: =C2=A01) the factory label on the back of t=
he N210, showing N210 r:2.0 and 2) a top side view of the N210.=C2=A0</div>=
<div><br></div><div>1)=C2=A0<a href=3D"https://www.dropbox.com/s/u92x02rni7=
1kfb3/20190509_133253.jpg?dl=3D0" rel=3D"noreferrer" target=3D"_blank">http=
s://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0</a></div><=
div>2)=C2=A0<a href=3D"https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_1=
33800.jpg?dl=3D0" rel=3D"noreferrer" target=3D"_blank">https://www.dropbox.=
com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0</a></div><div><br></div><d=
iv>Seems this unit is indeed a rev 2 N210, yes?=C2=A0</div><div><br></div><=
div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 9, 2019, at 12:40=
 PM, Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" rel=3D"norefer=
rer" target=3D"_blank">bistromath@gmail.com</a>&gt; wrote:</div><br class=
=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_34284103720279=
26386gmail-m_-2513206580084366361Apple-interchange-newline"><div><div dir=
=3D"ltr">Moreover, the best &quot;tell&quot; is to look at the N210 motherb=
oard. If the SRAM chip is on the top side, it&#39;s a rev 2/3. If the SRAM =
is on the bottom side, it&#39;s a rev 4. If you send a picture along of the=
 top of the N210, I can tell you if it&#39;s early or late rev.<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
May 9, 2019 at 11:36 AM Ian Buckley via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@l=
ists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"auto">Joe,<div dir=3D"auto">So I scratched my hea=
d about this a little late last night and looked back through the developme=
nt repository for the N210 and as far as I can tell there was never custome=
r facing FPGA code for a Rev2 N210. Chatting with Matt this=C2=A0morning he=
 shared my feeling that a Rev2 wasn&#39;t sold to customers, so I&#39;m cur=
ious if you have a unit that has a factory label that says N210Rev2 or if y=
ou have seen &quot;usrp2 rev2.0&quot; on the PCB (which can be missleading)=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also have you tried bo=
oting into the safe image and verifying that it at least pings on 192.168.1=
0.2?</div><div dir=3D"auto"><br></div><div dir=3D"auto">If we can conclusiv=
ely identify which rev of h/w you have I can probably help further.</div><d=
iv dir=3D"auto"><br></div><div dir=3D"auto">Ian</div></div></blockquote></d=
iv></div></blockquote></div><br></div></div>_______________________________=
________________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users=
@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">USRP-users@lists.ett=
us.com</a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.c=
om/mailman/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></=
div><br></div></div></div></blockquote></div><br></div></blockquote></div><=
/div></blockquote></div><br></div></div>___________________________________=
____________<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">USRP-users@lists.ettus.c=
om</a><br><a class=3D"gmail-m_-8521718945281836380m_3343428221959612084gmai=
l-m_3428410372027926386moz-txt-link-freetext" href=3D"http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D=
"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br></div></blockquote></div><br></div><br><fieldset class=3D"gmail-m_-=
8521718945281836380m_3343428221959612084gmail-m_3428410372027926386mimeAtta=
chmentHeader"></fieldset><br><pre>_________________________________________=
______
USRP-users mailing list
<a class=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_342841=
0372027926386moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ettu=
s.com" rel=3D"noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a>
<a class=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_342841=
0372027926386moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">h=
ttp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre></blockquote><br></div>______________________________________________=
_<br>USRP-users mailing list<br><a href=3D"mailto:USRP-users@lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br><=
a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com</a><br></div></blockquote></div><br></div><=
/div>_______________________________________________<br>USRP-users mailing =
list<br><a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-use=
rs_lists.ettus.com</a><br></blockquote></div></div></blockquote></div><br><=
/div></div></div></blockquote></div></div></blockquote></div><br></div></di=
v>_______________________________________________<br>USRP-users mailing lis=
t<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></div><=
br></div></div></div></blockquote></div><br></div></div>___________________=
____________________________<br>USRP-users mailing list<br><a href=3D"mailt=
o:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com<=
/a><br><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com</a><br></div></blockquote></div><br></div></div></div>=
</blockquote></div></div><div><br><blockquote type=3D"cite"><div>On May 10,=
 2019, at 9:31 AM, Ian Buckley &lt;<a href=3D"mailto:ian.buckley@gmail.com"=
 target=3D"_blank">ian.buckley@gmail.com</a>&gt; wrote:</div><br class=3D"g=
mail-m_-8521718945281836380Apple-interchange-newline"><div><div style=3D"ov=
erflow-wrap: break-word;">Joe,=C2=A0<div>To save you time, It may well be w=
orth you trying jumping to the 3) step initially and seeing if your current=
 loaded image or safe image is capable of being upgraded =E2=80=A6it likely=
 is since that protocol is widely compatible across UHD variants. The key h=
ere I have to emphasize (since you appear to have been previously getting s=
tuck with incompatibility between whatever is loaded in the USRP and your h=
ost UHD installation) is to be sure your new UHD installation is the only o=
ne on your system, and that you have the binary images that are version mat=
ched with it=E2=80=A6people often get caught out by reminants of various UH=
D versions installed in various system directories from different install m=
ethods.</div><div>-Ian</div><div><br><div><blockquote type=3D"cite"><div>On=
 May 10, 2019, at 5:58 AM, Joe Martin via USRP-users &lt;<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380Apple-interchang=
e-newline"><div><div style=3D"overflow-wrap: break-word;">Ian,=C2=A0<div><b=
r></div><div>Very good, that=E2=80=99s encouraging at least.=C2=A0 Yes, I a=
m familiar with using ISE iMPACT to load the FPGA with .bit code and even h=
ow to create the .bit from the associated .bin file and did try doing that =
earlier but perhaps not identically to your prescribed steps below.=C2=A0 I=
=E2=80=99ll revisit it.=C2=A0 I successfully built UHD 003_009_000 earlier =
so I can probably also successfully build UHD 003_009_007 too.=C2=A0 I=E2=
=80=99ll do that and give it a go.=C2=A0 I am familiar with the documents y=
ou mentioned.=C2=A0 Generally things have gone exactly as described right u=
p until UHD needs to communicate with the stored images at which point it n=
ever does; so far anyway.</div><div><br></div><div>Thanks much for the addi=
tional information.=C2=A0 I=E2=80=99ll certainly hammer on it some more now=
 that I have a few more pertinent details under my belt to guide the proces=
s appropriately.=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote=
 type=3D"cite"><div>On May 10, 2019, at 12:32 AM, Ian Buckley &lt;<a href=
=3D"mailto:ian.buckley@gmail.com" target=3D"_blank">ian.buckley@gmail.com</=
a>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380Apple-interchan=
ge-newline"><div><div style=3D"overflow-wrap: break-word;">Joe,=C2=A0<div>T=
his is generally all good news and somewhat hopeful. The fact you can ping =
192.168.10.2 in safe mode tell=E2=80=99s you that the FPGA has loaded an im=
age from Flash, that it=E2=80=99s passed CRC and booted the embedded micro =
controller on the FPGA and run the firmware that replies to ICMP packets=E2=
=80=A6that=E2=80=99s a sign the hardware is in reasonable shape, regardless=
 of what actually version of image ins currently loaded. If you had the int=
ernal UART connected to a 3.3V interface you would be seeing the FPGA and F=
W compatibility numbers for this image printed at boot if it got this far.<=
/div><div>(Sorry if I=E2=80=99m telling you stuff you know here, too many m=
essages in this thread to go reread them)</div><div><br></div><div>You shou=
ld now refer to these 2 pages:</div><div><a href=3D"https://kb.ettus.com/N2=
00/N210_Device_Recovery" target=3D"_blank">https://kb.ettus.com/N200/N210_D=
evice_Recovery</a></div><div><a href=3D"http://files.ettus.com/manual/page_=
usrp2.html#usrp2_load" target=3D"_blank">http://files.ettus.com/manual/page=
_usrp2.html#usrp2_load</a>=C2=A0(N-series sections, not USRP2)</div><div><b=
r></div><div>The general outline of what to try is as follows:</div><div>1)=
 Start with a relatively modern and stable UHD version: Any 3.9.x version i=
s pretty ideal, it=E2=80=99s well supported in Gnuradio, is perhaps the mos=
t stable, and has N210 support. If you are building UHD yourself from GitHu=
b, then checkout the tag =E2=80=9Crelease_003_009_007=E2=80=9D.</div><div>(=
Note there is no reason to look for old UHD versions to support your H/W, t=
he N210 specific code has changed very little for some time, but you will b=
enefit from much improved general UHD functionality and much better communi=
ty support)</div><div>2. (Given you understand how to load a new image via =
JTAG) Follow the procedure outlined in =E2=80=9CUnbricking an N Series Devi=
ce=E2=80=9D. Run =E2=80=9Cuhd_images_downloader=E2=80=9D under UHD3.9.x to =
be sure you have a compatible set of FPGA images for this version of UHD. U=
se an R3 .bit file (Stay away from R4 images since we know that is electric=
ally incompatible with your H/W) and load this via JTAG. Verify you can pin=
g this once it=E2=80=99s loaded. Remember this is a volatile load, no flash=
 has changed yet, if you reset the H/W this download is lost. The goal now =
is to use the embedded firmware in this JTAG image to load the same images =
in .bin format via the ethernet network and update both slot=E2=80=99s in t=
he flash memory with non-volatile images that load automatically after rese=
t/power cycle.</div><div>3) Follow the instructions in=C2=A0<a href=3D"http=
://files.ettus.com/manual/page_usrp2.html#usrp2_load" target=3D"_blank">htt=
p://files.ettus.com/manual/page_usrp2.html#usrp2_load</a>=C2=A0to perform t=
he image update via the network. You can also take a peek at the settings i=
n your EEPROM (=E2=80=9CRecovery process=E2=80=9D instructions) to verify t=
hat all fields are sane and match your case label.</div><div>4) At this poi=
nt, if all has gone as intended, USRP and UHD should be in sync, power cycl=
ing H/W should work, and tools like =E2=80=9Cuhd_usrp_probe=E2=80=9D should=
 find the USRP and print it=E2=80=99s detailed H/W config. There are a few =
common useful things to check in the =E2=80=9CTroubleshooting=E2=80=9D sect=
ion if things still don=E2=80=99t seem to have worked.</div><div><br></div>=
<div>-Ian</div><div><br></div><div><br></div><div><div><blockquote type=3D"=
cite"><div>On May 9, 2019, at 2:48 PM, Joe Martin via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8521718945281836380Appl=
e-interchange-newline"><div><div style=3D"overflow-wrap: break-word;">Oh, o=
kay, I didn=E2=80=99t get that.=C2=A0 Understood now.=C2=A0 I have UHD 3.14=
.0 running on my main machine so I could try again some newer .bit files in=
to the FPGA than I previously have tried (I tried the current version of UH=
D and N210 usrp_n210_r4_fpga.bit to no avail) to see if any of them are com=
patible.=C2=A0 I also was able to build UHD 3.9.0 on a different machine so=
 I can try that too with some of the other .bit files.=C2=A0 Will hold the =
safe button down while loading the FPGA this time around. =C2=A0<div><br></=
div><div>Joe<br><div><br><blockquote type=3D"cite"><div>On May 9, 2019, at =
3:38 PM, Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"=
_blank">bistromath@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-8521=
718945281836380Apple-interchange-newline"><div><div dir=3D"auto">I&#39;m sa=
ying that you might try to continue the effort to JTAG load a more modern F=
PGA image. It&#39;s possible you have to hold down the safe mode button whi=
le loading the image.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, May 9, 2019, 2:22 PM Joe Martin &lt;<a h=
ref=3D"mailto:k5so@k5so.com" target=3D"_blank">k5so@k5so.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"o=
verflow-wrap: break-word;">Thanks for digging into that for us, Nick.=C2=A0=
 Interesting.=C2=A0 As the hardware change to rev4 occurred around mid 2011=
 and the earliest UHD version that exists on the <a href=3D"http://files.et=
tus.com/uhd" rel=3D"noreferrer" target=3D"_blank">files.ettus.com/uhd</a>=
=C2=A0page is Feb 2104, what is the likelihood in your opinion that the UHD=
 version will be compatible with the rev2/3 hardware from 2011? =C2=A0=C2=
=A0<div><br></div><div>So far I=E2=80=99ve not been successful in reviving =
the 2014 UHD version so I=E2=80=99m asking to determine whether continued e=
ffort to do so is likely to yield anything positive with respect to interfa=
cing with the 2011 hardware. =C2=A0</div><div><br></div><div>Joe<br><div><d=
iv><br><blockquote type=3D"cite"><div>On May 9, 2019, at 3:06 PM, Nick Fost=
er &lt;<a href=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer" target=3D=
"_blank">bistromath@gmail.com</a>&gt; wrote:</div><br class=3D"gmail-m_-852=
1718945281836380m_3343428221959612084Apple-interchange-newline"><div><div d=
ir=3D"ltr"><div>So I really dug into the old archives here and literally pu=
lled an old hard drive out of a closet, and found a copy of the old hardwar=
e repository from back in the days when N210 was called &quot;USRP2+&quot;.=
 Best that I can tell, we only ever released two versions to the public. We=
 might have sold R3 stickered as R2 -- I don&#39;t see anything in the repo=
sitory that would indicate otherwise. Rev 2/3 was sold until around June or=
 July 2011, when we moved to rev 4. The only firmware/host code changes I c=
an see between any of the versions are that R4 used LVDS clocking to the da=
ughterboard where previous versions used CMOS. So I think you should be abl=
e to run r3 firmware on your N210.</div><div><br></div><div>That said, the =
very very old N210s with very very old firmware might not have used the sam=
e safe/production firmware/fpga image arrangement that we later arrived at.=
 The hardware is still fine, but you might be in for a bit of a deep dive t=
o get it all running again.</div><div><br></div><div>If you have a TTL-seri=
al adapter or a logic analyzer that works as such, you can connect to the d=
ebug UART header and get printout information from the firmware at boot tim=
e. Another good idea would be to take a video of the front panel LEDs as yo=
u apply power -- the boot LED lights give good indication of the firmware/F=
PGA image loading process.<br></div><div><br></div><div>Nick<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Th=
u, May 9, 2019 at 1:42 PM Joe Martin via USRP-users &lt;<a href=3D"mailto:u=
srp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div>Thanks for the info, Marcus.=C2=A0 However, seeing that=
 Jason went through this last year with a couple of N210 he has it would se=
em unlikely that all three of the N210 are broken.=C2=A0 That being said an=
d considering what you jus said it seems that I should=E2=80=99ve been able=
 to find some version of UHD that will successfully communicate with the fi=
rmware and fpga images stored in the unit; =C2=A0I have not, using UHD vers=
ions from 3.9.0 to 3.14.0. =C2=A0<div><br></div><div>I wanted to try with e=
ven earlier versions of UHD but am finding trouble in utilizing UHD v3.4.0 =
(earliest version I could find) as it seems that =E2=80=9Cprebuilt=E2=80=9D=
 v3.4.0 needs only Ubuntu 10.10 or 11.10 which so far I=E2=80=99m not able =
to successfully install and run. =C2=A0 Seems we=E2=80=99re running out of =
option on this one so the Deep Space Exploration Society, who I=E2=80=99m t=
rying to help with this, may have to come to grasps with the notion that th=
eir N210 is a true brick.=C2=A0</div><div><br></div><div>Joe<br><div><br><b=
lockquote type=3D"cite"><div>On May 9, 2019, at 2:23 PM, Marcus D. Leech vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noref=
errer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br=
 class=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_34284103=
72027926386Apple-interchange-newline"><div>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-8521718945281836380m_3343428221959612084gmail-m_=
3428410372027926386moz-cite-prefix">On 05/09/2019 04:18 PM, Joe Martin via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      Nick, Ian,=C2=A0
      <div><br>
      </div>
      <div>If this unit happens to be incorrectly labeled as a
        rev 2 N210 and it is actually a rev 3 N210, is there hope in
        being able to load rev 3 firmware and fpga images (which I have
        located previously and tried actually) with some available UHD
        version?=C2=A0 If so, would you be able to tell me which UHD
        version(s) might be able to communicate with it? =C2=A0</div>
      <div><br>
      </div>
      <div>Joe<br>
        <div><br>
        </div>
      </div>
    </blockquote>
    Theoretically, most versions in the last several years should be
    able to talk to it.=C2=A0 In *general* UHD never drops support for olde=
r
    hardware,<br>
    =C2=A0 and tries to maintain compatibility.=C2=A0 Now, it is the case t=
hat
    newer features are almost never &quot;back-ported&quot;, but basic
    functionality should<br>
    =C2=A0 always be there.=C2=A0 <br>
    <br>
    What this *should* mean is that you should be able to use the
    firmware tools once the device is in &quot;safe mode&quot; to get yours=
elf to
    where you<br>
    =C2=A0 want to be.=C2=A0 If that doesn&#39;t work, that may well mean t=
hat the
    hardware is broken, and it&#39;s unlikely to be economical to repair.<b=
r>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div>
        <div>
          <blockquote type=3D"cite">
            <div>On May 9, 2019, at 2:12 PM, Joe Martin via
              USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
rel=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
              wrote:</div>
            <br class=3D"gmail-m_-8521718945281836380m_3343428221959612084g=
mail-m_3428410372027926386Apple-interchange-newline">
            <div>
             =20
              <div>Okay.
                =C2=A0I=E2=80=99ve asserted from the outset that it=E2=80=
=99s a rev 2, based
                on the factory label.=C2=A0 Is this N210 a lost cause if it
                is actually a Rev2 N210?=C2=A0
                <div><br>
                </div>
                <div>Joe<br>
                  <div><br>
                    <blockquote type=3D"cite">
                      <div>On May 9, 2019, at 2:05 PM, Nick
                        Foster &lt;<a href=3D"mailto:bistromath@gmail.com" =
rel=3D"noreferrer" target=3D"_blank">bistromath@gmail.com</a>&gt;
                        wrote:</div>
                      <br class=3D"gmail-m_-8521718945281836380m_3343428221=
959612084gmail-m_3428410372027926386Apple-interchange-newline">
                      <div>
                        <div dir=3D"ltr">Well, it&#39;s not a rev 4.
                          It&#39;s either 2 or 3 in terms of hardware
                          revision. <br>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May
                            9, 2019 at 12:58 PM Joe Martin &lt;<a href=3D"m=
ailto:k5so@k5so.com" rel=3D"noreferrer" target=3D"_blank">k5so@k5so.com</a>=
&gt;
                            wrote:<br>
                          </div>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
                            <div>=E2=80=A6able to ping 192.168.10.2
                              successfully.<br>
                              <div><br>
                                <blockquote type=3D"cite">
                                  <div>On May 9, 2019, at 1:54
                                    PM, Joe Martin &lt;<a href=3D"mailto:k5=
so@k5so.com" rel=3D"noreferrer" target=3D"_blank">k5so@k5so.com</a>&gt;
                                    wrote:</div>
                                  <br class=3D"gmail-m_-8521718945281836380=
m_3343428221959612084gmail-m_3428410372027926386gmail-m_-251320658008436636=
1Apple-interchange-newline">
                                  <div>
                                    <div>Ian,=C2=A0
                                      <div><br>
                                      </div>
                                      <div>Yes, I have tried
                                        many times to boot in safe mode,
                                        same result regardless.=C2=A0 Yes, =
I
                                        am able to pin to 192.168.10.2
                                        successfully.=C2=A0</div>
                                      <div><br>
                                      </div>
                                      <div>Joe<br>
                                        <div><br>
                                          <blockquote type=3D"cite">
                                            <div>On May 9,
                                              2019, at 1:47 PM, Joe
                                              Martin via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>&gt;
                                              wrote:</div>
                                            <br class=3D"gmail-m_-852171894=
5281836380m_3343428221959612084gmail-m_3428410372027926386gmail-m_-25132065=
80084366361Apple-interchange-newline">
                                            <div>
                                              <div>Ian
                                                and Nick,=C2=A0
                                                <div><br>
                                                </div>
                                                <div>Thanks for
                                                  the assistance.=C2=A0
                                                  Attached are dropbox
                                                  links to two snapshot
                                                  photos: =C2=A01) the
                                                  factory label on the
                                                  back of the N210,
                                                  showing N210 r:2.0 and
                                                  2) a top side view of
                                                  the N210.=C2=A0</div>
                                                <div><br>
                                                </div>
                                                <div>1)=C2=A0<a href=3D"htt=
ps://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0" rel=3D"n=
oreferrer" target=3D"_blank">https://www.dropbox.com/s/u92x02rni71kfb3/2019=
0509_133253.jpg?dl=3D0</a></div>
                                                <div>2)=C2=A0<a href=3D"htt=
ps://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0" rel=3D"n=
oreferrer" target=3D"_blank">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/2019=
0509_133800.jpg?dl=3D0</a></div>
                                                <div><br>
                                                </div>
                                                <div>Seems this
                                                  unit is indeed a rev 2
                                                  N210, yes?=C2=A0</div>
                                                <div><br>
                                                </div>
                                                <div>Joe<br>
                                                  <div><br>
                                                    <blockquote type=3D"cit=
e">
                                                      <div>On
                                                        May 9, 2019, at
                                                        12:40 PM, Nick
                                                        Foster &lt;<a href=
=3D"mailto:bistromath@gmail.com" rel=3D"noreferrer" target=3D"_blank">bistr=
omath@gmail.com</a>&gt;
                                                        wrote:</div>
                                                      <br class=3D"gmail-m_=
-8521718945281836380m_3343428221959612084gmail-m_3428410372027926386gmail-m=
_-2513206580084366361Apple-interchange-newline">
                                                      <div>
                                                        <div dir=3D"ltr">Mo=
reover,
                                                          the best
                                                          &quot;tell&quot; =
is to
                                                          look at the
                                                          N210
                                                          motherboard.
                                                          If the SRAM
                                                          chip is on the
                                                          top side, it&#39;=
s
                                                          a rev 2/3. If
                                                          the SRAM is on
                                                          the bottom
                                                          side, it&#39;s a
                                                          rev 4. If you
                                                          send a picture
                                                          along of the
                                                          top of the
                                                          N210, I can
                                                          tell you if
                                                          it&#39;s early or
                                                          late rev.<br>
                                                        </div>
                                                        <br>
                                                        <div class=3D"gmail=
_quote">
                                                          <div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, May 9, 2019 at 11:36 AM Ian Buckley via
                                                          USRP-users
                                                          &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">usrp-=
users@lists.ettus.com</a>&gt;
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
                                                          <div dir=3D"auto"=
>Joe,
                                                          <div dir=3D"auto"=
>So I
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
                                                          this=C2=A0morning
                                                          he shared my
                                                          feeling that a
                                                          Rev2 wasn&#39;t
                                                          sold to
                                                          customers, so
                                                          I&#39;m curious i=
f
                                                          you have a
                                                          unit that has
                                                          a factory
                                                          label that
                                                          says N210Rev2
                                                          or if you have
                                                          seen &quot;usrp2
                                                          rev2.0&quot; on t=
he
                                                          PCB (which can
                                                          be
                                                          missleading).</di=
v>
                                                          <div dir=3D"auto"=
><br>
                                                          </div>
                                                          <div dir=3D"auto"=
>Also
                                                          have you tried
                                                          booting into
                                                          the safe image
                                                          and verifying
                                                          that it at
                                                          least pings on
                                                          192.168.10.2?</di=
v>
                                                          <div dir=3D"auto"=
><br>
                                                          </div>
                                                          <div dir=3D"auto"=
>If we
                                                          can
                                                          conclusively
                                                          identify which
                                                          rev of h/w you
                                                          have I can
                                                          probably help
                                                          further.</div>
                                                          <div dir=3D"auto"=
><br>
                                                          </div>
                                                          <div dir=3D"auto"=
>Ian</div>
                                                          </div>
                                                          </blockquote>
                                                        </div>
                                                      </div>
                                                    </blockquote>
                                                  </div>
                                                  <br>
                                                </div>
                                              </div></div></blockquote></di=
v></div></div></div></blockquote></div></div></blockquote></div></div></blo=
ckquote></div></div></div></div></blockquote></div></div></blockquote></div=
></div></blockquote></div></div></div></blockquote></div></div></blockquote=
></div></div></div></div></blockquote></div></div></blockquote></div></div>=
</div></div></blockquote></div></div></div></div></blockquote></div></div><=
/div></div></blockquote></div></div></div></div></blockquote></div><br></di=
v>_______________________________________________<br>USRP-users mailing lis=
t<br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br><a href=3D"http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br></div></blockquote></div><=
br></div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000001a8d2d05889174e5--


--===============7964029173808298960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7964029173808298960==--

