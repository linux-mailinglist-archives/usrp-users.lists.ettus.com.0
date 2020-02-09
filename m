Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684D156B57
	for <lists+usrp-users@lfdr.de>; Sun,  9 Feb 2020 17:31:15 +0100 (CET)
Received: from [::1] (port=38472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j0pUD-0001AF-Fg; Sun, 09 Feb 2020 11:31:09 -0500
Received: from mail-lf1-f44.google.com ([209.85.167.44]:46591)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wandrewp@gmail.com>) id 1j0pU9-000158-Mi
 for usrp-users@lists.ettus.com; Sun, 09 Feb 2020 11:31:05 -0500
Received: by mail-lf1-f44.google.com with SMTP id z26so2443768lfg.13
 for <usrp-users@lists.ettus.com>; Sun, 09 Feb 2020 08:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vX+iLwUKwsdvlgNozqoGA5qr0f0YcmVOuKnjq0pu+KA=;
 b=uW/XqDnRQIH2ugA/Oq08dad7txevhdevdK0d7kgTZV74CqpmQdZ5ws+sKL/nhlAW+8
 Ot0dC6jT2WAp8Y5GVhvbDsmfQgB1deBX09aQBgT3fzZ7gPup+Hm6d7Sp6B2SmvivwU5T
 BOZWwiE3rMdJcQUQkuxuSYK+xAIiuojk8HlofIq7yFVG4NHj5FBObti63hfW00dGfCx0
 bjB7PMKYUFKXXWOl+qzRIVc2D3eK/H/X303GJ5HXlmhYzA8bLg6HWRYyi8Gl2eISsUCf
 yKwEjlnpd9LeEilOFbJ0eSYJC54ZpC/Ietu2ngIz1V1LQWAonVlpPbkt/ooM42CtoaJK
 d50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vX+iLwUKwsdvlgNozqoGA5qr0f0YcmVOuKnjq0pu+KA=;
 b=ZoSwx9DwiMgVPJX10Z8d9D87g0NcR3/EwPOYJi+Z8J9FMDXSpZ2uiaOQJzE5pVey5T
 CzXUOLol8lMDj4jko3re/+rTyMEJ6SNn5x4Q47bHPlDWNoMdysGtgg2903axomYdg1wo
 UWQ2C+gNr7xhthjT8tiH9wfGzZtisauUMAMR2yTDgWUY1zNc7P81ljkJZIH1IfadofVq
 vL/FAE0UxzrRYWujD4eKRhPIeN/F9ypJLuQYU+HOfkDrysC9beAoU7CK3nsDbPI5wSSu
 rT+WKm/9kwiDZBq0WnhMBgFOFRSXJoCLeZH5bof4pxm3JTWPqTN8EJhCBCRnXY+zDbjc
 lRWw==
X-Gm-Message-State: APjAAAV8/zVgxt8KWZG8YVn9HHuXWen2xEneCOUsnZVmpSB7BmPSrzZ7
 InhzJfibjobd9t/W+vim9sZpYGc+bz8dHzDAWB4=
X-Google-Smtp-Source: APXvYqz216fVBYVB+1glG3CVx3bSD3wVIS0TRPe8UzlP8aLG8UOlA89f8vAvUW6h6/ZOflxtU8DI3BYu7+OQun6Ylmc=
X-Received: by 2002:a19:f811:: with SMTP id a17mr3718021lff.182.1581265824245; 
 Sun, 09 Feb 2020 08:30:24 -0800 (PST)
MIME-Version: 1.0
References: <CAB50+dRf+cguaJvQwr-rZr8nXqHxqBqYh7=8-YXp_w7rG2=t5Q@mail.gmail.com>
 <CA+JMMq_jm5ixJ6ZDMk6QkNVrGpX+LS+f4pCUBR4uBeSL_ztnKA@mail.gmail.com>
In-Reply-To: <CA+JMMq_jm5ixJ6ZDMk6QkNVrGpX+LS+f4pCUBR4uBeSL_ztnKA@mail.gmail.com>
Date: Sun, 9 Feb 2020 11:30:13 -0500
Message-ID: <CAB50+dReYWSmUpLJy9KR_y98URDVqa_f-e-5ET-OttBfS979Yw@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] noc_block_addsub_tb.sv - number of samples/packets.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andrew Payne <wandrewp@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4739546539431589687=="
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

--===============4739546539431589687==
Content-Type: multipart/alternative; boundary="000000000000bfeddf059e2723d1"

--000000000000bfeddf059e2723d1
Content-Type: text/plain; charset="UTF-8"

Yeah but if I change the upper limit of the transmit and receive loops to
be 256, none of the results come back from noc_block_addsub.

On Sat, Feb 8, 2020 at 15:50 Nick Foster <bistromath@gmail.com> wrote:

> The NOC bus is 64 bits wide. This means each item in the testbench data
> array is 2 samples {16i, 16q, 16i, 16q}. The testbench is failing because
> you're reading past the end of the input data array.
>
> On Sat, Feb 8, 2020 at 5:04 AM Andrew Payne via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hello,
>>
>> I'm running and slightly modifying the simulation testbench for the
>> RFNOC addsub module.  I've noticed that the for loop in test case 4
>> goes to SPP/2 - that upper limit is what I'm modifying to learn how
>> packets work in the NOC shell.  So it passes as a stock testbench, and
>> after modifying it to run to SPP (256), the entire test case 4 fails,
>> with every return from the noc block being "x" (undriven as I
>> understand it).  Why does the test fail when I increase the upper
>> limit of tests?
>>
>> Thanks,
>> Andrew
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000bfeddf059e2723d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Yeah but if I change the upper limit of the transmit=
 and receive loops to be 256, none of the results come back from noc_block_=
addsub.=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, Feb 8, 2020 at 15:50 Nick Foster &lt;<a hre=
f=3D"mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">The NOC bus is 64 bits =
wide. This means each item in the testbench data array is 2 samples {16i, 1=
6q, 16i, 16q}. The testbench is failing because you&#39;re reading past the=
 end of the input data array.<br></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb 8, 2020 at 5:04 AM Andrew Payn=
e via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I&#39;m running and slightly modifying the simulation testbench for the<br>
RFNOC addsub module.=C2=A0 I&#39;ve noticed that the for loop in test case =
4<br>
goes to SPP/2 - that upper limit is what I&#39;m modifying to learn how<br>
packets work in the NOC shell.=C2=A0 So it passes as a stock testbench, and=
<br>
after modifying it to run to SPP (256), the entire test case 4 fails,<br>
with every return from the noc block being &quot;x&quot; (undriven as I<br>
understand it).=C2=A0 Why does the test fail when I increase the upper<br>
limit of tests?<br>
<br>
Thanks,<br>
Andrew<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000bfeddf059e2723d1--


--===============4739546539431589687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4739546539431589687==--

