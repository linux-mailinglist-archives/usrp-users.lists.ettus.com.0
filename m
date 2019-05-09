Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 836FE194C5
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 23:39:32 +0200 (CEST)
Received: from [::1] (port=45312 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOqlF-0000W9-I4; Thu, 09 May 2019 17:39:29 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:41848)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <bistromath@gmail.com>)
 id 1hOqkh-0000E4-Ft
 for USRP-users@lists.ettus.com; Thu, 09 May 2019 17:39:25 -0400
Received: by mail-io1-f49.google.com with SMTP id a17so2863977iot.8
 for <USRP-users@lists.ettus.com>; Thu, 09 May 2019 14:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1yd2OdQQdCBAHCxKhPSHSzBGfh3TManzgLiJD81BhkA=;
 b=gvIzLrIYx+jVMIyeBlDw+fKXJciggQCkMrNp10AKVsX1/xtkBZO9D5GoULqo8F8GAP
 7LHJUWaTpQOwcy0sqhzvYd3NcMmvNDfCczZFO0RL1lzECZjGP8o2RbxVR5bwJR/rsRzd
 5jJIDJaI20V1NMpFM0RjyJo4KTprnw5vLo4gnwBmZBS8hC7+WjLnM+FxMfsqn8LnNrnZ
 BkuFsN0MMnO9bGU0WjbV6C8rSQO7W4ohJ2Jzv2Z1/f9ZjKtwk8rfbwojP/6FX9K9aGpT
 C/BVhz6ciQCQZabKM09Avjosnku8CdSAzVqLmXK+rEHbrkDdeYsoe7oxaq0QUK61Zu7A
 LfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1yd2OdQQdCBAHCxKhPSHSzBGfh3TManzgLiJD81BhkA=;
 b=OWsQInzsVc+c+YxWZfZaxYvvKHhEva7nakiy8pnwBxyhRAgHlnXKti+zsRXmmS3ImC
 3fMirakkW0Hr99GSjk5AtleHMjXMzYqeuwEdm5tO8UcIriQeBd9eWZRUhO0GODe/TadI
 P2icZghVb6tx+APByCJE5PYapksAsakzWJefz2AA1lbZWVp4o50mel93zoe/MD2AfkIQ
 9yGfNZ/FcHSnKb+BlmlQNk98W2sbTsN1C/dAogFfjpy1gswdfXRxMxGkSwdmj+O2E8KH
 G/eXLmIWvj1endvpX2kqCAe2nB5ZMAsoTlfgAagBHZzLLw9qEvkaI9Bl81i2u0/kFJWf
 KR9A==
X-Gm-Message-State: APjAAAX0lZqrAAS85f9E0D0krta0ZKiE6b0SviKp8NE12PSDhASSBX+n
 V97wtLS8CsU8iItgDsJ295vb7/ACex+lSmbjy6Y=
X-Google-Smtp-Source: APXvYqwkDLAbay+2ah/zEkqW4qDX8l59e1Hl4HFYq5zezl0fhkwPmdj9ToztnmZVL08OtA6Vf+N3bRgfUH8sj7r2hnc=
X-Received: by 2002:a6b:f90c:: with SMTP id j12mr4147201iog.53.1557437894771; 
 Thu, 09 May 2019 14:38:14 -0700 (PDT)
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
In-Reply-To: <31E31040-1F5D-4C84-BD3B-65CC609519A9@k5so.com>
Date: Thu, 9 May 2019 14:38:02 -0700
Message-ID: <CA+JMMq8kE4vL3wJz42NexKc=xicWUCGTsu0+Sb9sArw7OX8Tcw@mail.gmail.com>
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
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5924619230605378099=="
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

--===============5924619230605378099==
Content-Type: multipart/alternative; boundary="0000000000007a4dba05887b44a6"

--0000000000007a4dba05887b44a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm saying that you might try to continue the effort to JTAG load a more
modern FPGA image. It's possible you have to hold down the safe mode button
while loading the image.

On Thu, May 9, 2019, 2:22 PM Joe Martin <k5so@k5so.com> wrote:

> Thanks for digging into that for us, Nick.  Interesting.  As the hardware
> change to rev4 occurred around mid 2011 and the earliest UHD version that
> exists on the files.ettus.com/uhd page is Feb 2104, what is the
> likelihood in your opinion that the UHD version will be compatible with t=
he
> rev2/3 hardware from 2011?
>
> So far I=E2=80=99ve not been successful in reviving the 2014 UHD version =
so I=E2=80=99m
> asking to determine whether continued effort to do so is likely to yield
> anything positive with respect to interfacing with the 2011 hardware.
>
> Joe
>
> On May 9, 2019, at 3:06 PM, Nick Foster <bistromath@gmail.com> wrote:
>
> So I really dug into the old archives here and literally pulled an old
> hard drive out of a closet, and found a copy of the old hardware reposito=
ry
> from back in the days when N210 was called "USRP2+". Best that I can tell=
,
> we only ever released two versions to the public. We might have sold R3
> stickered as R2 -- I don't see anything in the repository that would
> indicate otherwise. Rev 2/3 was sold until around June or July 2011, when
> we moved to rev 4. The only firmware/host code changes I can see between
> any of the versions are that R4 used LVDS clocking to the daughterboard
> where previous versions used CMOS. So I think you should be able to run r=
3
> firmware on your N210.
>
> That said, the very very old N210s with very very old firmware might not
> have used the same safe/production firmware/fpga image arrangement that w=
e
> later arrived at. The hardware is still fine, but you might be in for a b=
it
> of a deep dive to get it all running again.
>
> If you have a TTL-serial adapter or a logic analyzer that works as such,
> you can connect to the debug UART header and get printout information fro=
m
> the firmware at boot time. Another good idea would be to take a video of
> the front panel LEDs as you apply power -- the boot LED lights give good
> indication of the firmware/FPGA image loading process.
>
> Nick
>
> On Thu, May 9, 2019 at 1:42 PM Joe Martin via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Thanks for the info, Marcus.  However, seeing that Jason went through
>> this last year with a couple of N210 he has it would seem unlikely that =
all
>> three of the N210 are broken.  That being said and considering what you =
jus
>> said it seems that I should=E2=80=99ve been able to find some version of=
 UHD that
>> will successfully communicate with the firmware and fpga images stored i=
n
>> the unit;  I have not, using UHD versions from 3.9.0 to 3.14.0.
>>
>> I wanted to try with even earlier versions of UHD but am finding trouble
>> in utilizing UHD v3.4.0 (earliest version I could find) as it seems that
>> =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only Ubuntu 10.10 or 11.10 which=
 so far I=E2=80=99m not
>> able to successfully install and run.   Seems we=E2=80=99re running out =
of option
>> on this one so the Deep Space Exploration Society, who I=E2=80=99m tryin=
g to help
>> with this, may have to come to grasps with the notion that their N210 is=
 a
>> true brick.
>>
>> Joe
>>
>> On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> On 05/09/2019 04:18 PM, Joe Martin via USRP-users wrote:
>>
>> Nick, Ian,
>>
>> If this unit happens to be incorrectly labeled as a rev 2 N210 and it is
>> actually a rev 3 N210, is there hope in being able to load rev 3 firmwar=
e
>> and fpga images (which I have located previously and tried actually) wit=
h
>> some available UHD version?  If so, would you be able to tell me which U=
HD
>> version(s) might be able to communicate with it?
>>
>> Joe
>>
>> Theoretically, most versions in the last several years should be able to
>> talk to it.  In *general* UHD never drops support for older hardware,
>>   and tries to maintain compatibility.  Now, it is the case that newer
>> features are almost never "back-ported", but basic functionality should
>>   always be there.
>>
>> What this *should* mean is that you should be able to use the firmware
>> tools once the device is in "safe mode" to get yourself to where you
>>   want to be.  If that doesn't work, that may well mean that the hardwar=
e
>> is broken, and it's unlikely to be economical to repair.
>>
>>
>> On May 9, 2019, at 2:12 PM, Joe Martin via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Okay.  I=E2=80=99ve asserted from the outset that it=E2=80=99s a rev 2, =
based on the
>> factory label.  Is this N210 a lost cause if it is actually a Rev2 N210?
>>
>> Joe
>>
>> On May 9, 2019, at 2:05 PM, Nick Foster <bistromath@gmail.com> wrote:
>>
>> Well, it's not a rev 4. It's either 2 or 3 in terms of hardware revision=
.
>>
>> On Thu, May 9, 2019 at 12:58 PM Joe Martin <k5so@k5so.com> wrote:
>>
>>> =E2=80=A6able to ping 192.168.10.2 successfully.
>>>
>>> On May 9, 2019, at 1:54 PM, Joe Martin <k5so@k5so.com> wrote:
>>>
>>> Ian,
>>>
>>> Yes, I have tried many times to boot in safe mode, same result
>>> regardless.  Yes, I am able to pin to 192.168.10.2 successfully.
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 1:47 PM, Joe Martin via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>> Ian and Nick,
>>>
>>> Thanks for the assistance.  Attached are dropbox links to two snapshot
>>> photos:  1) the factory label on the back of the N210, showing N210 r:2=
.0
>>> and 2) a top side view of the N210.
>>>
>>> 1) https://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0
>>> 2) https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0
>>>
>>> Seems this unit is indeed a rev 2 N210, yes?
>>>
>>> Joe
>>>
>>> On May 9, 2019, at 12:40 PM, Nick Foster <bistromath@gmail.com> wrote:
>>>
>>> Moreover, the best "tell" is to look at the N210 motherboard. If the
>>> SRAM chip is on the top side, it's a rev 2/3. If the SRAM is on the bot=
tom
>>> side, it's a rev 4. If you send a picture along of the top of the N210,=
 I
>>> can tell you if it's early or late rev.
>>>
>>> On Thu, May 9, 2019 at 11:36 AM Ian Buckley via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Joe,
>>>> So I scratched my head about this a little late last night and looked
>>>> back through the development repository for the N210 and as far as I c=
an
>>>> tell there was never customer facing FPGA code for a Rev2 N210. Chatti=
ng
>>>> with Matt this morning he shared my feeling that a Rev2 wasn't sold to
>>>> customers, so I'm curious if you have a unit that has a factory label =
that
>>>> says N210Rev2 or if you have seen "usrp2 rev2.0" on the PCB (which can=
 be
>>>> missleading).
>>>>
>>>> Also have you tried booting into the safe image and verifying that it
>>>> at least pings on 192.168.10.2?
>>>>
>>>> If we can conclusively identify which rev of h/w you have I can
>>>> probably help further.
>>>>
>>>> Ian
>>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--0000000000007a4dba05887b44a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I&#39;m saying that you might try to continue the effort =
to JTAG load a more modern FPGA image. It&#39;s possible you have to hold d=
own the safe mode button while loading the image.=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019,=
 2:22 PM Joe Martin &lt;<a href=3D"mailto:k5so@k5so.com">k5so@k5so.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:=
break-word;line-break:after-white-space">Thanks for digging into that for u=
s, Nick.=C2=A0 Interesting.=C2=A0 As the hardware change to rev4 occurred a=
round mid 2011 and the earliest UHD version that exists on the <a href=3D"h=
ttp://files.ettus.com/uhd" target=3D"_blank" rel=3D"noreferrer">files.ettus=
.com/uhd</a>=C2=A0page is Feb 2104, what is the likelihood in your opinion =
that the UHD version will be compatible with the rev2/3 hardware from 2011?=
 =C2=A0=C2=A0<div><br></div><div>So far I=E2=80=99ve not been successful in=
 reviving the 2014 UHD version so I=E2=80=99m asking to determine whether c=
ontinued effort to do so is likely to yield anything positive with respect =
to interfacing with the 2011 hardware. =C2=A0</div><div><br></div><div>Joe<=
br><div><div><br><blockquote type=3D"cite"><div>On May 9, 2019, at 3:06 PM,=
 Nick Foster &lt;<a href=3D"mailto:bistromath@gmail.com" target=3D"_blank" =
rel=3D"noreferrer">bistromath@gmail.com</a>&gt; wrote:</div><br class=3D"m_=
3343428221959612084Apple-interchange-newline"><div><div dir=3D"ltr"><div>So=
 I really dug into the old archives here and literally pulled an old hard d=
rive out of a closet, and found a copy of the old hardware repository from =
back in the days when N210 was called &quot;USRP2+&quot;. Best that I can t=
ell, we only ever released two versions to the public. We might have sold R=
3 stickered as R2 -- I don&#39;t see anything in the repository that would =
indicate otherwise. Rev 2/3 was sold until around June or July 2011, when w=
e moved to rev 4. The only firmware/host code changes I can see between any=
 of the versions are that R4 used LVDS clocking to the daughterboard where =
previous versions used CMOS. So I think you should be able to run r3 firmwa=
re on your N210.</div><div><br></div><div>That said, the very very old N210=
s with very very old firmware might not have used the same safe/production =
firmware/fpga image arrangement that we later arrived at. The hardware is s=
till fine, but you might be in for a bit of a deep dive to get it all runni=
ng again.</div><div><br></div><div>If you have a TTL-serial adapter or a lo=
gic analyzer that works as such, you can connect to the debug UART header a=
nd get printout information from the firmware at boot time. Another good id=
ea would be to take a video of the front panel LEDs as you apply power -- t=
he boot LED lights give good indication of the firmware/FPGA image loading =
process.<br></div><div><br></div><div>Nick<br></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 at =
1:42 PM Joe Martin via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v>Thanks for the info, Marcus.=C2=A0 However, seeing that Jason went throug=
h this last year with a couple of N210 he has it would seem unlikely that a=
ll three of the N210 are broken.=C2=A0 That being said and considering what=
 you jus said it seems that I should=E2=80=99ve been able to find some vers=
ion of UHD that will successfully communicate with the firmware and fpga im=
ages stored in the unit; =C2=A0I have not, using UHD versions from 3.9.0 to=
 3.14.0. =C2=A0<div><br></div><div>I wanted to try with even earlier versio=
ns of UHD but am finding trouble in utilizing UHD v3.4.0 (earliest version =
I could find) as it seems that =E2=80=9Cprebuilt=E2=80=9D v3.4.0 needs only=
 Ubuntu 10.10 or 11.10 which so far I=E2=80=99m not able to successfully in=
stall and run. =C2=A0 Seems we=E2=80=99re running out of option on this one=
 so the Deep Space Exploration Society, who I=E2=80=99m trying to help with=
 this, may have to come to grasps with the notion that their N210 is a true=
 brick.=C2=A0</div><div><br></div><div>Joe<br><div><br><blockquote type=3D"=
cite"><div>On May 9, 2019, at 2:23 PM, Marcus D. Leech via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noref=
errer">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"m_334342=
8221959612084gmail-m_3428410372027926386Apple-interchange-newline"><div>
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-cite-=
prefix">On 05/09/2019 04:18 PM, Joe Martin via
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
target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;
              wrote:</div>
            <br class=3D"m_3343428221959612084gmail-m_3428410372027926386Ap=
ple-interchange-newline">
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
target=3D"_blank" rel=3D"noreferrer">bistromath@gmail.com</a>&gt;
                        wrote:</div>
                      <br class=3D"m_3343428221959612084gmail-m_34284103720=
27926386Apple-interchange-newline">
                      <div>
                        <div dir=3D"ltr">Well, it&#39;s not a rev 4.
                          It&#39;s either 2 or 3 in terms of hardware
                          revision. <br>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, May
                            9, 2019 at 12:58 PM Joe Martin &lt;<a href=3D"m=
ailto:k5so@k5so.com" target=3D"_blank" rel=3D"noreferrer">k5so@k5so.com</a>=
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
so@k5so.com" target=3D"_blank" rel=3D"noreferrer">k5so@k5so.com</a>&gt;
                                    wrote:</div>
                                  <br class=3D"m_3343428221959612084gmail-m=
_3428410372027926386gmail-m_-2513206580084366361Apple-interchange-newline">
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
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"norefer=
rer">usrp-users@lists.ettus.com</a>&gt;
                                              wrote:</div>
                                            <br class=3D"m_3343428221959612=
084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-interchange=
-newline">
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
ps://www.dropbox.com/s/u92x02rni71kfb3/20190509_133253.jpg?dl=3D0" target=
=3D"_blank" rel=3D"noreferrer">https://www.dropbox.com/s/u92x02rni71kfb3/20=
190509_133253.jpg?dl=3D0</a></div>
                                                <div>2)=C2=A0<a href=3D"htt=
ps://www.dropbox.com/s/1p8ocqf4qcr9ohb/20190509_133800.jpg?dl=3D0" target=
=3D"_blank" rel=3D"noreferrer">https://www.dropbox.com/s/1p8ocqf4qcr9ohb/20=
190509_133800.jpg?dl=3D0</a></div>
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
=3D"mailto:bistromath@gmail.com" target=3D"_blank" rel=3D"noreferrer">bistr=
omath@gmail.com</a>&gt;
                                                        wrote:</div>
                                                      <br class=3D"m_334342=
8221959612084gmail-m_3428410372027926386gmail-m_-2513206580084366361Apple-i=
nterchange-newline">
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
ilto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-=
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
                                              </div>
_______________________________________________<br>
                                              USRP-users mailing list<br>
                                              <a href=3D"mailto:USRP-users@=
lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">USRP-users@lists.ettu=
s.com</a><br>
                                              <a href=3D"http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.=
com</a><br>
                                            </div>
                                          </blockquote>
                                        </div>
                                        <br>
                                      </div>
                                    </div>
                                  </div>
                                </blockquote>
                              </div>
                              <br>
                            </div>
                          </blockquote>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <br>
                </div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list<br>
              <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blan=
k" rel=3D"noreferrer">USRP-users@lists.ettus.com</a><br>
<a class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-fr=
eetext" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class=3D"m_3343428221959612084gmail-m_3428410372027926386mi=
meAttachmentHeader"></fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-ab=
breviated" href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">USRP-users@lists.ettus.com</a>
<a class=3D"m_3343428221959612084gmail-m_3428410372027926386moz-txt-link-fr=
eetext" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>USRP-users mailing list<=
br><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"n=
oreferrer">USRP-users@lists.ettus.com</a><br><a href=3D"http://lists.ettus.=
com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank" rel=3D"n=
oreferrer">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om</a><br></div></blockquote></div><br></div></div>________________________=
_______________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div><br></div></div></div></blockquote></div>

--0000000000007a4dba05887b44a6--


--===============5924619230605378099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5924619230605378099==--

