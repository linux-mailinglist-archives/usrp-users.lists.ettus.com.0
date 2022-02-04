Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 961F44AA296
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 22:49:34 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DB86385F21
	for <lists+usrp-users@lfdr.de>; Fri,  4 Feb 2022 16:49:33 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="QqFYBgM3";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A4E83385CBC
	for <usrp-users@lists.ettus.com>; Fri,  4 Feb 2022 16:48:37 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id i10so22469789ybt.10
        for <usrp-users@lists.ettus.com>; Fri, 04 Feb 2022 13:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zez1mmqlBhK2OpVBjn9syodCAsYFXEXKujkhPzycN5s=;
        b=QqFYBgM3K3ygL2nVBoFozd/39mH7QPVfHEfvqycMOqEPay2E17aiXmTGtGTvF1REl9
         arO5EWeGMyW4se68MWLK/OMtr1TjZ/hVGssth52fHW7yk1D85MKdxhB23hq7HlFRIjOB
         ariFQwI2Tx9e5+4EfYhk8iO/AzUhQJ+FODlV0P7k2IDDyG4tNCmBCho72HI8X2hZnocp
         8usii9LlnzyqwM5nwjcUMLfVcVQlJfjkOTAHd9dIFXorrB8W96L8HdD1H9dkOl+A4K3w
         HhxgH7Tl3it1zg70B1BzJk5sIyy3FdN5yhj4bbJijWXplcWFbJdkXEoW4P4B6O3C56MZ
         8Ddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zez1mmqlBhK2OpVBjn9syodCAsYFXEXKujkhPzycN5s=;
        b=zxOGaOcWD2nRJfpWxewhRBf4u4Y9NxcD5zgnMsYOS6FThPbzmn+UKtPpFA3zanziI9
         sALb/dA/2L96QTo2Xr7KxrasjEcgap82v5A42ko38E1W2m4JOdKT9yp3EERSKUJE5STm
         q1Fk7I9ArWegdCBVBJlGMgpsms2AQFGsGgLzNzwk3jOV3ohmRGMEdg5GsjEAVmCSmEjY
         Kc298VD6mLfEUMxX1/3SEVlb3gRqQshEcmXzazBL8eCdfDNr34tYqUzCX/VOLeMKqm7i
         yxDvc4X9RBDOztgoAFsmSBsix2zP2B3hPAgk48Ue/IRwfoLrn39XhGnWYrlws0aJv3mk
         1iXw==
X-Gm-Message-State: AOAM531dX5J7XDum/Q/HkXkDhusAB2XQ2W7SmmK3WTLi+gCjJXgNjdxu
	dHRQ0da76o1fIFaDgCwJD3iUfg7Xw0i2JgEba7XAnAH40mxCkg==
X-Google-Smtp-Source: ABdhPJzOngu2tZxnved5jvn0hwGg1s3WK5pQg9497WWD4wxlvvOeXM95q3LUNEINe5Ynpoy/A11kClMt4t3XluBqYRw=
X-Received: by 2002:a81:2542:: with SMTP id l63mr1105182ywl.38.1644011316762;
 Fri, 04 Feb 2022 13:48:36 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3uE+=fDJwuaOP0X2qCqGL1wvxTR=ghC=Udo4waZe3y_6w@mail.gmail.com>
In-Reply-To: <CAMMoi3uE+=fDJwuaOP0X2qCqGL1wvxTR=ghC=Udo4waZe3y_6w@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 4 Feb 2022 16:48:25 -0500
Message-ID: <CAB__hTRB98LJD6nQ69EeURkevq3Hc+f64GX7ZLkNFiVWbSG-zg@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Message-ID-Hash: V4G6VEU4BNPH5OVRV24AUY4QNHAHV2D5
X-Message-ID-Hash: V4G6VEU4BNPH5OVRV24AUY4QNHAHV2D5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: The source of O's
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V4G6VEU4BNPH5OVRV24AUY4QNHAHV2D5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1748058299358409788=="

--===============1748058299358409788==
Content-Type: multipart/alternative; boundary="0000000000008bc55505d73836d4"

--0000000000008bc55505d73836d4
Content-Type: text/plain; charset="UTF-8"

Hi Richard,
I don't know the answer but I have a couple of comments / questions:
1) do you have cables that would enable you to eliminate your switch (at
least for debugging purposes)? I'm thinking of some type of NIC re-config
and breakout cable that would allow your NIC to have multiple 10Gbe
connections such that you could connect directly to several N310 SFP+
2) you mentioned that you connected both SFP+ cables to each N310.  If you
are only using 2 channels, you can get by with only one 10Gbe.  I think it
is worth a try to re-run your tests without using the "second_addr"
parameter such that the 2nd SFP+ port is unused
3) Have you optimized your server with the rmemmax and rx descriptors  that
are mentioned in the Ettus performance tuning tips?
4) How are you evaluating? If you aren't using benchmark_rate, I would
suggest trying this.


On Fri, Feb 4, 2022 at 3:27 PM Richard Bell <richard.bell4@gmail.com> wrote:

> Hello,
>
> I know that when I see O's (overruns) in the terminal it means my host
> processing is not keeping up with the sample stream coming in from the
> USRP. Samples are being dropped because the host is too slow to keep up.
>
> I'm wondering if there is a test I can run that would reveal the cause of
> the O's on my server. What is it on my server that is the bottleneck? Do
> O's mean the problem is buffer overruns within the NIC itself? Does it mean
> buffer overrun after the CPU? Does it mean buffer overrun while filling up
> ram?
>
> I am using a 2 port QFSP+ 100G NIC with both ports attached via QSFP+
> cables to a 100G switch. From the switch I connect 5 USRP n310's using
> their SFP+ ports and SFP+ cables. Each of the n310's dual SFP+ ports are
> connected to the 100G switch and in this configuration I am able to use 2
> of the 5 n310's simultaneously with 2 receive antennas per radio sampling
> at 125 MHz without any O's. When I increase the number of radios above
> this, I start seeing O's. The server is a 64 core machine with 200G RAM.
>
> I calculate the total throughput required to keep up with 5 n310's
> sampling at 125 MHz from 2 antennas with 16 bit I and 16 bit Q coming off
> the wire at the server as:
> (5 radios)*(2 antennas)*(125 mega samples per second)*(32 bits per complex
> sample)=40 Gbit/s or just 5 GByte/s. This is well below the capability of
> the network and I assume a high end 64 core server, unless I'm overlooking
> something?
>
> Any help or feedback is appreciated.
>
> Richard
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008bc55505d73836d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Richard,</div><div>I don&#39;t know the answer but=
 I have a couple of comments / questions:</div><div>1) do you have cables t=
hat would enable you to eliminate your switch (at least for debugging purpo=
ses)? I&#39;m thinking of some type of NIC re-config and breakout cable tha=
t would allow your NIC to have multiple 10Gbe connections such that you cou=
ld connect directly to several N310 SFP+</div><div>2) you mentioned that yo=
u connected both SFP+ cables to each N310.=C2=A0 If you are only using 2 ch=
annels, you can get by with only one 10Gbe.=C2=A0 I think it is worth a try=
 to re-run your tests without using the &quot;second_addr&quot; parameter s=
uch that the 2nd SFP+ port is unused</div><div>3) Have you optimized your s=
erver with the rmemmax=C2=A0and rx descriptors=C2=A0 that are mentioned in =
the Ettus performance tuning tips?</div><div>4) How are you evaluating? If =
you aren&#39;t using benchmark_rate, I would suggest trying this.</div><div=
><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Feb 4, 2022 at 3:27 PM Richard Bell &lt;<a href=3D"mailto:rich=
ard.bell4@gmail.com">richard.bell4@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br=
></div><div>I know that when I see O&#39;s (overruns) in the terminal it me=
ans my host processing is not keeping up with the sample stream coming in f=
rom the USRP. Samples are being dropped because the host is too slow to kee=
p up.=C2=A0</div><div><br></div><div>I&#39;m wondering if there is a test I=
 can run that would reveal the cause of the O&#39;s on my server. What is i=
t on my server that is the bottleneck? Do O&#39;s mean the problem is buffe=
r overruns within the NIC itself? Does it mean buffer overrun after the CPU=
? Does it mean buffer overrun while filling up ram?</div><div><br></div><di=
v>I am using a 2 port QFSP+ 100G NIC with both ports attached via QSFP+ cab=
les to a 100G switch. From the switch I connect 5 USRP n310&#39;s using the=
ir SFP+ ports and SFP+ cables. Each of the n310&#39;s dual SFP+ ports are c=
onnected to the 100G switch and in this configuration I am able to use 2 of=
 the 5 n310&#39;s simultaneously with 2 receive antennas per radio sampling=
 at 125 MHz without any O&#39;s. When I increase the number of radios above=
 this, I start seeing O&#39;s. The server is a 64 core machine with 200G RA=
M.=C2=A0</div><div><br></div><div>I calculate the total throughput required=
 to keep up with 5 n310&#39;s sampling at 125 MHz from 2 antennas with 16 b=
it I and 16 bit Q coming off the wire at the server as:<br>(5 radios)*(2 an=
tennas)*(125 mega samples per second)*(32 bits per complex sample)=3D40 Gbi=
t/s or just 5 GByte/s. This is well below the capability of the network and=
 I assume a high end 64 core server, unless I&#39;m overlooking something?<=
/div><div><br></div><div>Any help or feedback is appreciated.=C2=A0</div><d=
iv><br></div><div>Richard</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000008bc55505d73836d4--

--===============1748058299358409788==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1748058299358409788==--
