Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 377B215021A
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 08:51:21 +0100 (CET)
Received: from [::1] (port=56284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyWVn-0004ZM-EZ; Mon, 03 Feb 2020 02:51:15 -0500
Received: from mail-il1-f178.google.com ([209.85.166.178]:33215)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <yend19@gmail.com>) id 1iyWVg-0004UR-JY
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 02:51:08 -0500
Received: by mail-il1-f178.google.com with SMTP id s18so11799390iln.0
 for <usrp-users@lists.ettus.com>; Sun, 02 Feb 2020 23:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W0B3DYaLKNYFag7Kdd9yigHuYu5snshUeutuD9eRYZw=;
 b=ajwzaHL8Yul3qeTjkiPvnW6pyajcZNyEZECu9bGI002jxd77XN0co2VatcT5cQCu0I
 Al6gxMUR+VH8PTb0fVuDasxc7KYp77VisztyEE55eYSWImFljuSMslU+s3jv/NcVpbpS
 Z0qfQ6REs3cVVBb8B17Lf7A2/CXb1dEHbjo1P/WwFHQJnkkzfD0eyWMCVbYfk5gQkLxU
 uxSnLYV4BR1Z1jQz8jlm45cJXWinuI5+lq9TbRQ8tIRoOZhRTshmW2qBPoqUBbVxBBQB
 1VysMaGjkkDX1/4JXboS9ei2nL1+mX3JXcgFLRpy9HdbpGBzBB5Zk0b5V4lEp/R/Kc+K
 0Jfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W0B3DYaLKNYFag7Kdd9yigHuYu5snshUeutuD9eRYZw=;
 b=RVKtLK6qA7dU37AwMxsniCwXNFr1ym5a0GzRUnfu6cM6m0iqaxCvQSNDwun2fKdAt+
 +hehNnUibLJBjLExELHurQZr3vwvvFoXEhGMEqv/f1ynscGuByCwbjrv2eUTtXOHi4Xj
 oLKISLg8a8BUXbrw1BMTHdwOy5b4Cuesuo9xObrDvq3Bbaj8Crrhg7F/Dcc8/mz5QfXY
 pg12geltP/MDJvcZoHMSTwWbBKuvblAtWb7YP3fii1JVLFbudCpBkIqKbJh2o1huhz0Z
 PgUm+6fTF3FQxJLAD3ACCldIEZIzjlWaGE9zGsiytIRGWUpQ8bAGOBWx2k0H2KWffuk/
 IV2Q==
X-Gm-Message-State: APjAAAV/r7sqd1ztk2HqPbrSsH7e8IjXZXPtVJNrbl77EUvknCAZf+1Z
 BuAs1b6A9Q2dVD+ytH9FAMvIJl8+B0nU+pcTIIk=
X-Google-Smtp-Source: APXvYqx1mu8Fw8b/O4kBg2srosJpazmFkcehQGCAhqo4NfywNyoFhpPT2rFSIOJgxgHgPFn+hwtVbLwsnG0V+yBdG1E=
X-Received: by 2002:a92:5c5c:: with SMTP id q89mr13523802ilb.66.1580716227961; 
 Sun, 02 Feb 2020 23:50:27 -0800 (PST)
MIME-Version: 1.0
References: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
 <CA+JMMq9thzdUJzLjtjsd2n96v9bE6nwZqxgoFDhu7zRYe1S4AA@mail.gmail.com>
In-Reply-To: <CA+JMMq9thzdUJzLjtjsd2n96v9bE6nwZqxgoFDhu7zRYe1S4AA@mail.gmail.com>
Date: Mon, 3 Feb 2020 09:50:15 +0200
Message-ID: <CANgrtSV_oF_GRvqjoM_ZpToc-Sz1uymVBWJY-qQKFbuj5XgiDg@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] USRP filter delay
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
From: "YENDstudio . via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "YENDstudio ." <yend19@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4933241090442886532=="
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

--===============4933241090442886532==
Content-Type: multipart/alternative; boundary="000000000000422853059da72df7"

--000000000000422853059da72df7
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

Thanks for the info. Sure, I would have to take the analog parts into
account too. I was hoping to know the latency at microseconds level at
least. I do not have an oscilloscope. Wouldn't it be possible to know the
minimum latency introduced by the digital filters at least?

Regards



On Sun, Feb 2, 2020, 23:16 Nick Foster <bistromath@gmail.com> wrote:

> You will also have latency introduced by the ADCs themselves, as well as
> baseband analog filters if applicable. If you need very accurate
> calibration of arrival time, it is best to generate an accurately timed
> calibration signal using a GPS reference. You could continue to use your
> TX/RX loopback test, adding an oscilloscope to measure the time between the
> PPS rising edge and the RF output to determine TX latency.
>
> On Sun, Feb 2, 2020, 1:41 AM YENDstudio . via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I want to know the actual timestamp of TX and RX signals at the RF
>> antenna. For this I have add/subtract the group delay introduced by digital
>> filters in the TX and the RX paths from the UHD timestamp. Through loopback
>> test, I am able to calculate the aggregate delay, but cannot know the TX
>> delay and the RX delay separately. The UHD driver has APIs to get the list
>> of filters used in the signal paths. But my calculated values do not match
>> with the loopback delay I measured. Could someone help me with this? I am
>> using USRPB200 set with 30.72 MHz master clock rate and 1.92 MHz sampling
>> rate.
>>
>> Regards!
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000422853059da72df7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Nick,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks for the info. Sure, I would have to take the analog parts =
into account too. I was hoping to know the latency at microseconds level at=
 least. I do not have an oscilloscope. Wouldn&#39;t it be possible to know =
the minimum latency introduced by the digital filters at least?</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Regards</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 2, 2020, 23:16 Nick Foster &=
lt;<a href=3D"mailto:bistromath@gmail.com">bistromath@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div>You will=
 also have latency introduced by the ADCs themselves, as well as baseband a=
nalog filters if applicable. If you need very accurate calibration of arriv=
al time, it is best to generate an accurately timed calibration signal usin=
g a GPS reference. You could continue to use your TX/RX loopback test, addi=
ng an oscilloscope to measure the time between the PPS rising edge and the =
RF output to determine TX latency.=C2=A0<br><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 2, 2020, 1:41 AM YENDstud=
io . via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi,<div dir=3D"aut=
o"><br></div><div dir=3D"auto">I want to know the actual timestamp of TX an=
d RX signals at the RF antenna. For this I have add/subtract the group dela=
y introduced by digital filters in the TX and the RX paths from the UHD tim=
estamp. Through loopback test, I am able to calculate the aggregate delay, =
but cannot know the TX delay and the RX delay separately. The UHD driver ha=
s APIs to get the list of filters used in the signal paths. But my calculat=
ed values do not match with the loopback delay I measured. Could someone he=
lp me with this? I am using USRPB200 set with 30.72 MHz master clock rate a=
nd 1.92 MHz sampling rate.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Regards!</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div></=
div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div></div>
</blockquote></div></div></div>

--000000000000422853059da72df7--


--===============4933241090442886532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4933241090442886532==--

