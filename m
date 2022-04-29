Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2265155C6
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 22:37:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D174738462E
	for <lists+usrp-users@lfdr.de>; Fri, 29 Apr 2022 16:37:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651264674; bh=l2gdDJqfrE4p5Z3lj4QG/o6gnyIKixyhj/8SjgAASMo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pFLom7jr1qCPSZxS+yhqyeK2GzzjOh1glCCD/pUXtOqsozyq1zveTbyv0aFs+n+Zz
	 SjsQkV/lFSrRY3sGR3FhOTLWXSPaS3im4HgLN4nl27P+UfZHnEHETLoLIRqXck5pMg
	 dqXyuNJG4K59IS5Iueen1DJereCtVVLQTrnZQUCwx6TLoUYEovAgFd/e5LX0Uk5O3J
	 SRvKNVmw7wCmYY9alXgTB9Af9v1hk6BvZCBNQlPfSccjtMhAcI8WHO70bKXzDXxg0y
	 /p2uu4YluuJHd97/+TAU5C6CfmkspnAglr0eFZYoad3/5R6wo3mcCDdeUoOr/GTSDl
	 /qSlURm0yUggQ==
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	by mm2.emwd.com (Postfix) with ESMTPS id D6150384302
	for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 16:36:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OGlJiLEF";
	dkim-atps=neutral
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-2f7bb893309so96755787b3.12
        for <usrp-users@lists.ettus.com>; Fri, 29 Apr 2022 13:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LDcKp+1sExpIIDP7VM0xTkMI2JhxE+n3KVTe5SbR8A4=;
        b=OGlJiLEFvIdt40FRL36nTJoG2M7mkHdHNiDRMbh56I2t/l3SQlPzmz3RQ2V/Q1DKDp
         FWWEaA7vzXldojJ4njbIU5XSXeH5ZYslbUD4/dAU4JrPsdFmXO/nVrCJhlArehN0I/5i
         IMCLyWZ+tyJxdp5dS7c6Gmn6a7J6p9vnUusAQwuFC/uwILVt2cFzCO6fAISZ2PB6/xuJ
         bcoHejOseJOUV2DMjw+vZ1XTssCKbH7Don7fkIz+rnF/JAljk7IME3BLuT1pOEhmxTkm
         FKHUcsYg3ovTiIsFhuAhJAsH6sIFaC3GUMR5tFZ/Dpl6yILQUbectRR4P8gypRJ3sjyo
         8/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LDcKp+1sExpIIDP7VM0xTkMI2JhxE+n3KVTe5SbR8A4=;
        b=HOa8LXtGXVwXzZrs7YMemeZyYA5m+Y4a8lIXgtB5prKl9+6WoyadaxNck7Uo6bhhp9
         7aCHN0JKiXSICEHsxYnBmBxC2xGrqLr9S6I9O8q57pv5lm2TMRCUy2T9uhKna9X3ug9A
         /R+xyZnR7IDvLXiG2exwh7czY+U+GbU3e9SC1SIafXQuU3q2WwmNM4itbzF5Z3cIOipD
         ABRplL4npPhiCf9N+1Bt25DLg6CkTd7X8AIo4qkNbDNY2ueNWcdnjY+hjYxPwusnQejS
         KpGisYF4UDIz53EbjEdePgZd/8rfqysBltX5CikoPHC/7VN6aCTWIkFfzRwII7e9sprG
         cguw==
X-Gm-Message-State: AOAM5339ZTH5tT+4DIcXR1WEJFneCbopHkeoR1wqV1hdcAE3z5IJIA1k
	iRaMzlXxr5qzr6GGwUuxWJL1uAa8/fSCHF4xn7eTqg==
X-Google-Smtp-Source: ABdhPJymGetSFMQp/WraqNjUEn+e/pGFz4eHDAhyezpTaX/TcEQLadxVIHFhojwgry6W/XwLJXdzuTuNwKh5rY5ZV1k=
X-Received: by 2002:a81:a082:0:b0:2f4:dc47:db55 with SMTP id
 x124-20020a81a082000000b002f4dc47db55mr1178977ywg.76.1651264612941; Fri, 29
 Apr 2022 13:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAFPzw1=vVh+cuxa5LvE7XD4HD-+sNbewsK6XsRf4PogtnThwjQ@mail.gmail.com>
 <c2bd2001-0e9b-401e-c84b-29b8e9692f1e@gmail.com>
In-Reply-To: <c2bd2001-0e9b-401e-c84b-29b8e9692f1e@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 29 Apr 2022 16:36:42 -0400
Message-ID: <CAB__hTSPxA1_yDCnm0YT6Z3bk9VpkxYWa164mXpfpM0CZ9OhRg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: IPA6K35PW6MPSEP2TDQRHW7OND4LWO3Q
X-Message-ID-Hash: IPA6K35PW6MPSEP2TDQRHW7OND4LWO3Q
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 laptop conexion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IPA6K35PW6MPSEP2TDQRHW7OND4LWO3Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8096228971187046745=="

--===============8096228971187046745==
Content-Type: multipart/alternative; boundary="000000000000af82ff05ddd10016"

--000000000000af82ff05ddd10016
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 29, 2022 at 8:35 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:
>
> On 2022-04-29 05:28, Anabel Almodovar wrote:
> > Good morning,
> > I would like to connect two USRP x310 cards to a HP Zbook 15 G3
> > laptop, which has only one RJ45 port. I need it to operate at maximum
> > speed (200MS/s), with two 10GB ethernet ports, but I can't find a way
> > to do it, is this configuration possible, what would be the right
> > option to connect the two x310 to the laptop and what would be its
> > maximum speed?
> > Thanks in advance.
> > Regards,
> > Anabel
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> That laptop has a Thunderbolt 3 port, and there are Thunderbolt 3 10Gig
> adapters on the market, but my suspicion is that there's very little
> experience with them
>    in this application.
>
> Quite apart from that, it's unlikely that your laptop has enough CPU
> horsepower and memory bandwidth to support two streams at 200Msps--even
> just recording to memory.
>

I have used a laptop with both the QNAP Thunderbolt3 adapter
<https://www.qnap.com/en-us/product/qna-t310g1s> (1 SFP+ port) and the Sonnet
TwinG SFP+
<https://www.sonnetstore.com/collections/ethernet-networking/products/twin-10gsfp-thunderbolt3-edition>
(2 SFP+ ports), but I don't have extensive experience with the highest
bandwidths. When using a laptop, I've mostly been operating with lower
bandwidths such as 25 MS/s (multi-chan).  However, today as it happens I
used the QNAP at 100 MS/s (single channel Rx only), but had some problems
running 200 MS/s. I'm guessing that I did not have something optimized
because I was seeing Sequence errors that are common when the OS is short
on Rx descriptors.

Note that the Thunderbolt 3 link itself is 40Gbps, so theoretically, it
could handle 4 10Gbe links.  A while ago, my colleague replaced the dual
10Gbe NIC that comes in the Sonnet box with an Intel XL710 which can run 4
x 10Gbe and he was able to get it to work.  I don't recall what the data
rate limit was.

Rob

--000000000000af82ff05ddd10016
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Fri, Apr 29, 2022 at 8:35 AM Marcus D. Leech &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt=
; wrote:<br>&gt;<br>&gt; On 2022-04-29 05:28, Anabel Almodovar wrote:<br>&g=
t; &gt; Good morning,<br>&gt; &gt; I would like to connect two USRP x310 ca=
rds to a HP Zbook 15 G3<br>&gt; &gt; laptop, which has only one RJ45 port. =
I need it to operate at maximum<br>&gt; &gt; speed (200MS/s), with two 10GB=
 ethernet ports, but I can&#39;t find a way<br>&gt; &gt; to do it, is this =
configuration possible, what would be the right<br>&gt; &gt; option to conn=
ect the two x310 to the laptop and what would be its<br>&gt; &gt; maximum s=
peed?<br>&gt; &gt; Thanks in advance.<br>&gt; &gt; Regards,<br>&gt; &gt; An=
abel<br>&gt; &gt;<br>&gt; &gt; ____________________________________________=
___<br>&gt; &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@li=
sts.ettus.com">usrp-users@lists.ettus.com</a><br>&gt; &gt; To unsubscribe s=
end an email to <a href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-us=
ers-leave@lists.ettus.com</a><br>&gt; That laptop has a Thunderbolt 3 port,=
 and there are Thunderbolt 3 10Gig<br>&gt; adapters on the market, but my s=
uspicion is that there&#39;s very little<br>&gt; experience with them<br>&g=
t; =C2=A0 =C2=A0in this application.<br>&gt;<br>&gt; Quite apart from that,=
 it&#39;s unlikely that your laptop has enough CPU<br>&gt; horsepower and m=
emory bandwidth to support two streams at 200Msps--even<br>&gt; just record=
ing to memory.<br>&gt;<br> <div><br></div><div>I have used a laptop with bo=
th the <a href=3D"https://www.qnap.com/en-us/product/qna-t310g1s">QNAP Thun=
derbolt3 adapter</a> (1 SFP+ port) and the <a href=3D"https://www.sonnetsto=
re.com/collections/ethernet-networking/products/twin-10gsfp-thunderbolt3-ed=
ition">Sonnet TwinG SFP+</a> (2 SFP+ ports), but I don&#39;t have extensive=
 experience with the highest bandwidths. When using a laptop, I&#39;ve most=
ly been operating with lower bandwidths such as 25 MS/s (multi-chan).=C2=A0=
 However, today as it happens I used the QNAP at 100 MS/s (single channel R=
x only), but had some problems running 200 MS/s. I&#39;m guessing that I di=
d not have something optimized because I was seeing Sequence errors that ar=
e common when the OS is short on Rx descriptors.</div><div><br></div><div>N=
ote that the Thunderbolt 3 link itself is 40Gbps, so theoretically, it coul=
d handle 4 10Gbe links.=C2=A0 A while ago, my colleague replaced the dual 1=
0Gbe NIC that comes in the Sonnet box with an Intel XL710 which can run 4 x=
 10Gbe and he was able to get it to work.=C2=A0 I don&#39;t recall what the=
 data rate limit was.</div><div><br></div><div>Rob</div></div>

--000000000000af82ff05ddd10016--

--===============8096228971187046745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8096228971187046745==--
