Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D43848FE9A
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jan 2022 20:08:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35B743851B5
	for <lists+usrp-users@lfdr.de>; Sun, 16 Jan 2022 14:08:26 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=quanttux-com.20210112.gappssmtp.com header.i=@quanttux-com.20210112.gappssmtp.com header.b="s98rveBu";
	dkim-atps=neutral
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 7F59A381301
	for <usrp-users@lists.ettus.com>; Sun, 16 Jan 2022 14:07:34 -0500 (EST)
Received: by mail-pg1-f174.google.com with SMTP id 133so3521052pgb.0
        for <usrp-users@lists.ettus.com>; Sun, 16 Jan 2022 11:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanttux-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ie4o2WhydrHj0iYtxo9+qLWcCv/pPOcHYFMpeUUxbBs=;
        b=s98rveBuWW80CxvT8Dm3+AbjpxKUDikXWhRG6dMiHGUk8zgwY/D4GEj/e4TbFVH8iU
         i0dCrc+MifxSV1S6mOo3F+oMtubKC/PX/Erg9IEgovypXtuPOxpY1jXjh8+agdkYD6E+
         ZakS4SArc5HQIbdHq3qi4D+juSGz6cAWXFpq9VO3JYf4KSakNCp2F1HX3vEBm6NDfQEa
         1TJMbPg9kPjJuhWHzgPLCCixtOCum51DoEDC5diE8Rfum4Nqwc71vHLA8wT6jVY4uJlx
         Xjk4FnFQb2Ye6ULHXNW2zSsD1auKNfrtWzFk6zx4E7EzVqI2Stx+nBJKzGQnV1YUETY6
         7LJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ie4o2WhydrHj0iYtxo9+qLWcCv/pPOcHYFMpeUUxbBs=;
        b=JT6BWGx/jVo4ukuFmJ+pJKnPM+vmVtjnWDC0TGPfFl9lKd5F/5Go/gnIZb+GcoST0P
         6SVLBxQ2YmE3TvoDd4YtV65eWFq0hc0wb4aqNblhGgmDwPwgaWfoU2UVgT1zvISMQZNu
         rGBTgDL77VBbsN/98RImUFLn5rubr4l+R0TQtpbY4neNo99AHY2lWylOISNA22RDvxAc
         0JDfINE0KWF0T/Lec/9ixYX2QJYrPZcvd9zjIwWWPk+K94kX3wbDGQcBoxw6unEkPPT/
         LUAemhfkO8RHnUXwdw1U2wWO27iqHzewjnCB+s3bgDvYmnTSAYuD7nHSLMRSr+AS6y5n
         Jj8Q==
X-Gm-Message-State: AOAM532kUyX2F0+hcC2u7KTG6mVV1CvVXkpzDMTMM1nkmXByvbI1ddpu
	IjjFBNTo7c1w9E1w2uMTdvC5bKFbac3VmON0MhLidQ==
X-Google-Smtp-Source: ABdhPJxcdZLmbgB1jjNK03TmfX/wWhPWjZvG+jqG5jzG197+Nj8jSwQqwvzVEB8HeJTFWe+UXPEbU85ln24vsRMz6pY=
X-Received: by 2002:a63:6e86:: with SMTP id j128mr16060190pgc.6.1642360053488;
 Sun, 16 Jan 2022 11:07:33 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pt07rbZitdjHCZAe1qk0xv_y_JavpD4s92KCcHJ=nSKfg@mail.gmail.com>
 <6d129880-f75c-3381-24da-e4b57044a5c9@gmail.com>
In-Reply-To: <6d129880-f75c-3381-24da-e4b57044a5c9@gmail.com>
From: Robin Coxe <coxe@quanttux.com>
Date: Sun, 16 Jan 2022 11:07:22 -0800
Message-ID: <CAKJyDk+S0CLUgPLag=VXiirs2Y=XeTj=Omp=rC2-SKPZv8Ri0Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: B2U2H4MIMFXUCGGADNJEXS4Y5UEUNZJS
X-Message-ID-Hash: B2U2H4MIMFXUCGGADNJEXS4Y5UEUNZJS
X-MailFrom: coxe@close-haul.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UBX 160 transmit but only there is a small carrier....?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B2U2H4MIMFXUCGGADNJEXS4Y5UEUNZJS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2460459288701474438=="

--===============2460459288701474438==
Content-Type: multipart/alternative; boundary="00000000000094f30205d5b7bfab"

--00000000000094f30205d5b7bfab
Content-Type: text/plain; charset="UTF-8"

Another common cause of low transmit power is the contact between the
signal pin of the SMA connector and the PCB can be compromised if the
connector is over-torqued.    If the trace itself is ripped off the PCB,
this is a Problem, but sometimes a blob of solder to shore up the
connection will fix the issue.   Try inspecting this connection under a
magnifier to see if any damage is apparent.

On Thu, Jan 13, 2022 at 7:03 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-01-13 07:22, sp h wrote:
>
> For USRP x310, I had UBX 160 daughterboard, but lately, however, RX works
> correctly But transmit mode is not working correctly.
> I had no data signal........
> UBX 160 transmit but only there is a small carrier....?
>
> For HackrfOne we had the same problem, we replace RF amplifier IC,  now it
> works...
> but for USRP can anyone guide me on which IC is probable is damaged??
> any offers?
>
> you can see UBX 160 schematic there...
> https://files.ettus.com/schematics/ubx/
>
> Thanks in advance
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> The PHA-1 (U31) is the RF output amplifier, but it sits behind two layers
> of RF switch--SKY13350-385LF  and HMC7992 (U50 and U32).
>
> I have to ask what you're doing to blow-out RF output amplifiers.
> Transmitting into a dead-short for extended periods could do it, but the
> power levels
>   of these devices are low enough that transmitting into an "open" or
> other type of mis-match is unlikely to cause damage.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000094f30205d5b7bfab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Another common cause of low transmit power is the contact =
between the signal pin of the SMA connector and the PCB can be compromised =
if the connector is over-torqued.=C2=A0 =C2=A0 If the trace itself is rippe=
d off the PCB, this is a Problem, but sometimes a blob of solder to shore u=
p the connection will fix the issue.=C2=A0 =C2=A0Try inspecting this connec=
tion under a magnifier to see if any damage is apparent.</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 13, 202=
2 at 7:03 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
>patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-01-13 07:22, sp h wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">For USRP x310, I had UBX 160 daughterboard, but
        lately, however, RX works correctly But transmit mode is not
        working correctly.
        <div>I had no data signal........<br>
          <div>UBX 160 transmit but only there is a small carrier....?<br>
          </div>
        </div>
        <div><br>
        </div>
        <div>For HackrfOne we had the same problem, we replace RF
          amplifier IC,=C2=A0 now it works...</div>
        <div>but for USRP can anyone guide me on which IC is probable is
          damaged??</div>
        <div>any offers?</div>
        <div><br>
        </div>
        <div>you can see UBX 160 schematic there...</div>
        <div><a href=3D"https://files.ettus.com/schematics/ubx/" target=3D"=
_blank">https://files.ettus.com/schematics/ubx/</a></div>
        <div><br>
        </div>
        <div>Thanks in advance=C2=A0</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    The PHA-1 (U31) is the RF output amplifier, but it sits behind two
    layers of RF switch--SKY13350-385LF=C2=A0 and HMC7992 (U50 and U32).<br=
>
    <br>
    I have to ask what you&#39;re doing to blow-out RF output amplifiers.=
=C2=A0
    Transmitting into a dead-short for extended periods could do it, but
    the power levels<br>
    =C2=A0 of these devices are low enough that transmitting into an &quot;=
open&quot;
    or other type of mis-match is unlikely to cause damage.<br>
    <br>
    <br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000094f30205d5b7bfab--

--===============2460459288701474438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2460459288701474438==--
