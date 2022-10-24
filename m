Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7BB60B78D
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 21:26:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42F4E383CE4
	for <lists+usrp-users@lfdr.de>; Mon, 24 Oct 2022 15:26:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666639563; bh=mxD3lnlqGVksBZG6kM04V8jtkCUxeVu04z3DBCbspAE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0BF9eJWmuDUzSNPUOpHAhX1Ob/wOZwg2uR7IIyDbxnWZ5I+ehwQTQLAi4qrOCQFLi
	 eBmHyINbh772xi4Qo2A+D3SeORwNgzIimjGGvaDNAXgWUOGGEHNSjv6zdMAJIpo9Ff
	 lGq9fPFfHrAOCy0RnHu6o58cTWd6h4zomNV33HLAub8k+SbVNGGK4PP37Q0WrFfHbk
	 e4MieYdVdqesw696kUTAY2jZPK3Jy/V6aQ7ZKEkERDgegj/uzy/UTQEkDwNdIrhLzo
	 7Vou8XqUYAgyPKW/qbGN+G1jUxO0eOYprCFxqYAErs3M7gSCM9S7GrbScm82P/mvqw
	 ySwSUy3sgYqxA==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 584A13814AD
	for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 15:24:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="uGxpnVVU";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id a5so20105501edb.11
        for <usrp-users@lists.ettus.com>; Mon, 24 Oct 2022 12:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3PTm35WAnT7jmux0neHo+cXBXTxhLZcRaOXvlyyoqbg=;
        b=uGxpnVVU0uDQixcdj5EBlh15l6EXZ+ZrOdTKNX/hBRaqFLKbtCj6NFgfxPiZguPcST
         jJUQwJUogRc33pKkTuDSYsJDgLp/QIPvinoS/I3s8/91QL+OtUjSj4g4cIL3lnKlgXlE
         kYLzVhnD27Zoa3WK6ZivRii8lzS4lpZqepYLpW9U0btSwb/s/oegHMVGtWlBBRtPKIqK
         t7t8buMQEOczA4Nddyhfg5/KtO8rWjUz1Ny45fEdNY53Cfoa7/CQQg+67KzEbYnyNstH
         BxSE9nrEifXuKiBocD1pYcxn+E8KeLCwuGaSnpP5BopKtvd2ML/OkYU3a5PB+JdrOs/8
         5+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3PTm35WAnT7jmux0neHo+cXBXTxhLZcRaOXvlyyoqbg=;
        b=MrjeQUyabbLl5R1tpxk4Nal+12uPE+8AWKhVdcpGl1ho/aabWTvCa5K5wO9vHDG7qI
         Pjhmx4/YqPR1J2rQLhaoiSUxlwhXM6Z2ClsUZUK6obTJZJijABHMV7hIT6qGJrrEHvO2
         O0d3tzv9VBy3dWN9I42r8JCU0MzHeeOu62zYyoH50pWzvizMdfrg7LvD0IAGLcM6+lSR
         Lu6Jwjz3MHyPpa0OmeZt/9iD1UJ40k2xGm1dT2R1y2NjkW5Nmg+DPUfw2jsdtv+ntxlg
         d4ythGLie7SWzfg1h++Klneub2LHVTmzTXr0SpwjPcILB8RQ1hCxS0P2WWG2dbqp+vqk
         97ZA==
X-Gm-Message-State: ACrzQf0SbIFPMGi/aedPyUk9gYWxnOGcNn+SEQSlUpScbOEx9AoZjdvv
	jlaogRcVfxDTqd7xDGdJm5Ko1gdITZukzK7c/HOIBoOm
X-Google-Smtp-Source: AMsMyM7MfX/COZvsvZchmEH6jlbRJgNV+sVm/Ghz573H8s7Q6EO3giZfnb3ecJj/gcXRIyvtgKjz7RJcUK6n962IEvw=
X-Received: by 2002:a05:6402:50d4:b0:461:e349:56b2 with SMTP id
 h20-20020a05640250d400b00461e34956b2mr3894427edb.17.1666639494328; Mon, 24
 Oct 2022 12:24:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKNV16WYZgzRi_5AtTCpQ5fq=+f5UoM0LMhfBBwg-ZdT03tnGA@mail.gmail.com>
 <375f87d6-a523-7410-88ec-7bff37c7cb5c@gmail.com> <CAKNV16VkR3v3kNhE_YQqW_Yjoh4ed-we41FSNPa=ESAKsJLCrg@mail.gmail.com>
 <CAB__hTSpzL+uoyfwn0j+wui4xE_8x14FO1=B2yYG3bBOWVza-g@mail.gmail.com>
In-Reply-To: <CAB__hTSpzL+uoyfwn0j+wui4xE_8x14FO1=B2yYG3bBOWVza-g@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 24 Oct 2022 14:24:37 -0500
Message-ID: <CAFche=iurXW=i=RnUsg4aCrkTyFa-EFZa3GsDUvBSz30+zFDKg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: BCYZ46URY5X5WEWDWZQHJW4A2JFTOHMR
X-Message-ID-Hash: BCYZ46URY5X5WEWDWZQHJW4A2JFTOHMR
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: EmPa Kro <m10502215@gmail.com>, "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to use command replace hardware-reboot
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BCYZ46URY5X5WEWDWZQHJW4A2JFTOHMR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3132620955849330843=="

--===============3132620955849330843==
Content-Type: multipart/alternative; boundary="000000000000074a3b05ebccbf30"

--000000000000074a3b05ebccbf30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you can connect over USB, you can connect to the SCU, which will allow
you to shutdown the device and turn it back on. To connect to the SCU, see:

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_micro
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_ser=
ial_micro

After shutting down the N310 by normal means (e.g., `shutdown -h now` over
ssh), connect to the SCU and run `powerbtn` to turn it back on.

Wade

On Mon, Oct 24, 2022 at 10:07 AM Rob Kossler <rkossler@nd.edu> wrote:

> Not sure if this will help, but you might try all or part of the followin=
g:
> overlay rm n310 && overlay add n310 && systemctl restart usrp-hwd
>
> On Sun, Oct 23, 2022 at 1:48 PM EmPa Kro <m10502215@gmail.com> wrote:
>
>> Dear Marcus,
>>
>> I use the devices in 5g.
>> If the protocol handling too slow, then it will let N310 meet hardware
>> real time.
>> [Ex: Protocol must complete scheduling and encoding/decoding... in one
>> slot.]
>>
>> Best Regards,
>> Kenny
>>
>> Marcus D. Leech <patchvonbraun@gmail.com> =E6=96=BC 2022=E5=B9=B410=E6=
=9C=8824=E6=97=A5 =E9=80=B1=E4=B8=80 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=
=93=EF=BC=9A
>>
>>> On 2022-10-23 12:58, EmPa Kro wrote:
>>> > Dear USRP develop,
>>> >
>>> > Because I meet some of hardware real time issue.
>>> > I must use my finger off/on power button.
>>> > Are there any other ways to reboot?
>>> >
>>> > I have used software command to reboot, but it can't fix HRT issue.
>>> > "ssh root@[N310_IP] \reboot"
>>> >
>>> > Best regards,
>>> > Kenny
>>> >
>>> Can you expand on what you mean by "HRT issue"?
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000074a3b05ebccbf30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you can connect over USB, you can connect to the S=
CU, which will allow you to shutdown the device and turn it back on. To con=
nect to the SCU, see:</div><div><br></div><div><a href=3D"https://files.ett=
us.com/manual/page_usrp_n3xx.html#n3xx_micro">https://files.ettus.com/manua=
l/page_usrp_n3xx.html#n3xx_micro</a></div><div><a href=3D"https://files.ett=
us.com/manual/page_usrp_n3xx.html#n3xx_getting_started_serial_micro">https:=
//files.ettus.com/manual/page_usrp_n3xx.html#n3xx_getting_started_serial_mi=
cro</a></div><div><br></div><div>After shutting down the N310 by normal mea=
ns (e.g., `shutdown -h now` over ssh), connect to the SCU and run `powerbtn=
` to turn it back on.<br></div><div><br></div><div>Wade<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oc=
t 24, 2022 at 10:07 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">r=
kossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Not sure if this will help, but you might tr=
y all or part of the following:<div>overlay rm=C2=A0<span>n310</span>=C2=A0=
<span>&amp;&amp;</span>=C2=A0overlay add=C2=A0<span>n310</span>=C2=A0<span>=
&amp;&amp;</span>=C2=A0systemctl restart usrp-hwd<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 23, =
2022 at 1:48 PM EmPa Kro &lt;<a href=3D"mailto:m10502215@gmail.com" target=
=3D"_blank">m10502215@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear Marcus,<div><br></di=
v><div>I use the devices in 5g.</div><div>If the protocol handling too slow=
, then it will let N310 meet hardware real time.</div><div>[Ex: Protocol mu=
st complete scheduling and encoding/decoding... in one slot.]</div><div><br=
></div><div>Best Regards,</div><div>Kenny</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">Marcus D. Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt; =E6=96=BC 2022=E5=B9=B410=E6=9C=8824=E6=97=A5 =E9=80=B1=E4=B8=80=
 =E5=87=8C=E6=99=A81:04=E5=AF=AB=E9=81=93=EF=BC=9A<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">On 2022-10-23 12:58, EmPa Kro wrote:<br>
&gt; Dear USRP develop,<br>
&gt;<br>
&gt; Because I meet some of hardware real time issue.<br>
&gt; I must use my finger off/on power button.<br>
&gt; Are there any other ways to reboot?<br>
&gt;<br>
&gt; I have used software command to reboot, but it can&#39;t fix HRT issue=
.<br>
&gt; &quot;ssh root@[N310_IP] \reboot&quot;<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Kenny<br>
&gt;<br>
Can you expand on what you mean by &quot;HRT issue&quot;?<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000074a3b05ebccbf30--

--===============3132620955849330843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3132620955849330843==--
