Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3BC742F64
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 23:18:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D986383F6C
	for <lists+usrp-users@lfdr.de>; Thu, 29 Jun 2023 17:18:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688073494; bh=4rZb21BkWSBzGsDz1oQa7JNyY/m5HPh2ERhmPCGdM30=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=m3+q3f6N71QHHe9P3FrSOoH/LqvV4HBBF5X+edNmSY7YM7fe8zii0dTLoQuau1Ww3
	 HgklxBLe4/uGBbgZtlEjg4qlHRI5uKxcgQnjeHY3maXqc+NIYotT0++VaTpaUpmoSx
	 VYZ3yREYKC8l1S/GMNuvo3jz+Xbf5hfsrI0VKqAoCrdQK5dip1EnnqCci1Z20KwY1L
	 AJS6vp9GrzmTmMPpL9p/DimNBxU9JVxMzTh2ln+1yio6XxarI6TAFU9w6fKdAccyCG
	 65G+D3hDHuOZE8mINViE+EvApVI1YobK32b9pNGl+pS0h9bVzPjpa0F7JVdbtd9veV
	 iJ8daNpOM0j/A==
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by mm2.emwd.com (Postfix) with ESMTPS id D9ECE38116C
	for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 17:17:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YyTbhBwI";
	dkim-atps=neutral
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-262ea2ff59dso695727a91.0
        for <usrp-users@lists.ettus.com>; Thu, 29 Jun 2023 14:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688073436; x=1690665436;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wjHjXLW45IqFuSIXhAihhfIskWnVNw+uILUN9L4Ctgc=;
        b=YyTbhBwIC6lw0bGs1g06gyeJ9itvtOtdWVhMNgHT6F3prPHMBKSvxr4N4beuaAM4jC
         BViVa/JYB8/ZwGYuHR3jOijt3OiCwte/CXrR4A2OWQbJGufI1krPbQteapYCAe07pCve
         X6pAYELL3B6pJnOv11bQIh9tMEb/78qEt6i/5OpwOXphqelwmEGILZKps+nm7ShF+fDx
         lUZs+AaGZ7MPvZdg4HI6+L7LSd/2mvz90T6XDt6l6oBKSUUcvvqWCIS5jwxyquYhfP8u
         y13RaE8+sH6sMOvMNxhCx9lEIdJLFh1GeD4EU63fOz2N1ARLJAiy3+gdK2qyJkfUkYaA
         PydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688073436; x=1690665436;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wjHjXLW45IqFuSIXhAihhfIskWnVNw+uILUN9L4Ctgc=;
        b=lVYzp8l/SvYCwv4yjXBtP8mo5XnAINsF2K/DJ7WOPZ07GxwGZk8hTNeqGW4a/muw24
         o/gqAb3eEKQxnh57mN9E+G6358zxNbQ/2h03weNoo8NdvAnGqH02cMAPD3B+8kPmGmoW
         ayZaYXXDGBMDUA9FYBgS948uDNXW09J1UW+DFGgEgWIPWca2ZPTx1GB5tP/MG4Te1ZZO
         x3lxKak1cux4twwq7ZaQMBpzflf1it4sXTEWk+T2Uz74vsV5Tnlj9Q5Lp50BRooYLwqh
         EHG7VCMZjtdL56XZ8WZQTa5FNeyugtpgWfr+HUFo3441qrDQd1FuVaoJx4cvpKXwmBZq
         ApPw==
X-Gm-Message-State: ABy/qLZQaZ4AH0HdCfJ0feV+jT12IRkIhknoeL7vHhsoPJ9LYfDW2mTF
	/jDpvondXdUteQhFTyFhEExR5YXOXebnLhOF4ew=
X-Google-Smtp-Source: APBJJlFJ8nB2krxgL1CMVkGu99gY0sPiuk6XoHsAQcBkoR58ks8HP14dT01a7DPdZb7CxYHPjSuJKHvExX6qRVqAV98=
X-Received: by 2002:a17:90a:7446:b0:262:e074:49c1 with SMTP id
 o6-20020a17090a744600b00262e07449c1mr454521pjk.40.1688073435642; Thu, 29 Jun
 2023 14:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <e4210d55-383f-d271-0788-4dedf32b71bf@gmail.com>
 <C6A57FB3-CB76-4F3B-AC3B-9C3FF871CEDA@gmail.com> <CAEXYVK4DVph5nc1prtZmy5nyJLF_UcxLDysyEhW7O-tdGb+Spg@mail.gmail.com>
In-Reply-To: <CAEXYVK4DVph5nc1prtZmy5nyJLF_UcxLDysyEhW7O-tdGb+Spg@mail.gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Thu, 29 Jun 2023 17:26:27 -0400
Message-ID: <CACwKM9KoJMn=6ZEB195eTKDJDbN4F3jgKrmA_sGA7bjAGFSrHg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: N6P66QAFMYUHTQDECWDUWV454OUQVRGB
X-Message-ID-Hash: N6P66QAFMYUHTQDECWDUWV454OUQVRGB
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N6P66QAFMYUHTQDECWDUWV454OUQVRGB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7564531356374675879=="

--===============7564531356374675879==
Content-Type: multipart/alternative; boundary="0000000000007c815105ff4b39d5"

--0000000000007c815105ff4b39d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Brian, figured it out. Was a PYTHONPATH issue. For some reason my
img_builder was in /usr/local/lib/python3.10/site-packages.
Seems to be working now.



On Thu, Jun 29, 2023 at 2:41=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> UHD seems to want to install to local/lib/python3.10-dist-packages/uhd -
> do you have that as part of your installation?
>
> I have an imgbuilder directory and image_builder.py inside there.
>
> You have an issue with, specifically, from uhd.imgbuilder import
> image_builder?
>
> Brian
>
> On Thu, Jun 29, 2023 at 2:34=E2=80=AFPM Paul Atreides <maud.dib1984@gmail=
.com>
> wrote:
>
>> Yea, I=E2=80=99m an intermittent RFNoC user.  no issues building UHD, ju=
st
>> wondering if the image builder module isn=E2=80=99t getting included in =
the source
>> build.
>>
>> <end transmission>
>>
>> > On Jun 29, 2023, at 11:51, Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>> >
>> > =EF=BB=BFOn 29/06/2023 11:44, jmaloyan@umass.edu wrote:
>> >>
>> >> In my experience, getting UHD to run on Ubuntu 22 is a huge hassle. I=
f
>> you can, I recommend downgrading to 20.04(but no lower) and it should
>> install fairly easily.
>> >>
>> >>
>> > I built UHD 4.4.0.0 on 22.04 just the other night, and installed it
>> alongside the version that comes with Ubuntu 22.04
>> >   (UHD 4.1.0.5).  I haven't tested it extensively (because the issue
>> was about building it).
>> >
>> > Now, I'm not an RFNOC guy, so I didn't exercise any of that stuff...
>> >
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000007c815105ff4b39d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Brian, figured it out. Was a PYTHONPATH issue.=
 For some reason my img_builder was in /usr/local/lib/python3.10/site-packa=
ges. <br></div><div>Seems to be working now.</div><div><br></div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Jun 29, 2023 at 2:41=E2=80=AFPM Brian Padalino &lt;<a href=3D"=
mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">UHD seems t=
o want to install to local/lib/python3.10-dist-packages/uhd - do you have t=
hat as part of your installation?<div><br></div><div>I have an imgbuilder d=
irectory and image_builder.py inside there.</div><div><br></div><div>You ha=
ve an issue with, specifically, from uhd.imgbuilder import image_builder?</=
div><div><br></div><div>Brian</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 29, 2023 at 2:34=E2=80=AFPM =
Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blan=
k">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Yea, I=E2=80=99m an intermittent RFNoC user.=C2=A0=
 no issues building UHD, just wondering if the image builder module isn=E2=
=80=99t getting included in the source build. <br>
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

--0000000000007c815105ff4b39d5--

--===============7564531356374675879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7564531356374675879==--
