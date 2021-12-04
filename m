Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19752468302
	for <lists+usrp-users@lfdr.de>; Sat,  4 Dec 2021 07:50:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BBB4C384803
	for <lists+usrp-users@lfdr.de>; Sat,  4 Dec 2021 01:50:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UGu/t7V7";
	dkim-atps=neutral
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 69A3C38477C
	for <usrp-users@lists.ettus.com>; Sat,  4 Dec 2021 01:49:08 -0500 (EST)
Received: by mail-qv1-f45.google.com with SMTP id u16so4990790qvk.4
        for <usrp-users@lists.ettus.com>; Fri, 03 Dec 2021 22:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=IeWJGf6J/LPawo3v+P0QxVdSfzXZ9bJMoiTfnH+7+OI=;
        b=UGu/t7V7R9l3/VtBufhggKc6IP/LvdTmIUDxgCxoDHQsJE1RDu1F4r+YXRsrA9iRDi
         OKyAHKgbgsTgUuMfXV0T0m/8vyGUVRuXiz+ob8QR1WYseBTu22h0V//EeLs090C2sz+3
         4gorplaHUynLfl69UKKjIG47LJsyp5mNka8VF6gk82POjSQTsxXMDze9mY/aNKtQQNKx
         VmVCLS1An7q0fowVdU2ftA/OczIE1iKPHKdxJ4W69Vphm9DZv5vb466V4tZ4jBpgeTzU
         QfB3EcYH42ZEIUzxCTDHA+NXRxmqTKldPzsLFjzz25PA4QMDvEpBe+P4lHol3UPDvy3R
         xdrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=IeWJGf6J/LPawo3v+P0QxVdSfzXZ9bJMoiTfnH+7+OI=;
        b=zEqUipFch3/Ha4YLI5rAUkQF0w0tc/myZTNObK6exz2SCNuYqLm0toe8OSe3S/OKqV
         IpVPMwghMCfmygMMKu+YO/NMswJHUCskAG/ds+RDwmbe8dCEu076YPfinS/kYDRm6180
         RHpElZF7XXnCr+LTs/gbVCw62d1fxZYgYHCLtqH9iHbHr61hVdBetxwgXElqtgIEDjS0
         nK8T1GL8iPP/RJJPDiKy+jwx0pjL/ktV4lF9XYEfnmwnFRlKC0KhZxoV4/ah3HC5H1EK
         TJ3O9DEcmVDdGBvgMjdDHuZEM2PKnaQpIXtMztj4zAmNmEYedCSZ0c8+OS0OKMcUZUME
         Gugg==
X-Gm-Message-State: AOAM5303ds4q+aep/a2/fvpLI8OcD/vLsfrXLOXrRDG27x7DHaZtfGbx
	oMT7smEVOp2WP89GdlR8sqzuG98rloS4soLcxrG+xUoD
X-Google-Smtp-Source: ABdhPJxRWGNEbltHQBuO4eXedNsVDrpZ/nVY/YJdCRrqYuCtNtxqflG4+JN6P6RyJSvBzxuRj9g+xkhX7nei9PiAeKE=
X-Received: by 2002:a05:6214:129:: with SMTP id w9mr24095550qvs.22.1638600547796;
 Fri, 03 Dec 2021 22:49:07 -0800 (PST)
MIME-Version: 1.0
References: <CACfkGzVBb8d_A-ZJJKODKj3by_4bPTXsOCrzAsQOgh=-mObqKA@mail.gmail.com>
 <0c9ec73e-ca9c-21dd-7126-19d4cb076d9f@ettus.com>
In-Reply-To: <0c9ec73e-ca9c-21dd-7126-19d4cb076d9f@ettus.com>
From: =?UTF-8?B?57+B5YGJ5ZC+?= <cmdjbst@gmail.com>
Date: Sat, 4 Dec 2021 14:48:57 +0800
Message-ID: <CACfkGzV7cgJD0ubf4fwzbPKpZquz6a3N0i4e9a1jNea5Ob1ADw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>,
	usrp-users@lists.ettus.com
Message-ID-Hash: HIVS4EINOLYL2O3VEFHIZGKIJZOT2NZ6
X-Message-ID-Hash: HIVS4EINOLYL2O3VEFHIZGKIJZOT2NZ6
X-MailFrom: cmdjbst@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using N200 with UBX160
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HIVS4EINOLYL2O3VEFHIZGKIJZOT2NZ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8696441537744210362=="

--===============8696441537744210362==
Content-Type: multipart/alternative; boundary="00000000000094886705d24c6b9f"

--00000000000094886705d24c6b9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, thanks for the detailed explanation.

On Sat, Dec 4, 2021, 08:38 Marcus M=C3=BCller <marcus.mueller@ettus.com> wr=
ote:

> Hello!
>
>  > I want to know if I can use N200 with UBX160
>
> Sadly, no. The N200 needs an anti-alias filter of at most 50 MHz bandwidt=
h
> (one-sided) for
> effectively alias-free operation, and a UBX160 has 80 MHz.
>
>  > My goal is to run the N200 at 100Msps to receive 100MHz bandwidth of
> signal.
>
> That is impossible. The N200 has a master clock rate of 100 MHz, that is
> true, but it's
> impossible to get that amount of data out of the N200 (the Ethernet is
> much too slow for
> it, and there's no significant memory on the N200 to store it).
>
>  > Which means that UBX40 is not the right choice.
>
> More importantly, the N200 is not the right choice!
>
>  > I don't see the UBX160 on the recommended compatible products of N
> series devices
>
> Correct!
>
>  > But I've found out the datasheet of UBX160 specified that UBX160 is
> compatible with
> both X and N series.
>
> Oh, that is indeed an error in the datasheet! Thank you for pointing this
> out to us!
>
>  > So, will this combination work?
>
> No; if you want 100 MHz bandwidth, you will need a X300/X310 with a
> UBX160, or a USRP
> N300/N310/N320/N321 or X400 alone. I'd personally go for X300+UBX160,
> which is probably
> the most cost-effective solution.
>
> Best regards,
>
> Marcus M=C3=BCller
>
>
> DISCLAIMER: Any attached Code is provided As Is. It has not been tested o=
r
> validated as a product, for use in a deployed application or system, or f=
or
> use in hazardous environments. You assume all risks for use of the Code.
> Use of the Code is subject to terms of the licenses to the UHD or RFNoC
> code with which the Code is used. Standard licenses to UHD and RFNoC can =
be
> found at https://www.ettus.com/sdr-software/licenses/.
>
> NI will only perform services based on its understanding and condition
> that the goods or services (i) are not for the use in the production or
> development of any item produced, purchased, or ordered by any entity wit=
h
> a footnote 1 designation in the license requirement column of Supplement
> No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a
> company is not a party to the transaction.  If our understanding is
> incorrect, please notify us immediately because a specific authorization
> may be required from the U.S. Commerce Department before the transaction
> may proceed further.
>
> On 03.12.21 08:34, =E7=BF=81=E5=81=89=E5=90=BE wrote:
> > Hi, I want to know if I can use N200 with UBX160. My goal is to run the
> N200 at 100Msps
> > to receive 100MHz bandwidth of signal.  Which means that UBX40 is not
> the right choice.
> > I don't see the UBX160 on the recommended compatible products of N
> series devices. But
> > I've found out the datasheet of UBX160 specified that  UBX160 is
> compatible with both X
> > and N series. So, will this combination work? Is there going to be some
> aliasing issue?
> >
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000094886705d24c6b9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi, thanks for the detailed explanation.=C2=A0</div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Dec=
 4, 2021, 08:38 Marcus M=C3=BCller &lt;<a href=3D"mailto:marcus.mueller@ett=
us.com">marcus.mueller@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hello!<br>
<br>
=C2=A0&gt; I want to know if I can use N200 with UBX160<br>
<br>
Sadly, no. The N200 needs an anti-alias filter of at most 50 MHz bandwidth =
(one-sided) for <br>
effectively alias-free operation, and a UBX160 has 80 MHz.<br>
<br>
=C2=A0&gt; My goal is to run the N200 at 100Msps to receive 100MHz bandwidt=
h of signal.<br>
<br>
That is impossible. The N200 has a master clock rate of 100 MHz, that is tr=
ue, but it&#39;s <br>
impossible to get that amount of data out of the N200 (the Ethernet is much=
 too slow for <br>
it, and there&#39;s no significant memory on the N200 to store it).<br>
<br>
=C2=A0&gt; Which means that UBX40 is not the right choice.<br>
<br>
More importantly, the N200 is not the right choice!<br>
<br>
=C2=A0&gt; I don&#39;t see the UBX160 on the recommended compatible product=
s of N series devices<br>
<br>
Correct!<br>
<br>
=C2=A0&gt; But I&#39;ve found out the datasheet of UBX160 specified that UB=
X160 is compatible with <br>
both X and N series.<br>
<br>
Oh, that is indeed an error in the datasheet! Thank you for pointing this o=
ut to us!<br>
<br>
=C2=A0&gt; So, will this combination work?<br>
<br>
No; if you want 100 MHz bandwidth, you will need a X300/X310 with a UBX160,=
 or a USRP <br>
N300/N310/N320/N321 or X400 alone. I&#39;d personally go for X300+UBX160, w=
hich is probably <br>
the most cost-effective solution.<br>
<br>
Best regards,<br>
<br>
Marcus M=C3=BCller<br>
<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at <a href=3D"https://www.ettus.com/sdr-software/licenses/" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://www.ettus.com/sdr-software/lice=
nses/</a>.<br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.=C2=A0 If our understanding is incorrect, p=
lease notify us immediately because a specific authorization may be require=
d from the U.S. Commerce Department before the transaction may proceed furt=
her.<br>
<br>
On 03.12.21 08:34, =E7=BF=81=E5=81=89=E5=90=BE wrote:<br>
&gt; Hi, I want to know if I can use N200 with UBX160. My goal is to run th=
e N200 at 100Msps <br>
&gt; to receive 100MHz bandwidth of signal.=C2=A0 Which means that UBX40 is=
 not the right choice. <br>
&gt; I don&#39;t see the UBX160 on the recommended compatible products of N=
 series devices. But <br>
&gt; I&#39;ve found out the datasheet of UBX160 specified that=C2=A0 UBX160=
 is compatible with both X <br>
&gt; and N series. So, will this combination work? Is there going to be som=
e aliasing issue?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.e=
ttus.com</a><br>
</blockquote></div>

--00000000000094886705d24c6b9f--

--===============8696441537744210362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8696441537744210362==--
