Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A637144EDCE
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 21:18:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 904D238489E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 15:18:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="jh0wa+QZ";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F0C638441E
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 15:17:42 -0500 (EST)
Received: by mail-oi1-f179.google.com with SMTP id be32so19935934oib.11
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 12:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+ncBhF7xLcu0FVwlvDyQ5aji08SEmn/pWzatyca98YA=;
        b=jh0wa+QZyggA64mt+RO1sUsz+mjJkS24yzeyPdfKApVAx4ZatKR6YQo3Kemhe2omdp
         5Y/9TYIJ7UFzFyvgfvXH3FreLUNhGxmMxYc2IFLcxYvANbpUtEd09VMxQERbH47nRW4/
         3K41P129ATo4mxNY2QubM5ttLLxbKF1niwclDbM4c7sGf9R2Rpy2LXQLGb9xLQoxgewh
         afexpzJwk1TJymuZ8qtjTaX2gFVAPOpCPEso0IDVf7aEblVHFTK5Y3dpIAfI1peqUPYe
         fH1f/pUIQhvTJB3uoK18sqKQf8RBoKHFvOBtzgcHErx+TlXKS5HTemJXGS2kAasNkA63
         J0xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+ncBhF7xLcu0FVwlvDyQ5aji08SEmn/pWzatyca98YA=;
        b=t2cpOK04E38M4phl8rKjbF5vrLMyrDlx2Z/PPMaBbY87Yd8ymUWGpastnJY0dHCKZq
         aVPIO4zfstsXGLfAChUfEGIHQ83Jox0yBq1FrDXfwGAxk7wZcuH9gPkQmRLnck6kpK0I
         W0JCgSaLwrmhTaixwLxrs/ein0asRFbHYTUWIFsC7Pz0A04yj4OzaPRRZsS6E0kz33Po
         rcmm64ofyLmfVOyUH+AMUEpARil/jn8/PK1z/9l1yww9Xcv+aYiKomFflreHTS9yqlfc
         kNU+sqHyq0j7FEGOw4lh6JCaZgpDWIp9mvVnV0isNnh8V/6Xup6/iDTzKcMnf3gRpQu0
         x7Zg==
X-Gm-Message-State: AOAM533VkVR0WRi3ZvfVJarSp6guWlf4SNrRVgQUVfAJjzWmOb/g9zhV
	iUpj4wyWQLMW+UdrKGICOiLU3k9vbH3/GrKHYVk1Eg==
X-Google-Smtp-Source: ABdhPJzSk6535iVXdBbmQMawuISPDAvjcfGYFSpszvdy7akGxbehnF/Akt3hazpiqjL0E/xkjWM2Hd16wQ6hy9ov3L4=
X-Received: by 2002:aca:5841:: with SMTP id m62mr29175043oib.150.1636748261629;
 Fri, 12 Nov 2021 12:17:41 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQOESBO+B_=ZxRD2x84qbkWK6HCBewmGSkG7HPFnv1j0w@mail.gmail.com>
 <6EDF2BCF-7B47-43D8-B95D-C127847D8A64@gmail.com>
In-Reply-To: <6EDF2BCF-7B47-43D8-B95D-C127847D8A64@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 15:17:30 -0500
Message-ID: <CAB__hTQTNrYkPV8QGeneZwfNvs9X6rk5GTopZoTWop8sdjNuGQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: YE6PND3KBFEHFMT6QJDJ6HDIKQZRQPP4
X-Message-ID-Hash: YE6PND3KBFEHFMT6QJDJ6HDIKQZRQPP4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YE6PND3KBFEHFMT6QJDJ6HDIKQZRQPP4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5817564487849898321=="

--===============5817564487849898321==
Content-Type: multipart/alternative; boundary="000000000000b8d5a405d09d26a8"

--000000000000b8d5a405d09d26a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, looks like I should have followed Jonathon's advice and tried "dd"
from the start.  After writing the file system with "dd" I cannot get the
problem to reappear.  The fsck completes fine and the partitions are
mounted - no matter the various time stamps.
Rob

On Fri, Nov 12, 2021 at 2:21 PM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Yeah. So fsck balks if the time stamp on the superblock is In the future.
> Which it probably would be in you=E2=80=99re case because when your host =
machine
> sets the =E2=80=9Cclean flag=E2=80=9D, it will also update the superblock=
 time stamp.
>
>
>
> Sent from my iPhone
>
> On Nov 12, 2021, at 1:55 PM, Rob Kossler <rkossler@nd.edu> wrote:
>
> =EF=BB=BF
> By the way, I just removed my working SD card from the E310 and inserted
> it in my host (Ubuntu 20.04) SD card reader and issued the "umount"
> commands.  Nothing else.  When I reinserted into the E310, boot issue
> appears (fsck fails for /data and thus won't mount and puts me in some
> maintenance mode).
> Rob
>
> On Fri, Nov 12, 2021 at 1:49 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> On Fri, Nov 12, 2021 at 1:17 PM Marcus D. Leech <patchvonbraun@gmail.com=
>
>> wrote:
>>
>>> On 2021-11-12 13:14, Rob Kossler wrote:
>>>
>>>
>>>>
>>> I will try soon, but such experiments are "expensive" because when it
>>> fails I have to re-burn the file system and then reconfigure stuff
>>> afterwords since I don't know how to recover from the issue.  My guess =
was
>>> that either the mount or the eject was writing a date (perhaps an
>>> "accessed" date in some metadata) that was much in the future relative =
to
>>> the file system "Aug 6 2021" date that it gets and somehow this date
>>> mismatch was causing the fsck failure.  But I am not knowledgeable on
>>> this.
>>>
>>> Regarding your NTPD comment, perhaps it isn't accessing any RTC.
>>> Perhaps it is storing the time in the file system somewhere such that i=
t
>>> can access it on next boot?
>>>
>>> Your comments indicated the resulting time after reboot in this case wa=
s
>>> *correct*, which would mean that something would have to be "keeping ti=
me"
>>> across the
>>>   reboot.  Or did you mean just that the time after reboot, without the
>>> network cable connected, but with NTPD turned on, was "closer" to corre=
ct
>>> than without?
>>>
>>
>> You're right. I just meant that it was today's date on reboot.  I didn't
>> check to see if it was actually keeping time in between.  It would have
>> only been a few seconds anyway.
>>
>

--000000000000b8d5a405d09d26a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well, looks like I should have followed Jonathon&#39;s adv=
ice and tried &quot;dd&quot; from the start.=C2=A0 After writing the file s=
ystem with &quot;dd&quot; I cannot get the problem to reappear.=C2=A0 The f=
sck completes fine and the partitions are mounted - no matter the various t=
ime stamps.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Nov 12, 2021 at 2:21 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"auto">Yeah. So fsck balks if the time stamp on the superblock is In the=
 future. Which it probably would be in you=E2=80=99re case because when you=
r host machine sets the =E2=80=9Cclean flag=E2=80=9D, it will also update t=
he superblock time stamp.=C2=A0<div><br></div><div><br><br><div dir=3D"ltr"=
>Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On=
 Nov 12, 2021, at 1:55 PM, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.ed=
u" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br><br></blockquote></d=
iv><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr">By =
the way, I just removed my working SD card from the E310 and inserted it in=
 my host (Ubuntu 20.04) SD card reader and issued the &quot;umount&quot; co=
mmands.=C2=A0 Nothing else.=C2=A0 When I reinserted into the E310, boot iss=
ue appears (fsck fails for /data and thus won&#39;t mount and puts me in so=
me maintenance mode).<div>Rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 12, 2021 at 1:49 PM Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.ed=
u</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Nov 12, 2021 at 1:17 PM Marcus D=
. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">pa=
tchvonbraun@gmail.com</a>&gt; wrote:<br></div><div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-12 13:14, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I will try soon, but such experiments are &quot;expensive&qu=
ot;
            because when it fails I have to re-burn the file system and
            then reconfigure stuff afterwords=C2=A0since I don&#39;t know h=
ow to
            recover from the=C2=A0issue.=C2=A0 My guess was that either the=
 mount
            or the eject was writing a date (perhaps an &quot;accessed&quot=
; date
            in some metadata) that was much in the future relative to
            the file system &quot;Aug 6 2021&quot; date that it gets and so=
mehow
            this date mismatch was causing the fsck failure.=C2=A0 But I am
            not knowledgeable on this.=C2=A0=C2=A0</div>
          <div><br>
          </div>
          <div>Regarding your NTPD comment, perhaps it isn&#39;t accessing
            any RTC.=C2=A0 Perhaps it is storing the time in the file syste=
m
            somewhere such that it can access=C2=A0it on next boot?</div>
        </div>
      </div>
    </blockquote>
    Your comments indicated the resulting time after reboot in this case
    was *correct*, which would mean that something would have to be
    &quot;keeping time&quot; across the<br>
    =C2=A0 reboot.=C2=A0 Or did you mean just that the time after reboot, w=
ithout
    the network cable connected, but with NTPD turned on, was &quot;closer&=
quot;
    to correct than without?<br></div></blockquote><div><br></div><div>You&=
#39;re right. I just meant that it was today&#39;s date on reboot.=C2=A0 I =
didn&#39;t check to see if it was actually keeping time in between.=C2=A0 I=
t would have only been a few seconds anyway.=C2=A0</div></div></div>
</div>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000b8d5a405d09d26a8--

--===============5817564487849898321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5817564487849898321==--
