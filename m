Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 491C6616E0C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 20:54:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5740A383BF4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 15:54:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667418888; bh=XCpNzMY55K8WTEslWlyKWzgySaDGi9Gg+06mYxhJhF0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hL8O0THTRgP7senPnEbS6ClSeBVVrfjhoTi6dDmDSDIJBndvf8czdMwuKMvPCfrOb
	 pVdlJRfqDN4YlueXt9nVGCfeq3rHio590E/lQ+91qwLMc/3rKoMPnNTIIhXfVLDkU9
	 YhxvM8Pqwb/H9PS0hX6erN5s+CVyShNF6dbXw7jZdTU2rpXy3YMUKW3+FM/ebN6bvY
	 3b1I506+9cWhUH8h2AvILdVwtKZ+I5Mf9gHg6jpZ7m6feUaowuNzFlw/w1X8nn/TyC
	 bOboz3J/TrdSpRu60Ty0abxD7V5Xn7q7nyaKKdGxFgVdsMUWhjdE3v9V3+YSh/Z7f2
	 QYhlntS8Siyrg==
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 632CD381133
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 15:53:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="puWTSoNt";
	dkim-atps=neutral
Received: by mail-pj1-f41.google.com with SMTP id c15-20020a17090a1d0f00b0021365864446so2857390pjd.4
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=K9YCz0uJdT+L7Tj+tVQ+IUZGPB+JrH5xNBAzXj8Gavk=;
        b=puWTSoNttHp2B/i3lAS8pu8FRk2cqYo+xqYVr0fRvjDuWZIue8ZIf6VYKxpEj4sUY7
         e+sbXuQHe+hAjAA+rmAEZmno5P4Vn0alqDhJAv19QBd1mtkWbEVw7jroq76e/7i5Y7uj
         v7LsfCkVZ78xQy6AuYPWgTpdAg6YyvpQusIjzYzKYpdQHRuBwZ4zxPvO5KXnSvWFcSYI
         eSBCDArCaQuajgYEkb0uCGL1TVzVWYuRST/VSD6E2Y/NncBageFOX9J26EYOwi/YDzIi
         HMPz9R3Pwlj6iTaInqEkBwG2Wy7clUA6W/slwPWtbOOGWQJ96g3TYMJqHpbk+LtR1emj
         /uCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9YCz0uJdT+L7Tj+tVQ+IUZGPB+JrH5xNBAzXj8Gavk=;
        b=j6Wkkod6zSCjqdfkCt/rErRnkSchKW1eVEjIMysPGH1ob1T94kCh4RZfjcfYFpatKh
         rUDFVO3yQsxpZ6FrZyA6hyFc0fCjNcNmoJ9N1+hSiR2IHoTB6k/gPSkX71pHQJX7qO/g
         tAFBfPDvJq2PXB6Y/Yz/d/JU5X92pQhCQ0y88bsNePgnrx5y154kEWQV+F3C+TsBMi86
         EV6UK8RF0loBhK/q4AZqzRXCONmhJiT4iC46ZZGE+seS7MMezxLsXdo1/5EvgYE4qmKR
         Vcvx4o5+GD7WUOLfIv7dYh7cnPZcOxXky82MvHNiqGwTHcVWYVALVM/f4gw7zWtGs64V
         N36A==
X-Gm-Message-State: ACrzQf19PADju8kPsNsbT0enEVWLddjk9cdBFTIzoW6upDgiYTQGb3CJ
	V4dKr7PzdjC/m93TORDo1ALzSqPFX74BFS7X8C1ow+jnd8w=
X-Google-Smtp-Source: AMsMyM6sN136c8WaBRh48Eu5LMXsoqaF57Knj1Kd7/0bmOQ4mo7z9asQHSwHJKIZNT//Kn/GlvtZfltqVtl+qDdkWL4=
X-Received: by 2002:a17:90a:b8f:b0:213:c985:b5e5 with SMTP id
 15-20020a17090a0b8f00b00213c985b5e5mr22339540pjr.57.1667418816155; Wed, 02
 Nov 2022 12:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAChZci8XKgcSE_BbWtH_-FvX_cFnYdoLJBSA1VLzatQexbEmrg@mail.gmail.com>
 <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
In-Reply-To: <a704b61f-cc51-6d27-6ef7-16ecb87d4174@gmail.com>
From: Kenneth Burchfield <ksburchfield@gmail.com>
Date: Wed, 2 Nov 2022 14:53:24 -0500
Message-ID: <CAChZci-q_EqyPsFqb7ceNdnx2C-tUS1=edkQEu8bkPvWQ+PseQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7AF2KB3Z2IE4DFTSDS27KZRTFQNY7SHS
X-Message-ID-Hash: 7AF2KB3Z2IE4DFTSDS27KZRTFQNY7SHS
X-MailFrom: ksburchfield@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: examples using N310 with ext LO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7AF2KB3Z2IE4DFTSDS27KZRTFQNY7SHS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1944768476439522629=="

--===============1944768476439522629==
Content-Type: multipart/alternative; boundary="0000000000003a935905ec823220"

--0000000000003a935905ec823220
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Marcus,
I agree.  Is there a way to tune the sideband suppression so that I can
attenuate more of the mirrored signal?
With the internal lo, everything seems to just work.  Are there extra
configuration steps that I need to take to adjust for the external lo?

Thanks,
Scott

On Wed, Nov 2, 2022 at 2:41 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 02/11/2022 15:27, Kenneth Burchfield wrote:
>
> Marcus,
>
> The sidebands do not change with the LO level.
>
> I am basically running the tx_waveforms example from UHD 4.2.0.0, and I a=
m adding the argument tx_lo_source=3Dexternal.  Attached is a picture of th=
e spectrum. I am generating a SINE with wave-freq input 2e6. The center spi=
ke is some LO leakage. The spike at -2e6 is the mirroring I am seeing.
>
> Thanks,
> Scott
>
> The LO suppression looks to be about 55dBc, which is not horrific.
>
> The sideband suppression appears to be only about 30dBc, which is not ver=
y
> good.
>
>
>
> On 02/11/2022 12:09, Scott Burchfield wrote:
>
> Hi,
>
>
> Are there any updates on this problem.  I normally try not to reply to ol=
d
> threads, but I am seeing the same the same spectral mirroring Rob describ=
ed
> earlier.  My setup is also the same as Rob=E2=80=99s.I have tracked some =
newer
> threads that mentioned disabling TX_QEC_INIT, but I am still seeing the
> mirroring after disabling QEC.
>
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07489.html
>
> Thanks,
>
> Scott
>
>
> It seems to me that if you use an external LO, that LO has to go through =
the
> phase-splitter on the mixer, and that phase-split   is subject to errors,
> so turning off QEC may not be that desirable--although I think the mixer
> on the N310 (using an AD9371)
>
>   is a 2XLO, so the phase error should be very very small.
>
> Do the unwanted sidebands change with LO level?
>
>
>

--0000000000003a935905ec823220
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Marcus,<div>I agree.=C2=A0 Is there a way to tune the side=
band suppression so that I can attenuate more of the mirrored signal?</div>=
<div>With the internal lo, everything seems to just work.=C2=A0 Are there e=
xtra configuration steps that I need to take to adjust for the external lo?=
</div><div><br></div><div>Thanks,</div><div>Scott</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 2, 2022 =
at 2:41 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 02/11/2022 15:27, Kenneth Burchfield
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospace=
;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">Marcus,

The sidebands do not change with the LO level.

I am basically running the tx_waveforms example from UHD 4.2.0.0, and I am =
adding the argument tx_lo_source=3Dexternal.  Attached is a picture of the =
spectrum. I am generating a SINE with wave-freq input 2e6. The center spike=
 is some LO leakage. The spike at -2e6 is the mirroring I am seeing.

Thanks,
Scott</pre>
      </div>
    </blockquote>
    The LO suppression looks to be about 55dBc, which is not horrific.<br>
    <br>
    The sideband suppression appears to be only about 30dBc, which is
    not very good.<br>
    <br>
    =C2=A0 <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospace=
;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">On 02/11/=
2022 12:09, Scott Burchfield wrote:
</pre>
        <blockquote style=3D"margin:0em;padding:0px 0px 0px 0.85em;color:rg=
b(160,30,30);border-left:0.2em solid rgb(85,85,238);font-family:helvetica,a=
rial,sans-serif;font-size:14px">
          <pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:1em;white-space:pre-wrap;margin-top:0px;margin-bottom:0px">Hi,

</pre>
          <tt>Are there any updates on
            this problem.=C2=A0 I normally try not to reply to=C2=A0</tt><t=
t>old threads, but I am
            seeing the same the same spectral mirroring Rob=C2=A0</tt><tt>d=
escribed earlier.=C2=A0 My
            setup is also the same as Rob=E2=80=99s.</tt><tt>I have tracked=
 some newer
            threads that mentioned disabling=C2=A0</tt><tt>TX_QEC_INIT, but=
 I am
            still seeing the mirroring after disabling QEC.</tt>
          <pre style=3D"font-family:courier,&quot;courier new&quot;,monospa=
ce;font-size:1em;white-space:pre-wrap;margin:0em"><a style=3D"color:rgb(0,8=
0,150)" href=3D"https://www.mail-archive.com/usrp-users@lists.ettus.com/msg=
07489.html" rel=3D"nofollow" target=3D"_blank">https://www.mail-archive.com=
/usrp-users@lists.ettus.com/msg07489.html</a>

Thanks,

Scott

</pre>
        </blockquote>
        <tt>It seems
          to me that if you use an external LO, that LO has to go
          through=C2=A0</tt><tt>the
          phase-splitter on the mixer, and that phase-split=C2=A0</tt><tt>=
=C2=A0 is
          subject to errors, so turning off QEC may not be that=C2=A0</tt><=
tt>desirable--although
          I think the mixer on the N310 (using an AD9371)</tt>
        <pre style=3D"font-family:courier,&quot;courier new&quot;,monospace=
;font-size:14px;white-space:pre-wrap;margin:0em;color:rgb(0,0,0)">=C2=A0 is=
 a 2XLO, so the phase error should be very very small.

Do the unwanted sidebands change with LO level?</pre>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000003a935905ec823220--

--===============1944768476439522629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1944768476439522629==--
