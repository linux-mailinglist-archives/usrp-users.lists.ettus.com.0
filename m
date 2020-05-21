Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DECA11DD62B
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 20:41:40 +0200 (CEST)
Received: from [::1] (port=38944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbq8R-0000vl-Nz; Thu, 21 May 2020 14:41:39 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:42135)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jbq8O-0000Yv-Bp
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 14:41:36 -0400
Received: by mail-ot1-f41.google.com with SMTP id z3so6289153otp.9
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I4yV3/Kw8Lizg1ihWwZnI4MaemqyxNn5PW803jq4NzI=;
 b=W+S4FXjL67GlevQoAxWlHFlVQpIo+3F9eoq8bJC62QggHKc7apxAMAM4JbNMXp0m1K
 uClGAwsKl0TEQrxYzbeZ7576tN66EYzaP0W9K87SBLBQ7Tceof+bVi7/xDXRVNrTAXrT
 U+nrt+wphf6tGHyAKLiB1IC/2FB/Iqwo1auLWzcls2NFwjxfNO1OTpfpHtAtCGdAiwWj
 Rp6F++Qa7B/Jh5yvXirWXJe0GHeUIrIFT+4wsHUtV47203ShZZ5wswYRqOf11iaQp2Pt
 AaBxUBhPGc4PwHCbeyaJGnmK9Dm3UEIOEnIcu06z3dnVNNj0SLIha5n6XxnUHFXD2PWy
 k6CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I4yV3/Kw8Lizg1ihWwZnI4MaemqyxNn5PW803jq4NzI=;
 b=bksD0qBDH1aOMRVXtQ6IhGomqcxvBvjZG70UcQrfATWtnzwhA8j2cZ48zP3HZMbKrZ
 n1UuYqYXTwL97OExxcIyI9xAWjGj/P/ZPIj4FwZ6TJHdd7/0QDSVmfivuU0/mvEVBytU
 q+O94tux0maJkXG7hvt3qCTGxlGwH9GT0ZQsAkE2MX4soT87NuRTpPHN1/O12cF6GiU2
 iJflGTA0bq5vPDcJ55NkrixcpXrWTds5dqJ5V9ZNteuWw0Nl2twO0rQrm4JR45Pmm/mV
 hKyZypCpMKse7MaqZtPqCdTPbKSuEfWRBlEHj3gwysKQzRiOFZRyRnslkWJ85z5kUsP1
 aCNg==
X-Gm-Message-State: AOAM530UBRitF89w6qiBa6ENenn66oodCu1Psfs5C0gVzX0Oho5eat0c
 ek0HnU0Xhkm3ziHZDRAgLUDqvcopdRWEtUlRBiepQQ==
X-Google-Smtp-Source: ABdhPJzE+yxJkwbfPsqS5DKo9c300ZMffhaiino3J6t+fhMPzhT/Hk2Vyq5MaXkmRhiFuh/V/74UAmoZQMNRV8cDBpE=
X-Received: by 2002:a9d:7acb:: with SMTP id m11mr7902589otn.301.1590086455658; 
 Thu, 21 May 2020 11:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <1659313211.1951845.1590081096295.ref@mail.yahoo.com>
 <1659313211.1951845.1590081096295@mail.yahoo.com>
 <CAGp1hYqBDLg2dz+u8R_hVT7H2zYa+jQyvbygCjd9GsYkXJA=gg@mail.gmail.com>
 <1097641633.1970274.1590083415325@mail.yahoo.com>
In-Reply-To: <1097641633.1970274.1590083415325@mail.yahoo.com>
Date: Thu, 21 May 2020 14:40:44 -0400
Message-ID: <CAB__hTRvsssOB4Gc6SyAYw0qggR4Bd1UL+4gGcL1zmOsybrr4g@mail.gmail.com>
To: Farhan Naeem <farhan_uet08@yahoo.com>
Subject: Re: [USRP-users] N310 MIMO Configuration Help Required !
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3109245243904115414=="
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

--===============3109245243904115414==
Content-Type: multipart/alternative; boundary="0000000000005a385605a62cda18"

--0000000000005a385605a62cda18
Content-Type: text/plain; charset="UTF-8"

This should work using a 4-port card.  I use an Intel XL710 card with 4 10G
ports.  But, back to the external 10Gb switch question, I haven't used one,
but it depends upon what streaming rates you need.  If your streaming rates
are slow enough, it may work for you.  But, if you are trying to stream 8
ports simultaneously, you would be limited to 31.25MS/s since it would all
be going over the same 10Gb link. And, the switch may add other issues.

On Thu, May 21, 2020 at 1:51 PM Farhan Naeem via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
> Having a 10Gbit switch in between would not significantly impact the
> streaming would it? Also is there a requirement for the 10Gb LAN card, It
> would be expensive to purchase 2 of those cards that is available on Ettus
> webpage. Maybe purchasing a 4 port one would work.
> Is the following connection good enough to achieve 8x8 MIMO system?
> Anything I am missing here?
>
> -Farhan
> On Thursday, May 21, 2020, 01:25:53 PM EDT, Derek Steinkamp <
> derekste@gmail.com> wrote:
>
>
> You cannot run your streaming ports through a switch like that, since the
> host PC to switch link becomes a bottleneck...
>
> Streaming ports should go to NICs directly on the host system. So, to
> stream from two radios, each having a 10gig SFP link, the host would need
> two 10gb interfaces plus an additional LAN interface for the
> control/management network(sometimes this will even be OK if you are going
> wifi to where the management port is plugged in)
>
> On Thu, May 21, 2020 at 12:12 PM Farhan Naeem via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Hello,
>
> I am trying to understand how to connect two N310 devices to get a MIMO
> configuration.
>
> 1. I connect two of the SFP+ 10G Ethernet ports on each N310 device to a
> 10Gbit Ethernet switch. And connect the other end of this Ethernet switch
> to my host system.
> 2. I need additional 1Gb Ethernet switch to connect to the management
> Ethernet port of the N310 devices from my host system.
> 3. A common clock reference.
>
> I have attached a block diagram here. Thanks.
>
> Best Regards,
> Farhan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005a385605a62cda18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This should work using a 4-port card.=C2=A0 I use an Intel=
 XL710 card with 4 10G ports.=C2=A0 But, back to the external 10Gb switch q=
uestion, I haven&#39;t used one, but it depends upon what streaming rates y=
ou need.=C2=A0 If your streaming rates are slow enough, it may work for you=
.=C2=A0 But, if you are trying to stream 8 ports simultaneously, you would =
be limited to 31.25MS/s since it would all be going over the same 10Gb link=
. And, the switch may add other issues.</div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 21, 2020 at 1:51 PM Farh=
an Naeem via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div><div style=3D"font-family:verdana,helvetica,s=
ans-serif;font-size:13px"><div></div>
        <div><br></div><div dir=3D"ltr">Having a 10Gbit switch in between w=
ould not significantly impact the streaming would it? Also is there a requi=
rement for the 10Gb LAN card, It would be expensive to purchase 2 of those =
cards that is available on Ettus webpage. Maybe purchasing a 4 port one wou=
ld work.<br>Is the following connection good enough to achieve 8x8 MIMO sys=
tem? Anything I am missing here?</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">-Farhan</div>
       =20
        </div><div id=3D"gmail-m_-7680348740419949002yahoo_quoted_064651032=
5">
            <div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:13px;color:rgb(38,40,42)">
               =20
                <div>
                    On Thursday, May 21, 2020, 01:25:53 PM EDT, Derek Stein=
kamp &lt;<a href=3D"mailto:derekste@gmail.com" target=3D"_blank">derekste@g=
mail.com</a>&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"gmail-m_-7680348740419949002yiv0887370064">=
<div><div dir=3D"ltr">You cannot run your streaming ports through a switch =
like that, since the host PC to switch link becomes a bottleneck...<div><br=
 clear=3D"none"></div><div>Streaming ports should go to NICs directly on th=
e host system. So, to stream from two radios, each having a 10gig SFP link,=
 the host would need two 10gb interfaces plus an additional LAN interface f=
or the control/management network(sometimes this will even be OK if you are=
 going wifi to where the management port is plugged in)</div></div><br clea=
r=3D"none"><div><div id=3D"gmail-m_-7680348740419949002yiv0887370064yqt1603=
1"><div dir=3D"ltr">On Thu, May 21, 2020 at 12:12 PM Farhan Naeem via USRP-=
users &lt;<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
 clear=3D"none"></div><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-f=
amily:verdana,helvetica,sans-serif;font-size:13px"><div dir=3D"ltr">Hello,<=
/div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">I am trying=
 to understand how to connect two N310 devices to get a MIMO configuration.=
</div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">1. I conne=
ct two of the SFP+ 10G Ethernet ports on each N310 device to a 10Gbit Ether=
net switch. And connect the other end of this Ethernet switch to my host sy=
stem.<br clear=3D"none">2. I need additional 1Gb Ethernet switch to connect=
 to the management Ethernet port of the N310 devices from my host system.</=
div><div dir=3D"ltr">3. A common clock reference.</div><div dir=3D"ltr"><br=
 clear=3D"none"></div><div dir=3D"ltr">I have attached a block diagram here=
. Thanks.<br clear=3D"none"><br clear=3D"none">Best Regards,<br clear=3D"no=
ne">Farhan</div></div></div>_______________________________________________=
<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"mailto:USRP-users@lists.ettus.co=
m" target=3D"_blank">USRP-users@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" href=3D"http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com" target=3D"_blank">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></div>_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005a385605a62cda18--


--===============3109245243904115414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3109245243904115414==--

