Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A929918334
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 03:33:44 +0200 (CEST)
Received: from [::1] (port=59034 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOXwL-0000z5-Ir; Wed, 08 May 2019 21:33:41 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:46829)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sdormian@eng.ucsd.edu>)
 id 1hOXvn-0000oJ-42
 for usrp-users@lists.ettus.com; Wed, 08 May 2019 21:33:37 -0400
Received: by mail-io1-f45.google.com with SMTP id m14so309171ion.13
 for <usrp-users@lists.ettus.com>; Wed, 08 May 2019 18:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=kRnpvB3UVEV+yEHs6wHrx1unO8mKaqpKyy7uGzDaHw0=;
 b=L3KQpluTQkMRx8P2dWKU02L9aCpxTln/BLozQHk6xYrNLWkckGkAeZUs1K2jqMzVLs
 9PqqJvxZk3GflOfSbbJ3AdZ4tExxIGIkpP820zllo+m8Q/MBuF9ObSWr8zu8MrnHTHk9
 721Vgxhb6r9ZjpZy8KcwC5znenAJy70hPRz18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=kRnpvB3UVEV+yEHs6wHrx1unO8mKaqpKyy7uGzDaHw0=;
 b=LX0F5xzHtmk+OhMOekqGxaDRAjAabGS4uE3x1i1z6f07HgBlalv2E3VQK+zAzjrJEc
 5EVKN27xK+zdkSgr+zY7nefobIRdoReG2rcn05QStDXCxgBuS78PdB6OpxyVj8jlxdJA
 D3cEuqV+HHT/QUCJ/uBW3a9H3kREDlG91of7jj/RefnazRaHLWDKu0sxuNwkssKckBvB
 bjKoEJuf/c5nTTX6dY3eJ+NGX+ywcp0G5y0w6JXSftJeTqd8Ga+Jxve31cWV3whFN6Uv
 Mnf+u4/9jyNjV3i6FZy1gS3mtJfXiWz7hmRQ4R9ND0mpaIilxc5qIO3TkqslC8h/ICNT
 tDTA==
X-Gm-Message-State: APjAAAWdIdUqu3G+2Ql1VNkvXrsomOfHTOe2DPcFHfpXfbOSlQXFLJ/M
 e9MJRkixX1PfVaBFYZ8qEbxO85hswrAd94RtSbuVbFwsgWk=
X-Google-Smtp-Source: APXvYqxDVYYUPkCF5ORDOMIV616d5D/84JbIklqthUizgGYqt8l0MyUDG/rgA7EJ+JKKS5TtND6YkSDNASxCCEQBk44=
X-Received: by 2002:a5d:8e09:: with SMTP id e9mr765559iod.202.1557365546079;
 Wed, 08 May 2019 18:32:26 -0700 (PDT)
MIME-Version: 1.0
References: <B00A224D-E7A3-4053-9E56-BC44A01A9522@jpl.nasa.gov>
 <5CD3459E.7050607@gmail.com>
In-Reply-To: <5CD3459E.7050607@gmail.com>
Date: Wed, 8 May 2019 18:31:48 -0700
Message-ID: <CANaxSipFTdZ=fhO6c_yz4rqvnX=P4RQzGiaYpghrd8OwZ0a8xA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] USRP N320 and N321 questions
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
From: Ali Dormiani via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ali Dormiani <sdormian@eng.ucsd.edu>
Content-Type: multipart/mixed; boundary="===============6616052790856445388=="
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

--===============6616052790856445388==
Content-Type: multipart/alternative; boundary="00000000000028f43b05886a6c4b"

--00000000000028f43b05886a6c4b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

I don't see why PCIe cards wont work. There are plenty of them out there
with Intel and Mellonox chips (2 QSFP+ ports per PCIe 3.0 x8 card).

Note that you need to check your host machine has the correct PCIe
revision. A lot of boards have one 3.0 x16 slot and a bunch of 2.0 x4 or x8
slots.

Here is one:

https://www.amazon.com/StarTech-com-Dual-Port-QSFP-Server/dp/B07983NGQH

I recommend you gravitate towards cards based on Intel chips/controllers.
Intel's open source commitment/drivers is above every other network gear
company (in my experience). Broadcom is by far the worst for open source
drivers.

I agree with Marcus on the CPU issue. That ARM dual-core is going to get
annihilated at the full rate.

On Wed, May 8, 2019 at 2:11 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/08/2019 04:55 PM, Minutolo, Lorenzo (389I) via USRP-users wrote:
> > Hi,
> > I have some question about your new products.
> >
> > 1) What is the suggested hardware for communicating with the QSFP+ port=
?
> As I understand this a normal 40 Gbit PCIe card won=E2=80=99t work.
> >
> > 2) Does the embedded linux system gives any error while handling two
> channels at 200Msps full duplex without any signal processing (i.e.
> benchmark rate)?
> I'm going to go ahead and guess that an 800MHz CPU would be unable to
> consume 400Msps in any possible way, since that would imply an
>    average of only 2 CPU clocks/sample. Even just bringing those samples
> into the CPU realm and into user-space would be some kind of
>    minor miracle, even with multiple instruction issues/clock.
>
>
>
>
> >
> > Lorenzo
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000028f43b05886a6c4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>=
I don&#39;t see why PCIe cards wont work. There are plenty of them out ther=
e with Intel and Mellonox chips (2 QSFP+ ports per PCIe 3.0 x8 card).</div>=
<div><br></div><div>Note that you need to check your host machine has the c=
orrect PCIe revision. A lot of boards have one 3.0 x16 slot and a bunch of =
2.0 x4 or x8 slots.</div><div><br></div><div>Here is one:</div><div><br></d=
iv><div><a href=3D"https://www.amazon.com/StarTech-com-Dual-Port-QSFP-Serve=
r/dp/B07983NGQH">https://www.amazon.com/StarTech-com-Dual-Port-QSFP-Server/=
dp/B07983NGQH</a></div><div><br></div><div>I recommend you gravitate toward=
s cards based on Intel chips/controllers. Intel&#39;s open source commitmen=
t/drivers is above every other network gear company (in my experience). Bro=
adcom is by far the worst for open source drivers.</div><div><br></div><div=
>I agree with Marcus on the CPU issue. That ARM dual-core is going to get a=
nnihilated at the full rate.</div></div></div><br><div class=3D"gmail_quote=
"><div class=3D"gmail_attr" dir=3D"ltr">On Wed, May 8, 2019 at 2:11 PM Marc=
us D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;padding-left:1ex;border-left-=
color:rgb(204,204,204);border-left-width:1px;border-left-style:solid">On 05=
/08/2019 04:55 PM, Minutolo, Lorenzo (389I) via USRP-users wrote:<br>
&gt; Hi,<br>
&gt; I have some question about your new products.<br>
&gt;<br>
&gt; 1) What is the suggested hardware for communicating with the QSFP+ por=
t? As I understand this a normal 40 Gbit PCIe card won=E2=80=99t work.<br>
&gt;<br>
&gt; 2) Does the embedded linux system gives any error while handling two c=
hannels at 200Msps full duplex without any signal processing (i.e. benchmar=
k rate)?<br>
I&#39;m going to go ahead and guess that an 800MHz CPU would be unable to <=
br>
consume 400Msps in any possible way, since that would imply an<br>
=C2=A0 =C2=A0average of only 2 CPU clocks/sample. Even just bringing those =
samples <br>
into the CPU realm and into user-space would be some kind of<br>
=C2=A0 =C2=A0minor miracle, even with multiple instruction issues/clock.<br=
>
<br>
<br>
<br>
<br>
&gt;<br>
&gt; Lorenzo<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" target=3D"_blank" rel=3D"noreferrer">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000028f43b05886a6c4b--


--===============6616052790856445388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6616052790856445388==--

