Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 969D18CB749
	for <lists+usrp-users@lfdr.de>; Wed, 22 May 2024 03:06:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7548E385479
	for <lists+usrp-users@lfdr.de>; Tue, 21 May 2024 21:06:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1716339999; bh=Nugt4u/xHZe04kGjJgc3yUk2YkmgaViNR8GXkJ/MS4c=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=B/X9wFe9yQIJwERbDCIqbr0UlQGm6qNJkJFDTeD7jq5ltfHGW1kWbMd7QVIA43Bpn
	 pQfds/oTX+sQxzJRFZTSfmnaN7nLPqR0E+gMvdlCIv+DrdTDdyzSJu+w3G1KudOsFz
	 a5xMPPEAPVsUdy2eSM1UhIqN31sXPohyN5H1rHB2r+7ZYKcGz+2SVO+mTSHgW7nA/Z
	 00ok4CtgeNiGfEqla5JtIiC8hAXVdBuOUtX8Sm22fswvi1FtLeFFDNPKFxtk02cu3O
	 9jlSbSB5U4R9qdLfSD67OYmDRKJUCUEh14U1TDvVDF7wFlwyzhNHL6U3KM3OFpuPWp
	 9/nx11NYqYRCA==
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	by mm2.emwd.com (Postfix) with ESMTPS id A81FF38542A
	for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 21:06:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=logitech.com header.i=@logitech.com header.b="D6Ko3Hm0";
	dkim-atps=neutral
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51f12ccff5eso7656210e87.1
        for <usrp-users@lists.ettus.com>; Tue, 21 May 2024 18:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=logitech.com; s=google; t=1716339993; x=1716944793; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g0YuzyhJQvmmf8+Mtw9kPFDGEdALC/Jg5DISEoiMRyw=;
        b=D6Ko3Hm0ROdgzp6Nq4IAYUF8X937qkXrzveBLDDLEpBnYnyjbDO0KxE9IOZG7f+bLu
         kkaVM1ejgNPy4B0BwVzf8thHGdCEzpj1pcUBmaOWM8MidG6+XwLjBQTDg5hwWNe3KDKd
         UhARpN1mMviPETqjCtm0rrZ+eo6imKzZq8e5/f0m1noeW0ITNzoUQA5BlLB3AZeCgeDg
         e6mnU/NoT/g25NSBmGu7ELMAM/SKJSdHTgC5JRwAOyHSrfbbAbrbBCTMEP3wRKhcGwIc
         eHVl0eZLnIK8HSkoPaLk5s8P1Eh7Qjd1G74cMiC0SxolYa8SVET6VH3Z4C1iDrz1c75Q
         5ycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716339993; x=1716944793;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g0YuzyhJQvmmf8+Mtw9kPFDGEdALC/Jg5DISEoiMRyw=;
        b=WR9YCLFePv2MAK9Zy1h+wawKDzJTxi+cP94is0ZdNc7K3OubrYPuRegWmqpj7rtjXs
         Q2jRbGuglAjnjKFFlSXW1o0inkT/+Pdm6TMDjcDenPDzLpZCCDBF4K9I/mDurundl8Ql
         J8QloSUH4i1GWQSlmi2phHpc/GPIbhOMDFBAKwbZ1dsxftWU4cUnei8AvlvB+qk9LVIg
         0ezMUA1cjQccByigBNOAl6EBxi3feQZaBPdO3/GjXLD328u+6SGQ7LneNTwYI2GOPP4S
         BEuoEFaFDNEIT13JER/Y/ZQxIontbwvsHOBPytHRSPb9VbVBkVZ3n0xBvpdOoqNEwWwW
         ef4Q==
X-Gm-Message-State: AOJu0YwDHMwZSeXhI4mjEHMWP//wYH0jasYTs/SFkh4EpCOv5E09+bFy
	bM2qbLV2d5lY8VOSBJ/Kj5N2yE90rGf1pdZpIPFmuKYda2Rzrlx7Ec+wNTj+k3Mx+wMI1I49leH
	3tTUUI8tb8z0RPL8WRrI2SeDaXQnC+aJxqEPAuf6P54MJ8NlJZw==
X-Google-Smtp-Source: AGHT+IFE7zJmwG78UW8Fm1eWlDxIPGnKP8J58QVaOzcquAXbWKZEuLYDir26QErf5OQ/MWl+Mji9R0zkJNnk9msJH1k=
X-Received: by 2002:ac2:5f69:0:b0:521:cee5:db3d with SMTP id
 2adb3069b0e04-526bef87b69mr177008e87.50.1716339992817; Tue, 21 May 2024
 18:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAKtd9vZ-PSEoxzJEd75a9+qi0G2KSS+mCFBONviF1vjNPi=xYQ@mail.gmail.com>
 <2862204e-0827-47dd-b0b9-242fcef9cbcf@gmail.com>
In-Reply-To: <2862204e-0827-47dd-b0b9-242fcef9cbcf@gmail.com>
Date: Tue, 21 May 2024 18:05:56 -0700
Message-ID: <CAKtd9vZN207i0JRF86-kRga7T_ixfOat8MQf5EyVA6rYpEHgqw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: FORTB2RXBVZTIZKLGR6YWI3HDTNC774G
X-Message-ID-Hash: FORTB2RXBVZTIZKLGR6YWI3HDTNC774G
X-MailFrom: hniknami@logitech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Recording and playing back RF Activity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FORTB2RXBVZTIZKLGR6YWI3HDTNC774G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Hamid Niknami via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Hamid Niknami <hniknami@logitech.com>
Content-Type: multipart/mixed; boundary="===============7919175663671449612=="

--===============7919175663671449612==
Content-Type: multipart/alternative; boundary="00000000000096857f0619008bdd"

--00000000000096857f0619008bdd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for your reply. REgarding the write speed, I assume that fast
SD;s should be able to easily do that:

The NVMe Gen4 x4 interface delivers extreme performance of up to 7,500MB/s
seq. read and 6,850MB/s seq. write speeds.

By synchronization, I mean that all three SDRs start sampling at the same
time (with less than 1us difference).

The questions that I have are as below:
Q1) Considering the fact that I will have a minimum of three SDRs, can one
instance of the GNU Radio running on my PC handle three or more SDRs?
Q2) Is there any ready to use GNU Radio Flow graph for such a scheme to
work?
Q3) Can you suggest any other low cost approach for recording and playing
back 100MHz bandwidth at 2.4GHz?

Thanks


On Tue, May 21, 2024 at 5:47=E2=80=AFPM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 21/05/2024 20:24, Hamid Niknami via USRP-users wrote:
>
> Hi,
>
> I am very new to SDR. I need a low cost solution to record all the
> interferences in the 100MHz band of the 2.4GHz ISM band (created by
> multiple WiFi and Bluetooth devices) and then play it back to emulate the
> interference. I do not need to decode those signals. I am thinking of usi=
ng
> B200 for down converting to base band, recording on a SSD and then playin=
g
> back the recorded signal using the B200 for upconverting to 2.4GHz.
> Considering the fact that B200 cannot cover the whole 100MHz BW, I am
> thinking of using three B200 with synchronized triggers, each set to a
> different band.
>
> A few questions:
>
> - Will such a scheme work?
>
> - If yes, is there any GNU Radio Flow graph readily available for it?
>
> - If yes, what issues/headaches shall I expect to be ready to deal with?
>
> - Can multiple B200 be programmed to work in sync? If yes, what is the
> recommended source for generating the synchronization pulse? (another
> B200?) Any schematic for the needed HW connections for synchronization?
>
> - If the above approach is not going to work, what other low cost solutio=
n
> do you suggest?
>
> Thanks.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> Depends on what you mean by "synchronization".   If you mean "OK, B200s,
> please all start recording now", that is easily
>   accomplished using timed commands, and an initial setup that sets their
> timestamp clocks to the same value using
>   a 1PPS input.
>
> IF you need all B200 devices to be mutual *phase coherent* with one
> another, that's considerably more challenging.
>
> Recording 100MHz of bandwidth on a single (cheap, it sounds like) PC is
> also going to be challenging.  Even if you only record
>   8-bit samples, that's 200Mbyte/second.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000096857f0619008bdd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you for your reply. REgarding the write speed, =
I assume that fast SD;s should be able to easily=C2=A0do that:<br></div><di=
v><br></div><div><span style=3D"color:rgb(32,33,36);font-family:&quot;Googl=
e Sans&quot;,Roboto,arial,sans-serif;font-size:20px">The NVMe Gen4 x4 inter=
face delivers extreme performance of up to 7,500MB/s seq. read and=C2=A0</s=
pan><span style=3D"background-image:linear-gradient(90deg,rgb(211,227,253) =
50%,rgba(0,0,0,0) 50%);background-position:0% 0px;background-size:200% 100%=
;background-repeat:no-repeat;background-origin:initial;background-clip:init=
ial;color:rgb(4,12,40);font-family:&quot;Google Sans&quot;,Roboto,arial,san=
s-serif;font-size:20px">6,850MB/s</span><span style=3D"color:rgb(32,33,36);=
font-family:&quot;Google Sans&quot;,Roboto,arial,sans-serif;font-size:20px"=
>=C2=A0seq. write speeds.</span><br></div><div><br></div><div>By synchroniz=
ation, I mean that all three SDRs start sampling at the same time (with les=
s than 1us difference).</div><div><br></div><div>The questions that I have =
are as below:</div><div>Q1) Considering the fact that I will have a minimum=
 of three SDRs, can one instance of the GNU Radio running on my PC handle t=
hree or more SDRs?</div><div>Q2) Is there any ready to use GNU Radio Flow g=
raph for such a scheme to work?</div><div>Q3) Can you suggest any other low=
 cost approach for recording and playing back 100MHz bandwidth at 2.4GHz?</=
div><div><br></div><div>Thanks</div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 21, 2024 at =
5:47=E2=80=AFPM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 21/05/2024 20:24, Hamid Niknami via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <p style=3D"box-sizing:border-box;margin-top:0px;color:rgb(53,60,65=
);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,R=
oboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe =
UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Hi,</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">I
          am very new to SDR. I need a low cost solution to record all
          the interferences in the 100MHz band of the 2.4GHz ISM band
          (created by multiple WiFi and Bluetooth devices) and then play
          it back to emulate the interference. I do not need to decode
          those signals. I am thinking of using B200 for down converting
          to base band, recording on a SSD and then playing back the
          recorded signal using the B200 for upconverting to 2.4GHz.
          Considering the fact that B200 cannot cover the whole 100MHz
          BW, I am thinking of using three B200 with synchronized
          triggers, each set to a different band.</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">A
          few questions:</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">-
          Will such a scheme work?</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">-
          If yes, is there any GNU Radio Flow graph readily available
          for it?</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">-
          If yes, what issues/headaches shall I expect to be ready to
          deal with?</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">-
          Can multiple B200 be programmed to work in sync? If yes, what
          is the recommended source for generating the synchronization
          pulse? (another B200?) Any schematic for the needed HW
          connections for synchronization?</p>
        <p style=3D"box-sizing:border-box;color:rgb(53,60,65);font-family:I=
nter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,Roboto,Helvetica=
,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
&quot;Segoe UI Symbol&quot;;font-size:14px">-=C2=A0If
          the above approach is not going to work, what other low cost
          solution do you suggest?=C2=A0</p>
        <p style=3D"box-sizing:border-box;margin-bottom:0px;color:rgb(53,60=
,65);font-family:Inter,-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot=
;,Roboto,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Seg=
oe UI Emoji&quot;,&quot;Segoe UI Symbol&quot;;font-size:14px">Thanks.</p>
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
    Depends on what you mean by &quot;synchronization&quot;.=C2=A0=C2=A0 If=
 you mean &quot;OK,
    B200s, please all start recording now&quot;, that is easily<br>
    =C2=A0 accomplished using timed commands, and an initial setup that set=
s
    their timestamp clocks to the same value using<br>
    =C2=A0 a 1PPS input.<br>
    <br>
    IF you need all B200 devices to be mutual *phase coherent* with one
    another, that&#39;s considerably more challenging.<br>
    <br>
    Recording 100MHz of bandwidth on a single (cheap, it sounds like) PC
    is also going to be challenging.=C2=A0 Even if you only record<br>
    =C2=A0 8-bit samples, that&#39;s 200Mbyte/second.<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000096857f0619008bdd--

--===============7919175663671449612==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7919175663671449612==--
