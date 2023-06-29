Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA0743124
	for <lists+usrp-users@lfdr.de>; Fri, 30 Jun 2023 01:32:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB6B2380F0E
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 19:32:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688081540; bh=kUDv8T3BRbbqESTud2cxt6ldVLLS8kBZnacV8eHNMaw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lIA0Y+bcItKiWc/0eWlbIjZmXv7IE+p+VpzC1DP8hAuKZOFyiFMaK8EAc8bXiu9Tb
	 /ePvtoOnMgzjeBdfHvR7+W1W3IDpGZB7CHzasZSjvUHF5cQDDVs+ydfHgFONTd8YvI
	 BQU2gl4vGoG/wY3amP4AzD/TCJ6ZRNC32r1WG4EUN8ZBRV3GGvyXQf1JrGAvIOYhx5
	 I1mHOeiZipztp3jOwf2Ytb1va/tFZhkD4Tb0tJCf/d0kT8GQuBHYMkomYzvu0MClDA
	 dgya4xW2b6akGJspKQILWMQUX7Yg0mKBw1TCSw3dzimL3BkwbH7L2zi1/WUVLVizq2
	 xbDAkD+CCxEMg==
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 55808380F0E
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 19:31:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h7HGpDcl";
	dkim-atps=neutral
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b5e7dba43cso20193431fa.1
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 16:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688081485; x=1690673485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jX3uyxi3o7Cn+ainvMt/FKjaB5YOfdWc3OS6FYL7hik=;
        b=h7HGpDclRfpAtkcnz//+JPOdzPQITyZ1HWrQ3Oyoly+jhAq8p+TBG0vSciPuPpswj5
         EaEN4YH5QmvBDm/fdDos+O9mvrCgtbPA3JWA6XhLrb3tvK6d3qDbQ5etATvou6ufl1vF
         qdPT5T7LBnx84Cl6PZYQz4JClQcwxPW7NbVwxm4e9lC46HWeUs55zFVUE3gU9EtSKxs3
         KKiDi/9IC0XHnZzNRdmAEdJJrYje5jViRKttsY5FDTcyQVDqVRRgebVqM36+vgj1SIpf
         xbgkJX5AfC6SyGyHQcSGEUb1RBp3KQLrsdq6O+ZbS+NAkcLMP/DHJFDjeE05FKE354L4
         Eurw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688081485; x=1690673485;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jX3uyxi3o7Cn+ainvMt/FKjaB5YOfdWc3OS6FYL7hik=;
        b=JzB4BBQO3ebfErprFgGRqk5rVjTqQrIOFMuITj3+qZvDICrvrAdfQSzRTi6qzwNwDP
         QhJxi2psU9EMX+gOjaw1rnyzZdf9g5cvdNEMy/PO/QM7YeQh1bCvpVHbdEyBhDjlohEw
         QZ/mcv31EMu6wu1kZ5PS4pDFcATMw9ewc+LMsAAQkcRQIQ7gc0l0a3pgb3D5xtNSRlrM
         645M75VzJ39VLgiGNJIkhW/Z26AlcqvXvqBlNStT9AM0k25eGO2Vj6ujbHyvKPLt8vDb
         qZComhO1ArnWJnqXCIzt9RHNR+f6LK8aIQ4z8KPUDYuKhJilJRwX/PmlBlXq53TMNo+L
         Evog==
X-Gm-Message-State: ABy/qLZXXTN2uWruYg8cyuxppoSmA1OIqDqz2UoiMsZDN6R7/cPm6pt/
	q9fORtlwhBGWeBQC64AdybFsAGXFxzq5du8REAY=
X-Google-Smtp-Source: APBJJlEgcfXmZx0zuoNHGLBqqjacZ9lTZI1kjLjW1NLR7G7FXPakEI7cR4cd3hoM7Q9ykhhO/BwHU9wmiflySdJ/UjA=
X-Received: by 2002:a05:6512:3711:b0:4f9:b31b:db6 with SMTP id
 z17-20020a056512371100b004f9b31b0db6mr875436lfr.9.1688081484295; Thu, 29 Jun
 2023 16:31:24 -0700 (PDT)
MIME-Version: 1.0
References: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com>
 <C6A57FB3-CB76-4F3B-AC3B-9C3FF871CEDA@gmail.com> <CAEXYVK4DVph5nc1prtZmy5nyJLF_UcxLDysyEhW7O-tdGb+Spg@mail.gmail.com>
 <CACwKM9KoJMn=6ZEB195eTKDJDbN4F3jgKrmA_sGA7bjAGFSrHg@mail.gmail.com>
In-Reply-To: <CACwKM9KoJMn=6ZEB195eTKDJDbN4F3jgKrmA_sGA7bjAGFSrHg@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 29 Jun 2023 19:31:13 -0400
Message-ID: <CAEXYVK7vjfMwF_kEJT+DLDhwbuoqvxBkkrC9OPh-iHjufaWxWA@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: FA5RDMU73SI3QXGSQ2JUGAUAJ3AU5D57
X-Message-ID-Hash: FA5RDMU73SI3QXGSQ2JUGAUAJ3AU5D57
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FA5RDMU73SI3QXGSQ2JUGAUAJ3AU5D57/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8590277746504750385=="

--===============8590277746504750385==
Content-Type: multipart/alternative; boundary="00000000000039344005ff4d1995"

--00000000000039344005ff4d1995
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Strange - was it split between two different UHD installations possibly?

Is the main UHD installation in one place whereas the image_builder was
placed somewhere else?

I install to alternative locations so I don't install to /usr, so could
there be a UHD install issue where it installs to the system in two
different locations?

Brian

On Thu, Jun 29, 2023 at 5:17=E2=80=AFPM Paul Atreides <maud.dib1984@gmail.c=
om>
wrote:

> Thanks Brian, figured it out. Was a PYTHONPATH issue. For some reason my
> img_builder was in /usr/local/lib/python3.10/site-packages.
> Seems to be working now.
>
>
>
> On Thu, Jun 29, 2023 at 2:41=E2=80=AFPM Brian Padalino <bpadalino@gmail.c=
om>
> wrote:
>
>> UHD seems to want to install to local/lib/python3.10-dist-packages/uhd -
>> do you have that as part of your installation?
>>
>> I have an imgbuilder directory and image_builder.py inside there.
>>
>> You have an issue with, specifically, from uhd.imgbuilder import
>> image_builder?
>>
>> Brian
>>
>> On Thu, Jun 29, 2023 at 2:34=E2=80=AFPM Paul Atreides <maud.dib1984@gmai=
l.com>
>> wrote:
>>
>>> Yea, I=E2=80=99m an intermittent RFNoC user.  no issues building UHD, j=
ust
>>> wondering if the image builder module isn=E2=80=99t getting included in=
 the source
>>> build.
>>>
>>> <end transmission>
>>>
>>> > On Jun 29, 2023, at 11:51, Marcus D. Leech <patchvonbraun@gmail.com>
>>> wrote:
>>> >
>>> > =EF=BB=BFOn 29/06/2023 11:44, jmaloyan@umass.edu wrote:
>>> >>
>>> >> In my experience, getting UHD to run on Ubuntu 22 is a huge hassle.
>>> If you can, I recommend downgrading to 20.04(but no lower) and it shoul=
d
>>> install fairly easily.
>>> >>
>>> >>
>>> > I built UHD 4.4.0.0 on 22.04 just the other night, and installed it
>>> alongside the version that comes with Ubuntu 22.04
>>> >   (UHD 4.1.0.5).  I haven't tested it extensively (because the issue
>>> was about building it).
>>> >
>>> > Now, I'm not an RFNOC guy, so I didn't exercise any of that stuff...
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000039344005ff4d1995
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Strange - was it split between two different UHD installat=
ions possibly?<div><br></div><div>Is the main UHD installation in one place=
 whereas the image_builder was placed somewhere else?</div><div><br></div><=
div>I install to alternative locations so=C2=A0I don&#39;t install to /usr,=
 so could there be a UHD install issue where it installs to the system in t=
wo different locations?</div><div><br></div><div>Brian</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 29,=
 2023 at 5:17=E2=80=AFPM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@g=
mail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks Brian, figure=
d it out. Was a PYTHONPATH issue. For some reason my img_builder was in /us=
r/local/lib/python3.10/site-packages. <br></div><div>Seems to be working no=
w.</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 29, 2023 at 2:41=E2=80=AF=
PM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_bla=
nk">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">UHD seems to want to install to loc=
al/lib/python3.10-dist-packages/uhd - do you have that as part of your inst=
allation?<div><br></div><div>I have an imgbuilder directory and image_build=
er.py inside there.</div><div><br></div><div>You have an issue with, specif=
ically, from uhd.imgbuilder import image_builder?</div><div><br></div><div>=
Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Jun 29, 2023 at 2:34=E2=80=AFPM Paul Atreides &lt;<a hre=
f=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Yea, I=E2=80=99m an intermittent RFNoC user.=C2=A0 no issues building UHD,=
 just wondering if the image builder module isn=E2=80=99t getting included =
in the source build. <br>
<br>
&lt;end transmission&gt;<br>
<br>
&gt; On Jun 29, 2023, at 11:51, Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote=
:<br>
&gt; <br>
&gt; =EF=BB=BFOn 29/06/2023 11:44, <a href=3D"mailto:jmaloyan@umass.edu" ta=
rget=3D"_blank">jmaloyan@umass.edu</a> wrote:<br>
&gt;&gt; <br>
&gt;&gt; In my experience, getting UHD to run on Ubuntu 22 is a huge hassle=
. If you can, I recommend downgrading to 20.04(but no lower) and it should =
install fairly easily.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt; I built UHD 4.4.0.0 on 22.04 just the other night, and installed it al=
ongside the version that comes with Ubuntu 22.04<br>
&gt;=C2=A0 =C2=A0(UHD 4.1.0.5).=C2=A0 I haven&#39;t tested it extensively (=
because the issue was about building it).<br>
&gt; <br>
&gt; Now, I&#39;m not an RFNOC guy, so I didn&#39;t exercise any of that st=
uff...<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000039344005ff4d1995--

--===============8590277746504750385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8590277746504750385==--
