Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BCF5F114C
	for <lists+usrp-users@lfdr.de>; Fri, 30 Sep 2022 20:03:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA27A3837DE
	for <lists+usrp-users@lfdr.de>; Fri, 30 Sep 2022 14:03:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1664561021; bh=4nK6NmBoC08u+jFKpznhNx0onacGOFUd2kVxegay0vw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MH2TJocwbYYvubwXBNWrd0kI3su6TlzhH6eZFkiJsxt44ogoJbqvBp2RlTwXRTIK5
	 xFU+9EuTDzc2tOw8w39qVBrBHawCy6NT6xdf6gMEhraGVoBE7zVt2oR/3wAEnUMELm
	 oAJxfRSSIrgMpSGE5e+FZEgg7n1rbpu1AYDHEjTZgTXcYcd7acsKB/24aIWpoPT5f8
	 fQAD6K4KpfcEBd+GEYggvb0zJDqfBFwfD76Uhn8fl7sGAmGNKBfcIGT2DSUTqpCLpS
	 ifxXi3VpkccWpss8IUn0th7d7GtHOk10bMMg8Juf4/XQW3HL4f1BsV+lg9A1BnbGMv
	 RiUhnEkZ5MlYQ==
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 356A438369B
	for <usrp-users@lists.ettus.com>; Fri, 30 Sep 2022 14:01:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="X9ztJq1D";
	dkim-atps=neutral
Received: by mail-qt1-f173.google.com with SMTP id w2so3125185qtv.9
        for <usrp-users@lists.ettus.com>; Fri, 30 Sep 2022 11:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date;
        bh=f9slvA4JyJI9jTjTNVWkQ35h/SyTo4umn4dfKvYXtyg=;
        b=X9ztJq1D2Fk5aA5xyEGOs924FW2yHYK9qiA6n8I60Rshwr63NcSYvswXHuQnQJef0T
         lHk8u+SEv1m2eaqSj5Z2OhLRQ5x0nf4+9IPXX1/BCFPD1+rocW0y0u1XHxkM9UC/pI6z
         cGRpWXygxdpZ2bI3eoOgaBIrqeopaZY6czbR5S2HEX0E7BaO2DIEPA9Ec4bxZ4i3ZDch
         25Rznvk+ugAPRVSJYMbSzqixoXZu3tpz4fBS5qk2tFop9PP+QL4u31M1HaDe+HDrTELj
         uHhDCJ6zT0fOB1l0+YMFjwmkea5x2Yco/dVGAxbCIRRRrMHzDmHscAxMdKVdP6LKiK/d
         TWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date;
        bh=f9slvA4JyJI9jTjTNVWkQ35h/SyTo4umn4dfKvYXtyg=;
        b=ONTmFRKMxwmOm1Hyic01kKwCw9sCj/8tIpyfbdUXMrcU5BnWXNHQIWFNSyUBBgK9Fc
         mzYBuLIfeGvM9wvJhrcAC5tMRMozfznIFs068KNItj380v9JmWjj9Y0bUXtiIKH8eVJU
         aNlfkTNqB3kZ41cSMR56Phd8cg39SoRMab71V5m0FLt+J+x+rsBOswlU/j6aNe951qxv
         6dxp8fINu16VsnDz2vyVbkvE59yiKcmsm/5XY6q5eAsly+GKE1eCAj9Pp/lOQgIwiCtL
         aDX4SceGJXHdo2fs2oNj/K8ysT+5KZZf2pNWGf8nrpGX1n4BDa5YaEA7sN6tNlR8a7sc
         UUcg==
X-Gm-Message-State: ACrzQf2hWY38BHSCKGdI4QtgCKOp8AOG6f7h/03Phw5D6EaxmtHDXUmk
	laMn+JjLErlXHN7cWjk2vxsSg59hEf4=
X-Google-Smtp-Source: AMsMyM7aBCnfGtmJtx2QlpMqSqkalgoInXcMrUm7cNsVBq06GpKgqp/3JMfrvvA12TGz8vmVi2oPsQ==
X-Received: by 2002:ac8:5d49:0:b0:35c:e066:b972 with SMTP id g9-20020ac85d49000000b0035ce066b972mr7904315qtx.303.1664560911006;
        Fri, 30 Sep 2022 11:01:51 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-141.dsl.bell.ca. [174.93.2.141])
        by smtp.googlemail.com with ESMTPSA id q19-20020a05620a0d9300b006cebfea5c55sm3151203qkl.2.2022.09.30.11.01.50
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 11:01:50 -0700 (PDT)
Message-ID: <9a54f048-6a1a-dfce-1179-c343b860550a@gmail.com>
Date: Fri, 30 Sep 2022 14:01:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <166433158290.21418.10559811400103825515@mm2.emwd.com>
 <SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namprd05.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namprd05.prod.outlook.com>
Message-ID-Hash: VTA64XS5EZ2QZQ6OW646DSQBOD3AVBC6
X-Message-ID-Hash: VTA64XS5EZ2QZQ6OW646DSQBOD3AVBC6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VTA64XS5EZ2QZQ6OW646DSQBOD3AVBC6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7315865423625403344=="

This is a multi-part message in MIME format.
--===============7315865423625403344==
Content-Type: multipart/alternative;
 boundary="------------356vsLKfK7LtcObiJ6icCBnV"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------356vsLKfK7LtcObiJ6icCBnV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-09-30 13:52, Avila, Jose A wrote:
> Hey Marcus,
>
> I checked and the cal files are in the correct location. I was using a=20
> gain of 10, but even at 0 I can start to see the lo peak out of the=20
> noise floor. In rfnoc:radio_control I did see a set_tx_dc_offset() but=20
> Im not sure how to read the cal file to get the value manually or how=20
> to pass it the file.
UHD knows where those files are located.=C2=A0=C2=A0 If it was the same U=
HD=20
library that *generated* them, it knows where they are.
 =C2=A0 Information on config file management is here:

https://files.ettus.com/manual/page_configfiles.html


>
> I am now trying to find a way to offset tune the lo but can't figure=20
> out how to do that with rfnoc.=C2=A0 I tried uhd::rfnoc::radio_control=20
> set_tx_freq with a tune_request_t but that didn't work, my guess is=20
> that is for the multiusrp and not rfnoc radio control. I saw there was=20
> a set_tx_lo_freq but it expects 3 arguments one being name of lo stage=20
> which I haven't been able to decipher. So far I have only found=20
> examples without rfnoc using usrp::multiusrp.
Hmm, I think tune_request_t=C2=A0 will work with an RFNoC set_tx_freq, bu=
t as=20
I'm not an RFNOC programmer, I'm not sure.

You're probably best to pursue the offset-tuning approach--there's no=20
way to make a mixer have *zero* LO leakage.=C2=A0 In radios
 =C2=A0 that aren't direct-conversion, this isn't a problem, since the LO=
 is=20
usually far enough away from the carrier that it can be
 =C2=A0 easily filtered out in analog filters before the 1st RF amplifier=
.=C2=A0=C2=A0=20
In a general-purpose, DC-light-tunable transceiver with
 =C2=A0 direct conversion, this isn't always possible.


>
> -----------------------------------------------------------------------=
-
> *From:* usrp-users-request@lists.ettus.com=20
> <usrp-users-request@lists.ettus.com>
> *Sent:* Tuesday, September 27, 2022 8:19 PM
> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* USRP-users Digest, Vol 145, Issue 60
> Send USRP-users mailing list submissions to
> usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via email, send a message with subject or
> body 'help' to
> usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
> usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
> Today's Topics:
>
> =C2=A0=C2=A0 1. Re: USRP-users Digest, Vol 145, Issue 55 (Marcus D. Lee=
ch)
> =C2=A0=C2=A0 2. Re: Reset Timing Violation (Brian Padalino)
> =C2=A0=C2=A0 3. Re: Reset Timing Violation (Wade Fife)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Tue, 27 Sep 2022 09:44:08 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> Subject: [USRP-users] Re: USRP-users Digest, Vol 145, Issue 55
> To: usrp-users@lists.ettus.com
> Message-ID: <e32a7073-710a-1279-fbe9-ce50f3a80d78@gmail.com>
> Content-Type: multipart/alternative;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"------------gvkv=
lFFcHe0JJA1MHesKFzhB"
>
> On 2022-09-27 09:01, Avila, Jose A wrote:
> > Using the UBX board on the x310 and the lo leakage is the same
> > amplitude if not higher than the signal being played with rfnoc
> > samples from file.
> >
> Can you confirm that it placed .cal files in the appropriate directory:
>
> https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffil=
es.ettus.com%2Fmanual%2Fpage_calibration.html%23calibration_data&amp;data=
=3D05%7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608daa0f7ee6=
f%7C857c21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7CUnkno=
wn%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJX=
VCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBlOyodb=
nar7rn7Tk%3D&amp;reserved=3D0=20
> <https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffi=
les.ettus.com%2Fmanual%2Fpage_calibration.html%23calibration_data&amp;dat=
a=3D05%7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608daa0f7ee=
6f%7C857c21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7CUnkn=
own%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJ=
XVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBlOyod=
bnar7rn7Tk%3D&amp;reserved=3D0>
>
> What gain setting are you using when transmitting?
>
>
> >
> > ---------------------------------------------------------------------=
---
> > *From:* usrp-users-request@lists.ettus.com
> > <usrp-users-request@lists.ettus.com>
> > *Sent:* Saturday, September 24, 2022 3:31:13 AM
> > *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> > *Subject:* USRP-users Digest, Vol 145, Issue 55
> > Send USRP-users mailing list submissions to
> > usrp-users@lists.ettus.com
> >
> > To subscribe or unsubscribe via email, send a message with subject or
> > body 'help' to
> > usrp-users-request@lists.ettus.com
> >
> > You can reach the person managing the list at
> > usrp-users-owner@lists.ettus.com
> >
> > When replying, please edit your Subject line so it is more specific
> > than "Re: Contents of USRP-users digest..."
> >
> > Today's Topics:
> >
> > =C2=A0=C2=A0 1. X310 calibration (Avila, Jose A)
> > =C2=A0=C2=A0 2. Re: X310 calibration (Marcus D. Leech)
> >
> >
> > ---------------------------------------------------------------------=
-
> >
> > Message: 1
> > Date: Fri, 23 Sep 2022 17:36:37 +0000
> > From: "Avila, Jose A" <jaavila5@miners.utep.edu>
> > Subject: [USRP-users] X310 calibration
> > To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> > Message-ID: <SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB3919
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .namprd05.prod.outlook.com=
>
> > Content-Type: multipart/alternative; boundary=3D"_000_SN4PR0501MB3919
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23D92DB5B6B7A2F84EE5D9519S=
N4PR0501MB3919_"
> >
> > I have noticeable lo leakage when running the cpp rfnoc replay sample=
s
> > from file. So I ran the calibration functions but it doesn't seem to
> > be using the created files since I did not notice a difference. Is
> > there a function call or setting in cpp I need to add? I thought it
> > would be automatic. Using uhd 4.2 with X310.
> > -------------- next part --------------
> > A message part incompatible with plain text digests has been removed =
...
> > Name: not available
> > Type: text/html
> > Size: 477 bytes
> > Desc: not available
> >
> > ------------------------------
> >
> > Message: 2
> > Date: Fri, 23 Sep 2022 14:16:48 -0400
> > From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> > Subject: [USRP-users] Re: X310 calibration
> > To: usrp-users@lists.ettus.com
> > Message-ID: <fc5fc6fa-d33f-9958-7e58-2fe637175680@gmail.com>
> > Content-Type: text/plain; charset=3DUTF-8; format=3Dflowed
> >
> > On 2022-09-23 13:36, Avila, Jose A wrote:
> > > I have noticeable lo leakage when running the cpp rfnoc replay samp=
les
> > > from file. So I ran the calibration functions but it doesn't seem t=
o
> > > be using the created files since I did not notice a difference. Is
> > > there a function call or setting in cpp I need to add? I thought it
> > > would be automatic. Using uhd 4.2 with X310.
> > >
> > Which daughtercards are you using?
> >
> > I'll note that most of the DC-offset compensation is done in a
> > daughtercard-independent way and doesn't rely on the
> > =C2=A0=C2=A0 CAL functions as far as I know--there's a continuous "DC=
 offset
> > removal" function in the FPGA.
> >
> > When you say "noticeable" what is the magnitude we're talking about?
> >
> >
> >
> > ------------------------------
> >
> > Subject: Digest Footer
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> >
> > ------------------------------
> >
> > End of USRP-users Digest, Vol 145, Issue 55
> > *******************************************
> >
> > _______________________________________________
> > USRP-users mailing list --usrp-users@lists.ettus.com
> > To unsubscribe send an email tousrp-users-leave@lists.ettus.com
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ..=
.
> Name: not available
> Type: text/html
> Size: 8740 bytes
> Desc: not available
>
> ------------------------------
>
> Message: 2
> Date: Tue, 27 Sep 2022 10:08:48 -0400
> From: Brian Padalino <bpadalino@gmail.com>
> Subject: [USRP-users] Re: Reset Timing Violation
> To: adri96roll@gmail.com
> Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Message-ID:
> <CAEXYVK7f-nyQXPDo6WkVm3SCYM2EvzNVuDeQ4+k-7wqc7Oa=3DbQ@mail.gmail.com>
> Content-Type: multipart/alternative;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"000000000000881e=
7405e9a92fba"
>
> On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:
>
> > Hi every one!
> >
> >
> > I am facing some problems with reset timing violations. This is is=20
> one for
> > example, and i have a fews. I tried to instantiate the reset signal=20
> but it
> > didn work. I don know how to fix it. On the other side, i have seen=20
> a reset
> > generation in a noc shell and i was wondering if i have to generate=20
> a new
> > one from a previous one.
> >
> I can't see much other than the names of the signals and the negative
> slack, but the hierarchy seems to indicate it's part of a synchronizer
> that's been double flopped, so maybe there should be a false path
> associated with it in your constraints?
>
> Brian
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ..=
.
> Name: not available
> Type: text/html
> Size: 983 bytes
> Desc: not available
>
> ------------------------------
>
> Message: 3
> Date: Tue, 27 Sep 2022 21:19:19 -0500
> From: Wade Fife <wade.fife@ettus.com>
> Subject: [USRP-users] Re: Reset Timing Violation
> To: Brian Padalino <bpadalino@gmail.com>
> Cc: adri96roll@gmail.com, "USRP-users@lists.ettus.com"
> <usrp-users@lists.ettus.com>
> Message-ID:
> <CAFche=3DhVgtfh8+ThZT23p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com>
> Content-Type: multipart/alternative;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"000000000000624b=
cd05e9b36488"
>
> There's not enough information in the screen shot, but I think the outp=
ut
> of the double synchronizer is on a different clock domain than flop flo=
p
> (dato_entrada) being reset by it.
>
> The reset signal needs to be driven by the same clock as the flip flop
> being reset, otherwise Vivado can't ensure that the requirements of the=
 FF
> will be met, resulting in this timing violation.
>
> Make sure you're using the right clock and reset signal for your
> dato_entrada register.
>
> Wade
>
> On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino <bpadalino@gmail.com>=20
> wrote:
>
> > On Tue, Sep 27, 2022 at 7:21 AM <adri96roll@gmail.com> wrote:
> >
> >> Hi every one!
> >>
> >>
> >> I am facing some problems with reset timing violations. This is is o=
ne
> >> for example, and i have a fews. I tried to instantiate the reset=20
> signal but
> >> it didn work. I don know how to fix it. On the other side, i have=20
> seen a
> >> reset generation in a noc shell and i was wondering if i have to=20
> generate a
> >> new one from a previous one.
> >>
> > I can't see much other than the names of the signals and the negative
> > slack, but the hierarchy seems to indicate it's part of a synchronize=
r
> > that's been double flopped, so maybe there should be a false path
> > associated with it in your constraints?
> >
> > Brian
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
> -------------- next part --------------
> A message part incompatible with plain text digests has been removed ..=
.
> Name: not available
> Type: text/html
> Size: 2247 bytes
> Desc: not available
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 145, Issue 60
> *******************************************
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------356vsLKfK7LtcObiJ6icCBnV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-30 13:52, Avila, Jose A
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namp=
rd05.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hey Marcus,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I checked and the cal files are in the correct location. I was
        using a gain of 10, but even at 0 I can start to see the lo peak
        out of the noise floor. In rfnoc:radio_control I did see a
        set_tx_dc_offset() but Im not sure how to read the cal file to
        get the value manually or how to pass it the file. <br>
      </div>
    </blockquote>
    UHD knows where those files are located.=C2=A0=C2=A0 If it was the sa=
me UHD
    library that *generated* them, it knows where they are.<br>
    =C2=A0 Information on config file management is here:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/page_configfiles.html">https://files.ettus.com/manual/page_configfil=
es.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namp=
rd05.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I am now trying to find a way to offset tune the lo but can't
        figure out how to do that with rfnoc.=C2=A0 I tried
        uhd::rfnoc::radio_control set_tx_freq with a tune_request_t but
        that didn't work, my guess is that is for the multiusrp and not
        rfnoc radio control. I saw there was a set_tx_lo_freq but it
        expects 3 arguments one being name of lo stage which I haven't
        been able to decipher. So far I have only found examples without
        rfnoc using usrp::multiusrp.<br>
      </div>
    </blockquote>
    Hmm, I think tune_request_t=C2=A0 will work with an RFNoC set_tx_freq=
,
    but as I'm not an RFNOC programmer, I'm not sure.<br>
    <br>
    You're probably best to pursue the offset-tuning approach--there's
    no way to make a mixer have *zero* LO leakage.=C2=A0 In radios<br>
    =C2=A0 that aren't direct-conversion, this isn't a problem, since the=
 LO
    is usually far enough away from the carrier that it can be<br>
    =C2=A0 easily filtered out in analog filters before the 1st RF
    amplifier.=C2=A0=C2=A0 In a general-purpose, DC-light-tunable transce=
iver with<br>
    =C2=A0 direct conversion, this isn't always possible.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:SN4PR0501MB39196A468FE60A25309E729ED9569@SN4PR0501MB3919.namp=
rd05.prod.outlook.com">
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;
        font-size:12pt; color:rgb(0,0,0)">
        <br>
      </div>
      <hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
      <div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt=
"
          face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>
          <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users=
-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-re=
quest@lists.ettus.com">&lt;usrp-users-request@lists.ettus.com&gt;</a><br>
          <b>Sent:</b> Tuesday, September 27, 2022 8:19 PM<br>
          <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto=
:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
          <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@li=
sts.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
          <b>Subject:</b> USRP-users Digest, Vol 145, Issue 60</font>
        <div>=C2=A0</div>
      </div>
      <div class=3D"BodyFragment"><font size=3D"2"><span
            style=3D"font-size:11pt">
            <div class=3D"PlainText">Send USRP-users mailing list
              submissions to<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-use=
rs@lists.ettus.com</a><br>
              <br>
              To subscribe or unsubscribe via email, send a message with
              subject or<br>
              body 'help' to<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users-request@lists.ettus.com">=
usrp-users-request@lists.ettus.com</a><br>
              <br>
              You can reach the person managing the list at<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-abbreviated" href=3D"mailto:usrp-users-owner@lists.ettus.com">us=
rp-users-owner@lists.ettus.com</a><br>
              <br>
              When replying, please edit your Subject line so it is more
              specific<br>
              than "Re: Contents of USRP-users digest..."<br>
              <br>
              Today's Topics:<br>
              <br>
              =C2=A0=C2=A0 1. Re: USRP-users Digest, Vol 145, Issue 55 (M=
arcus D.
              Leech)<br>
              =C2=A0=C2=A0 2. Re: Reset Timing Violation (Brian Padalino)=
<br>
              =C2=A0=C2=A0 3. Re: Reset Timing Violation (Wade Fife)<br>
              <br>
              <br>
----------------------------------------------------------------------<br=
>
              <br>
              Message: 1<br>
              Date: Tue, 27 Sep 2022 09:44:08 -0400<br>
              From: "Marcus D. Leech" <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</=
a><br>
              Subject: [USRP-users] Re: USRP-users Digest, Vol 145,
              Issue 55<br>
              To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              Message-ID:
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:e32a7073-=
710a-1279-fbe9-ce50f3a80d78@gmail.com">&lt;e32a7073-710a-1279-fbe9-ce50f3=
a80d78@gmail.com&gt;</a><br>
              Content-Type: multipart/alternative;<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"----=
--------gvkvlFFcHe0JJA1MHesKFzhB"<br>
              <br>
              On 2022-09-27 09:01, Avila, Jose A wrote:<br>
              &gt; Using the UBX board on the x310 and the lo leakage is
              the same <br>
              &gt; amplitude if not higher than the signal being played
              with rfnoc <br>
              &gt; samples from file.<br>
              &gt;<br>
              Can you confirm that it placed .cal files in the
              appropriate directory:<br>
              <br>
              <a
href=3D"https://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Ffiles.ettus.com%2Fmanual%2Fpage_calibration.html%23calibration_data&am=
p;amp;data=3D05%7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a42660=
8daa0f7ee6f%7C857c21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C6379992839600238=
66%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik=
1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5=
fbvneyRBlOyodbnar7rn7Tk%3D&amp;amp;reserved=3D0"
                data-auth=3D"NotApplicable" moz-do-not-send=3D"true">http=
s://nam10.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffiles.ett=
us.com%2Fmanual%2Fpage_calibration.html%23calibration_data&amp;amp;data=3D=
05%7C01%7Cjaavila5%40miners.utep.edu%7C831033990cc2406a426608daa0f7ee6f%7=
C857c21d21a1643a490cfd57f3fab9d2f%7C1%7C0%7C637999283960023866%7CUnknown%=
7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI=
6Mn0%3D%7C3000%7C%7C%7C&amp;amp;sdata=3D2uxlWwt7G3rjdaWH0ZK5fbvneyRBlOyod=
bnar7rn7Tk%3D&amp;amp;reserved=3D0</a><br>
              <br>
              What gain setting are you using when transmitting?<br>
              <br>
              <br>
              &gt;<br>
              &gt;
              -----------------------------------------------------------=
-------------<br>
              &gt; *From:* <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users-request@lists.ettus.com">usrp-users-request@lists.ettus=
.com</a> <br>
              &gt; <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp=
-users-request@lists.ettus.com">&lt;usrp-users-request@lists.ettus.com&gt=
;</a><br>
              &gt; *Sent:* Saturday, September 24, 2022 3:31:13 AM<br>
              &gt; *To:* <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              &gt; *Subject:* USRP-users Digest, Vol 145, Issue 55<br>
              &gt; Send USRP-users mailing list submissions to<br>
              &gt; <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:u=
srp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              &gt;<br>
              &gt; To subscribe or unsubscribe via email, send a message
              with subject or<br>
              &gt; body 'help' to<br>
              &gt; <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:u=
srp-users-request@lists.ettus.com">usrp-users-request@lists.ettus.com</a>=
<br>
              &gt;<br>
              &gt; You can reach the person managing the list at<br>
              &gt; <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:u=
srp-users-owner@lists.ettus.com">usrp-users-owner@lists.ettus.com</a><br>
              &gt;<br>
              &gt; When replying, please edit your Subject line so it is
              more specific<br>
              &gt; than "Re: Contents of USRP-users digest..."<br>
              &gt;<br>
              &gt; Today's Topics:<br>
              &gt;<br>
              &gt; =C2=A0=C2=A0 1. X310 calibration (Avila, Jose A)<br>
              &gt; =C2=A0=C2=A0 2. Re: X310 calibration (Marcus D. Leech)=
<br>
              &gt;<br>
              &gt;<br>
              &gt;
              -----------------------------------------------------------=
-----------<br>
              &gt;<br>
              &gt; Message: 1<br>
              &gt; Date: Fri, 23 Sep 2022 17:36:37 +0000<br>
              &gt; From: "Avila, Jose A"
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:jaavila5@=
miners.utep.edu">&lt;jaavila5@miners.utep.edu&gt;</a><br>
              &gt; Subject: [USRP-users] X310 calibration<br>
              &gt; To: <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:=
usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              &gt; Message-ID:
              &lt;SN4PR0501MB391923D92DB5B6B7A2F84EE5D9519@SN4PR0501MB391=
9<br>
              &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .namprd05.p=
rod.outlook.com&gt;<br>
              &gt; Content-Type: multipart/alternative;
              boundary=3D"_000_SN4PR0501MB3919<br>
              &gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 23D92DB5B6B=
7A2F84EE5D9519SN4PR0501MB3919_"<br>
              &gt;<br>
              &gt; I have noticeable lo leakage when running the cpp
              rfnoc replay samples <br>
              &gt; from file. So I ran the calibration functions but it
              doesn't seem to <br>
              &gt; be using the created files since I did not notice a
              difference. Is <br>
              &gt; there a function call or setting in cpp I need to
              add? I thought it <br>
              &gt; would be automatic. Using uhd 4.2 with X310.<br>
              &gt; -------------- next part --------------<br>
              &gt; A message part incompatible with plain text digests
              has been removed ...<br>
              &gt; Name: not available<br>
              &gt; Type: text/html<br>
              &gt; Size: 477 bytes<br>
              &gt; Desc: not available<br>
              &gt;<br>
              &gt; ------------------------------<br>
              &gt;<br>
              &gt; Message: 2<br>
              &gt; Date: Fri, 23 Sep 2022 14:16:48 -0400<br>
              &gt; From: "Marcus D. Leech"
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a><br>
              &gt; Subject: [USRP-users] Re: X310 calibration<br>
              &gt; To: <a class=3D"moz-txt-link-abbreviated" href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              &gt; Message-ID:
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:fc5fc6fa-=
d33f-9958-7e58-2fe637175680@gmail.com">&lt;fc5fc6fa-d33f-9958-7e58-2fe637=
175680@gmail.com&gt;</a><br>
              &gt; Content-Type: text/plain; charset=3DUTF-8;
              format=3Dflowed<br>
              &gt;<br>
              &gt; On 2022-09-23 13:36, Avila, Jose A wrote:<br>
              &gt; &gt; I have noticeable lo leakage when running the
              cpp rfnoc replay samples<br>
              &gt; &gt; from file. So I ran the calibration functions
              but it doesn't seem to<br>
              &gt; &gt; be using the created files since I did not
              notice a difference. Is<br>
              &gt; &gt; there a function call or setting in cpp I need
              to add? I thought it<br>
              &gt; &gt; would be automatic. Using uhd 4.2 with X310.<br>
              &gt; &gt;<br>
              &gt; Which daughtercards are you using?<br>
              &gt;<br>
              &gt; I'll note that most of the DC-offset compensation is
              done in a<br>
              &gt; daughtercard-independent way and doesn't rely on the<b=
r>
              &gt; =C2=A0=C2=A0 CAL functions as far as I know--there's a
              continuous "DC offset<br>
              &gt; removal" function in the FPGA.<br>
              &gt;<br>
              &gt; When you say "noticeable" what is the magnitude we're
              talking about?<br>
              &gt;<br>
              &gt;<br>
              &gt;<br>
              &gt; ------------------------------<br>
              &gt;<br>
              &gt; Subject: Digest Footer<br>
              &gt;<br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
              &gt; To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              &gt;<br>
              &gt;<br>
              &gt; ------------------------------<br>
              &gt;<br>
              &gt; End of USRP-users Digest, Vol 145, Issue 55<br>
              &gt; *******************************************<br>
              &gt;<br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list --usrp-users@lists.ettus.com<b=
r>
              &gt; To unsubscribe send an email
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:tousrp=
-users-leave@lists.ettus.com">tousrp-users-leave@lists.ettus.com</a><br>
              -------------- next part --------------<br>
              A message part incompatible with plain text digests has
              been removed ...<br>
              Name: not available<br>
              Type: text/html<br>
              Size: 8740 bytes<br>
              Desc: not available<br>
              <br>
              ------------------------------<br>
              <br>
              Message: 2<br>
              Date: Tue, 27 Sep 2022 10:08:48 -0400<br>
              From: Brian Padalino <a class=3D"moz-txt-link-rfc2396E" hre=
f=3D"mailto:bpadalino@gmail.com">&lt;bpadalino@gmail.com&gt;</a><br>
              Subject: [USRP-users] Re: Reset Timing Violation<br>
              To: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ad=
ri96roll@gmail.com">adri96roll@gmail.com</a><br>
              Cc: <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:USRP-=
users@lists.ettus.com">"USRP-users@lists.ettus.com"</a>
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-user=
s@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              Message-ID:<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:CAEXYVK7f-nyQXPDo6WkVm3=
SCYM2EvzNVuDeQ4+k-7wqc7Oa=3DbQ@mail.gmail.com">&lt;CAEXYVK7f-nyQXPDo6WkVm=
3SCYM2EvzNVuDeQ4+k-7wqc7Oa=3DbQ@mail.gmail.com&gt;</a><br>
              Content-Type: multipart/alternative;<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"0000=
00000000881e7405e9a92fba"<br>
              <br>
              On Tue, Sep 27, 2022 at 7:21 AM
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:adri96rol=
l@gmail.com">&lt;adri96roll@gmail.com&gt;</a> wrote:<br>
              <br>
              &gt; Hi every one!<br>
              &gt;<br>
              &gt;<br>
              &gt; I am facing some problems with reset timing
              violations. This is is one for<br>
              &gt; example, and i have a fews. I tried to instantiate
              the reset signal but it<br>
              &gt; didn work. I don know how to fix it. On the other
              side, i have seen a reset<br>
              &gt; generation in a noc shell and i was wondering if i
              have to generate a new<br>
              &gt; one from a previous one.<br>
              &gt;<br>
              I can't see much other than the names of the signals and
              the negative<br>
              slack, but the hierarchy seems to indicate it's part of a
              synchronizer<br>
              that's been double flopped, so maybe there should be a
              false path<br>
              associated with it in your constraints?<br>
              <br>
              Brian<br>
              -------------- next part --------------<br>
              A message part incompatible with plain text digests has
              been removed ...<br>
              Name: not available<br>
              Type: text/html<br>
              Size: 983 bytes<br>
              Desc: not available<br>
              <br>
              ------------------------------<br>
              <br>
              Message: 3<br>
              Date: Tue, 27 Sep 2022 21:19:19 -0500<br>
              From: Wade Fife <a class=3D"moz-txt-link-rfc2396E" href=3D"=
mailto:wade.fife@ettus.com">&lt;wade.fife@ettus.com&gt;</a><br>
              Subject: [USRP-users] Re: Reset Timing Violation<br>
              To: Brian Padalino <a class=3D"moz-txt-link-rfc2396E" href=3D=
"mailto:bpadalino@gmail.com">&lt;bpadalino@gmail.com&gt;</a><br>
              Cc: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:ad=
ri96roll@gmail.com">adri96roll@gmail.com</a>, <a class=3D"moz-txt-link-rf=
c2396E" href=3D"mailto:USRP-users@lists.ettus.com">"USRP-users@lists.ettu=
s.com"</a><br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <a class=3D"moz-=
txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-us=
ers@lists.ettus.com&gt;</a><br>
              Message-ID:<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:CAFche=3DhVgtfh8+ThZT23=
p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com">&lt;CAFche=3DhVgtfh8+ThZT2=
3p1DdRM+3MRiNX2W-jYwgC1TAHJYqPg@mail.gmail.com&gt;</a><br>
              Content-Type: multipart/alternative;<br>
              =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boundary=3D"0000=
00000000624bcd05e9b36488"<br>
              <br>
              There's not enough information in the screen shot, but I
              think the output<br>
              of the double synchronizer is on a different clock domain
              than flop flop<br>
              (dato_entrada) being reset by it.<br>
              <br>
              The reset signal needs to be driven by the same clock as
              the flip flop<br>
              being reset, otherwise Vivado can't ensure that the
              requirements of the FF<br>
              will be met, resulting in this timing violation.<br>
              <br>
              Make sure you're using the right clock and reset signal
              for your<br>
              dato_entrada register.<br>
              <br>
              Wade<br>
              <br>
              On Tue, Sep 27, 2022 at 9:10 AM Brian Padalino
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:bpadalino=
@gmail.com">&lt;bpadalino@gmail.com&gt;</a> wrote:<br>
              <br>
              &gt; On Tue, Sep 27, 2022 at 7:21 AM
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:adri96rol=
l@gmail.com">&lt;adri96roll@gmail.com&gt;</a> wrote:<br>
              &gt;<br>
              &gt;&gt; Hi every one!<br>
              &gt;&gt;<br>
              &gt;&gt;<br>
              &gt;&gt; I am facing some problems with reset timing
              violations. This is is one<br>
              &gt;&gt; for example, and i have a fews. I tried to
              instantiate the reset signal but<br>
              &gt;&gt; it didn work. I don know how to fix it. On the
              other side, i have seen a<br>
              &gt;&gt; reset generation in a noc shell and i was
              wondering if i have to generate a<br>
              &gt;&gt; new one from a previous one.<br>
              &gt;&gt;<br>
              &gt; I can't see much other than the names of the signals
              and the negative<br>
              &gt; slack, but the hierarchy seems to indicate it's part
              of a synchronizer<br>
              &gt; that's been double flopped, so maybe there should be
              a false path<br>
              &gt; associated with it in your constraints?<br>
              &gt;<br>
              &gt; Brian<br>
              &gt; _______________________________________________<br>
              &gt; USRP-users mailing list -- <a class=3D"moz-txt-link-ab=
breviated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a><br>
              &gt; To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              &gt;<br>
              -------------- next part --------------<br>
              A message part incompatible with plain text digests has
              been removed ...<br>
              Name: not available<br>
              Type: text/html<br>
              Size: 2247 bytes<br>
              Desc: not available<br>
              <br>
              ------------------------------<br>
              <br>
              Subject: Digest Footer<br>
              <br>
              _______________________________________________<br>
              USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a><br>
              To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
              <br>
              <br>
              ------------------------------<br>
              <br>
              End of USRP-users Digest, Vol 145, Issue 60<br>
              *******************************************<br>
            </div>
          </span></font></div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------356vsLKfK7LtcObiJ6icCBnV--

--===============7315865423625403344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7315865423625403344==--
