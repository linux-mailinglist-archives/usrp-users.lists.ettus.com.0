Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A57E0111B12
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2019 22:38:23 +0100 (CET)
Received: from [::1] (port=53648 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1icFs6-00027o-Uw; Tue, 03 Dec 2019 16:38:14 -0500
Received: from mail-oi1-f174.google.com ([209.85.167.174]:43842)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1icFs3-0001yq-A5
 for usrp-users@lists.ettus.com; Tue, 03 Dec 2019 16:38:11 -0500
Received: by mail-oi1-f174.google.com with SMTP id t25so2548999oij.10
 for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2019 13:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gyVnHFd0B9xoiexCYjfqT0A/MXOUx/DlBO2JQXI0oIs=;
 b=CimtKrrMP1fp/P+Vy+jLXpBbzhpCZTpSSqUcBT0VCMOekfl8eLrhmRAKK9qR57TmJI
 0u3AM/GNj1thD1cIQDSxAWGb92qI6SxiRHRaKcuMrVqEEPjxPfH76ThyBHutcRlW58W5
 E7A5pXB2FTOqw/izWub6B8n9qhAO83yjxvGoO0qmtUhFysL3iZ4wfhCix+nVEi/TEV4r
 7IMGJRYUMjpECYcLD6smHKln86+gsHlwTvaDa0JuBjP0jS8KHRArZ9XsbB/R7Qt6PCZl
 dl1C9YsaXlspMQHSHY3bUSZVnzhNQJx49e3wmfXwUIwKAOh0gVNLwi8kyTTeKoPn5Qv0
 4GHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gyVnHFd0B9xoiexCYjfqT0A/MXOUx/DlBO2JQXI0oIs=;
 b=m6VUwu+B6MqSit4OX6EaKcencyp0uLNLATrmQ/LXZ7R7Rjtl9Vdw94MvvZRnCO8vak
 LUzCguLVUuacffqXxQXQhq7ETgJX1ywqgBu3YcPII8nhF1zOJOK5cmU2hIwu2shsa8YC
 00wzXm2lyZXfFWc28gZSq2N4i+rdChf2L0aysERU7D6wx1HaHKyhlrYhUaQaztaFrPp8
 B23pPQdfSgl4u8ohyCRpq/oNSDmKAwq7I3iY4lX/qem4LQwSeavgWaFDhPTiU5ZNkBDj
 tuP4F5qSWEQ8X33HqHTg80DubU0alG3WUB+hDWt4Z9jSNFoWaQuWtLx+0pzEl7MAIaN0
 bNtQ==
X-Gm-Message-State: APjAAAUW7VA+vIAXDMc+lRU5+st+h9tNgrx2s8GYI7gtlU3MO92g5DA1
 cX07raKe3mMArdYo1+Gsing9Nc4NXMjzFic68+Q=
X-Google-Smtp-Source: APXvYqyGeEsnHaZxPhXNVriTwvz8M4hOuZJStQX8n1CY43UEsKw4ZmmVGyRSG/ul7Eiw9w5p90QMRJYpJ6pr9rrKsoQ=
X-Received: by 2002:aca:b286:: with SMTP id b128mr75029oif.1.1575409050543;
 Tue, 03 Dec 2019 13:37:30 -0800 (PST)
MIME-Version: 1.0
References: <D7790F43D25BB04383227944C1AC1891010C0FCB4E@MXSRV2.fe.hhi.de>
 <CAEXYVK5bF4PXkRcAbY5NAJu80xZxR0uak2S89vYRO1SaE28ECA@mail.gmail.com>
 <BN6PR19MB16353307DC5C994FC836EB37A4420@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB16353307DC5C994FC836EB37A4420@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Tue, 3 Dec 2019 16:37:18 -0500
Message-ID: <CAEXYVK5PS_hscpMwWogAj24PQu4oa-kxGNOi28JVhFh6yn_96Q@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] IQ-sample with a magnitude larger than 1.0
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1458689386931860682=="
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

--===============1458689386931860682==
Content-Type: multipart/alternative; boundary="000000000000d56c520598d380df"

--000000000000d56c520598d380df
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 3, 2019 at 1:53 PM Jeff S <e070832@hotmail.com> wrote:

> I'm fairly new to GNURadio, so I may have (most likely) missed it, but I
> had the same problem that was fixed by multiplying the complex number going
> into my sink by 0.25 to get my QPSK modulation to work on my X310.  Since
> doing that, I have found references to over driving the TX on this list.
> Is the [1, -1] limit an Ettus device limit, or is it a GNURadio limit?  And
> where is that documented (so I can maybe find what else I'm missing)?
>

Ettus radios.  Normalized complex values:

  https://files.ettus.com/manual/page_stream.html#stream_datatypes_cpu

If the values aren't normalized, it seems difficult to try to figure out
what "full scale" means.  Right?


>
> Also, it seems like the consensus is that going [1,-1] is still too much,
> and going less than 0.707 may be better.
>

3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is probably just
fine.  This is just the level coming out of the DAC.  Further amplification
down the line might cause other non-linearity issues, but overall you
probably want to exercise as much dynamic range as possible.

Brian

>

--000000000000d56c520598d380df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Dec 3, 2019 at 1:53 PM Jeff S &lt=
;<a href=3D"mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt; wrote:<=
br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I&#39;m fairly new to GNURadio, so I may have (most likely) missed it, but =
I had the same problem that was fixed by multiplying the complex number goi=
ng into my sink by 0.25 to get my QPSK modulation to work on my X310.=C2=A0=
 Since doing that, I have found references
 to over driving the TX on this list.=C2=A0 Is the [1, -1] limit an Ettus d=
evice limit, or is it a GNURadio limit?=C2=A0 And where is that documented =
(so I can maybe find what else I&#39;m missing)?</div></div></blockquote><d=
iv><br></div><div>Ettus radios.=C2=A0 Normalized complex values:</div><div>=
<br></div><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/manual/page_s=
tream.html#stream_datatypes_cpu">https://files.ettus.com/manual/page_stream=
.html#stream_datatypes_cpu</a></div><div><br></div><div>If the values aren&=
#39;t normalized, it seems difficult to try to figure out what &quot;full s=
cale&quot; means.=C2=A0 Right?</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Also, it seems like the consensus is that going [1,-1] is still too much, a=
nd going less than 0.707 may be better.</div></div></blockquote><div><br></=
div><div>3dB sounds like a lot to drop, but 0.1dB or even 0.5dB is probably=
 just fine.=C2=A0 This is just the level coming out of the DAC.=C2=A0 Furth=
er amplification down the line might cause other non-linearity issues, but =
overall you probably want to exercise as much dynamic range as possible.</d=
iv><div><br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div id=3D"gmail-m_6265047434519115788Signature=
"><div><div><div dir=3D"ltr"><div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div></div>

--000000000000d56c520598d380df--


--===============1458689386931860682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1458689386931860682==--

